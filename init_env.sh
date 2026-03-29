#!/bin/bash
# ---------------------------------------------------------
# Script: init_env.sh
# Purpose: Initialize the environment for Lua syntax checking
# ---------------------------------------------------------

echo "🚀 Starting environment initialization..."

# 1. Download Lua source
echo "📥 Downloading Lua 5.4.6 source..."
curl -L https://www.lua.org/ftp/lua-5.4.6.tar.gz -o lua.tar.gz

# 2. Extract and Build
echo "🏗️ Building Lua compiler (luac)..."
tar -xzf lua.tar.gz
cd lua-5.4.6
make linux

# 3. Setup bin directory
echo "📂 Setting up .bin directory..."
cd ..
mkdir -p .bin
cp lua-5.4.6/src/luac .bin/luac
chmod +x .bin/luac

# 4. Cleanup
echo "🧹 Cleaning up source files..."
rm -rf lua-5.4.6 lua.tar.gz

echo "✅ Environment initialized successfully!"
echo "✨ You can now run syntax checks using: python3 pre_commit.py"
./.bin/luac -v
