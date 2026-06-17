.class public Lb/b/a/b/j;
.super Lb/b/a/b/i;
.source ""


# static fields
.field private static k:Lb/b/a/b/i;

.field private static final l:[Ljava/lang/String;

.field private static final m:[Ljava/lang/String;

.field private static final n:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "\\|"

    const-string v1, "and|break|case|catch|continue|default|defer|do|else|elseif|end|false|finally|for|function|goto|if|in|lambda|local|nil|not|or|repeat|return|switch|then|true|try|until|when|while"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lb/b/a/b/j;->l:[Ljava/lang/String;

    const-string v1, "self|__add|__band|__bnot|__bor|__bxor|__call|__close|__concat|__div|__eq|__gc|__idiv|__index|__le|__len|__lt|__mod|__mul|__newindex|__pow|__shl|__shr|__sub|__tostring|__unm|_ENV|_G|assert|collectgarbage|dofile|error|getfenv|getmetatable|ipairs|load|loadfile|loadstring|module|next|pairs|pcall|print|rawequal|rawget|rawlen|rawset|require|select|self|setfenv|setmetatable|tointeger|tonumber|tostring|type|unpack|xpcall|activity|call|compile|dump|each|enum|import|loadbitmap|loadlayout|loadmenu|service|set|task|thread|timer|coroutine|debug|io|luajava|math|os|package|string|table|utf8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/b/a/b/j;->m:[Ljava/lang/String;

    const/16 v0, 0x17

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lb/b/a/b/j;->n:[C

    return-void

    :array_0
    .array-data 2
        0x28s
        0x29s
        0x7bs
        0x7ds
        0x2cs
        0x3bs
        0x3ds
        0x2bs
        0x2ds
        0x2fs
        0x2as
        0x26s
        0x21s
        0x7cs
        0x3as
        0x5bs
        0x5ds
        0x3cs
        0x3es
        0x3fs
        0x7es
        0x25s
        0x5es
    .end array-data
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lb/b/a/b/i;-><init>()V

    sget-object v0, Lb/b/a/b/j;->n:[C

    invoke-super {p0, v0}, Lb/b/a/b/i;->a([C)V

    sget-object v0, Lb/b/a/b/j;->l:[Ljava/lang/String;

    invoke-super {p0, v0}, Lb/b/a/b/i;->a([Ljava/lang/String;)V

    sget-object v0, Lb/b/a/b/j;->m:[Ljava/lang/String;

    invoke-super {p0, v0}, Lb/b/a/b/i;->b([Ljava/lang/String;)V

    const-string v0, "\\|"

    const-string v1, "close|flush|info|input|isdir|lines|ls|mkdir|open|output|popen|read|readall|stderr|stdin|stdout|tmpfile|type|write"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "io"

    invoke-super {p0, v2, v1}, Lb/b/a/b/i;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "byte|char|dump|find|format|gfind|gmatch|gsub|len|lower|match|rep|reverse|sub|upper"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-super {p0, v2, v1}, Lb/b/a/b/i;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "astable|bindClass|clear|coding|createArray|createProxy|getContext|instanceof|loadLib|loaded|luapath|new|newArray|newInstance|override|package|tostring"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "luajava"

    invoke-super {p0, v2, v1}, Lb/b/a/b/i;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "clock|date|difftime|execute|exit|getenv|remove|rename|setlocale|time|tmpname"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "os"

    invoke-super {p0, v2, v1}, Lb/b/a/b/i;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "clear|clone|concat|const|find|foreach|foreachi|gfind|insert|maxn|move|pack|remove|size|sort|unpack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "table"

    invoke-super {p0, v2, v1}, Lb/b/a/b/i;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "abs|acos|asin|atan|atan2|ceil|cos|cosh|deg|exp|floor|fmod|frexp|huge|ldexp|log|log10|max|maxinteger|min|mininteger|modf|pi|pow|rad|random|randomseed|sin|sinh|sqrt|tan|tanh|tointeger|type|ult"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "math"

    invoke-super {p0, v2, v1}, Lb/b/a/b/i;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "byte|char|charpattern|charpos|codepoint|codes|escape|find|fold|gfind|gmatch|gsub|insert|len|lower|match|ncasecmp|next|offset|remove|reverse|sub|title|upper|width|widthindex"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf8"

    invoke-super {p0, v2, v1}, Lb/b/a/b/i;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "create|isyieldable|resume|running|status|wrap|yield"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "coroutine"

    invoke-super {p0, v2, v1}, Lb/b/a/b/i;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "config|cpath|loaded|loaders|loadlib|path|preload|searchers|searchpath|seeall"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    invoke-super {p0, v2, v1}, Lb/b/a/b/i;->a(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "debug|gethook|getinfo|getlocal|getmetatable|getregistry|getupvalue|getuservalue|sethook|setlocal|setmetatable|setupvalue|setuservalue|traceback|upvalueid|upvaluejoin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "debug"

    invoke-super {p0, v1, v0}, Lb/b/a/b/i;->a(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static f()Lb/b/a/b/i;
    .locals 1

    sget-object v0, Lb/b/a/b/j;->k:Lb/b/a/b/i;

    if-nez v0, :cond_0

    new-instance v0, Lb/b/a/b/j;

    invoke-direct {v0}, Lb/b/a/b/j;-><init>()V

    sput-object v0, Lb/b/a/b/j;->k:Lb/b/a/b/i;

    :cond_0
    sget-object v0, Lb/b/a/b/j;->k:Lb/b/a/b/i;

    return-object v0
.end method


# virtual methods
.method public a(CC)Z
    .locals 1

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(CC)Z
    .locals 1

    const/16 v0, 0x5d

    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(CC)Z
    .locals 1

    const/16 v0, 0x5b

    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
