import re

with open("main.lua", "r") as f:
    content = f.read()

# Locate the <script>var exports = {};</script> and add require mock
html_head = """    <!-- Fix ReferenceError: exports and require are not defined -->
    <script>
        var exports = {};
        function require(module) {
            if (module === '@ffmpeg/ffmpeg' && window.FFmpegWASM) {
                return window.FFmpegWASM;
            }
            console.warn('Dummy require called for:', module);
            return {};
        }
    </script>"""

content = re.sub(
    r'<!-- Fix ReferenceError: exports is not defined -->\s*<script>var exports = \{\};</script>',
    html_head,
    content
)

with open("main.lua", "w") as f:
    f.write(content)
