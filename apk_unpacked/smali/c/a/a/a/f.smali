.class public Lc/a/a/a/f;
.super Lc/a/a/a/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/a/f$c;,
        Lc/a/a/a/f$e;,
        Lc/a/a/a/f$a;,
        Lc/a/a/a/f$b;,
        Lc/a/a/a/f$d;,
        Lc/a/a/a/f$h;,
        Lc/a/a/a/f$i;,
        Lc/a/a/a/f$g;,
        Lc/a/a/a/f$f;
    }
.end annotation


# static fields
.field protected static final b:[Ljava/lang/String;

.field private static final c:Ljava/util/Hashtable;

.field static final d:[Ljava/lang/String;

.field static final e:[Ljava/lang/String;

.field static final f:Ljava/util/Hashtable;

.field private static final g:[I

.field public static h:Ljava/lang/String;

.field public static i:I

.field public static j:I

.field public static k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/a/a/j;",
            ">;"
        }
    .end annotation
.end field

.field public static l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lb/b/a/b/q;",
            ">;>;"
        }
    .end annotation
.end field

.field static m:[Lc/a/a/a/f$e;

.field public static n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/b/a/b/q;",
            ">;"
        }
    .end annotation
.end field

.field public static o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field A:Lc/a/a/a/b;

.field B:Lc/a/a/a/g$a;

.field C:Ljava/io/InputStream;

.field D:[C

.field E:I

.field F:Lc/a/a/a/f$b;

.field G:Lc/a/a/j;

.field H:Lc/a/a/j;

.field I:B

.field private J:Z

.field private K:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lc/a/a/n;",
            ">;"
        }
    .end annotation
.end field

.field private L:I

.field private p:Lb/b/a/b/h;

.field public q:I

.field public r:I

.field private s:Z

.field private t:I

.field u:I

.field v:I

.field w:I

.field x:I

.field final y:Lc/a/a/a/f$g;

.field final z:Lc/a/a/a/f$g;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "(for control)"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "(for generator)"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "(for index)"

    aput-object v5, v1, v4

    const/4 v5, 0x3

    const-string v6, "(for limit)"

    aput-object v6, v1, v5

    const/4 v6, 0x4

    const-string v7, "(for state)"

    aput-object v7, v1, v6

    const/4 v7, 0x5

    const-string v8, "(for step)"

    aput-object v8, v1, v7

    sput-object v1, Lc/a/a/a/f;->b:[Ljava/lang/String;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lc/a/a/a/f;->c:Ljava/util/Hashtable;

    const/4 v1, 0x0

    :goto_0
    sget-object v8, Lc/a/a/a/f;->b:[Ljava/lang/String;

    array-length v9, v8

    if-ge v1, v9, :cond_0

    sget-object v9, Lc/a/a/a/f;->c:Ljava/util/Hashtable;

    aget-object v8, v8, v1

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v8, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x31

    new-array v1, v1, [Ljava/lang/String;

    const-string v8, "and"

    aput-object v8, v1, v2

    const-string v8, "break"

    aput-object v8, v1, v3

    const-string v8, "case"

    aput-object v8, v1, v4

    const-string v8, "catch"

    aput-object v8, v1, v5

    const-string v8, "continue"

    aput-object v8, v1, v6

    const-string v8, "default"

    aput-object v8, v1, v7

    const-string v8, "defer"

    aput-object v8, v1, v0

    const/4 v8, 0x7

    const-string v9, "do"

    aput-object v9, v1, v8

    const/16 v8, 0x8

    const-string v9, "else"

    aput-object v9, v1, v8

    const/16 v8, 0x9

    const-string v9, "elseif"

    aput-object v9, v1, v8

    const/16 v8, 0xa

    const-string v9, "end"

    aput-object v9, v1, v8

    const/16 v8, 0xb

    const-string v9, "false"

    aput-object v9, v1, v8

    const/16 v8, 0xc

    const-string v9, "finally"

    aput-object v9, v1, v8

    const/16 v8, 0xd

    const-string v9, "for"

    aput-object v9, v1, v8

    const/16 v8, 0xe

    const-string v9, "function"

    aput-object v9, v1, v8

    const/16 v8, 0xf

    const-string v9, "goto"

    aput-object v9, v1, v8

    const/16 v8, 0x10

    const-string v9, "if"

    aput-object v9, v1, v8

    const/16 v8, 0x11

    const-string v9, "import"

    aput-object v9, v1, v8

    const/16 v8, 0x12

    const-string v9, "in"

    aput-object v9, v1, v8

    const/16 v8, 0x13

    const-string v9, "lambda"

    aput-object v9, v1, v8

    const/16 v8, 0x14

    const-string v9, "local"

    aput-object v9, v1, v8

    const/16 v8, 0x15

    const-string v9, "module"

    aput-object v9, v1, v8

    const/16 v8, 0x16

    const-string v9, "nil"

    aput-object v9, v1, v8

    const/16 v8, 0x17

    const-string v9, "not"

    aput-object v9, v1, v8

    const/16 v8, 0x18

    const-string v9, "or"

    aput-object v9, v1, v8

    const/16 v8, 0x19

    const-string v9, "repeat"

    aput-object v9, v1, v8

    const/16 v8, 0x1a

    const-string v9, "return"

    aput-object v9, v1, v8

    const/16 v8, 0x1b

    const-string v9, "switch"

    aput-object v9, v1, v8

    const/16 v8, 0x1c

    const-string v9, "then"

    aput-object v9, v1, v8

    const/16 v8, 0x1d

    const-string v9, "true"

    aput-object v9, v1, v8

    const/16 v8, 0x1e

    const-string v9, "try"

    aput-object v9, v1, v8

    const/16 v8, 0x1f

    const-string v9, "until"

    aput-object v9, v1, v8

    const/16 v8, 0x20

    const-string v9, "when"

    aput-object v9, v1, v8

    const/16 v8, 0x21

    const-string v9, "while"

    aput-object v9, v1, v8

    const/16 v8, 0x22

    const-string v9, ".."

    aput-object v9, v1, v8

    const/16 v8, 0x23

    const-string v9, "..."

    aput-object v9, v1, v8

    const/16 v8, 0x24

    const-string v9, "=="

    aput-object v9, v1, v8

    const/16 v8, 0x25

    const-string v9, ">="

    aput-object v9, v1, v8

    const/16 v8, 0x26

    const-string v9, "<="

    aput-object v9, v1, v8

    const/16 v8, 0x27

    const-string v9, "~="

    aput-object v9, v1, v8

    const/16 v8, 0x28

    const-string v9, "//"

    aput-object v9, v1, v8

    const/16 v8, 0x29

    const-string v9, "<<"

    aput-object v9, v1, v8

    const/16 v8, 0x2a

    const-string v9, ">>"

    aput-object v9, v1, v8

    const/16 v8, 0x2b

    const-string v9, "::"

    aput-object v9, v1, v8

    const/16 v8, 0x2c

    const-string v9, "<eos>"

    aput-object v9, v1, v8

    const/16 v8, 0x2d

    const-string v9, "<number>"

    aput-object v9, v1, v8

    const/16 v8, 0x2e

    const-string v9, "<name>"

    aput-object v9, v1, v8

    const/16 v8, 0x2f

    const-string v9, "<string>"

    aput-object v9, v1, v8

    const/16 v8, 0x30

    const-string v9, "<eof>"

    aput-object v9, v1, v8

    sput-object v1, Lc/a/a/a/f;->d:[Ljava/lang/String;

    const/16 v1, 0x22

    new-array v1, v1, [Ljava/lang/String;

    const-string v8, "\u4e0e"

    aput-object v8, v1, v2

    const-string v8, "\u8df3\u51fa"

    aput-object v8, v1, v3

    const-string v8, "case"

    aput-object v8, v1, v4

    const-string v8, "\u6355\u83b7"

    aput-object v8, v1, v5

    const-string v8, "\u8df3\u8fc7"

    aput-object v8, v1, v6

    const-string v8, "\u9ed8\u8ba4"

    aput-object v8, v1, v7

    const-string v8, "\u5ef6\u65f6"

    aput-object v8, v1, v0

    const/4 v8, 0x7

    const-string v9, "\u6267\u884c"

    aput-object v9, v1, v8

    const/16 v8, 0x8

    const-string v9, "\u5426\u5219"

    aput-object v9, v1, v8

    const/16 v8, 0x9

    const-string v9, "\u5426\u5219\u5982\u679c"

    aput-object v9, v1, v8

    const/16 v8, 0xa

    const-string v9, "\u7ed3\u675f"

    aput-object v9, v1, v8

    const/16 v8, 0xb

    const-string v9, "\u5047"

    aput-object v9, v1, v8

    const/16 v8, 0xc

    const-string v9, "finally"

    aput-object v9, v1, v8

    const/16 v8, 0xd

    const-string v9, "\u5faa\u73af"

    aput-object v9, v1, v8

    const/16 v8, 0xe

    const-string v9, "\u51fd\u6570"

    aput-object v9, v1, v8

    const/16 v8, 0xf

    const-string v9, "\u8df3\u8f6c"

    aput-object v9, v1, v8

    const/16 v8, 0x10

    const-string v9, "\u5982\u679c"

    aput-object v9, v1, v8

    const/16 v8, 0x11

    const-string v9, "\u5bfc\u5165"

    aput-object v9, v1, v8

    const/16 v8, 0x12

    const-string v9, "\u5728"

    aput-object v9, v1, v8

    const/16 v8, 0x13

    const-string v9, "lambda"

    aput-object v9, v1, v8

    const/16 v8, 0x14

    const-string v9, "\u5c40\u90e8"

    aput-object v9, v1, v8

    const/16 v8, 0x15

    const-string v9, "\u6a21\u5757"

    aput-object v9, v1, v8

    const/16 v8, 0x16

    const-string v9, "\u65e0"

    aput-object v9, v1, v8

    const/16 v8, 0x17

    const-string v9, "\u975e"

    aput-object v9, v1, v8

    const/16 v8, 0x18

    const-string v9, "\u6216"

    aput-object v9, v1, v8

    const/16 v8, 0x19

    const-string v9, "\u91cd\u590d"

    aput-object v9, v1, v8

    const/16 v8, 0x1a

    const-string v9, "\u8fd4\u56de"

    aput-object v9, v1, v8

    const/16 v8, 0x1b

    const-string v9, "switch"

    aput-object v9, v1, v8

    const/16 v8, 0x1c

    const-string v9, "\u90a3\u4e48"

    aput-object v9, v1, v8

    const/16 v8, 0x1d

    const-string v9, "\u771f"

    aput-object v9, v1, v8

    const/16 v8, 0x1e

    const-string v9, "\u5c1d\u8bd5"

    aput-object v9, v1, v8

    const/16 v8, 0x1f

    const-string v9, "\u76f4\u5230"

    aput-object v9, v1, v8

    const/16 v8, 0x20

    const-string v9, "when"

    aput-object v9, v1, v8

    const/16 v8, 0x21

    const-string v9, "\u5f53"

    aput-object v9, v1, v8

    sput-object v1, Lc/a/a/a/f;->e:[Ljava/lang/String;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lc/a/a/a/f;->f:Ljava/util/Hashtable;

    const/4 v1, 0x0

    :goto_1
    const/16 v8, 0x22

    if-ge v1, v8, :cond_1

    sget-object v8, Lc/a/a/a/f;->d:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-static {v8}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v8

    sget-object v9, Lc/a/a/a/f;->f:Ljava/util/Hashtable;

    new-instance v10, Ljava/lang/Integer;

    add-int/lit16 v11, v1, 0x101

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v8, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/16 v1, 0x101

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lc/a/a/a/f;->g:[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lc/a/a/a/f;->k:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lc/a/a/a/f;->l:Ljava/util/HashMap;

    const/16 v1, 0x15

    new-array v1, v1, [Lc/a/a/a/f$e;

    new-instance v8, Lc/a/a/a/f$e;

    const/16 v9, 0xa

    invoke-direct {v8, v9, v9}, Lc/a/a/a/f$e;-><init>(II)V

    aput-object v8, v1, v2

    new-instance v2, Lc/a/a/a/f$e;

    const/16 v8, 0xa

    invoke-direct {v2, v8, v8}, Lc/a/a/a/f$e;-><init>(II)V

    aput-object v2, v1, v3

    new-instance v2, Lc/a/a/a/f$e;

    const/16 v8, 0xb

    invoke-direct {v2, v8, v8}, Lc/a/a/a/f$e;-><init>(II)V

    aput-object v2, v1, v4

    new-instance v2, Lc/a/a/a/f$e;

    invoke-direct {v2, v8, v8}, Lc/a/a/a/f$e;-><init>(II)V

    aput-object v2, v1, v5

    new-instance v2, Lc/a/a/a/f$e;

    const/16 v8, 0xe

    const/16 v9, 0xd

    invoke-direct {v2, v8, v9}, Lc/a/a/a/f$e;-><init>(II)V

    aput-object v2, v1, v6

    new-instance v2, Lc/a/a/a/f$e;

    const/16 v8, 0xb

    invoke-direct {v2, v8, v8}, Lc/a/a/a/f$e;-><init>(II)V

    aput-object v2, v1, v7

    new-instance v2, Lc/a/a/a/f$e;

    invoke-direct {v2, v8, v8}, Lc/a/a/a/f$e;-><init>(II)V

    aput-object v2, v1, v0

    new-instance v2, Lc/a/a/a/f$e;

    invoke-direct {v2, v0, v0}, Lc/a/a/a/f$e;-><init>(II)V

    const/4 v0, 0x7

    aput-object v2, v1, v0

    new-instance v0, Lc/a/a/a/f$e;

    invoke-direct {v0, v6, v6}, Lc/a/a/a/f$e;-><init>(II)V

    const/16 v2, 0x8

    aput-object v0, v1, v2

    new-instance v0, Lc/a/a/a/f$e;

    invoke-direct {v0, v7, v7}, Lc/a/a/a/f$e;-><init>(II)V

    const/16 v2, 0x9

    aput-object v0, v1, v2

    new-instance v0, Lc/a/a/a/f$e;

    const/4 v2, 0x7

    invoke-direct {v0, v2, v2}, Lc/a/a/a/f$e;-><init>(II)V

    const/16 v2, 0xa

    aput-object v0, v1, v2

    new-instance v0, Lc/a/a/a/f$e;

    const/4 v2, 0x7

    invoke-direct {v0, v2, v2}, Lc/a/a/a/f$e;-><init>(II)V

    const/16 v2, 0xb

    aput-object v0, v1, v2

    new-instance v0, Lc/a/a/a/f$e;

    const/16 v2, 0x9

    const/16 v6, 0x8

    invoke-direct {v0, v2, v6}, Lc/a/a/a/f$e;-><init>(II)V

    const/16 v2, 0xc

    aput-object v0, v1, v2

    new-instance v0, Lc/a/a/a/f$e;

    invoke-direct {v0, v5, v5}, Lc/a/a/a/f$e;-><init>(II)V

    const/16 v2, 0xd

    aput-object v0, v1, v2

    new-instance v0, Lc/a/a/a/f$e;

    invoke-direct {v0, v5, v5}, Lc/a/a/a/f$e;-><init>(II)V

    const/16 v2, 0xe

    aput-object v0, v1, v2

    const/16 v0, 0xf

    new-instance v2, Lc/a/a/a/f$e;

    invoke-direct {v2, v5, v5}, Lc/a/a/a/f$e;-><init>(II)V

    aput-object v2, v1, v0

    const/16 v0, 0x10

    new-instance v2, Lc/a/a/a/f$e;

    invoke-direct {v2, v5, v5}, Lc/a/a/a/f$e;-><init>(II)V

    aput-object v2, v1, v0

    const/16 v0, 0x11

    new-instance v2, Lc/a/a/a/f$e;

    invoke-direct {v2, v5, v5}, Lc/a/a/a/f$e;-><init>(II)V

    aput-object v2, v1, v0

    const/16 v0, 0x12

    new-instance v2, Lc/a/a/a/f$e;

    invoke-direct {v2, v5, v5}, Lc/a/a/a/f$e;-><init>(II)V

    aput-object v2, v1, v0

    const/16 v0, 0x13

    new-instance v2, Lc/a/a/a/f$e;

    invoke-direct {v2, v4, v4}, Lc/a/a/a/f$e;-><init>(II)V

    aput-object v2, v1, v0

    const/16 v0, 0x14

    new-instance v2, Lc/a/a/a/f$e;

    invoke-direct {v2, v3, v3}, Lc/a/a/a/f$e;-><init>(II)V

    aput-object v2, v1, v0

    sput-object v1, Lc/a/a/a/f;->m:[Lc/a/a/a/f$e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc/a/a/a/f;->n:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc/a/a/a/f;->o:Ljava/util/ArrayList;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x8
        0x8
        0x8
        0x8
        0x8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xc
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x4
        0x4
        0x4
        0x4
        0x5
        0x4
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x4
        0x4
        0x4
        0x4
        0x0
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lc/a/a/a/g$a;Ljava/io/InputStream;ZLb/b/a/b/h;)V
    .locals 2

    invoke-direct {p0}, Lc/a/a/a/a;-><init>()V

    new-instance v0, Lb/b/a/b/h;

    invoke-direct {v0}, Lb/b/a/b/h;-><init>()V

    iput-object v0, p0, Lc/a/a/a/f;->p:Lb/b/a/b/h;

    new-instance v0, Lc/a/a/a/f$g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/a/a/a/f$g;-><init>(Lc/a/a/a/e;)V

    iput-object v0, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    new-instance v0, Lc/a/a/a/f$g;

    invoke-direct {v0, v1}, Lc/a/a/a/f$g;-><init>(Lc/a/a/a/e;)V

    iput-object v0, p0, Lc/a/a/a/f;->z:Lc/a/a/a/f$g;

    new-instance v0, Lc/a/a/a/f$b;

    invoke-direct {v0}, Lc/a/a/a/f$b;-><init>()V

    iput-object v0, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/a/a/a/f;->K:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lc/a/a/a/f;->L:I

    iput-object p2, p0, Lc/a/a/a/f;->C:Ljava/io/InputStream;

    const/16 p2, 0x20

    new-array p2, p2, [C

    iput-object p2, p0, Lc/a/a/a/f;->D:[C

    iput-object p1, p0, Lc/a/a/a/f;->B:Lc/a/a/a/g$a;

    iput-boolean p3, p0, Lc/a/a/a/f;->J:Z

    iput-object p4, p0, Lc/a/a/a/f;->p:Lb/b/a/b/h;

    return-void
.end method

.method private H()V
    .locals 2

    iget v0, p0, Lc/a/a/a/f;->v:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-virtual {p0}, Lc/a/a/a/f;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lc/a/a/a/f;->v:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static I(I)I
    .locals 1

    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method

.method private J(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lc/a/a/a/f;->I(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Lc/a/a/a/f;->I(I)I

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lc/a/a/a/f;->b(II)Z

    move-result p1

    return p1
.end method

.method private K(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lc/a/a/a/f;->I(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lc/a/a/a/f;->b(II)Z

    move-result p1

    return p1
.end method

.method private static L(I)Z
    .locals 1

    const/16 v0, 0x20

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private M(I)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private N(I)Z
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lc/a/a/a/f;->I(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lc/a/a/a/f;->b(II)Z

    move-result p1

    return p1
.end method

.method private O(I)Z
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0}, Lc/a/a/a/f;->I(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lc/a/a/a/f;->b(II)Z

    move-result p1

    return p1
.end method

.method private P(I)I
    .locals 2

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->B(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/16 v1, 0x7ff

    if-gt p1, v1, :cond_1

    shr-int/lit8 v1, p1, 0x6

    int-to-char v1, v1

    or-int/lit16 v1, v1, 0xc0

    invoke-virtual {p0, v1}, Lc/a/a/a/f;->B(I)V

    or-int/2addr p1, v0

    int-to-char p1, p1

    and-int/lit16 p1, p1, 0xbf

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->B(I)V

    const/4 p1, 0x2

    return p1

    :cond_1
    const v1, 0xffff

    if-gt p1, v1, :cond_2

    shr-int/lit8 v1, p1, 0xc

    int-to-char v1, v1

    or-int/lit16 v1, v1, 0xe0

    invoke-virtual {p0, v1}, Lc/a/a/a/f;->B(I)V

    shr-int/lit8 v1, p1, 0x6

    or-int/2addr v1, v0

    int-to-char v1, v1

    and-int/lit16 v1, v1, 0xbf

    invoke-virtual {p0, v1}, Lc/a/a/a/f;->B(I)V

    or-int/2addr p1, v0

    int-to-char p1, p1

    and-int/lit16 p1, p1, 0xbf

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->B(I)V

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private static final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/a/a/a/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lc/a/a/a/f;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lc/a/a/a/f;->l:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance p1, Lb/b/a/b/q;

    iget v1, p0, Lc/a/a/a/f;->q:I

    invoke-direct {p1, v1, p2}, Lb/b/a/b/q;-><init>(II)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(II)Z
    .locals 2

    sget-object v0, Lc/a/a/a/f;->g:[I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    aget p1, v0, p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lc/a/a/a/f;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static z(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-lt p0, v1, :cond_0

    add-int/lit8 p0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    if-ge p0, v1, :cond_1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x3

    sub-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method A()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v0, v0, Lc/a/a/a/f$g;->a:I

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lc/a/a/a/f;->B()V

    goto :goto_0
.end method

.method A(I)V
    .locals 10

    iget v0, p0, Lc/a/a/a/f;->u:I

    iget v1, p0, Lc/a/a/a/f;->w:I

    iget-object v2, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-boolean v3, p0, Lc/a/a/a/f;->s:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const/16 v3, 0x7b

    invoke-virtual {p0, v3}, Lc/a/a/a/f;->D(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Lc/a/a/a/b;->b()I

    move-result v6

    new-instance v7, Lc/a/a/a/b$a;

    invoke-direct {v7}, Lc/a/a/a/b$a;-><init>()V

    new-instance v8, Lc/a/a/a/b$a;

    invoke-direct {v8}, Lc/a/a/a/b$a;-><init>()V

    invoke-virtual {v2, v7, v5}, Lc/a/a/a/b;->a(Lc/a/a/a/b$a;Z)V

    invoke-virtual {v2, v8, v4}, Lc/a/a/a/b;->a(Lc/a/a/a/b$a;Z)V

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    invoke-virtual {p0}, Lc/a/a/a/f;->C()V

    invoke-virtual {p0}, Lc/a/a/a/f;->f()V

    iget-boolean v4, p0, Lc/a/a/a/f;->J:Z

    if-eqz v4, :cond_2

    if-eqz v3, :cond_1

    sget-object v4, Lc/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v7, Landroid/graphics/Rect;

    iget v9, p0, Lc/a/a/a/f;->u:I

    sub-int/2addr v9, v5

    iget v5, p0, Lc/a/a/a/f;->w:I

    invoke-direct {v7, v0, v1, v9, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object v4, Lc/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    iget v7, p0, Lc/a/a/a/f;->u:I

    add-int/lit8 v7, v7, -0x3

    iget v9, p0, Lc/a/a/a/f;->w:I

    invoke-direct {v5, v0, v1, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    const/16 v0, 0x11a

    if-eqz v3, :cond_3

    const/16 v1, 0x7d

    invoke-virtual {p0, v1, v0, p1}, Lc/a/a/a/f;->b(III)V

    :cond_3
    const/16 v1, 0x120

    invoke-virtual {p0, v1, v0, p1}, Lc/a/a/a/f;->b(III)V

    invoke-virtual {p0}, Lc/a/a/a/f;->e()I

    move-result p1

    iget-boolean v0, v8, Lc/a/a/a/b$a;->e:Z

    if-eqz v0, :cond_4

    iget-short v0, v8, Lc/a/a/a/b$a;->d:S

    invoke-virtual {v2, p1, v0}, Lc/a/a/a/b;->f(II)V

    :cond_4
    invoke-virtual {v2}, Lc/a/a/a/b;->d()V

    invoke-virtual {v2, p1, v6}, Lc/a/a/a/b;->g(II)V

    invoke-virtual {v2}, Lc/a/a/a/b;->d()V

    return-void
.end method

.method B()V
    .locals 9

    iget v0, p0, Lc/a/a/a/f;->w:I

    invoke-virtual {p0}, Lc/a/a/a/f;->i()V

    iget-object v1, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v1, v1, Lc/a/a/a/f$g;->a:I

    const/4 v2, 0x0

    const/16 v3, 0x3b

    if-eq v1, v3, :cond_d

    const/16 v4, 0x102

    if-eq v1, v4, :cond_a

    const/16 v4, 0x105

    if-eq v1, v4, :cond_a

    const/16 v3, 0x11f

    if-eq v1, v3, :cond_9

    const/16 v3, 0x12c

    if-eq v1, v3, :cond_8

    const/16 v3, 0x107

    if-eq v1, v3, :cond_7

    const/16 v3, 0x108

    if-eq v1, v3, :cond_5

    const/16 v3, 0x115

    if-eq v1, v3, :cond_3

    const/16 v3, 0x116

    if-eq v1, v3, :cond_2

    const/16 v3, 0x121

    if-eq v1, v3, :cond_1

    const/16 v3, 0x122

    if-eq v1, v3, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    :try_start_0
    invoke-virtual {p0}, Lc/a/a/a/f;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0, v0}, Lc/a/a/a/f;->C(I)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    invoke-virtual {p0}, Lc/a/a/a/f;->x()V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, v0}, Lc/a/a/a/f;->A(I)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lc/a/a/a/f;->l()V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0, v0}, Lc/a/a/a/f;->x(I)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v0}, Lc/a/a/a/b;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->u(I)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, v0}, Lc/a/a/a/f;->r(I)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, v0}, Lc/a/a/a/f;->q(I)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Lc/a/a/a/f;->H(I)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Lc/a/a/a/f;->G()I

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Lc/a/a/a/f;->r()V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    const/16 v0, 0x10f

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->D(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lc/a/a/a/f;->o()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lc/a/a/a/f;->p()V

    goto :goto_1

    :cond_5
    iget v1, p0, Lc/a/a/a/f;->u:I

    iget v4, p0, Lc/a/a/a/f;->w:I

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    invoke-virtual {p0}, Lc/a/a/a/f;->b()V

    iget-boolean v5, p0, Lc/a/a/a/f;->J:Z

    if-eqz v5, :cond_6

    sget-object v5, Lc/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Lc/a/a/a/f;->u:I

    add-int/lit8 v7, v7, -0x3

    iget v8, p0, Lc/a/a/a/f;->w:I

    invoke-direct {v6, v1, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const/16 v1, 0x10b

    invoke-virtual {p0, v1, v3, v0}, Lc/a/a/a/f;->b(III)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lc/a/a/a/f;->h()V

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    invoke-virtual {p0}, Lc/a/a/a/f;->E()Lc/a/a/j;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lc/a/a/a/f;->a(Lc/a/a/j;I)V

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lc/a/a/a/f;->F()V

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v0}, Lc/a/a/a/b;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->u(I)V

    :goto_0
    invoke-virtual {p0, v3}, Lc/a/a/a/f;->D(I)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_1

    :cond_c
    const-string v0, "unreachable statement"

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->g(Ljava/lang/String;)V

    throw v2

    :catch_0
    :cond_d
    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    :goto_1
    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-object v1, v0, Lc/a/a/a/b;->b:Lc/a/a/l;

    iget v1, v1, Lc/a/a/l;->n:I

    iget-short v3, v0, Lc/a/a/a/b;->q:S

    if-lt v1, v3, :cond_e

    iget-short v1, v0, Lc/a/a/a/b;->o:S

    if-lt v3, v1, :cond_e

    iput-short v1, v0, Lc/a/a/a/b;->q:S

    invoke-virtual {p0}, Lc/a/a/a/f;->n()V

    return-void

    :cond_e
    const-string v0, "statement"

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->g(Ljava/lang/String;)V

    throw v2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10e
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method B(I)V
    .locals 3

    iget-object v0, p0, Lc/a/a/a/f;->D:[C

    if-eqz v0, :cond_0

    iget v1, p0, Lc/a/a/a/f;->E:I

    add-int/lit8 v1, v1, 0x1

    array-length v0, v0

    if-le v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lc/a/a/a/f;->D:[C

    iget v1, p0, Lc/a/a/a/f;->E:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lc/a/a/a/a;->a([CI)[C

    move-result-object v0

    iput-object v0, p0, Lc/a/a/a/f;->D:[C

    :cond_1
    iget-object v0, p0, Lc/a/a/a/f;->D:[C

    iget v1, p0, Lc/a/a/a/f;->E:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc/a/a/a/f;->E:I

    int-to-char p1, p1

    aput-char p1, v0, v1

    return-void
.end method

.method C()V
    .locals 2

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->b(Z)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lc/a/a/a/f;->p:Lb/b/a/b/h;

    invoke-virtual {v0}, Lb/b/a/b/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lc/a/a/a/f;->h:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v0, v0, Lc/a/a/a/f$g;->a:I

    const/16 v1, 0x11b

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lc/a/a/a/f;->B()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lc/a/a/a/f;->B()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method C(I)V
    .locals 8

    iget v0, p0, Lc/a/a/a/f;->u:I

    iget v1, p0, Lc/a/a/a/f;->w:I

    new-instance v2, Lc/a/a/a/d;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lc/a/a/a/d;-><init>(I)V

    new-instance v3, Lc/a/a/a/f$i;

    invoke-direct {v3}, Lc/a/a/a/f$i;-><init>()V

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    iget-boolean v4, p0, Lc/a/a/a/f;->s:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const/16 v4, 0x28

    invoke-virtual {p0, v4}, Lc/a/a/a/f;->D(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0, v3}, Lc/a/a/a/f;->g(Lc/a/a/a/f$i;)V

    if-eqz v4, :cond_1

    const/16 v4, 0x29

    invoke-virtual {p0, v4}, Lc/a/a/a/f;->n(I)V

    const/16 v4, 0x7b

    invoke-virtual {p0, v4}, Lc/a/a/a/f;->D(I)Z

    move-result v4

    :cond_1
    if-nez v4, :cond_2

    const/16 v6, 0x108

    invoke-virtual {p0, v6}, Lc/a/a/a/f;->D(I)Z

    :cond_2
    :goto_1
    iget-object v6, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v6, v6, Lc/a/a/a/f$g;->a:I

    const/16 v7, 0x103

    if-ne v6, v7, :cond_3

    invoke-virtual {v3}, Lc/a/a/a/f$i;->clone()Lc/a/a/a/f$i;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lc/a/a/a/f;->a(Lc/a/a/a/d;Lc/a/a/a/f$i;)V

    goto :goto_1

    :cond_3
    const/16 v3, 0x106

    invoke-virtual {p0, v3}, Lc/a/a/a/f;->D(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lc/a/a/a/f;->b()V

    :cond_4
    iget-boolean v3, p0, Lc/a/a/a/f;->J:Z

    if-eqz v3, :cond_6

    if-eqz v4, :cond_5

    sget-object v3, Lc/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Lc/a/a/a/f;->u:I

    sub-int/2addr v7, v5

    iget v5, p0, Lc/a/a/a/f;->w:I

    invoke-direct {v6, v0, v1, v7, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    sget-object v3, Lc/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lc/a/a/a/f;->u:I

    add-int/lit8 v6, v6, -0x3

    iget v7, p0, Lc/a/a/a/f;->w:I

    invoke-direct {v5, v0, v1, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    const/16 v0, 0x11c

    if-eqz v4, :cond_7

    const/16 v1, 0x7d

    goto :goto_3

    :cond_7
    const/16 v1, 0x10b

    :goto_3
    invoke-virtual {p0, v1, v0, p1}, Lc/a/a/a/f;->b(III)V

    iget-object p1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget v0, v2, Lc/a/a/a/d;->a:I

    invoke-virtual {p1, v0}, Lc/a/a/a/b;->w(I)V

    return-void
.end method

.method D()Lc/a/a/j;
    .locals 1

    const/16 v0, 0x130

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->m(I)V

    iget-object v0, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget-object v0, v0, Lc/a/a/a/f$g;->b:Lc/a/a/a/f$f;

    iget-object v0, v0, Lc/a/a/a/f$f;->b:Lc/a/a/j;

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    return-object v0
.end method

.method D(I)Z
    .locals 1

    iget-object v0, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v0, v0, Lc/a/a/a/f$g;->a:I

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method E()Lc/a/a/j;
    .locals 1

    const/16 v0, 0x12f

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->m(I)V

    iget-object v0, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget-object v0, v0, Lc/a/a/a/f$g;->b:Lc/a/a/a/f$f;

    iget-object v0, v0, Lc/a/a/a/f$f;->b:Lc/a/a/j;

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    return-object v0
.end method

.method E(I)Z
    .locals 1

    iget-object v0, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v0, v0, Lc/a/a/a/f$g;->a:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method F(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x101

    if-ge p1, v0, :cond_1

    invoke-static {p1}, Lc/a/a/a/f;->L(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/a/a/f;->B:Lc/a/a/a/g$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "char("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/a/a/a/f;->B:Lc/a/a/a/g$a;

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lc/a/a/a/g$a;->b(Ljava/lang/String;)Ljava/lang/String;

    return-object p1

    :cond_1
    sget-object v1, Lc/a/a/a/f;->d:[Ljava/lang/String;

    sub-int/2addr p1, v0

    aget-object p1, v1, p1

    return-object p1
.end method

.method F()V
    .locals 13

    iget v0, p0, Lc/a/a/a/f;->u:I

    iget v1, p0, Lc/a/a/a/f;->w:I

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    new-instance v2, Lc/a/a/a/f$i;

    invoke-direct {v2}, Lc/a/a/a/f$i;-><init>()V

    iget-object v3, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-short v4, v3, Lc/a/a/a/b;->q:S

    const-string v5, "(try)"

    invoke-virtual {p0, v5}, Lc/a/a/a/f;->d(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lc/a/a/a/f;->l(I)V

    iget v6, p0, Lc/a/a/a/f;->w:I

    const/16 v7, 0x11f

    invoke-virtual {p0, v2, v7, v6}, Lc/a/a/a/f;->a(Lc/a/a/a/f$i;II)Z

    move-result v6

    iget-short v8, v3, Lc/a/a/a/b;->o:S

    sub-int/2addr v8, v5

    invoke-virtual {v3, v8}, Lc/a/a/a/b;->r(I)Lc/a/a/b;

    move-result-object v8

    iget v9, v3, Lc/a/a/a/b;->h:I

    iput v9, v8, Lc/a/a/b;->b:I

    const/16 v8, 0x104

    invoke-virtual {p0, v8}, Lc/a/a/a/f;->D(I)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    iget-short v6, v3, Lc/a/a/a/b;->q:S

    const-string v9, "(catch)"

    invoke-virtual {p0, v9}, Lc/a/a/a/f;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lc/a/a/a/f;->l(I)V

    iget v9, p0, Lc/a/a/a/f;->w:I

    invoke-virtual {p0, v2, v8, v9}, Lc/a/a/a/f;->a(Lc/a/a/a/f$i;II)Z

    move-result v8

    iget-short v9, v3, Lc/a/a/a/b;->o:S

    sub-int/2addr v9, v5

    invoke-virtual {v3, v9}, Lc/a/a/a/b;->r(I)Lc/a/a/b;

    move-result-object v9

    iget v11, v3, Lc/a/a/a/b;->h:I

    iput v11, v9, Lc/a/a/b;->b:I

    move v12, v8

    move v8, v6

    move v6, v12

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    const/16 v9, 0x10d

    invoke-virtual {p0, v9}, Lc/a/a/a/f;->D(I)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-short v10, v3, Lc/a/a/a/b;->q:S

    const-string v6, "(finally)"

    invoke-virtual {p0, v6}, Lc/a/a/a/f;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lc/a/a/a/f;->l(I)V

    iget v6, p0, Lc/a/a/a/f;->w:I

    invoke-virtual {p0, v2, v9, v6}, Lc/a/a/a/f;->a(Lc/a/a/a/f$i;II)Z

    move-result v6

    iget-short v2, v3, Lc/a/a/a/b;->o:S

    sub-int/2addr v2, v5

    invoke-virtual {v3, v2}, Lc/a/a/a/b;->r(I)Lc/a/a/b;

    move-result-object v2

    iget v9, v3, Lc/a/a/a/b;->h:I

    iput v9, v2, Lc/a/a/b;->b:I

    :cond_1
    iget-boolean v2, p0, Lc/a/a/a/f;->J:Z

    if-eqz v2, :cond_3

    if-eqz v6, :cond_2

    sget-object v2, Lc/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v9, Landroid/graphics/Rect;

    iget v11, p0, Lc/a/a/a/f;->q:I

    sub-int/2addr v11, v5

    iget v5, p0, Lc/a/a/a/f;->x:I

    invoke-direct {v9, v0, v1, v11, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-object v2, Lc/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    iget v9, p0, Lc/a/a/a/f;->u:I

    add-int/lit8 v9, v9, -0x3

    iget v11, p0, Lc/a/a/a/f;->w:I

    invoke-direct {v5, v0, v1, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    if-nez v6, :cond_4

    const/16 v0, 0x10b

    invoke-virtual {p0, v0, v7, v1}, Lc/a/a/a/f;->b(III)V

    :cond_4
    const/16 v0, 0x35

    invoke-virtual {v3, v0, v4, v8, v10}, Lc/a/a/a/b;->b(IIII)I

    return-void
.end method

.method G()I
    .locals 5

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    new-instance v1, Lc/a/a/a/f$i;

    invoke-direct {v1}, Lc/a/a/a/f$i;-><init>()V

    const-string v2, "(when)"

    invoke-virtual {p0, v2}, Lc/a/a/a/f;->d(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lc/a/a/a/f;->l(I)V

    iget v3, p0, Lc/a/a/a/f;->w:I

    invoke-virtual {p0, v1, v3}, Lc/a/a/a/f;->e(Lc/a/a/a/f$i;I)V

    iget-short v1, v0, Lc/a/a/a/b;->o:S

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lc/a/a/a/b;->r(I)Lc/a/a/b;

    move-result-object v1

    iget v3, v0, Lc/a/a/a/b;->h:I

    iput v3, v1, Lc/a/a/b;->b:I

    iget-short v1, v0, Lc/a/a/a/b;->o:S

    sub-int/2addr v1, v2

    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v1, v3, v4}, Lc/a/a/a/b;->b(IIII)I

    move-result v0

    return v0
.end method

.method G(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->F(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object p1, p0, Lc/a/a/a/f;->D:[C

    const/4 v0, 0x0

    iget v1, p0, Lc/a/a/a/f;->E:I

    invoke-static {p1, v0, v1}, Lc/a/a/j;->a([CII)Lc/a/a/j;

    move-result-object p1

    invoke-virtual {p1}, Lc/a/a/j;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x12e
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method H(I)V
    .locals 9

    iget v0, p0, Lc/a/a/a/f;->u:I

    iget v1, p0, Lc/a/a/a/f;->w:I

    iget-object v2, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    new-instance v3, Lc/a/a/a/b$a;

    invoke-direct {v3}, Lc/a/a/a/b$a;-><init>()V

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    iget-boolean v4, p0, Lc/a/a/a/f;->s:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const/16 v4, 0x28

    invoke-virtual {p0, v4}, Lc/a/a/a/f;->D(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2}, Lc/a/a/a/b;->b()I

    move-result v6

    invoke-virtual {p0}, Lc/a/a/a/f;->e()I

    move-result v7

    invoke-virtual {v2, v3, v5}, Lc/a/a/a/b;->a(Lc/a/a/a/b$a;Z)V

    if-eqz v4, :cond_1

    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Lc/a/a/a/f;->n(I)V

    const/16 v3, 0x7b

    invoke-virtual {p0, v3}, Lc/a/a/a/f;->D(I)Z

    move-result v4

    :cond_1
    if-nez v4, :cond_2

    const/16 v3, 0x108

    invoke-virtual {p0, v3}, Lc/a/a/a/f;->D(I)Z

    :cond_2
    invoke-virtual {p0}, Lc/a/a/a/f;->b()V

    invoke-virtual {p0}, Lc/a/a/a/f;->f()V

    invoke-virtual {v2}, Lc/a/a/a/b;->c()I

    move-result v3

    invoke-virtual {v2, v3, v6}, Lc/a/a/a/b;->g(II)V

    iget-boolean v3, p0, Lc/a/a/a/f;->J:Z

    if-eqz v3, :cond_4

    if-eqz v4, :cond_3

    sget-object v3, Lc/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v6, Landroid/graphics/Rect;

    iget v8, p0, Lc/a/a/a/f;->u:I

    sub-int/2addr v8, v5

    iget v5, p0, Lc/a/a/a/f;->w:I

    invoke-direct {v6, v0, v1, v8, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    sget-object v3, Lc/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lc/a/a/a/f;->u:I

    add-int/lit8 v6, v6, -0x3

    iget v8, p0, Lc/a/a/a/f;->w:I

    invoke-direct {v5, v0, v1, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    const/16 v0, 0x122

    if-eqz v4, :cond_5

    const/16 v1, 0x7d

    goto :goto_2

    :cond_5
    const/16 v1, 0x10b

    :goto_2
    invoke-virtual {p0, v1, v0, p1}, Lc/a/a/a/f;->b(III)V

    invoke-virtual {v2}, Lc/a/a/a/b;->d()V

    invoke-virtual {v2, v7}, Lc/a/a/a/b;->w(I)V

    return-void
.end method

.method a(Lc/a/a/a/f$f;)I
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lc/a/a/a/f;->E:I

    :cond_0
    :goto_1
    iget v1, p0, Lc/a/a/a/f;->v:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_23

    const/16 v3, 0xa

    if-eq v1, v3, :cond_22

    const/16 v3, 0xd

    if-eq v1, v3, :cond_22

    const/16 v3, 0x24

    if-eq v1, v3, :cond_21

    const/16 v3, 0x40

    if-eq v1, v3, :cond_20

    const/16 v3, 0x130

    const/16 v4, 0x5b

    if-eq v1, v4, :cond_1d

    const/16 v5, 0x7c

    if-eq v1, v5, :cond_1b

    const/16 v5, 0x7e

    const/16 v6, 0x3d

    if-eq v1, v5, :cond_19

    const/16 v5, 0x21

    if-eq v1, v5, :cond_17

    const/16 v5, 0x22

    if-eq v1, v5, :cond_16

    const/16 v5, 0x26

    if-eq v1, v5, :cond_14

    const/16 v5, 0x27

    if-eq v1, v5, :cond_16

    const/16 v3, 0x12e

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    invoke-direct {p0, v1}, Lc/a/a/a/f;->N(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lc/a/a/a/f;->g()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lc/a/a/a/a;->a(Z)V

    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    goto :goto_1

    :cond_1
    iget v1, p0, Lc/a/a/a/f;->v:I

    invoke-direct {p0, v1}, Lc/a/a/a/f;->M(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->b(Lc/a/a/a/f$f;)V

    return v3

    :cond_2
    iget v1, p0, Lc/a/a/a/f;->v:I

    invoke-direct {p0, v1}, Lc/a/a/a/f;->K(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lc/a/a/a/f;->v:I

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    return v1

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lc/a/a/a/f;->y()V

    iget v1, p0, Lc/a/a/a/f;->v:I

    invoke-direct {p0, v1}, Lc/a/a/a/f;->J(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lc/a/a/a/f;->D:[C

    iget v2, p0, Lc/a/a/a/f;->E:I

    invoke-virtual {p0, v1, v0, v2}, Lc/a/a/a/f;->a([CII)Lc/a/a/j;

    move-result-object v0

    sget-object v1, Lc/a/a/a/f;->f:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object p1, Lc/a/a/a/f;->f:Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_5
    iput-object v0, p1, Lc/a/a/a/f$f;->b:Lc/a/a/j;

    iget p1, p0, Lc/a/a/a/f;->u:I

    iput p1, p0, Lc/a/a/a/f;->t:I

    const/16 p1, 0x12f

    return p1

    :pswitch_0
    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    iget p1, p0, Lc/a/a/a/f;->v:I

    const/16 v0, 0x3e

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    const/16 p1, 0x12b

    return p1

    :cond_6
    if-eq p1, v6, :cond_7

    return v0

    :cond_7
    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    const/16 p1, 0x126

    return p1

    :pswitch_1
    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    iget p1, p0, Lc/a/a/a/f;->v:I

    if-eq p1, v6, :cond_8

    return v6

    :cond_8
    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    const/16 p1, 0x125

    return p1

    :pswitch_2
    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    iget p1, p0, Lc/a/a/a/f;->v:I

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_9

    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    const/16 p1, 0x12a

    return p1

    :cond_9
    if-eq p1, v6, :cond_a

    return v0

    :cond_a
    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    const/16 p1, 0x127

    return p1

    :pswitch_3
    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    iget p1, p0, Lc/a/a/a/f;->v:I

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_b

    return v0

    :cond_b
    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    const/16 p1, 0x12c

    return p1

    :pswitch_4
    invoke-virtual {p0, p1}, Lc/a/a/a/f;->b(Lc/a/a/a/f$f;)V

    return v3

    :pswitch_5
    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    iget p1, p0, Lc/a/a/a/f;->v:I

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    const/16 p1, 0x129

    return p1

    :pswitch_6
    invoke-virtual {p0}, Lc/a/a/a/f;->y()V

    const-string v0, "."

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/16 p1, 0x124

    return p1

    :cond_d
    const/16 p1, 0x123

    return p1

    :cond_e
    iget v0, p0, Lc/a/a/a/f;->v:I

    invoke-direct {p0, v0}, Lc/a/a/a/f;->M(I)Z

    move-result v0

    if-nez v0, :cond_f

    const/16 p1, 0x2e

    return p1

    :cond_f
    invoke-virtual {p0, p1}, Lc/a/a/a/f;->b(Lc/a/a/a/f$f;)V

    return v3

    :pswitch_7
    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    iget v1, p0, Lc/a/a/a/f;->v:I

    const/16 v3, 0x2d

    if-eq v1, v3, :cond_10

    return v3

    :cond_10
    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    iget v1, p0, Lc/a/a/a/f;->v:I

    if-ne v1, v4, :cond_11

    invoke-virtual {p0}, Lc/a/a/a/f;->z()I

    move-result v1

    if-ltz v1, :cond_11

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lc/a/a/a/f;->a(Lc/a/a/a/f$f;I)V

    goto/16 :goto_0

    :cond_11
    iget-boolean v1, p0, Lc/a/a/a/f;->J:Z

    if-eqz v1, :cond_13

    :goto_3
    invoke-virtual {p0}, Lc/a/a/a/f;->g()Z

    move-result v1

    if-nez v1, :cond_12

    iget v1, p0, Lc/a/a/a/f;->v:I

    if-eq v1, v2, :cond_12

    invoke-virtual {p0}, Lc/a/a/a/f;->y()V

    goto :goto_3

    :cond_12
    iget-object v1, p0, Lc/a/a/a/f;->D:[C

    iget v2, p0, Lc/a/a/a/f;->E:I

    invoke-virtual {p0, v1, v0, v2}, Lc/a/a/a/f;->a([CII)Lc/a/a/j;

    goto/16 :goto_0

    :cond_13
    :goto_4
    invoke-virtual {p0}, Lc/a/a/a/f;->g()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lc/a/a/a/f;->v:I

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    goto :goto_4

    :cond_14
    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    iget p1, p0, Lc/a/a/a/f;->v:I

    if-eq p1, v5, :cond_15

    return v5

    :cond_15
    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    const/16 p1, 0x101

    return p1

    :cond_16
    iget v0, p0, Lc/a/a/a/f;->v:I

    invoke-virtual {p0, v0, p1}, Lc/a/a/a/f;->a(ILc/a/a/a/f$f;)V

    return v3

    :cond_17
    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    iget p1, p0, Lc/a/a/a/f;->v:I

    if-eq p1, v6, :cond_18

    const/16 p1, 0x118

    return p1

    :cond_18
    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    const/16 p1, 0x128

    return p1

    :cond_19
    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    iget p1, p0, Lc/a/a/a/f;->v:I

    if-eq p1, v6, :cond_1a

    return v5

    :cond_1a
    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    const/16 p1, 0x128

    return p1

    :cond_1b
    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    iget p1, p0, Lc/a/a/a/f;->v:I

    if-eq p1, v5, :cond_1c

    return v5

    :cond_1c
    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    const/16 p1, 0x119

    return p1

    :cond_1d
    invoke-virtual {p0}, Lc/a/a/a/f;->z()I

    move-result v0

    if-ltz v0, :cond_1e

    invoke-virtual {p0, p1, v0}, Lc/a/a/a/f;->a(Lc/a/a/a/f$f;I)V

    return v3

    :cond_1e
    if-ne v0, v2, :cond_1f

    return v4

    :cond_1f
    const-string p1, "invalid long string delimiter"

    invoke-virtual {p0, p1, v3}, Lc/a/a/a/f;->a(Ljava/lang/String;I)V

    const/4 p1, 0x0

    throw p1

    :cond_20
    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    const/16 p1, 0x12c

    return p1

    :cond_21
    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    const/16 p1, 0x115

    return p1

    :cond_22
    invoke-virtual {p0}, Lc/a/a/a/f;->m()V

    goto/16 :goto_1

    :cond_23
    const/16 p1, 0x12d

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(Lc/a/a/a/f$i;ILc/a/a/n;)I
    .locals 3

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->g(Lc/a/a/a/f$i;)V

    const/4 p2, 0x1

    if-nez p3, :cond_0

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-short v1, v0, Lc/a/a/a/b;->o:S

    add-int/2addr v1, p2

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lc/a/a/a/b;->r(I)Lc/a/a/b;

    move-result-object v0

    iget-object v1, p1, Lc/a/a/a/f$i;->a:Lc/a/a/n;

    iput-object v1, v0, Lc/a/a/b;->f:Lc/a/a/n;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-short v1, v0, Lc/a/a/a/b;->o:S

    add-int/2addr v1, p2

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lc/a/a/a/b;->r(I)Lc/a/a/b;

    move-result-object v0

    iget-object v0, v0, Lc/a/a/b;->a:Lc/a/a/j;

    iget-object v1, p1, Lc/a/a/a/f$i;->a:Lc/a/a/n;

    invoke-virtual {p0, v0, p3, v1}, Lc/a/a/a/f;->a(Lc/a/a/j;Lc/a/a/n;Lc/a/a/n;)V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Lc/a/a/a/f;->D(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v1, p1}, Lc/a/a/a/b;->g(Lc/a/a/a/f$i;)V

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->g(Lc/a/a/a/f$i;)V

    add-int/lit8 v0, v0, 0x1

    if-nez p3, :cond_1

    iget-object v1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-short v2, v1, Lc/a/a/a/b;->o:S

    add-int/2addr v2, v0

    sub-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lc/a/a/a/b;->r(I)Lc/a/a/b;

    move-result-object v1

    iget-object v2, p1, Lc/a/a/a/f$i;->a:Lc/a/a/n;

    iput-object v2, v1, Lc/a/a/b;->f:Lc/a/a/n;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-short v2, v1, Lc/a/a/a/b;->o:S

    add-int/2addr v2, v0

    sub-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lc/a/a/a/b;->r(I)Lc/a/a/b;

    move-result-object v1

    iget-object v1, v1, Lc/a/a/b;->a:Lc/a/a/j;

    iget-object v2, p1, Lc/a/a/a/f$i;->a:Lc/a/a/n;

    invoke-virtual {p0, v1, p3, v2}, Lc/a/a/a/f;->a(Lc/a/a/j;Lc/a/a/n;Lc/a/a/n;)V

    goto :goto_1

    :cond_2
    return v0
.end method

.method a([Lc/a/a/a/f$d;ILc/a/a/j;II)I
    .locals 2

    new-instance v0, Lc/a/a/a/f$d;

    iget-object v1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-short v1, v1, Lc/a/a/a/b;->o:S

    invoke-direct {v0, p3, p5, p4, v1}, Lc/a/a/a/f$d;-><init>(Lc/a/a/j;IIS)V

    aput-object v0, p1, p2

    return p2
.end method

.method a([CII)Lc/a/a/j;
    .locals 1

    iget-object v0, p0, Lc/a/a/a/f;->B:Lc/a/a/a/g$a;

    invoke-static {p1, p2, p3}, Lc/a/a/j;->a([CII)Lc/a/a/j;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/a/a/a/g$a;->b(Lc/a/a/j;)Lc/a/a/j;

    move-result-object p1

    iget-boolean p2, p0, Lc/a/a/a/f;->J:Z

    if-eqz p2, :cond_0

    iget p2, p0, Lc/a/a/a/f;->u:I

    sub-int/2addr p2, p3

    iput p2, p0, Lc/a/a/a/f;->u:I

    iget p2, p0, Lc/a/a/a/f;->u:I

    invoke-virtual {p1}, Lc/a/a/j;->m()I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p0, Lc/a/a/a/f;->u:I

    :cond_0
    return-object p1
.end method

.method a()Lc/a/a/l;
    .locals 4

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-object v1, v0, Lc/a/a/a/b;->b:Lc/a/a/l;

    iget-object v2, v1, Lc/a/a/l;->e:[Lc/a/a/l;

    if-eqz v2, :cond_0

    iget v0, v0, Lc/a/a/a/b;->l:I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    :cond_0
    iget-object v0, v1, Lc/a/a/l;->e:[Lc/a/a/l;

    iget-object v2, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget v2, v2, Lc/a/a/a/b;->l:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Lc/a/a/a/a;->a([Lc/a/a/l;I)[Lc/a/a/l;

    move-result-object v0

    iput-object v0, v1, Lc/a/a/l;->e:[Lc/a/a/l;

    :cond_1
    iget-object v0, v1, Lc/a/a/l;->e:[Lc/a/a/l;

    iget-object v1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget v2, v1, Lc/a/a/a/b;->l:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lc/a/a/a/b;->l:I

    new-instance v1, Lc/a/a/l;

    invoke-direct {v1}, Lc/a/a/l;-><init>()V

    aput-object v1, v0, v2

    return-object v1
.end method

.method a(IILc/a/a/a/f$i;)V
    .locals 1

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    sub-int/2addr p1, p2

    iget p2, p3, Lc/a/a/a/f$i;->b:I

    invoke-virtual {p0, p2}, Lc/a/a/a/f;->v(I)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {v0, p3, p1}, Lc/a/a/a/b;->d(Lc/a/a/a/f$i;I)V

    if-le p1, p2, :cond_3

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1}, Lc/a/a/a/b;->z(I)V

    goto :goto_0

    :cond_1
    iget p2, p3, Lc/a/a/a/f$i;->b:I

    if-eqz p2, :cond_2

    invoke-virtual {v0, p3}, Lc/a/a/a/b;->g(Lc/a/a/a/f$i;)V

    :cond_2
    if-lez p1, :cond_3

    iget-short p2, v0, Lc/a/a/a/b;->q:S

    invoke-virtual {v0, p1}, Lc/a/a/a/b;->z(I)V

    invoke-virtual {v0, p2, p1}, Lc/a/a/a/b;->e(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method a(ILc/a/a/a/f$d;)V
    .locals 6

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-object v1, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget-object v1, v1, Lc/a/a/a/f$b;->c:[Lc/a/a/a/f$d;

    aget-object v2, v1, p1

    iget-object v3, v2, Lc/a/a/a/f$d;->a:Lc/a/a/j;

    iget-object v4, p2, Lc/a/a/a/f$d;->a:Lc/a/a/j;

    invoke-virtual {v3, v4}, Lc/a/a/j;->g(Lc/a/a/k;)Z

    move-result v3

    invoke-static {v3}, Lc/a/a/a/a;->a(Z)V

    iget-short v3, v2, Lc/a/a/a/f$d;->d:S

    iget-short v4, p2, Lc/a/a/a/f$d;->d:S

    const/4 v5, 0x0

    if-lt v3, v4, :cond_0

    iget v2, v2, Lc/a/a/a/f$d;->b:I

    iget p2, p2, Lc/a/a/a/f$d;->b:I

    invoke-virtual {v0, v2, p2}, Lc/a/a/a/b;->g(II)V

    add-int/lit8 p2, p1, 0x1

    iget-object v0, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget v0, v0, Lc/a/a/a/f$b;->d:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, p2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget p2, p1, Lc/a/a/a/f$b;->d:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lc/a/a/a/f$b;->d:I

    aput-object v5, v1, p2

    return-void

    :cond_0
    invoke-virtual {v0, v3}, Lc/a/a/a/b;->r(I)Lc/a/a/b;

    move-result-object p1

    iget-object p1, p1, Lc/a/a/b;->a:Lc/a/a/j;

    iget-object p2, p0, Lc/a/a/a/f;->B:Lc/a/a/a/g$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<goto "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lc/a/a/a/f$d;->a:Lc/a/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "> at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lc/a/a/a/f$d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " jumps into the scope of local \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lc/a/a/j;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lc/a/a/a/g$a;->b(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->f(Ljava/lang/String;)V

    throw v5
.end method

.method a(ILc/a/a/a/f$f;)V
    .locals 8

    :goto_0
    invoke-virtual {p0}, Lc/a/a/a/f;->y()V

    :cond_0
    :goto_1
    iget v0, p0, Lc/a/a/a/f;->v:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_10

    const-string v2, "unfinished string"

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_f

    const/16 v5, 0x130

    const/16 v6, 0xa

    if-eq v0, v6, :cond_e

    const/16 v7, 0xd

    if-eq v0, v7, :cond_e

    const/16 v2, 0x5c

    if-eq v0, v2, :cond_1

    :goto_2
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    iget v0, p0, Lc/a/a/a/f;->v:I

    if-eq v0, v3, :cond_0

    if-eq v0, v6, :cond_d

    if-eq v0, v7, :cond_d

    const/16 v2, 0x66

    if-eq v0, v2, :cond_b

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_c

    const/16 v2, 0x72

    if-eq v0, v2, :cond_a

    const/16 v2, 0x78

    if-eq v0, v2, :cond_9

    const/16 v2, 0x7a

    if-eq v0, v2, :cond_8

    const/16 v2, 0x61

    if-eq v0, v2, :cond_7

    const/16 v2, 0x62

    if-eq v0, v2, :cond_6

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v0}, Lc/a/a/a/f;->M(I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    :cond_3
    mul-int/lit8 v0, v0, 0xa

    iget v3, p0, Lc/a/a/a/f;->v:I

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    add-int/2addr v2, v1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_4

    iget v3, p0, Lc/a/a/a/f;->v:I

    invoke-direct {p0, v3}, Lc/a/a/a/f;->M(I)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_4
    const/16 v1, 0xff

    if-gt v0, v1, :cond_5

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->B(I)V

    goto :goto_1

    :cond_5
    const-string p1, "escape sequence too large"

    invoke-virtual {p0, p1, v5}, Lc/a/a/a/f;->a(Ljava/lang/String;I)V

    throw v4

    :pswitch_0
    const/16 v6, 0xb

    goto :goto_4

    :pswitch_1
    invoke-virtual {p0}, Lc/a/a/a/f;->w()I

    goto :goto_1

    :pswitch_2
    const/16 v6, 0x9

    goto :goto_4

    :cond_6
    const/16 v6, 0x8

    goto :goto_4

    :cond_7
    const/4 v6, 0x7

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    :goto_3
    iget v0, p0, Lc/a/a/a/f;->v:I

    invoke-direct {p0, v0}, Lc/a/a/a/f;->N(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/a/a/a/f;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lc/a/a/a/f;->m()V

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lc/a/a/a/f;->v()I

    move-result v6

    goto :goto_4

    :cond_a
    const/16 v6, 0xd

    goto :goto_4

    :cond_b
    const/16 v6, 0xc

    :cond_c
    :goto_4
    invoke-virtual {p0, v6}, Lc/a/a/a/f;->B(I)V

    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p0, v6}, Lc/a/a/a/f;->B(I)V

    invoke-virtual {p0}, Lc/a/a/a/f;->m()V

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p0, v2, v5}, Lc/a/a/a/f;->a(Ljava/lang/String;I)V

    throw v4

    :cond_f
    const/16 p1, 0x12d

    invoke-virtual {p0, v2, p1}, Lc/a/a/a/f;->a(Ljava/lang/String;I)V

    throw v4

    :cond_10
    invoke-virtual {p0}, Lc/a/a/a/f;->y()V

    iget-object p1, p0, Lc/a/a/a/f;->D:[C

    iget v0, p0, Lc/a/a/a/f;->E:I

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, p1, v1, v0}, Lc/a/a/a/f;->a([CII)Lc/a/a/j;

    move-result-object p1

    iput-object p1, p2, Lc/a/a/a/f$f;->b:Lc/a/a/j;

    return-void

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lc/a/a/a/b;)V
    .locals 3

    iget-boolean v0, p0, Lc/a/a/a/f;->J:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lc/a/a/a/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lc/a/a/a/f;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lc/a/a/a/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lc/a/a/a/f;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lc/a/a/a/f;->h:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lc/a/a/a/f;->i:I

    sput v0, Lc/a/a/a/f;->j:I

    iput v1, p0, Lc/a/a/a/f;->L:I

    :cond_0
    new-instance v0, Lc/a/a/a/b$a;

    invoke-direct {v0}, Lc/a/a/a/b$a;-><init>()V

    invoke-virtual {p0, p1, v0}, Lc/a/a/a/f;->a(Lc/a/a/a/b;Lc/a/a/a/b$a;)V

    iget-object p1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-object p1, p1, Lc/a/a/a/b;->b:Lc/a/a/l;

    const/4 v0, 0x1

    iput v0, p1, Lc/a/a/l;->m:I

    new-instance p1, Lc/a/a/a/f$i;

    invoke-direct {p1}, Lc/a/a/a/f$i;-><init>()V

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Lc/a/a/a/f$i;->a(II)V

    iget-object v1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-object v2, p0, Lc/a/a/a/f;->H:Lc/a/a/j;

    invoke-virtual {v1, v2, p1}, Lc/a/a/a/b;->a(Lc/a/a/j;Lc/a/a/a/f$i;)I

    iget-object p1, p0, Lc/a/a/a/f;->H:Lc/a/a/j;

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->a(Lc/a/a/j;)V

    new-instance p1, Lc/a/a/a/f$i;

    invoke-direct {p1}, Lc/a/a/a/f$i;-><init>()V

    iget-object v1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-object v2, p0, Lc/a/a/a/f;->H:Lc/a/a/j;

    invoke-static {v1, v2, p1, v0}, Lc/a/a/a/b;->a(Lc/a/a/a/b;Lc/a/a/j;Lc/a/a/a/f$i;I)I

    invoke-virtual {p0, v0, v0, p1}, Lc/a/a/a/f;->a(IILc/a/a/a/f$i;)V

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->l(I)V

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    const/16 p1, 0x7b

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->E(I)Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x130

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->E(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lc/a/a/a/f;->C()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lc/a/a/a/f;->x()V

    :goto_1
    const/16 p1, 0x12d

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->m(I)V

    invoke-virtual {p0}, Lc/a/a/a/f;->d()V

    iget-boolean p1, p0, Lc/a/a/a/f;->J:Z

    if-eqz p1, :cond_3

    sget-object p1, Lc/a/a/a/f;->o:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_3
    return-void
.end method

.method a(Lc/a/a/a/b;Lc/a/a/a/b$a;)V
    .locals 3

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iput-object v0, p1, Lc/a/a/a/b;->d:Lc/a/a/a/b;

    iput-object p0, p1, Lc/a/a/a/b;->e:Lc/a/a/a/f;

    iput-object p1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    const/4 v0, 0x0

    iput v0, p1, Lc/a/a/a/b;->h:I

    const/4 v1, -0x1

    iput v1, p1, Lc/a/a/a/b;->i:I

    new-instance v2, Lc/a/a/a/d;

    invoke-direct {v2, v1}, Lc/a/a/a/d;-><init>(I)V

    iput-object v2, p1, Lc/a/a/a/b;->j:Lc/a/a/a/d;

    iput-short v0, p1, Lc/a/a/a/b;->q:S

    iput v0, p1, Lc/a/a/a/b;->k:I

    iput v0, p1, Lc/a/a/a/b;->l:I

    iput-short v0, p1, Lc/a/a/a/b;->p:S

    iput-short v0, p1, Lc/a/a/a/b;->n:S

    iput-short v0, p1, Lc/a/a/a/b;->o:S

    iget-object v1, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget v1, v1, Lc/a/a/a/f$b;->b:I

    iput v1, p1, Lc/a/a/a/b;->m:I

    const/4 v1, 0x0

    iput-object v1, p1, Lc/a/a/a/b;->g:Lc/a/a/a/b$a;

    iget-object v1, p1, Lc/a/a/a/b;->b:Lc/a/a/l;

    iget-object v2, p0, Lc/a/a/a/f;->G:Lc/a/a/j;

    iput-object v2, v1, Lc/a/a/l;->i:Lc/a/a/j;

    const/4 v2, 0x2

    iput v2, v1, Lc/a/a/l;->n:I

    invoke-virtual {p1, p2, v0}, Lc/a/a/a/b;->a(Lc/a/a/a/b$a;Z)V

    return-void
.end method

.method a(Lc/a/a/a/d;Lc/a/a/a/f$i;)V
    .locals 8

    new-instance v0, Lc/a/a/a/f$i;

    invoke-direct {v0}, Lc/a/a/a/f$i;-><init>()V

    new-instance v1, Lc/a/a/a/b$a;

    invoke-direct {v1}, Lc/a/a/a/b$a;-><init>()V

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    invoke-virtual {p2}, Lc/a/a/a/f$i;->clone()Lc/a/a/a/f$i;

    move-result-object v2

    invoke-virtual {p0}, Lc/a/a/a/f;->i()V

    iget-object v3, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, p2}, Lc/a/a/a/b;->a(ILc/a/a/a/f$i;)V

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->g(Lc/a/a/a/f$i;)V

    iget-object v3, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget v5, p0, Lc/a/a/a/f;->w:I

    invoke-virtual {v3, v4, p2, v0, v5}, Lc/a/a/a/b;->b(ILc/a/a/a/f$i;Lc/a/a/a/f$i;I)V

    :goto_0
    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Lc/a/a/a/f;->D(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lc/a/a/a/f$i;->clone()Lc/a/a/a/f$i;

    move-result-object v3

    iget-object v5, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v5, v4, v3}, Lc/a/a/a/b;->a(ILc/a/a/a/f$i;)V

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->g(Lc/a/a/a/f$i;)V

    iget-object v5, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget v6, p0, Lc/a/a/a/f;->w:I

    invoke-virtual {v5, v4, v3, v0, v6}, Lc/a/a/a/b;->b(ILc/a/a/a/f$i;Lc/a/a/a/f$i;I)V

    iget-object v5, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    const/16 v6, 0x14

    invoke-virtual {v5, v6, p2}, Lc/a/a/a/b;->a(ILc/a/a/a/f$i;)V

    iget-object v5, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget v7, p0, Lc/a/a/a/f;->w:I

    invoke-virtual {v5, v6, p2, v3, v7}, Lc/a/a/a/b;->b(ILc/a/a/a/f$i;Lc/a/a/a/f$i;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lc/a/a/a/f;->n()V

    const/16 v0, 0x11d

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->D(I)Z

    iget-object v0, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v0, v0, Lc/a/a/a/f$g;->a:I

    const/16 v2, 0x110

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/16 v2, 0x102

    if-eq v0, v2, :cond_4

    const/16 v2, 0x105

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v0, p2}, Lc/a/a/a/b;->m(Lc/a/a/a/f$i;)V

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v0, v1, v3}, Lc/a/a/a/b;->a(Lc/a/a/a/b$a;Z)V

    iget-object p2, p2, Lc/a/a/a/f$i;->e:Lc/a/a/a/d;

    iget p2, p2, Lc/a/a/a/d;->a:I

    invoke-virtual {p0}, Lc/a/a/a/f;->C()V

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v0}, Lc/a/a/a/b;->d()V

    iget-object v0, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v0, v0, Lc/a/a/a/f$g;->a:I

    const/16 v1, 0x103

    if-eq v0, v1, :cond_2

    const/16 v1, 0x106

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v0}, Lc/a/a/a/b;->c()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lc/a/a/a/b;->a(Lc/a/a/a/d;I)V

    :cond_3
    iget-object p1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {p1, p2}, Lc/a/a/a/b;->w(I)V

    return-void

    :cond_4
    :goto_1
    iget-object p1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {p1, p2}, Lc/a/a/a/b;->l(Lc/a/a/a/f$i;)V

    iget-object p1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {p1, v1, v3}, Lc/a/a/a/b;->a(Lc/a/a/a/b$a;Z)V

    iget-object p1, p2, Lc/a/a/a/f$i;->d:Lc/a/a/a/d;

    iget p1, p1, Lc/a/a/a/d;->a:I

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->u(I)V

    invoke-virtual {p0}, Lc/a/a/a/f;->A()V

    invoke-virtual {p0, v3}, Lc/a/a/a/f;->b(Z)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {p1}, Lc/a/a/a/b;->d()V

    return-void

    :cond_5
    const-string p1, "unreachable statement"

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->g(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    return-void
.end method

.method a(Lc/a/a/a/f$a;)V
    .locals 4

    iget-object v0, p1, Lc/a/a/a/f$a;->a:Lc/a/a/a/f$i;

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->g(Lc/a/a/a/f$i;)V

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget v1, p1, Lc/a/a/a/f$a;->d:I

    const v2, 0x7ffffffd

    const-string v3, "items in a constructor"

    invoke-virtual {v0, v1, v2, v3}, Lc/a/a/a/b;->a(IILjava/lang/String;)V

    iget v0, p1, Lc/a/a/a/f$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lc/a/a/a/f$a;->d:I

    iget v0, p1, Lc/a/a/a/f$a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lc/a/a/a/f$a;->e:I

    return-void
.end method

.method a(Lc/a/a/a/f$c;I)V
    .locals 6

    new-instance v0, Lc/a/a/a/f$i;

    invoke-direct {v0}, Lc/a/a/a/f$i;-><init>()V

    iget-object v1, p1, Lc/a/a/a/f$c;->b:Lc/a/a/a/f$i;

    iget v1, v1, Lc/a/a/a/f$i;->b:I

    const/16 v2, 0xb

    const/4 v3, 0x1

    const/4 v4, 0x7

    if-gt v4, v1, :cond_0

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "syntax error"

    invoke-virtual {p0, v1, v4}, Lc/a/a/a/f;->b(ZLjava/lang/String;)V

    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Lc/a/a/a/f;->D(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lc/a/a/a/f$c;

    invoke-direct {v1}, Lc/a/a/a/f$c;-><init>()V

    iput-object p1, v1, Lc/a/a/a/f$c;->a:Lc/a/a/a/f$c;

    iget-object v4, v1, Lc/a/a/a/f$c;->b:Lc/a/a/a/f$i;

    invoke-virtual {p0, v4}, Lc/a/a/a/f;->n(Lc/a/a/a/f$i;)V

    iget-object v4, v1, Lc/a/a/a/f$c;->b:Lc/a/a/a/f$i;

    iget v5, v4, Lc/a/a/a/f$i;->b:I

    if-eq v5, v2, :cond_1

    invoke-virtual {p0, p1, v4}, Lc/a/a/a/f;->a(Lc/a/a/a/f$c;Lc/a/a/a/f$i;)V

    :cond_1
    add-int/2addr p2, v3

    invoke-virtual {p0, v1, p2}, Lc/a/a/a/f;->a(Lc/a/a/a/f$c;I)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Lc/a/a/a/f;->n(I)V

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->f(Lc/a/a/a/f$i;)I

    move-result v1

    if-eq v1, p2, :cond_4

    invoke-virtual {p0, p2, v1, v0}, Lc/a/a/a/f;->a(IILc/a/a/a/f$i;)V

    if-le v1, p2, :cond_3

    iget-object v2, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-short v4, v2, Lc/a/a/a/b;->q:S

    sub-int/2addr v1, p2

    sub-int/2addr v4, v1

    int-to-short p2, v4

    iput-short p2, v2, Lc/a/a/a/b;->q:S

    :cond_3
    :goto_1
    const/4 p2, 0x6

    iget-object v1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-short v1, v1, Lc/a/a/a/b;->q:S

    sub-int/2addr v1, v3

    invoke-virtual {v0, p2, v1}, Lc/a/a/a/f$i;->a(II)V

    :goto_2
    iget-object p2, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-object p1, p1, Lc/a/a/a/f$c;->b:Lc/a/a/a/f$i;

    invoke-virtual {p2, p1, v0}, Lc/a/a/a/b;->c(Lc/a/a/a/f$i;Lc/a/a/a/f$i;)Z

    return-void

    :cond_4
    iget-object p2, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {p2, v0}, Lc/a/a/a/b;->p(Lc/a/a/a/f$i;)V

    goto :goto_2
.end method

.method a(Lc/a/a/a/f$c;Lc/a/a/a/f$i;)V
    .locals 9

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-short v1, v0, Lc/a/a/a/b;->q:S

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x7

    if-eqz p1, :cond_2

    iget-object v6, p1, Lc/a/a/a/f$c;->b:Lc/a/a/a/f$i;

    iget v7, v6, Lc/a/a/a/f$i;->b:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_1

    iget-object v6, v6, Lc/a/a/a/f$i;->c:Lc/a/a/a/f$i$a;

    iget-short v7, v6, Lc/a/a/a/f$i$a;->c:S

    iget v8, p2, Lc/a/a/a/f$i;->b:I

    if-ne v7, v8, :cond_0

    iget-short v7, v6, Lc/a/a/a/f$i$a;->b:S

    iget-object v8, p2, Lc/a/a/a/f$i;->c:Lc/a/a/a/f$i$a;

    iget v8, v8, Lc/a/a/a/f$i$a;->e:I

    if-ne v7, v8, :cond_0

    iput-short v5, v6, Lc/a/a/a/f$i$a;->c:S

    iput-short v1, v6, Lc/a/a/a/f$i$a;->b:S

    const/4 v3, 0x1

    :cond_0
    iget v6, p2, Lc/a/a/a/f$i;->b:I

    if-ne v6, v5, :cond_1

    iget-object v5, p1, Lc/a/a/a/f$c;->b:Lc/a/a/a/f$i;

    iget-object v5, v5, Lc/a/a/a/f$i;->c:Lc/a/a/a/f$i$a;

    iget-short v6, v5, Lc/a/a/a/f$i$a;->a:S

    iget-object v7, p2, Lc/a/a/a/f$i;->c:Lc/a/a/a/f$i$a;

    iget v7, v7, Lc/a/a/a/f$i$a;->e:I

    if-ne v6, v7, :cond_1

    iput-short v1, v5, Lc/a/a/a/f$i$a;->a:S

    const/4 v3, 0x1

    :cond_1
    iget-object p1, p1, Lc/a/a/a/f$c;->a:Lc/a/a/a/f$c;

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    iget p1, p2, Lc/a/a/a/f$i;->b:I

    if-ne p1, v5, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/4 p1, 0x5

    :goto_1
    iget-object p2, p2, Lc/a/a/a/f$i;->c:Lc/a/a/a/f$i$a;

    iget p2, p2, Lc/a/a/a/f$i$a;->e:I

    invoke-virtual {v0, p1, v1, p2, v2}, Lc/a/a/a/b;->b(IIII)I

    invoke-virtual {v0, v4}, Lc/a/a/a/b;->z(I)V

    :cond_4
    return-void
.end method

.method a(Lc/a/a/a/f$d;)V
    .locals 4

    iget-object v0, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget-object v0, v0, Lc/a/a/a/f$b;->c:[Lc/a/a/a/f$d;

    iget-object v1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-object v1, v1, Lc/a/a/a/b;->g:Lc/a/a/a/b$a;

    iget-short v1, v1, Lc/a/a/a/b$a;->c:S

    :goto_0
    iget-object v2, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget v2, v2, Lc/a/a/a/f$b;->d:I

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    iget-object v2, v2, Lc/a/a/a/f$d;->a:Lc/a/a/j;

    iget-object v3, p1, Lc/a/a/a/f$d;->a:Lc/a/a/j;

    invoke-virtual {v2, v3}, Lc/a/a/j;->g(Lc/a/a/k;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, p1}, Lc/a/a/a/f;->a(ILc/a/a/a/f$d;)V

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method a(Lc/a/a/a/f$f;I)V
    .locals 5

    invoke-virtual {p0}, Lc/a/a/a/f;->y()V

    invoke-virtual {p0}, Lc/a/a/a/f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/a/a/a/f;->m()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-nez v1, :cond_9

    iget v2, p0, Lc/a/a/a/f;->v:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    const/16 v3, 0xa

    if-eq v2, v3, :cond_6

    const/16 v4, 0xd

    if-eq v2, v4, :cond_6

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_4

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_3

    if-nez p1, :cond_5

    iget-boolean v2, p0, Lc/a/a/a/f;->J:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lc/a/a/a/f;->z()I

    move-result v2

    if-ne v2, p2, :cond_1

    invoke-virtual {p0}, Lc/a/a/a/f;->y()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lc/a/a/a/f;->z()I

    move-result v2

    if-ne v2, p2, :cond_1

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lc/a/a/a/f;->y()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v3}, Lc/a/a/a/f;->B(I)V

    invoke-virtual {p0}, Lc/a/a/a/f;->m()V

    if-nez p1, :cond_1

    iget-boolean v2, p0, Lc/a/a/a/f;->J:Z

    if-nez v2, :cond_1

    iput v0, p0, Lc/a/a/a/f;->E:I

    goto :goto_0

    :cond_7
    if-eqz p1, :cond_8

    const-string p1, "unfinished long string"

    goto :goto_2

    :cond_8
    const-string p1, "unfinished long comment"

    :goto_2
    const/16 p2, 0x12d

    invoke-virtual {p0, p1, p2}, Lc/a/a/a/f;->a(Ljava/lang/String;I)V

    const/4 p1, 0x0

    throw p1

    :cond_9
    if-eqz p1, :cond_a

    iget-object v0, p0, Lc/a/a/a/f;->D:[C

    add-int/lit8 p2, p2, 0x2

    iget v1, p0, Lc/a/a/a/f;->E:I

    mul-int/lit8 v2, p2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, p2, v1}, Lc/a/a/a/f;->a([CII)Lc/a/a/j;

    move-result-object p2

    iput-object p2, p1, Lc/a/a/a/f$f;->b:Lc/a/a/j;

    goto :goto_3

    :cond_a
    iget-boolean p1, p0, Lc/a/a/a/f;->J:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lc/a/a/a/f;->D:[C

    add-int/lit8 p2, p2, 0x2

    iget v0, p0, Lc/a/a/a/f;->E:I

    mul-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lc/a/a/a/f;->a([CII)Lc/a/a/j;

    :cond_b
    :goto_3
    return-void
.end method

.method a(Lc/a/a/a/f$i;)V
    .locals 1

    invoke-virtual {p0}, Lc/a/a/a/f;->E()Lc/a/a/j;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lc/a/a/a/f;->a(Lc/a/a/a/f$i;Lc/a/a/j;)V

    return-void
.end method

.method a(Lc/a/a/a/f$i;I)V
    .locals 3

    new-instance v0, Lc/a/a/a/b;

    invoke-direct {v0}, Lc/a/a/a/b;-><init>()V

    new-instance v1, Lc/a/a/a/b$a;

    invoke-direct {v1}, Lc/a/a/a/b$a;-><init>()V

    invoke-virtual {p0}, Lc/a/a/a/f;->a()Lc/a/a/l;

    move-result-object v2

    iput-object v2, v0, Lc/a/a/a/b;->b:Lc/a/a/l;

    iget-object v2, v0, Lc/a/a/a/b;->b:Lc/a/a/l;

    iput p2, v2, Lc/a/a/l;->j:I

    iget p2, p0, Lc/a/a/a/f;->u:I

    iput p2, v2, Lc/a/a/l;->p:I

    invoke-virtual {p0, v0, v1}, Lc/a/a/a/f;->a(Lc/a/a/a/b;Lc/a/a/a/b$a;)V

    iget-object p2, v0, Lc/a/a/a/b;->b:Lc/a/a/l;

    const-string v1, "defer"

    iput-object v1, p2, Lc/a/a/l;->q:Ljava/lang/String;

    const/16 p2, 0x28

    invoke-virtual {p0, p2}, Lc/a/a/a/f;->D(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lc/a/a/a/f;->u()V

    const/16 p2, 0x29

    invoke-virtual {p0, p2}, Lc/a/a/a/f;->n(I)V

    :cond_0
    invoke-virtual {p0}, Lc/a/a/a/f;->B()V

    iget-object p2, v0, Lc/a/a/a/b;->b:Lc/a/a/l;

    iget v0, p0, Lc/a/a/a/f;->u:I

    iput v0, p2, Lc/a/a/l;->o:I

    iget v0, p0, Lc/a/a/a/f;->w:I

    iput v0, p2, Lc/a/a/l;->k:I

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->c(Lc/a/a/a/f$i;)V

    invoke-virtual {p0}, Lc/a/a/a/f;->d()V

    return-void
.end method

.method a(Lc/a/a/a/f$i;Lc/a/a/j;)V
    .locals 1

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v0, p2}, Lc/a/a/a/b;->c(Lc/a/a/j;)I

    move-result p2

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Lc/a/a/a/f$i;->a(II)V

    return-void
.end method

.method a(Lc/a/a/a/f$i;ZI)V
    .locals 7

    iget v0, p0, Lc/a/a/a/f;->u:I

    iget v1, p0, Lc/a/a/a/f;->w:I

    new-instance v2, Lc/a/a/a/b;

    invoke-direct {v2}, Lc/a/a/a/b;-><init>()V

    new-instance v3, Lc/a/a/a/b$a;

    invoke-direct {v3}, Lc/a/a/a/b$a;-><init>()V

    invoke-virtual {p0}, Lc/a/a/a/f;->a()Lc/a/a/l;

    move-result-object v4

    iput-object v4, v2, Lc/a/a/a/b;->b:Lc/a/a/l;

    iget-object v4, v2, Lc/a/a/a/b;->b:Lc/a/a/l;

    iput p3, v4, Lc/a/a/l;->j:I

    iget v5, p0, Lc/a/a/a/f;->u:I

    iput v5, v4, Lc/a/a/l;->p:I

    invoke-virtual {p0, v2, v3}, Lc/a/a/a/f;->a(Lc/a/a/a/b;Lc/a/a/a/b$a;)V

    const/16 v3, 0x28

    invoke-virtual {p0, v3}, Lc/a/a/a/f;->n(I)V

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    const-string p2, "self"

    invoke-virtual {p0, p2}, Lc/a/a/a/f;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lc/a/a/a/f;->l(I)V

    :cond_0
    invoke-virtual {p0}, Lc/a/a/a/f;->u()V

    const/16 p2, 0x29

    invoke-virtual {p0, p2}, Lc/a/a/a/f;->n(I)V

    iget-boolean p2, p0, Lc/a/a/a/f;->s:Z

    if-eqz p2, :cond_1

    const/16 p2, 0x7b

    invoke-virtual {p0, p2}, Lc/a/a/a/f;->D(I)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget-object v4, p0, Lc/a/a/a/f;->H:Lc/a/a/j;

    invoke-virtual {p0, v4}, Lc/a/a/a/f;->a(Lc/a/a/j;)V

    new-instance v4, Lc/a/a/a/f$i;

    invoke-direct {v4}, Lc/a/a/a/f$i;-><init>()V

    iget-object v5, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-object v6, p0, Lc/a/a/a/f;->H:Lc/a/a/j;

    invoke-static {v5, v6, v4, v3}, Lc/a/a/a/b;->a(Lc/a/a/a/b;Lc/a/a/j;Lc/a/a/a/f$i;I)I

    invoke-virtual {p0, v3, v3, v4}, Lc/a/a/a/f;->a(IILc/a/a/a/f$i;)V

    invoke-virtual {p0, v3}, Lc/a/a/a/f;->l(I)V

    invoke-virtual {p0}, Lc/a/a/a/f;->C()V

    iget-object v2, v2, Lc/a/a/a/b;->b:Lc/a/a/l;

    iget v4, p0, Lc/a/a/a/f;->u:I

    iput v4, v2, Lc/a/a/l;->o:I

    iget v4, p0, Lc/a/a/a/f;->w:I

    iput v4, v2, Lc/a/a/l;->k:I

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->c(Lc/a/a/a/f$i;)V

    invoke-virtual {p0}, Lc/a/a/a/f;->d()V

    iget-boolean p1, p0, Lc/a/a/a/f;->J:Z

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    sget-object p1, Lc/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    iget v4, p0, Lc/a/a/a/f;->u:I

    sub-int/2addr v4, v3

    iget v3, p0, Lc/a/a/a/f;->w:I

    invoke-direct {v2, v0, v1, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    :cond_2
    sget-object p1, Lc/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lc/a/a/a/f;->u:I

    add-int/lit8 v3, v3, -0x3

    iget v4, p0, Lc/a/a/a/f;->w:I

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/16 p1, 0x10f

    if-eqz p2, :cond_4

    const/16 p2, 0x7d

    goto :goto_2

    :cond_4
    const/16 p2, 0x10b

    :goto_2
    invoke-virtual {p0, p2, p1, p3}, Lc/a/a/a/f;->b(III)V

    return-void
.end method

.method a(Lc/a/a/a/g$a;ILjava/io/InputStream;Lc/a/a/j;)V
    .locals 1

    const/16 v0, 0x2e

    iput-byte v0, p0, Lc/a/a/a/f;->I:B

    iput-object p1, p0, Lc/a/a/a/f;->B:Lc/a/a/a/g$a;

    iget-object p1, p0, Lc/a/a/a/f;->z:Lc/a/a/a/f$g;

    const/16 v0, 0x12d

    iput v0, p1, Lc/a/a/a/f$g;->a:I

    iput-object p3, p0, Lc/a/a/a/f;->C:Ljava/io/InputStream;

    const/4 p1, 0x0

    iput-object p1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    const/4 p1, 0x1

    iput p1, p0, Lc/a/a/a/f;->w:I

    iput p1, p0, Lc/a/a/a/f;->x:I

    iput-object p4, p0, Lc/a/a/a/f;->G:Lc/a/a/j;

    sget-object p1, Lc/a/a/k;->j:Lc/a/a/j;

    iput-object p1, p0, Lc/a/a/a/f;->H:Lc/a/a/j;

    const/4 p1, 0x0

    iput p1, p0, Lc/a/a/a/f;->E:I

    iput p2, p0, Lc/a/a/a/f;->v:I

    invoke-direct {p0}, Lc/a/a/a/f;->H()V

    return-void
.end method

.method a(Lc/a/a/j;)V
    .locals 5

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->b(Lc/a/a/j;)I

    move-result p1

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-object v1, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget v1, v1, Lc/a/a/a/f$b;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v3, 0xc8

    const-string v4, "local variables"

    invoke-virtual {v0, v1, v3, v4}, Lc/a/a/a/b;->a(IILjava/lang/String;)V

    iget-object v0, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget-object v1, v0, Lc/a/a/a/f$b;->a:[Lc/a/a/a/f$h;

    if-eqz v1, :cond_0

    iget v0, v0, Lc/a/a/a/f$b;->b:I

    add-int/2addr v0, v2

    array-length v1, v1

    if-le v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget-object v1, v0, Lc/a/a/a/f$b;->a:[Lc/a/a/a/f$h;

    iget v3, v0, Lc/a/a/a/f$b;->b:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Lc/a/a/a/a;->a([Lc/a/a/a/f$h;I)[Lc/a/a/a/f$h;

    move-result-object v1

    iput-object v1, v0, Lc/a/a/a/f$b;->a:[Lc/a/a/a/f$h;

    :cond_1
    iget-object v0, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget-object v1, v0, Lc/a/a/a/f$b;->a:[Lc/a/a/a/f$h;

    iget v2, v0, Lc/a/a/a/f$b;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lc/a/a/a/f$b;->b:I

    new-instance v0, Lc/a/a/a/f$h;

    invoke-direct {v0, p1}, Lc/a/a/a/f$h;-><init>(I)V

    aput-object v0, v1, v2

    return-void
.end method

.method a(Lc/a/a/j;I)V
    .locals 9

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-object v1, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget-object v2, v1, Lc/a/a/a/f$b;->e:[Lc/a/a/a/f$d;

    iget v1, v1, Lc/a/a/a/f$b;->f:I

    invoke-virtual {v0, v2, v1, p1}, Lc/a/a/a/b;->a([Lc/a/a/a/f$d;ILc/a/a/j;)V

    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->D(I)Z

    iget-object v0, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget-object v1, v0, Lc/a/a/a/f$b;->e:[Lc/a/a/a/f$d;

    iget v2, v0, Lc/a/a/a/f$b;->f:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lc/a/a/a/a;->a([Lc/a/a/a/f$d;I)[Lc/a/a/a/f$d;

    move-result-object v4

    iput-object v4, v0, Lc/a/a/a/f$b;->e:[Lc/a/a/a/f$d;

    iget-object v0, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget v1, v0, Lc/a/a/a/f$b;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lc/a/a/a/f$b;->f:I

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v0}, Lc/a/a/a/b;->b()I

    move-result v8

    move-object v3, p0

    move v5, v1

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Lc/a/a/a/f;->a([Lc/a/a/a/f$d;ILc/a/a/j;II)I

    invoke-virtual {p0}, Lc/a/a/a/f;->A()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->b(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget-object p1, p1, Lc/a/a/a/f$b;->e:[Lc/a/a/a/f$d;

    aget-object p1, p1, v1

    iget-object p2, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-object p2, p2, Lc/a/a/a/b;->g:Lc/a/a/a/b$a;

    iget-short p2, p2, Lc/a/a/a/b$a;->d:S

    iput-short p2, p1, Lc/a/a/a/f$d;->d:S

    :cond_0
    iget-object p1, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget-object p1, p1, Lc/a/a/a/f$b;->e:[Lc/a/a/a/f$d;

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->a(Lc/a/a/a/f$d;)V

    return-void
.end method

.method a(Lc/a/a/j;Lc/a/a/n;)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lc/a/a/a/f;->b(Lc/a/a/j;Lc/a/a/n;)I

    move-result p1

    iget-object p2, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-object v0, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget v0, v0, Lc/a/a/a/f$b;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/16 v2, 0xc8

    const-string v3, "local variables"

    invoke-virtual {p2, v0, v2, v3}, Lc/a/a/a/b;->a(IILjava/lang/String;)V

    iget-object p2, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget-object v0, p2, Lc/a/a/a/f$b;->a:[Lc/a/a/a/f$h;

    if-eqz v0, :cond_0

    iget p2, p2, Lc/a/a/a/f$b;->b:I

    add-int/2addr p2, v1

    array-length v0, v0

    if-le p2, v0, :cond_1

    :cond_0
    iget-object p2, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget-object v0, p2, Lc/a/a/a/f$b;->a:[Lc/a/a/a/f$h;

    iget v2, p2, Lc/a/a/a/f$b;->b:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lc/a/a/a/a;->a([Lc/a/a/a/f$h;I)[Lc/a/a/a/f$h;

    move-result-object v0

    iput-object v0, p2, Lc/a/a/a/f$b;->a:[Lc/a/a/a/f$h;

    :cond_1
    iget-object p2, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget-object v0, p2, Lc/a/a/a/f$b;->a:[Lc/a/a/a/f$h;

    iget v1, p2, Lc/a/a/a/f$b;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p2, Lc/a/a/a/f$b;->b:I

    new-instance p2, Lc/a/a/a/f$h;

    invoke-direct {p2, p1}, Lc/a/a/a/f$h;-><init>(I)V

    aput-object p2, v0, v1

    return-void
.end method

.method public a(Lc/a/a/j;Lc/a/a/n;Lc/a/a/n;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    iget v0, p3, Lc/a/a/n;->g:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lc/a/a/n;->h:Ljava/lang/String;

    iget-object v1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v1, p3}, Lc/a/a/a/b;->a(Lc/a/a/n;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lc/a/a/a/f;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    iget-object v1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v1, p2}, Lc/a/a/a/b;->a(Lc/a/a/n;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x3

    iget-object p2, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {p2, p3}, Lc/a/a/a/b;->a(Lc/a/a/n;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "%d: local %s type error %s %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lc/a/a/a/f;->h:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method a(Ljava/lang/String;I)V
    .locals 4

    iget-boolean v0, p0, Lc/a/a/a/f;->J:Z

    const-string v1, " near "

    const-string v2, ": "

    if-eqz v0, :cond_0

    sget v0, Lc/a/a/a/f;->j:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lc/a/a/a/f;->w:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lc/a/a/a/f;->G(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/a/a/a/f;->h:Ljava/lang/String;

    iget v0, p0, Lc/a/a/a/f;->q:I

    sput v0, Lc/a/a/a/f;->j:I

    :cond_0
    iget-object v0, p0, Lc/a/a/a/f;->G:Lc/a/a/j;

    invoke-virtual {v0}, Lc/a/a/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lc/a/a/a/f;->B:Lc/a/a/a/g$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lc/a/a/a/f;->w:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": syntax error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lc/a/a/a/f;->G(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/a/a/a/g$a;->b(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lc/a/a/a/f;->B:Lc/a/a/a/g$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lc/a/a/a/f;->w:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lc/a/a/a/g$a;->b(Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    new-instance p2, Lc/a/a/f;

    invoke-direct {p2, p1}, Lc/a/a/f;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method a(IIIZ)Z
    .locals 4

    new-instance v0, Lc/a/a/a/b$a;

    invoke-direct {v0}, Lc/a/a/a/b$a;-><init>()V

    iget-object v1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lc/a/a/a/f;->l(I)V

    if-eqz p4, :cond_0

    const/16 p4, 0x29

    invoke-virtual {p0, p4}, Lc/a/a/a/f;->n(I)V

    const/16 p4, 0x7b

    invoke-virtual {p0, p4}, Lc/a/a/a/f;->D(I)Z

    move-result p4

    :cond_0
    if-nez p4, :cond_1

    const/16 v2, 0x108

    invoke-virtual {p0, v2}, Lc/a/a/a/f;->D(I)Z

    :cond_1
    invoke-virtual {v1}, Lc/a/a/a/b;->c()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lc/a/a/a/b;->a(Lc/a/a/a/b$a;Z)V

    invoke-virtual {p0, p3}, Lc/a/a/a/f;->l(I)V

    invoke-virtual {v1, p3}, Lc/a/a/a/b;->z(I)V

    invoke-virtual {p0}, Lc/a/a/a/f;->b()V

    invoke-virtual {p0}, Lc/a/a/a/f;->f()V

    invoke-virtual {v1}, Lc/a/a/a/b;->d()V

    invoke-virtual {v1, v2}, Lc/a/a/a/b;->w(I)V

    const/16 v0, 0x34

    invoke-virtual {v1, v0, p1, v3, p3}, Lc/a/a/a/b;->b(IIII)I

    invoke-virtual {v1, p2}, Lc/a/a/a/b;->n(I)V

    const/16 p3, 0x23

    add-int/lit8 p1, p1, 0x2

    const/4 v0, -0x1

    invoke-virtual {v1, p3, p1, v0}, Lc/a/a/a/b;->c(III)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, p1, v2}, Lc/a/a/a/b;->g(II)V

    invoke-virtual {v1, p2}, Lc/a/a/a/b;->n(I)V

    return p4
.end method

.method a(IIIZZ)Z
    .locals 5

    new-instance v0, Lc/a/a/a/b$a;

    invoke-direct {v0}, Lc/a/a/a/b$a;-><init>()V

    iget-object v1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lc/a/a/a/f;->l(I)V

    if-eqz p5, :cond_0

    const/16 p5, 0x29

    invoke-virtual {p0, p5}, Lc/a/a/a/f;->n(I)V

    const/16 p5, 0x7b

    invoke-virtual {p0, p5}, Lc/a/a/a/f;->D(I)Z

    move-result p5

    :cond_0
    if-nez p5, :cond_1

    const/16 v2, 0x108

    invoke-virtual {p0, v2}, Lc/a/a/a/f;->D(I)Z

    :cond_1
    const/4 v2, -0x1

    if-eqz p4, :cond_2

    const/16 v3, 0x21

    invoke-virtual {v1, v3, p1, v2}, Lc/a/a/a/b;->c(III)I

    move-result v3

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lc/a/a/a/b;->c()I

    move-result v3

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lc/a/a/a/b;->a(Lc/a/a/a/b$a;Z)V

    invoke-virtual {p0, p3}, Lc/a/a/a/f;->l(I)V

    invoke-virtual {v1, p3}, Lc/a/a/a/b;->z(I)V

    invoke-virtual {p0}, Lc/a/a/a/f;->b()V

    invoke-virtual {p0}, Lc/a/a/a/f;->f()V

    invoke-virtual {v1}, Lc/a/a/a/b;->d()V

    invoke-virtual {v1, v3}, Lc/a/a/a/b;->w(I)V

    if-eqz p4, :cond_3

    const/16 p3, 0x20

    goto :goto_1

    :cond_3
    const/16 p4, 0x22

    invoke-virtual {v1, p4, p1, v4, p3}, Lc/a/a/a/b;->b(IIII)I

    invoke-virtual {v1, p2}, Lc/a/a/a/b;->n(I)V

    const/16 p3, 0x23

    add-int/lit8 p1, p1, 0x2

    :goto_1
    invoke-virtual {v1, p3, p1, v2}, Lc/a/a/a/b;->c(III)I

    move-result p1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, p1, v3}, Lc/a/a/a/b;->g(II)V

    invoke-virtual {v1, p2}, Lc/a/a/a/b;->n(I)V

    return p5
.end method

.method a(Lc/a/a/a/d;)Z
    .locals 8

    new-instance v0, Lc/a/a/a/f$i;

    invoke-direct {v0}, Lc/a/a/a/f$i;-><init>()V

    new-instance v1, Lc/a/a/a/b$a;

    invoke-direct {v1}, Lc/a/a/a/b$a;-><init>()V

    iget-object v2, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v2, v2, Lc/a/a/a/f$g;->a:I

    iget v3, p0, Lc/a/a/a/f;->w:I

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    iget-boolean v4, p0, Lc/a/a/a/f;->s:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const/16 v4, 0x28

    invoke-virtual {p0, v4}, Lc/a/a/a/f;->D(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lc/a/a/a/f;->g(Lc/a/a/a/f$i;)V

    if-eqz v4, :cond_1

    const/16 v4, 0x29

    invoke-virtual {p0, v4}, Lc/a/a/a/f;->n(I)V

    const/16 v4, 0x7b

    invoke-virtual {p0, v4}, Lc/a/a/a/f;->D(I)Z

    move-result v4

    :cond_1
    if-nez v4, :cond_2

    const/16 v6, 0x11d

    invoke-virtual {p0, v6}, Lc/a/a/a/f;->D(I)Z

    :cond_2
    iget-object v6, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v6, v6, Lc/a/a/a/f$g;->a:I

    const/16 v7, 0x110

    if-eq v6, v7, :cond_7

    const/16 v7, 0x102

    if-eq v6, v7, :cond_7

    const/16 v7, 0x105

    if-ne v6, v7, :cond_3

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v6, v0}, Lc/a/a/a/b;->m(Lc/a/a/a/f$i;)V

    iget-object v6, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v6, v1, v5}, Lc/a/a/a/b;->a(Lc/a/a/a/b$a;Z)V

    iget-object v0, v0, Lc/a/a/a/f$i;->e:Lc/a/a/a/d;

    iget v0, v0, Lc/a/a/a/d;->a:I

    invoke-virtual {p0}, Lc/a/a/a/f;->C()V

    iget-object v1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v1}, Lc/a/a/a/b;->d()V

    if-eqz v4, :cond_4

    const/16 v1, 0x7d

    invoke-virtual {p0, v1, v2, v3}, Lc/a/a/a/f;->b(III)V

    :cond_4
    iget-object v1, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v1, v1, Lc/a/a/a/f$g;->a:I

    const/16 v2, 0x109

    if-eq v1, v2, :cond_5

    const/16 v2, 0x10a

    if-ne v1, v2, :cond_6

    :cond_5
    iget-object v1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v1}, Lc/a/a/a/b;->c()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lc/a/a/a/b;->a(Lc/a/a/a/d;I)V

    :cond_6
    iget-object p1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {p1, v0}, Lc/a/a/a/b;->w(I)V

    return v4

    :cond_7
    :goto_1
    iget-object p1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {p1, v0}, Lc/a/a/a/b;->l(Lc/a/a/a/f$i;)V

    iget-object p1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {p1, v1, v5}, Lc/a/a/a/b;->a(Lc/a/a/a/b$a;Z)V

    iget-object p1, v0, Lc/a/a/a/f$i;->d:Lc/a/a/a/d;

    iget p1, p1, Lc/a/a/a/d;->a:I

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->u(I)V

    invoke-virtual {p0}, Lc/a/a/a/f;->A()V

    invoke-virtual {p0, v5}, Lc/a/a/a/f;->b(Z)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {p1}, Lc/a/a/a/b;->d()V

    return v4

    :cond_8
    const-string p1, "unreachable statement"

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->g(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method a(Lc/a/a/a/f$i;II)Z
    .locals 4

    new-instance v0, Lc/a/a/a/b;

    invoke-direct {v0}, Lc/a/a/a/b;-><init>()V

    new-instance v1, Lc/a/a/a/b$a;

    invoke-direct {v1}, Lc/a/a/a/b$a;-><init>()V

    invoke-virtual {p0}, Lc/a/a/a/f;->a()Lc/a/a/l;

    move-result-object v2

    iput-object v2, v0, Lc/a/a/a/b;->b:Lc/a/a/l;

    iget-object v2, v0, Lc/a/a/a/b;->b:Lc/a/a/l;

    iput p3, v2, Lc/a/a/l;->j:I

    iget v3, p0, Lc/a/a/a/f;->u:I

    iput v3, v2, Lc/a/a/l;->p:I

    invoke-virtual {p0, v0, v1}, Lc/a/a/a/f;->a(Lc/a/a/a/b;Lc/a/a/a/b$a;)V

    const/16 v1, 0x104

    if-ne p2, v1, :cond_0

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lc/a/a/a/f;->D(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lc/a/a/a/f;->u()V

    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lc/a/a/a/f;->n(I)V

    :cond_0
    iget-boolean v1, p0, Lc/a/a/a/f;->s:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x7b

    invoke-virtual {p0, v1}, Lc/a/a/a/f;->D(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lc/a/a/a/f;->C()V

    iget-object v0, v0, Lc/a/a/a/b;->b:Lc/a/a/l;

    iget v2, p0, Lc/a/a/a/f;->u:I

    iput v2, v0, Lc/a/a/l;->o:I

    iget v2, p0, Lc/a/a/a/f;->w:I

    iput v2, v0, Lc/a/a/l;->k:I

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->c(Lc/a/a/a/f$i;)V

    invoke-virtual {p0}, Lc/a/a/a/f;->d()V

    if-eqz v1, :cond_2

    const/16 p1, 0x7d

    invoke-virtual {p0, p1, p2, p3}, Lc/a/a/a/f;->b(III)V

    :cond_2
    return v1
.end method

.method a(Lc/a/a/j;IZ)Z
    .locals 7

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-short v2, v0, Lc/a/a/a/b;->q:S

    const-string v1, "(for index)"

    invoke-virtual {p0, v1}, Lc/a/a/a/f;->d(Ljava/lang/String;)V

    const-string v1, "(for limit)"

    invoke-virtual {p0, v1}, Lc/a/a/a/f;->d(Ljava/lang/String;)V

    const-string v1, "(for step)"

    invoke-virtual {p0, v1}, Lc/a/a/a/f;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->a(Lc/a/a/j;)V

    const/16 p1, 0x3d

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->n(I)V

    invoke-virtual {p0}, Lc/a/a/a/f;->j()I

    const/16 p1, 0x2c

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->n(I)V

    invoke-virtual {p0}, Lc/a/a/a/f;->j()I

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->D(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc/a/a/a/f;->j()I

    goto :goto_0

    :cond_0
    iget-short p1, v0, Lc/a/a/a/b;->q:S

    const/4 v1, 0x1

    invoke-static {v1}, Lc/a/a/g;->b(I)Lc/a/a/g;

    move-result-object v3

    invoke-virtual {v0, v3}, Lc/a/a/a/b;->b(Lc/a/a/k;)I

    move-result v3

    invoke-virtual {v0, v1, p1, v3}, Lc/a/a/a/b;->b(III)I

    invoke-virtual {v0, v1}, Lc/a/a/a/b;->z(I)V

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p0

    move v3, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lc/a/a/a/f;->a(IIIZZ)Z

    move-result p1

    return p1
.end method

.method a(Lc/a/a/j;Z)Z
    .locals 8

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    new-instance v1, Lc/a/a/a/f$i;

    invoke-direct {v1}, Lc/a/a/a/f$i;-><init>()V

    iget-short v3, v0, Lc/a/a/a/b;->q:S

    const-string v2, "(for generator)"

    invoke-virtual {p0, v2}, Lc/a/a/a/f;->d(Ljava/lang/String;)V

    const-string v2, "(for state)"

    invoke-virtual {p0, v2}, Lc/a/a/a/f;->d(Ljava/lang/String;)V

    const-string v2, "(for control)"

    invoke-virtual {p0, v2}, Lc/a/a/a/f;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->a(Lc/a/a/j;)V

    const/4 p1, 0x4

    :goto_0
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Lc/a/a/a/f;->D(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lc/a/a/a/f;->E()Lc/a/a/j;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc/a/a/a/f;->a(Lc/a/a/j;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Lc/a/a/a/f;->D(I)Z

    move-result v2

    const/16 v4, 0x113

    invoke-virtual {p0, v4}, Lc/a/a/a/f;->D(I)Z

    iget v4, p0, Lc/a/a/a/f;->w:I

    invoke-virtual {p0, v1}, Lc/a/a/a/f;->f(Lc/a/a/a/f$i;)I

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {p0, v6, v5, v1}, Lc/a/a/a/f;->a(IILc/a/a/a/f$i;)V

    invoke-virtual {v0, v6}, Lc/a/a/a/b;->l(I)V

    if-eqz v2, :cond_1

    sub-int/2addr p1, v6

    invoke-virtual {p0, v3, v4, p1, p2}, Lc/a/a/a/f;->a(IIIZ)Z

    move-result p1

    return p1

    :cond_1
    add-int/lit8 v5, p1, -0x3

    const/4 v6, 0x0

    move-object v2, p0

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lc/a/a/a/f;->a(IIIZZ)Z

    move-result p1

    return p1
.end method

.method a(Ljava/lang/String;Lc/a/a/a/f$f;)Z
    .locals 2

    const/16 v0, 0x6e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_3

    const/16 v0, 0x4e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x78

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    const/16 v0, 0x58

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lc/a/a/k;->h(D)Lc/a/a/i;

    move-result-object p1

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lc/a/a/a/f;->b(Ljava/lang/String;Lc/a/a/a/f$f;)Lc/a/a/k;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_1
    sget-object p1, Lc/a/a/k;->f:Lc/a/a/i;

    :goto_2
    iput-object p1, p2, Lc/a/a/a/f$f;->a:Lc/a/a/k;

    const/4 p1, 0x1

    return p1
.end method

.method b(Lc/a/a/j;)I
    .locals 4

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-object v1, v0, Lc/a/a/a/b;->b:Lc/a/a/l;

    iget-object v2, v1, Lc/a/a/l;->g:[Lc/a/a/b;

    if-eqz v2, :cond_0

    iget-short v3, v0, Lc/a/a/a/b;->n:S

    add-int/lit8 v3, v3, 0x1

    array-length v2, v2

    if-le v3, v2, :cond_1

    :cond_0
    iget-object v2, v1, Lc/a/a/l;->g:[Lc/a/a/b;

    iget-short v3, v0, Lc/a/a/a/b;->n:S

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lc/a/a/a/a;->a([Lc/a/a/b;I)[Lc/a/a/b;

    move-result-object v2

    iput-object v2, v1, Lc/a/a/l;->g:[Lc/a/a/b;

    :cond_1
    new-instance v2, Lc/a/a/b;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, v3}, Lc/a/a/b;-><init>(Lc/a/a/j;II)V

    iget-object v1, v1, Lc/a/a/l;->g:[Lc/a/a/b;

    iget-short v3, v0, Lc/a/a/a/b;->n:S

    aput-object v2, v1, v3

    iget-boolean v1, p0, Lc/a/a/a/f;->J:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lc/a/a/j;->c()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x7

    invoke-direct {p0, p1, v1}, Lc/a/a/a/f;->b(Ljava/lang/String;I)V

    :cond_2
    iget-short p1, v0, Lc/a/a/a/b;->n:S

    add-int/lit8 v1, p1, 0x1

    int-to-short v1, v1

    iput-short v1, v0, Lc/a/a/a/b;->n:S

    return p1
.end method

.method b(Lc/a/a/j;Lc/a/a/n;)I
    .locals 4

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-object v1, v0, Lc/a/a/a/b;->b:Lc/a/a/l;

    iget-object v2, v1, Lc/a/a/l;->g:[Lc/a/a/b;

    if-eqz v2, :cond_0

    iget-short v3, v0, Lc/a/a/a/b;->n:S

    add-int/lit8 v3, v3, 0x1

    array-length v2, v2

    if-le v3, v2, :cond_1

    :cond_0
    iget-object v2, v1, Lc/a/a/l;->g:[Lc/a/a/b;

    iget-short v3, v0, Lc/a/a/a/b;->n:S

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lc/a/a/a/a;->a([Lc/a/a/b;I)[Lc/a/a/b;

    move-result-object v2

    iput-object v2, v1, Lc/a/a/l;->g:[Lc/a/a/b;

    :cond_1
    new-instance v2, Lc/a/a/b;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, v3}, Lc/a/a/b;-><init>(Lc/a/a/j;II)V

    iput-object p2, v2, Lc/a/a/b;->f:Lc/a/a/n;

    iget-object p2, v1, Lc/a/a/l;->g:[Lc/a/a/b;

    iget-short v1, v0, Lc/a/a/a/b;->n:S

    aput-object v2, p2, v1

    iget-boolean p2, p0, Lc/a/a/a/f;->J:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lc/a/a/a/f;->q:I

    iput p2, v2, Lc/a/a/b;->d:I

    invoke-virtual {p1}, Lc/a/a/j;->c()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x7

    invoke-direct {p0, p1, p2}, Lc/a/a/a/f;->b(Ljava/lang/String;I)V

    :cond_2
    iget-short p1, v0, Lc/a/a/a/b;->n:S

    add-int/lit8 p2, p1, 0x1

    int-to-short p2, p2

    iput-short p2, v0, Lc/a/a/a/b;->n:S

    return p1
.end method

.method b(Lc/a/a/a/f$i;)Lc/a/a/j;
    .locals 1

    invoke-virtual {p0}, Lc/a/a/a/f;->D()Lc/a/a/j;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lc/a/a/a/f;->a(Lc/a/a/a/f$i;Lc/a/a/j;)V

    return-object v0
.end method

.method b(Ljava/lang/String;Lc/a/a/a/f$f;)Lc/a/a/k;
    .locals 15

    move-object v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    aget-char v4, v1, v3

    invoke-direct {p0, v4}, Lc/a/a/a/f;->N(I)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    array-length v6, v1

    const/16 v7, 0x2d

    if-ge v3, v6, :cond_1

    aget-char v6, v1, v3

    if-ne v6, v7, :cond_1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v6, v3, 0x2

    array-length v8, v1

    if-lt v6, v8, :cond_2

    sget-object v1, Lc/a/a/k;->f:Lc/a/a/i;

    return-object v1

    :cond_2
    add-int/lit8 v6, v3, 0x1

    aget-char v3, v1, v3

    const/16 v8, 0x30

    if-eq v3, v8, :cond_3

    sget-object v1, Lc/a/a/k;->f:Lc/a/a/i;

    return-object v1

    :cond_3
    aget-char v3, v1, v6

    const/16 v9, 0x78

    if-eq v3, v9, :cond_4

    aget-char v3, v1, v6

    const/16 v9, 0x58

    if-eq v3, v9, :cond_4

    sget-object v1, Lc/a/a/k;->f:Lc/a/a/i;

    return-object v1

    :cond_4
    const/4 v3, 0x1

    add-int/2addr v6, v3

    const-wide/16 v9, 0x0

    :goto_1
    array-length v11, v1

    const-wide/high16 v12, 0x4030000000000000L    # 16.0

    if-ge v6, v11, :cond_5

    aget-char v11, v1, v6

    invoke-direct {p0, v11}, Lc/a/a/a/f;->O(I)Z

    move-result v11

    if-eqz v11, :cond_5

    mul-double v9, v9, v12

    add-int/lit8 v11, v6, 0x1

    aget-char v6, v1, v6

    invoke-virtual {p0, v6}, Lc/a/a/a/f;->w(I)I

    move-result v6

    int-to-double v12, v6

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v9, v12

    move v6, v11

    goto :goto_1

    :cond_5
    array-length v11, v1

    if-ge v6, v11, :cond_6

    aget-char v11, v1, v6

    const/16 v14, 0x2e

    if-ne v11, v14, :cond_6

    add-int/lit8 v6, v6, 0x1

    const/4 v11, 0x0

    :goto_2
    array-length v14, v1

    if-ge v6, v14, :cond_7

    aget-char v14, v1, v6

    invoke-direct {p0, v14}, Lc/a/a/a/f;->O(I)Z

    move-result v14

    if-eqz v14, :cond_7

    mul-double v9, v9, v12

    add-int/lit8 v14, v6, 0x1

    aget-char v6, v1, v6

    invoke-virtual {p0, v6}, Lc/a/a/a/f;->w(I)I

    move-result v6

    int-to-double v12, v6

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v9, v12

    add-int/lit8 v11, v11, -0x4

    move v6, v14

    const-wide/high16 v12, 0x4030000000000000L    # 16.0

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    :cond_7
    array-length v12, v1

    if-ge v6, v12, :cond_c

    aget-char v12, v1, v6

    const/16 v13, 0x70

    if-eq v12, v13, :cond_8

    aget-char v12, v1, v6

    const/16 v13, 0x50

    if-ne v12, v13, :cond_c

    :cond_8
    add-int/2addr v6, v3

    array-length v12, v1

    if-ge v6, v12, :cond_9

    aget-char v12, v1, v6

    if-ne v12, v7, :cond_9

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    :goto_3
    array-length v7, v1

    if-ge v6, v7, :cond_a

    aget-char v7, v1, v6

    invoke-direct {p0, v7}, Lc/a/a/a/f;->M(I)Z

    move-result v7

    if-eqz v7, :cond_a

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v7, v6, 0x1

    aget-char v6, v1, v6

    add-int/2addr v2, v6

    sub-int/2addr v2, v8

    move v6, v7

    goto :goto_3

    :cond_a
    if-eqz v3, :cond_b

    neg-int v2, v2

    :cond_b
    add-int/2addr v11, v2

    :cond_c
    mul-double v4, v4, v9

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    int-to-double v6, v11

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double v4, v4, v1

    invoke-static {v4, v5}, Lc/a/a/k;->h(D)Lc/a/a/i;

    move-result-object v1

    return-object v1
.end method

.method b()V
    .locals 3

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    new-instance v1, Lc/a/a/a/b$a;

    invoke-direct {v1}, Lc/a/a/a/b$a;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lc/a/a/a/b;->a(Lc/a/a/a/b$a;Z)V

    invoke-virtual {p0}, Lc/a/a/a/f;->C()V

    invoke-virtual {v0}, Lc/a/a/a/b;->d()V

    return-void
.end method

.method b(III)V
    .locals 3

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->D(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lc/a/a/a/f;->w:I

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->o(I)V

    throw v1

    :cond_0
    sput p3, Lc/a/a/a/f;->i:I

    iget-object v0, p0, Lc/a/a/a/f;->B:Lc/a/a/a/g$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->F(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/a/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " expected (to close "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lc/a/a/a/f;->F(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/a/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at line "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/a/a/a/g$a;->b(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->g(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method b(Lc/a/a/a/f$a;)V
    .locals 10

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-short v1, v0, Lc/a/a/a/b;->q:S

    new-instance v2, Lc/a/a/a/f$i;

    invoke-direct {v2}, Lc/a/a/a/f$i;-><init>()V

    new-instance v3, Lc/a/a/a/f$i;

    invoke-direct {v3}, Lc/a/a/a/f$i;-><init>()V

    iget-object v4, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v4, v4, Lc/a/a/a/f$g;->a:I

    const-string v5, "items in a constructor"

    const v6, 0x7ffffffd

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x10f

    if-ne v4, v9, :cond_0

    iget v4, p1, Lc/a/a/a/f$a;->c:I

    invoke-virtual {v0, v4, v6, v5}, Lc/a/a/a/b;->a(IILjava/lang/String;)V

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    invoke-virtual {p0, v2}, Lc/a/a/a/f;->a(Lc/a/a/a/f$i;)V

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x0

    goto :goto_3

    :cond_0
    const/16 v9, 0x130

    if-ne v4, v9, :cond_1

    iget v4, p1, Lc/a/a/a/f$a;->c:I

    invoke-virtual {v0, v4, v6, v5}, Lc/a/a/a/b;->a(IILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lc/a/a/a/f;->b(Lc/a/a/a/f$i;)Lc/a/a/j;

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_3

    :cond_1
    const/16 v9, 0x12f

    if-ne v4, v9, :cond_2

    iget v4, p1, Lc/a/a/a/f$a;->c:I

    invoke-virtual {v0, v4, v6, v5}, Lc/a/a/a/b;->a(IILjava/lang/String;)V

    invoke-virtual {p0, v2}, Lc/a/a/a/f;->a(Lc/a/a/a/f$i;)V

    goto :goto_2

    :cond_2
    const/16 v9, 0x12e

    if-ne v4, v9, :cond_3

    iget v4, p1, Lc/a/a/a/f$a;->c:I

    invoke-virtual {v0, v4, v6, v5}, Lc/a/a/a/b;->a(IILjava/lang/String;)V

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v8}, Lc/a/a/a/f$i;->a(II)V

    iget-object v4, v2, Lc/a/a/a/f$i;->c:Lc/a/a/a/f$i$a;

    iget-object v5, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget-object v5, v5, Lc/a/a/a/f$g;->b:Lc/a/a/a/f$f;

    iget-object v5, v5, Lc/a/a/a/f$f;->a:Lc/a/a/k;

    invoke-virtual {v4, v5}, Lc/a/a/a/f$i$a;->a(Lc/a/a/k;)V

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lc/a/a/a/f;->o(Lc/a/a/a/f$i;)V

    :goto_2
    const/4 v4, 0x0

    goto :goto_0

    :goto_3
    iget v6, p1, Lc/a/a/a/f$a;->c:I

    add-int/2addr v6, v7

    iput v6, p1, Lc/a/a/a/f$a;->c:I

    if-nez v4, :cond_5

    if-eqz v5, :cond_4

    const/16 v5, 0x3a

    invoke-virtual {p0, v5}, Lc/a/a/a/f;->D(I)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    const/16 v5, 0x3d

    invoke-virtual {p0, v5}, Lc/a/a/a/f;->n(I)V

    :cond_5
    invoke-virtual {v0, v2}, Lc/a/a/a/b;->d(Lc/a/a/a/f$i;)I

    move-result v2

    if-eqz v4, :cond_6

    iget v4, p0, Lc/a/a/a/f;->w:I

    invoke-virtual {p0, v3, v8, v4}, Lc/a/a/a/f;->a(Lc/a/a/a/f$i;ZI)V

    goto :goto_4

    :cond_6
    invoke-virtual {p0, v3}, Lc/a/a/a/f;->g(Lc/a/a/a/f$i;)V

    :goto_4
    const/16 v4, 0xa

    iget-object p1, p1, Lc/a/a/a/f$a;->b:Lc/a/a/a/f$i;

    iget-object p1, p1, Lc/a/a/a/f$i;->c:Lc/a/a/a/f$i$a;

    iget p1, p1, Lc/a/a/a/f$i$a;->e:I

    invoke-virtual {v0, v3}, Lc/a/a/a/b;->d(Lc/a/a/a/f$i;)I

    move-result v3

    invoke-virtual {v0, v4, p1, v2, v3}, Lc/a/a/a/b;->b(IIII)I

    int-to-short p1, v1

    iput-short p1, v0, Lc/a/a/a/b;->q:S

    return-void
.end method

.method b(Lc/a/a/a/f$d;)V
    .locals 3

    iget-object v0, p0, Lc/a/a/a/f;->B:Lc/a/a/a/g$a;

    iget-object v1, p1, Lc/a/a/a/f$d;->a:Lc/a/a/j;

    invoke-virtual {v1}, Lc/a/a/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/a/a/a/f;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lc/a/a/a/f$d;->a:Lc/a/a/j;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "> at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lc/a/a/a/f$d;->c:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not inside a loop"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no visible label \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lc/a/a/a/f$d;->a:Lc/a/a/j;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' for <goto> at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lc/a/a/a/f$d;->c:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/a/a/a/g$a;->b(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method b(Lc/a/a/a/f$f;)V
    .locals 4

    iget v0, p0, Lc/a/a/a/f;->v:I

    invoke-direct {p0, v0}, Lc/a/a/a/f;->M(I)Z

    move-result v1

    invoke-static {v1}, Lc/a/a/a/a;->a(Z)V

    invoke-virtual {p0}, Lc/a/a/a/f;->y()V

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    const-string v0, "Xx"

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Pp"

    goto :goto_0

    :cond_0
    const-string v0, "Ee"

    :goto_0
    invoke-virtual {p0, v0}, Lc/a/a/a/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "+-"

    invoke-virtual {p0, v1}, Lc/a/a/a/f;->b(Ljava/lang/String;)Z

    :cond_1
    iget v1, p0, Lc/a/a/a/f;->v:I

    invoke-direct {p0, v1}, Lc/a/a/a/f;->O(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Lc/a/a/a/f;->v:I

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->B(I)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lc/a/a/a/f;->D:[C

    iget v3, p0, Lc/a/a/a/f;->E:I

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v1, p1}, Lc/a/a/a/f;->a(Ljava/lang/String;Lc/a/a/a/f$f;)Z

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lc/a/a/a/f;->y()V

    goto :goto_0
.end method

.method b(Lc/a/a/a/f$i;I)V
    .locals 7

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    new-instance v1, Lc/a/a/a/f$i;

    invoke-direct {v1}, Lc/a/a/a/f$i;-><init>()V

    iget-object v2, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v3, v2, Lc/a/a/a/f$g;->a:I

    const/4 v4, 0x0

    const/16 v5, 0x28

    if-eq v3, v5, :cond_2

    const/16 v5, 0x7b

    if-eq v3, v5, :cond_1

    const/16 v5, 0x130

    if-ne v3, v5, :cond_0

    iget-object v2, v2, Lc/a/a/a/f$g;->b:Lc/a/a/a/f$f;

    iget-object v2, v2, Lc/a/a/a/f$f;->b:Lc/a/a/j;

    invoke-virtual {p0, v1, v2}, Lc/a/a/a/f;->a(Lc/a/a/a/f$i;Lc/a/a/j;)V

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    goto :goto_1

    :cond_0
    const-string p1, "function arguments expected"

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->g(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    invoke-virtual {p0, v1}, Lc/a/a/a/f;->d(Lc/a/a/a/f$i;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    iget-object v2, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v2, v2, Lc/a/a/a/f$g;->a:I

    const/16 v3, 0x29

    if-ne v2, v3, :cond_3

    iput v4, v1, Lc/a/a/a/f$i;->b:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lc/a/a/a/f;->f(Lc/a/a/a/f$i;)I

    invoke-virtual {v0, v1}, Lc/a/a/a/b;->o(Lc/a/a/a/f$i;)V

    :goto_0
    invoke-virtual {p0, v3, v5, p2}, Lc/a/a/a/f;->b(III)V

    :goto_1
    iget v2, p1, Lc/a/a/a/f$i;->b:I

    const/4 v3, 0x6

    const/4 v5, 0x1

    if-ne v2, v3, :cond_4

    const/4 v4, 0x1

    :cond_4
    invoke-static {v4}, Lc/a/a/a/a;->a(Z)V

    iget-object v2, p1, Lc/a/a/a/f$i;->c:Lc/a/a/a/f$i$a;

    iget v2, v2, Lc/a/a/a/f$i$a;->e:I

    iget v3, v1, Lc/a/a/a/f$i;->b:I

    invoke-virtual {p0, v3}, Lc/a/a/a/f;->v(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v1, -0x1

    goto :goto_2

    :cond_5
    iget v3, v1, Lc/a/a/a/f$i;->b:I

    if-eqz v3, :cond_6

    invoke-virtual {v0, v1}, Lc/a/a/a/b;->g(Lc/a/a/a/f$i;)V

    :cond_6
    iget-short v1, v0, Lc/a/a/a/b;->q:S

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v3

    :goto_2
    const/16 v3, 0xe

    const/16 v4, 0x1d

    add-int/2addr v1, v5

    const/4 v6, 0x2

    invoke-virtual {v0, v4, v2, v1, v6}, Lc/a/a/a/b;->b(IIII)I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lc/a/a/a/f$i;->a(II)V

    invoke-virtual {v0, p2}, Lc/a/a/a/b;->n(I)V

    add-int/2addr v2, v5

    int-to-short p1, v2

    iput-short p1, v0, Lc/a/a/a/b;->q:S

    return-void
.end method

.method b(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lc/a/a/a/f;->g(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method b(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lc/a/a/a/f;->v:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lc/a/a/a/f;->y()V

    const/4 p1, 0x1

    return p1
.end method

.method b(Z)Z
    .locals 2

    iget-object v0, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v0, v0, Lc/a/a/a/f$g;->a:I

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x106

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x120

    if-eq v0, v1, :cond_0

    const/16 p1, 0x12d

    if-eq v0, p1, :cond_1

    const/16 p1, 0x103

    if-eq v0, p1, :cond_1

    const/16 p1, 0x104

    if-eq v0, p1, :cond_1

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    :cond_0
    return p1

    :cond_1
    :pswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x109
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method c()V
    .locals 8

    const-string v0, "break"

    invoke-static {v0}, Lc/a/a/j;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v4

    iget-object v0, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget-object v1, v0, Lc/a/a/a/f$b;->e:[Lc/a/a/a/f$d;

    iget v2, v0, Lc/a/a/a/f$b;->f:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lc/a/a/a/a;->a([Lc/a/a/a/f$d;I)[Lc/a/a/a/f$d;

    move-result-object v2

    iput-object v2, v0, Lc/a/a/a/f$b;->e:[Lc/a/a/a/f$d;

    iget-object v0, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget v7, v0, Lc/a/a/a/f$b;->f:I

    add-int/lit8 v1, v7, 0x1

    iput v1, v0, Lc/a/a/a/f$b;->f:I

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget v6, v0, Lc/a/a/a/b;->h:I

    const/4 v5, 0x0

    move-object v1, p0

    move v3, v7

    invoke-virtual/range {v1 .. v6}, Lc/a/a/a/f;->a([Lc/a/a/a/f$d;ILc/a/a/j;II)I

    iget-object v0, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget-object v0, v0, Lc/a/a/a/f$b;->e:[Lc/a/a/a/f$d;

    aget-object v0, v0, v7

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->a(Lc/a/a/a/f$d;)V

    return-void
.end method

.method c(Lc/a/a/a/f$i;)V
    .locals 4

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-object v0, v0, Lc/a/a/a/b;->d:Lc/a/a/a/b;

    iget v1, v0, Lc/a/a/a/b;->l:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x25

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lc/a/a/a/b;->b(III)I

    move-result v1

    const/16 v2, 0xd

    invoke-virtual {p1, v2, v1}, Lc/a/a/a/f$i;->a(II)V

    invoke-virtual {v0, p1}, Lc/a/a/a/b;->g(Lc/a/a/a/f$i;)V

    return-void
.end method

.method c(Lc/a/a/a/f$i;I)V
    .locals 4

    new-instance v0, Lc/a/a/a/b;

    invoke-direct {v0}, Lc/a/a/a/b;-><init>()V

    new-instance v1, Lc/a/a/a/b$a;

    invoke-direct {v1}, Lc/a/a/a/b$a;-><init>()V

    invoke-virtual {p0}, Lc/a/a/a/f;->a()Lc/a/a/l;

    move-result-object v2

    iput-object v2, v0, Lc/a/a/a/b;->b:Lc/a/a/l;

    iget-object v2, v0, Lc/a/a/a/b;->b:Lc/a/a/l;

    iput p2, v2, Lc/a/a/l;->j:I

    iget p2, p0, Lc/a/a/a/f;->u:I

    iput p2, v2, Lc/a/a/l;->p:I

    invoke-virtual {p0, v0, v1}, Lc/a/a/a/f;->a(Lc/a/a/a/b;Lc/a/a/a/b$a;)V

    const/16 p2, 0x28

    invoke-virtual {p0, p2}, Lc/a/a/a/f;->D(I)Z

    move-result p2

    invoke-virtual {p0}, Lc/a/a/a/f;->u()V

    if-eqz p2, :cond_0

    const/16 p2, 0x29

    invoke-virtual {p0, p2}, Lc/a/a/a/f;->n(I)V

    :cond_0
    iget-object p2, p0, Lc/a/a/a/f;->H:Lc/a/a/j;

    invoke-virtual {p0, p2}, Lc/a/a/a/f;->a(Lc/a/a/j;)V

    new-instance p2, Lc/a/a/a/f$i;

    invoke-direct {p2}, Lc/a/a/a/f$i;-><init>()V

    iget-object v1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-object v2, p0, Lc/a/a/a/f;->H:Lc/a/a/j;

    const/4 v3, 0x1

    invoke-static {v1, v2, p2, v3}, Lc/a/a/a/b;->a(Lc/a/a/a/b;Lc/a/a/j;Lc/a/a/a/f$i;I)I

    invoke-virtual {p0, v3, v3, p2}, Lc/a/a/a/f;->a(IILc/a/a/a/f$i;)V

    invoke-virtual {p0, v3}, Lc/a/a/a/f;->l(I)V

    const/16 p2, 0x3a

    invoke-virtual {p0, p2}, Lc/a/a/a/f;->n(I)V

    invoke-virtual {p0}, Lc/a/a/a/f;->x()V

    iget-object p2, v0, Lc/a/a/a/b;->b:Lc/a/a/l;

    iget v0, p0, Lc/a/a/a/f;->u:I

    iput v0, p2, Lc/a/a/l;->o:I

    iget v0, p0, Lc/a/a/a/f;->w:I

    iput v0, p2, Lc/a/a/l;->k:I

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->c(Lc/a/a/a/f$i;)V

    invoke-virtual {p0}, Lc/a/a/a/f;->d()V

    return-void
.end method

.method d(Lc/a/a/a/f$i;I)I
    .locals 5

    invoke-virtual {p0}, Lc/a/a/a/f;->i()V

    iget-object v0, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v0, v0, Lc/a/a/a/f$g;->a:I

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->t(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v1, p0, Lc/a/a/a/f;->w:I

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    const/16 v2, 0x8

    invoke-virtual {p0, p1, v2}, Lc/a/a/a/f;->d(Lc/a/a/a/f$i;I)I

    iget-object v2, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v2, v0, p1, v1}, Lc/a/a/a/b;->a(ILc/a/a/a/f$i;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lc/a/a/a/f;->l(Lc/a/a/a/f$i;)V

    :goto_0
    iget-object v0, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v0, v0, Lc/a/a/a/f$g;->a:I

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->s(I)I

    move-result v0

    :goto_1
    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    sget-object v1, Lc/a/a/a/f;->m:[Lc/a/a/a/f$e;

    aget-object v1, v1, v0

    iget-byte v1, v1, Lc/a/a/a/f$e;->a:B

    if-le v1, p2, :cond_1

    new-instance v1, Lc/a/a/a/f$i;

    invoke-direct {v1}, Lc/a/a/a/f$i;-><init>()V

    iget v2, p0, Lc/a/a/a/f;->w:I

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    iget-object v3, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v3, v0, p1}, Lc/a/a/a/b;->a(ILc/a/a/a/f$i;)V

    sget-object v3, Lc/a/a/a/f;->m:[Lc/a/a/a/f$e;

    aget-object v3, v3, v0

    iget-byte v3, v3, Lc/a/a/a/f$e;->b:B

    invoke-virtual {p0, v1, v3}, Lc/a/a/a/f;->d(Lc/a/a/a/f$i;I)I

    move-result v3

    iget-object v4, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v4, v0, p1, v1, v2}, Lc/a/a/a/b;->b(ILc/a/a/a/f$i;Lc/a/a/a/f$i;I)V

    move v0, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lc/a/a/a/f;->n()V

    return v0
.end method

.method d()V
    .locals 5

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-object v1, v0, Lc/a/a/a/b;->b:Lc/a/a/l;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lc/a/a/a/b;->i(II)V

    invoke-virtual {v0}, Lc/a/a/a/b;->d()V

    iget-object v3, v1, Lc/a/a/l;->d:[I

    iget v4, v0, Lc/a/a/a/b;->h:I

    invoke-static {v3, v4}, Lc/a/a/a/a;->a([II)[I

    move-result-object v3

    iput-object v3, v1, Lc/a/a/l;->d:[I

    iget-object v3, v1, Lc/a/a/l;->f:[I

    iget v4, v0, Lc/a/a/a/b;->h:I

    invoke-static {v3, v4}, Lc/a/a/a/a;->a([II)[I

    move-result-object v3

    iput-object v3, v1, Lc/a/a/l;->f:[I

    iget-object v3, v1, Lc/a/a/l;->c:[Lc/a/a/k;

    iget v4, v0, Lc/a/a/a/b;->k:I

    invoke-static {v3, v4}, Lc/a/a/a/a;->a([Lc/a/a/k;I)[Lc/a/a/k;

    move-result-object v3

    iput-object v3, v1, Lc/a/a/l;->c:[Lc/a/a/k;

    iget-object v3, v1, Lc/a/a/l;->e:[Lc/a/a/l;

    iget v4, v0, Lc/a/a/a/b;->l:I

    invoke-static {v3, v4}, Lc/a/a/a/a;->a([Lc/a/a/l;I)[Lc/a/a/l;

    move-result-object v3

    iput-object v3, v1, Lc/a/a/l;->e:[Lc/a/a/l;

    iget-object v3, v1, Lc/a/a/l;->g:[Lc/a/a/b;

    iget-short v4, v0, Lc/a/a/a/b;->n:S

    invoke-static {v3, v4}, Lc/a/a/a/a;->a([Lc/a/a/b;I)[Lc/a/a/b;

    move-result-object v3

    iput-object v3, v1, Lc/a/a/l;->g:[Lc/a/a/b;

    iget-object v3, v1, Lc/a/a/l;->h:[Lc/a/a/m;

    iget-short v4, v0, Lc/a/a/a/b;->p:S

    invoke-static {v3, v4}, Lc/a/a/a/a;->a([Lc/a/a/m;I)[Lc/a/a/m;

    move-result-object v3

    iput-object v3, v1, Lc/a/a/l;->h:[Lc/a/a/m;

    iget-object v1, v0, Lc/a/a/a/b;->g:Lc/a/a/a/b$a;

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Lc/a/a/a/a;->a(Z)V

    iget-object v0, v0, Lc/a/a/a/b;->d:Lc/a/a/a/b;

    iput-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    return-void
.end method

.method d(Lc/a/a/a/f$i;)V
    .locals 10

    iget v0, p0, Lc/a/a/a/f;->u:I

    iget v1, p0, Lc/a/a/a/f;->w:I

    iget-object v2, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    const/4 v3, 0x0

    const/16 v4, 0xb

    invoke-virtual {v2, v4, v3, v3, v3}, Lc/a/a/a/b;->b(IIII)I

    move-result v4

    new-instance v5, Lc/a/a/a/f$a;

    invoke-direct {v5}, Lc/a/a/a/f$a;-><init>()V

    iput v3, v5, Lc/a/a/a/f$a;->e:I

    iput v3, v5, Lc/a/a/a/f$a;->c:I

    iput v3, v5, Lc/a/a/a/f$a;->d:I

    iput-object p1, v5, Lc/a/a/a/f$a;->b:Lc/a/a/a/f$i;

    const/16 v6, 0xd

    invoke-virtual {p1, v6, v4}, Lc/a/a/a/f$i;->a(II)V

    iget-object v6, v5, Lc/a/a/a/f$a;->a:Lc/a/a/a/f$i;

    invoke-virtual {v6, v3, v3}, Lc/a/a/a/f$i;->a(II)V

    invoke-virtual {v2, p1}, Lc/a/a/a/b;->g(Lc/a/a/a/f$i;)V

    const/16 p1, 0x7b

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->n(I)V

    :cond_0
    iget-object v6, v5, Lc/a/a/a/f$a;->a:Lc/a/a/a/f$i;

    iget v6, v6, Lc/a/a/a/f$i;->b:I

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    iget v6, v5, Lc/a/a/a/f$a;->e:I

    if-lez v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v6, 0x1

    :goto_1
    invoke-static {v6}, Lc/a/a/a/a;->a(Z)V

    iget-object v6, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v6, v6, Lc/a/a/a/f$g;->a:I

    const/16 v8, 0x7d

    if-ne v6, v8, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v2, v5}, Lc/a/a/a/b;->a(Lc/a/a/a/f$a;)V

    iget-object v6, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v6, v6, Lc/a/a/a/f$g;->a:I

    const/16 v9, 0x5b

    if-eq v6, v9, :cond_5

    const/16 v9, 0x10f

    if-eq v6, v9, :cond_4

    const/16 v9, 0x3d

    packed-switch v6, :pswitch_data_0

    :goto_2
    invoke-virtual {p0, v5}, Lc/a/a/a/f;->a(Lc/a/a/a/f$a;)V

    goto :goto_3

    :pswitch_0
    invoke-virtual {p0}, Lc/a/a/a/f;->q()V

    iget-object v6, p0, Lc/a/a/a/f;->z:Lc/a/a/a/f$g;

    iget v6, v6, Lc/a/a/a/f$g;->a:I

    if-eq v6, v9, :cond_5

    const/16 v9, 0x3a

    if-eq v6, v9, :cond_5

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lc/a/a/a/f;->q()V

    iget-object v6, p0, Lc/a/a/a/f;->z:Lc/a/a/a/f$g;

    iget v6, v6, Lc/a/a/a/f$g;->a:I

    if-eq v6, v9, :cond_5

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lc/a/a/a/f;->q()V

    iget-object v6, p0, Lc/a/a/a/f;->z:Lc/a/a/a/f$g;

    iget v6, v6, Lc/a/a/a/f$g;->a:I

    const/16 v9, 0x12f

    if-eq v6, v9, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v5}, Lc/a/a/a/f;->b(Lc/a/a/a/f$a;)V

    :goto_3
    const/16 v6, 0x2c

    invoke-virtual {p0, v6}, Lc/a/a/a/f;->D(I)Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v6, 0x3b

    invoke-virtual {p0, v6}, Lc/a/a/a/f;->D(I)Z

    move-result v6

    if-nez v6, :cond_0

    :goto_4
    iget-boolean v3, p0, Lc/a/a/a/f;->J:Z

    if-eqz v3, :cond_6

    sget-object v3, Lc/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v6, Landroid/graphics/Rect;

    iget v9, p0, Lc/a/a/a/f;->u:I

    sub-int/2addr v9, v7

    iget v7, p0, Lc/a/a/a/f;->w:I

    invoke-direct {v6, v0, v1, v9, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {p0, v8, p1, v1}, Lc/a/a/a/f;->b(III)V

    invoke-virtual {v2, v5}, Lc/a/a/a/b;->b(Lc/a/a/a/f$a;)V

    new-instance p1, Lc/a/a/a/c;

    iget-object v0, v2, Lc/a/a/a/b;->b:Lc/a/a/l;

    iget-object v0, v0, Lc/a/a/l;->d:[I

    invoke-direct {p1, v0, v4}, Lc/a/a/a/c;-><init>([II)V

    iget v0, v5, Lc/a/a/a/f$a;->d:I

    invoke-static {v0}, Lc/a/a/a/f;->z(I)I

    move-result v0

    invoke-static {p1, v0}, Lc/a/a/a/a;->b(Lc/a/a/a/c;I)V

    iget v0, v5, Lc/a/a/a/f$a;->c:I

    invoke-static {v0}, Lc/a/a/a/f;->z(I)I

    move-result v0

    invoke-static {p1, v0}, Lc/a/a/a/a;->d(Lc/a/a/a/c;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12e
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method d(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->e(Ljava/lang/String;)Lc/a/a/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->a(Lc/a/a/j;)V

    return-void
.end method

.method e()I
    .locals 3

    new-instance v0, Lc/a/a/a/f$i;

    invoke-direct {v0}, Lc/a/a/a/f$i;-><init>()V

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->g(Lc/a/a/a/f$i;)V

    iget v1, v0, Lc/a/a/a/f$i;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    iput v1, v0, Lc/a/a/a/f$i;->b:I

    :cond_0
    iget-object v1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v1, v0}, Lc/a/a/a/b;->m(Lc/a/a/a/f$i;)V

    iget-object v0, v0, Lc/a/a/a/f$i;->e:Lc/a/a/a/d;

    iget v0, v0, Lc/a/a/a/d;->a:I

    return v0
.end method

.method e(Ljava/lang/String;)Lc/a/a/j;
    .locals 1

    iget-object v0, p0, Lc/a/a/a/f;->B:Lc/a/a/a/g$a;

    invoke-virtual {v0, p1}, Lc/a/a/a/g$a;->a(Ljava/lang/String;)Lc/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method e(Lc/a/a/a/f$i;)V
    .locals 7

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget v1, p0, Lc/a/a/a/f;->w:I

    const/4 v2, 0x0

    const/16 v3, 0x30

    invoke-virtual {v0, v3, v2, v2}, Lc/a/a/a/b;->b(III)I

    move-result v3

    new-instance v4, Lc/a/a/a/f$a;

    invoke-direct {v4}, Lc/a/a/a/f$a;-><init>()V

    iput v2, v4, Lc/a/a/a/f$a;->e:I

    iput v2, v4, Lc/a/a/a/f$a;->c:I

    iput v2, v4, Lc/a/a/a/f$a;->d:I

    iput-object p1, v4, Lc/a/a/a/f$a;->b:Lc/a/a/a/f$i;

    const/16 v5, 0xd

    invoke-virtual {p1, v5, v3}, Lc/a/a/a/f$i;->a(II)V

    iget-object v5, v4, Lc/a/a/a/f$a;->a:Lc/a/a/a/f$i;

    invoke-virtual {v5, v2, v2}, Lc/a/a/a/f$i;->a(II)V

    invoke-virtual {v0, p1}, Lc/a/a/a/b;->g(Lc/a/a/a/f$i;)V

    const/16 p1, 0x5b

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->n(I)V

    :cond_0
    iget-object v5, v4, Lc/a/a/a/f$a;->a:Lc/a/a/a/f$i;

    iget v5, v5, Lc/a/a/a/f$i;->b:I

    if-eqz v5, :cond_2

    iget v5, v4, Lc/a/a/a/f$a;->e:I

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Lc/a/a/a/a;->a(Z)V

    iget-object v5, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v5, v5, Lc/a/a/a/f$g;->a:I

    const/16 v6, 0x5d

    if-ne v5, v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v4}, Lc/a/a/a/b;->a(Lc/a/a/a/f$a;)V

    invoke-virtual {p0, v4}, Lc/a/a/a/f;->a(Lc/a/a/a/f$a;)V

    const/16 v5, 0x2c

    invoke-virtual {p0, v5}, Lc/a/a/a/f;->D(I)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x3b

    invoke-virtual {p0, v5}, Lc/a/a/a/f;->D(I)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_2
    invoke-virtual {p0, v6, p1, v1}, Lc/a/a/a/f;->b(III)V

    invoke-virtual {v0, v4}, Lc/a/a/a/b;->b(Lc/a/a/a/f$a;)V

    new-instance p1, Lc/a/a/a/c;

    iget-object v0, v0, Lc/a/a/a/b;->b:Lc/a/a/l;

    iget-object v0, v0, Lc/a/a/l;->d:[I

    invoke-direct {p1, v0, v3}, Lc/a/a/a/c;-><init>([II)V

    iget v0, v4, Lc/a/a/a/f$a;->d:I

    invoke-static {v0}, Lc/a/a/a/f;->z(I)I

    move-result v0

    invoke-static {p1, v0}, Lc/a/a/a/a;->b(Lc/a/a/a/c;I)V

    return-void
.end method

.method e(Lc/a/a/a/f$i;I)V
    .locals 9

    iget v0, p0, Lc/a/a/a/f;->u:I

    iget v1, p0, Lc/a/a/a/f;->w:I

    new-instance v2, Lc/a/a/a/b;

    invoke-direct {v2}, Lc/a/a/a/b;-><init>()V

    new-instance v3, Lc/a/a/a/b$a;

    invoke-direct {v3}, Lc/a/a/a/b$a;-><init>()V

    invoke-virtual {p0}, Lc/a/a/a/f;->a()Lc/a/a/l;

    move-result-object v4

    iput-object v4, v2, Lc/a/a/a/b;->b:Lc/a/a/l;

    iget-object v4, v2, Lc/a/a/a/b;->b:Lc/a/a/l;

    iput p2, v4, Lc/a/a/l;->j:I

    iget v5, p0, Lc/a/a/a/f;->u:I

    iput v5, v4, Lc/a/a/l;->p:I

    invoke-virtual {p0, v2, v3}, Lc/a/a/a/f;->a(Lc/a/a/a/b;Lc/a/a/a/b$a;)V

    iget-object v3, v2, Lc/a/a/a/b;->b:Lc/a/a/l;

    const-string v4, "when"

    iput-object v4, v3, Lc/a/a/l;->q:Ljava/lang/String;

    iget-boolean v3, p0, Lc/a/a/a/f;->s:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/16 v3, 0x28

    invoke-virtual {p0, v3}, Lc/a/a/a/f;->D(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-instance v5, Lc/a/a/a/f$i;

    invoke-direct {v5}, Lc/a/a/a/f$i;-><init>()V

    invoke-virtual {p0, v5}, Lc/a/a/a/f;->g(Lc/a/a/a/f$i;)V

    if-eqz v3, :cond_1

    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Lc/a/a/a/f;->n(I)V

    const/16 v3, 0x7b

    invoke-virtual {p0, v3}, Lc/a/a/a/f;->D(I)Z

    move-result v3

    :cond_1
    new-instance v6, Lc/a/a/a/d;

    const/4 v7, -0x1

    invoke-direct {v6, v7}, Lc/a/a/a/d;-><init>(I)V

    :goto_1
    iget-object v7, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v7, v7, Lc/a/a/a/f$g;->a:I

    const/16 v8, 0x103

    if-ne v7, v8, :cond_2

    invoke-virtual {v5}, Lc/a/a/a/f$i;->clone()Lc/a/a/a/f$i;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lc/a/a/a/f;->a(Lc/a/a/a/d;Lc/a/a/a/f$i;)V

    goto :goto_1

    :cond_2
    const/16 v5, 0x106

    invoke-virtual {p0, v5}, Lc/a/a/a/f;->D(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lc/a/a/a/f;->b()V

    :cond_3
    iget-object v5, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget v6, v6, Lc/a/a/a/d;->a:I

    invoke-virtual {v5, v6}, Lc/a/a/a/b;->w(I)V

    iget-object v2, v2, Lc/a/a/a/b;->b:Lc/a/a/l;

    iget v5, p0, Lc/a/a/a/f;->u:I

    iput v5, v2, Lc/a/a/l;->o:I

    iget v5, p0, Lc/a/a/a/f;->w:I

    iput v5, v2, Lc/a/a/l;->k:I

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->c(Lc/a/a/a/f$i;)V

    invoke-virtual {p0}, Lc/a/a/a/f;->d()V

    iget-boolean p1, p0, Lc/a/a/a/f;->J:Z

    if-eqz p1, :cond_5

    if-eqz v3, :cond_4

    sget-object p1, Lc/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    iget v5, p0, Lc/a/a/a/f;->u:I

    sub-int/2addr v5, v4

    iget v4, p0, Lc/a/a/a/f;->w:I

    invoke-direct {v2, v0, v1, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2

    :cond_4
    sget-object p1, Lc/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    iget v4, p0, Lc/a/a/a/f;->u:I

    add-int/lit8 v4, v4, -0x3

    iget v5, p0, Lc/a/a/a/f;->w:I

    invoke-direct {v2, v0, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const/16 p1, 0x121

    if-eqz v3, :cond_6

    const/16 v0, 0x7d

    goto :goto_3

    :cond_6
    const/16 v0, 0x10b

    :goto_3
    invoke-virtual {p0, v0, p1, p2}, Lc/a/a/a/f;->b(III)V

    return-void
.end method

.method f(Lc/a/a/a/f$i;)I
    .locals 2

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->g(Lc/a/a/a/f$i;)V

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Lc/a/a/a/f;->D(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v1, p1}, Lc/a/a/a/b;->g(Lc/a/a/a/f$i;)V

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->g(Lc/a/a/a/f$i;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method f()V
    .locals 8

    const-string v0, "continue"

    invoke-static {v0}, Lc/a/a/j;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v4

    iget-object v0, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget-object v1, v0, Lc/a/a/a/f$b;->e:[Lc/a/a/a/f$d;

    iget v2, v0, Lc/a/a/a/f$b;->f:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lc/a/a/a/a;->a([Lc/a/a/a/f$d;I)[Lc/a/a/a/f$d;

    move-result-object v2

    iput-object v2, v0, Lc/a/a/a/f$b;->e:[Lc/a/a/a/f$d;

    iget-object v0, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget v7, v0, Lc/a/a/a/f$b;->f:I

    add-int/lit8 v1, v7, 0x1

    iput v1, v0, Lc/a/a/a/f$b;->f:I

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget v6, v0, Lc/a/a/a/b;->h:I

    const/4 v5, 0x0

    move-object v1, p0

    move v3, v7

    invoke-virtual/range {v1 .. v6}, Lc/a/a/a/f;->a([Lc/a/a/a/f$d;ILc/a/a/j;II)I

    iget-object v0, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget-object v0, v0, Lc/a/a/a/f$b;->e:[Lc/a/a/a/f$d;

    aget-object v0, v0, v7

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->a(Lc/a/a/a/f$d;)V

    return-void
.end method

.method f(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    const/4 v1, 0x0

    iput v1, v0, Lc/a/a/a/f$g;->a:I

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->g(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method g(Lc/a/a/a/f$i;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc/a/a/a/f;->d(Lc/a/a/a/f$i;I)I

    return-void
.end method

.method g(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v0, v0, Lc/a/a/a/f$g;->a:I

    invoke-virtual {p0, p1, v0}, Lc/a/a/a/f;->a(Ljava/lang/String;I)V

    const/4 p1, 0x0

    throw p1
.end method

.method g()Z
    .locals 2

    iget v0, p0, Lc/a/a/a/f;->v:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method h()V
    .locals 5

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    new-instance v1, Lc/a/a/a/f$i;

    invoke-direct {v1}, Lc/a/a/a/f$i;-><init>()V

    const-string v2, "(defer)"

    invoke-virtual {p0, v2}, Lc/a/a/a/f;->d(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lc/a/a/a/f;->l(I)V

    iget v3, p0, Lc/a/a/a/f;->w:I

    invoke-virtual {p0, v1, v3}, Lc/a/a/a/f;->a(Lc/a/a/a/f$i;I)V

    iget-short v1, v0, Lc/a/a/a/b;->o:S

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    const/16 v4, 0x33

    invoke-virtual {v0, v4, v1, v3, v3}, Lc/a/a/a/b;->b(IIII)I

    iget-short v1, v0, Lc/a/a/a/b;->o:S

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lc/a/a/a/b;->r(I)Lc/a/a/b;

    move-result-object v1

    iget v0, v0, Lc/a/a/a/b;->h:I

    iput v0, v1, Lc/a/a/b;->b:I

    return-void
.end method

.method h(Lc/a/a/a/f$i;)V
    .locals 2

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    new-instance v1, Lc/a/a/a/f$i;

    invoke-direct {v1}, Lc/a/a/a/f$i;-><init>()V

    invoke-virtual {v0, p1}, Lc/a/a/a/b;->f(Lc/a/a/a/f$i;)V

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    invoke-virtual {p0, v1}, Lc/a/a/a/f;->a(Lc/a/a/a/f$i;)V

    invoke-virtual {v0, p1, v1}, Lc/a/a/a/b;->a(Lc/a/a/a/f$i;Lc/a/a/a/f$i;)V

    return-void
.end method

.method i()V
    .locals 2

    iget-object v0, p0, Lc/a/a/a/f;->B:Lc/a/a/a/g$a;

    iget v1, v0, Lc/a/a/a/g$a;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lc/a/a/a/g$a;->a:I

    const/16 v0, 0xc8

    if-gt v1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "chunk has too many syntax levels"

    invoke-virtual {p0, v1, v0}, Lc/a/a/a/f;->a(Ljava/lang/String;I)V

    const/4 v0, 0x0

    throw v0
.end method

.method i(Lc/a/a/a/f$i;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->m(Lc/a/a/a/f$i;)V

    :goto_0
    iget-object v0, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v0, v0, Lc/a/a/a/f$g;->a:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->h(Lc/a/a/a/f$i;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->h(Lc/a/a/a/f$i;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method j()I
    .locals 3

    new-instance v0, Lc/a/a/a/f$i;

    invoke-direct {v0}, Lc/a/a/a/f$i;-><init>()V

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->g(Lc/a/a/a/f$i;)V

    iget v1, v0, Lc/a/a/a/f$i;->b:I

    iget-object v2, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v2, v0}, Lc/a/a/a/b;->g(Lc/a/a/a/f$i;)V

    return v1
.end method

.method j(Lc/a/a/a/f$i;)V
    .locals 7

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {p0}, Lc/a/a/a/f;->D()Lc/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lc/a/a/j;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xd

    if-lez v3, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p1, Lc/a/a/a/f$i;->c:Lc/a/a/a/f$i$a;

    iget v1, v1, Lc/a/a/a/f$i$a;->e:I

    invoke-static {v5}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lc/a/a/a/b;->c(Lc/a/a/j;)I

    move-result v2

    invoke-virtual {v0, v6, v1, v2}, Lc/a/a/a/b;->b(III)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v4, v0}, Lc/a/a/a/f$i;->a(II)V

    return-void

    :cond_0
    const/16 v2, 0x36

    iget-object v3, p1, Lc/a/a/a/f$i;->c:Lc/a/a/a/f$i$a;

    iget v3, v3, Lc/a/a/a/f$i$a;->e:I

    invoke-virtual {v0, v1}, Lc/a/a/a/b;->c(Lc/a/a/j;)I

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lc/a/a/a/b;->b(III)I

    move-result v0

    goto :goto_0
.end method

.method k()V
    .locals 6

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    new-instance v1, Lc/a/a/a/f$c;

    invoke-direct {v1}, Lc/a/a/a/f$c;-><init>()V

    iget-object v2, v1, Lc/a/a/a/f$c;->b:Lc/a/a/a/f$i;

    invoke-virtual {p0, v2}, Lc/a/a/a/f;->n(Lc/a/a/a/f$i;)V

    iget-object v2, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v2, v2, Lc/a/a/a/f$g;->a:I

    const/4 v3, 0x1

    const/16 v4, 0x3d

    if-eq v2, v4, :cond_2

    const/16 v4, 0x2c

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lc/a/a/a/f$c;->b:Lc/a/a/a/f$i;

    iget v2, v2, Lc/a/a/a/f$i;->b:I

    const/16 v4, 0xe

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v5, "syntax error"

    invoke-virtual {p0, v2, v5}, Lc/a/a/a/f;->b(ZLjava/lang/String;)V

    iget-object v1, v1, Lc/a/a/a/f$c;->b:Lc/a/a/a/f$i;

    iget v2, v1, Lc/a/a/a/f$i;->b:I

    if-ne v2, v4, :cond_3

    invoke-virtual {v0, v1}, Lc/a/a/a/b;->k(Lc/a/a/a/f$i;)Lc/a/a/a/c;

    move-result-object v0

    invoke-static {v0, v3}, Lc/a/a/a/a;->d(Lc/a/a/a/c;I)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-object v0, v1, Lc/a/a/a/f$c;->a:Lc/a/a/a/f$c;

    invoke-virtual {p0, v1, v3}, Lc/a/a/a/f;->a(Lc/a/a/a/f$c;I)V

    :cond_3
    :goto_2
    return-void
.end method

.method k(Lc/a/a/a/f$i;)V
    .locals 3

    iget-object v0, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v0, v0, Lc/a/a/a/f$g;->a:I

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12f

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->m(Lc/a/a/a/f$i;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected symbol "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v0, v0, Lc/a/a/a/f$g;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->g(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    iget v0, p0, Lc/a/a/a/f;->w:I

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->g(Lc/a/a/a/f$i;)V

    const/16 v2, 0x29

    invoke-virtual {p0, v2, v1, v0}, Lc/a/a/a/f;->b(III)V

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v0, p1}, Lc/a/a/a/b;->c(Lc/a/a/a/f$i;)V

    return-void
.end method

.method l()V
    .locals 7

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lc/a/a/a/f;->D(I)Z

    move-result v1

    :cond_0
    const/4 v2, 0x0

    iget-object v3, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v3, v3, Lc/a/a/a/f$g;->a:I

    const/16 v4, 0x12f

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lc/a/a/a/f;->E()Lc/a/a/j;

    move-result-object v2

    invoke-virtual {v2}, Lc/a/a/j;->c()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {p0}, Lc/a/a/a/f;->D()Lc/a/a/j;

    move-result-object v3

    if-nez v2, :cond_2

    invoke-virtual {v3}, Lc/a/a/j;->c()Ljava/lang/String;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    iget-object v4, p0, Lc/a/a/a/f;->K:Ljava/util/HashMap;

    new-instance v5, Lc/a/a/n;

    invoke-virtual {v3}, Lc/a/a/j;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lc/a/a/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lc/a/a/j;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v2

    new-instance v4, Lc/a/a/n;

    invoke-virtual {v3}, Lc/a/a/j;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lc/a/a/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v4}, Lc/a/a/a/f;->a(Lc/a/a/j;Lc/a/a/n;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lc/a/a/a/f;->l(I)V

    const/16 v4, 0x36

    iget-short v5, v0, Lc/a/a/a/b;->o:S

    sub-int/2addr v5, v2

    invoke-virtual {v0, v3}, Lc/a/a/a/b;->c(Lc/a/a/j;)I

    move-result v3

    invoke-virtual {v0, v4, v5, v3}, Lc/a/a/a/b;->b(III)I

    invoke-virtual {v0, v2}, Lc/a/a/a/b;->z(I)V

    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Lc/a/a/a/f;->D(I)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_3

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->n(I)V

    :cond_3
    return-void
.end method

.method l(I)V
    .locals 3

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-short v1, v0, Lc/a/a/a/b;->o:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Lc/a/a/a/b;->o:S

    :goto_0
    if-lez p1, :cond_0

    iget-short v1, v0, Lc/a/a/a/b;->o:S

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lc/a/a/a/b;->r(I)Lc/a/a/b;

    move-result-object v1

    iget v2, v0, Lc/a/a/a/b;->h:I

    iput v2, v1, Lc/a/a/b;->b:I

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method l(Lc/a/a/a/f$i;)V
    .locals 6

    iget-object v0, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v1, v0, Lc/a/a/a/f$g;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->n(Lc/a/a/a/f$i;)V

    return-void

    :sswitch_0
    iget-object v0, v0, Lc/a/a/a/f$g;->b:Lc/a/a/a/f$f;

    iget-object v0, v0, Lc/a/a/a/f$f;->b:Lc/a/a/j;

    invoke-virtual {p0, p1, v0}, Lc/a/a/a/f;->a(Lc/a/a/a/f$i;Lc/a/a/j;)V

    sget-object v0, Lc/a/a/n;->c:Lc/a/a/n;

    goto/16 :goto_2

    :sswitch_1
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lc/a/a/a/f$i;->a(II)V

    iget-object v0, p1, Lc/a/a/a/f$i;->c:Lc/a/a/a/f$i$a;

    iget-object v1, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget-object v1, v1, Lc/a/a/a/f$g;->b:Lc/a/a/a/f$f;

    iget-object v1, v1, Lc/a/a/a/f$f;->a:Lc/a/a/k;

    invoke-virtual {v0, v1}, Lc/a/a/a/f$i$a;->a(Lc/a/a/k;)V

    sget-object v0, Lc/a/a/n;->a:Lc/a/a/n;

    goto :goto_2

    :sswitch_2
    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-object v1, v0, Lc/a/a/a/b;->b:Lc/a/a/l;

    iget v1, v1, Lc/a/a/l;->m:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot use "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-static {v5}, Lc/a/a/a/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " outside a vararg function"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lc/a/a/a/f;->b(ZLjava/lang/String;)V

    const/16 v1, 0xf

    const/16 v4, 0x26

    invoke-virtual {v0, v4, v3, v2, v3}, Lc/a/a/a/b;->b(IIII)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lc/a/a/a/f$i;->a(II)V

    goto :goto_3

    :sswitch_3
    const/16 v0, 0xe

    invoke-virtual {p0}, Lc/a/a/a/f;->G()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lc/a/a/a/f$i;->a(II)V

    return-void

    :sswitch_4
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    invoke-virtual {p1, v2, v3}, Lc/a/a/a/f$i;->a(II)V

    sget-object v0, Lc/a/a/n;->f:Lc/a/a/n;

    goto :goto_2

    :sswitch_6
    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    iget v0, p0, Lc/a/a/a/f;->w:I

    invoke-virtual {p0, p1, v0}, Lc/a/a/a/f;->c(Lc/a/a/a/f$i;I)V

    return-void

    :sswitch_7
    invoke-virtual {p0, p1}, Lc/a/a/a/f;->j(Lc/a/a/a/f$i;)V

    goto :goto_3

    :sswitch_8
    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    iget v0, p0, Lc/a/a/a/f;->w:I

    invoke-virtual {p0, p1, v3, v0}, Lc/a/a/a/f;->a(Lc/a/a/a/f$i;ZI)V

    sget-object v0, Lc/a/a/n;->b:Lc/a/a/n;

    iput-object v0, p1, Lc/a/a/a/f$i;->a:Lc/a/a/n;

    return-void

    :sswitch_9
    const/4 v0, 0x3

    :goto_1
    invoke-virtual {p1, v0, v3}, Lc/a/a/a/f$i;->a(II)V

    sget-object v0, Lc/a/a/n;->e:Lc/a/a/n;

    :goto_2
    iput-object v0, p1, Lc/a/a/a/f$i;->a:Lc/a/a/n;

    :goto_3
    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    return-void

    :sswitch_a
    invoke-virtual {p0, p1}, Lc/a/a/a/f;->d(Lc/a/a/a/f$i;)V

    sget-object v0, Lc/a/a/n;->d:Lc/a/a/n;

    iput-object v0, p1, Lc/a/a/a/f$i;->a:Lc/a/a/n;

    return-void

    :sswitch_b
    invoke-virtual {p0, p1}, Lc/a/a/a/f;->e(Lc/a/a/a/f$i;)V

    sget-object v0, Lc/a/a/n;->d:Lc/a/a/n;

    iput-object v0, p1, Lc/a/a/a/f$i;->a:Lc/a/a/n;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x5b -> :sswitch_b
        0x7b -> :sswitch_a
        0x10c -> :sswitch_9
        0x10f -> :sswitch_8
        0x112 -> :sswitch_7
        0x114 -> :sswitch_6
        0x117 -> :sswitch_5
        0x11e -> :sswitch_4
        0x121 -> :sswitch_3
        0x124 -> :sswitch_2
        0x12e -> :sswitch_1
        0x130 -> :sswitch_0
    .end sparse-switch
.end method

.method m()V
    .locals 2

    iget v0, p0, Lc/a/a/a/f;->v:I

    invoke-virtual {p0}, Lc/a/a/a/f;->g()Z

    move-result v1

    invoke-static {v1}, Lc/a/a/a/a;->a(Z)V

    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    invoke-virtual {p0}, Lc/a/a/a/f;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lc/a/a/a/f;->v:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    :cond_0
    iget v0, p0, Lc/a/a/a/f;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/a/a/a/f;->w:I

    const v1, 0x7ffffffd

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    const-string v0, "chunk has too many lines"

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method m(I)V
    .locals 1

    iget-object v0, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v0, v0, Lc/a/a/a/f$g;->a:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lc/a/a/a/f;->o(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method m(Lc/a/a/a/f$i;)V
    .locals 6

    invoke-virtual {p0}, Lc/a/a/a/f;->E()Lc/a/a/j;

    move-result-object v0

    iget-object v1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    const/4 v2, 0x1

    invoke-static {v1, v0, p1, v2}, Lc/a/a/a/b;->a(Lc/a/a/a/b;Lc/a/a/j;Lc/a/a/a/f$i;I)I

    move-result v3

    iget-boolean v4, p0, Lc/a/a/a/f;->J:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lc/a/a/j;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lc/a/a/a/f;->b(Ljava/lang/String;I)V

    :cond_0
    if-nez v3, :cond_4

    iget-boolean v3, p0, Lc/a/a/a/f;->J:Z

    if-eqz v3, :cond_1

    sget-object v3, Lc/a/a/a/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v3, Lc/a/a/a/f$i;

    invoke-direct {v3}, Lc/a/a/a/f$i;-><init>()V

    iget-object v4, p0, Lc/a/a/a/f;->H:Lc/a/a/j;

    invoke-static {v1, v4, p1, v2}, Lc/a/a/a/b;->a(Lc/a/a/a/b;Lc/a/a/j;Lc/a/a/a/f$i;I)I

    iget v4, p1, Lc/a/a/a/f$i;->b:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_3

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    invoke-static {v2}, Lc/a/a/a/a;->a(Z)V

    invoke-virtual {p0, v3, v0}, Lc/a/a/a/f;->a(Lc/a/a/a/f$i;Lc/a/a/j;)V

    invoke-virtual {v1, p1, v3}, Lc/a/a/a/b;->a(Lc/a/a/a/f$i;Lc/a/a/a/f$i;)V

    :cond_4
    return-void
.end method

.method n()V
    .locals 2

    iget-object v0, p0, Lc/a/a/a/f;->B:Lc/a/a/a/g$a;

    iget v1, v0, Lc/a/a/a/g$a;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lc/a/a/a/g$a;->a:I

    return-void
.end method

.method n(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->m(I)V

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    return-void
.end method

.method n(Lc/a/a/a/f$i;)V
    .locals 3

    iget v0, p0, Lc/a/a/a/f;->w:I

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->k(Lc/a/a/a/f$i;)V

    :goto_0
    iget-object v1, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v1, v1, Lc/a/a/a/f$g;->a:I

    const/16 v2, 0x28

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_3

    const/16 v2, 0x130

    if-eq v1, v2, :cond_3

    return-void

    :cond_0
    new-instance v1, Lc/a/a/a/f$i;

    invoke-direct {v1}, Lc/a/a/a/f$i;-><init>()V

    iget-object v2, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v2, p1}, Lc/a/a/a/b;->f(Lc/a/a/a/f$i;)V

    invoke-virtual {p0, v1}, Lc/a/a/a/f;->o(Lc/a/a/a/f$i;)V

    iget-object v2, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v2, p1, v1}, Lc/a/a/a/b;->a(Lc/a/a/a/f$i;Lc/a/a/a/f$i;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lc/a/a/a/f$i;

    invoke-direct {v1}, Lc/a/a/a/f$i;-><init>()V

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    invoke-virtual {p0, v1}, Lc/a/a/a/f;->a(Lc/a/a/a/f$i;)V

    iget-object v2, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v2, p1, v1}, Lc/a/a/a/b;->b(Lc/a/a/a/f$i;Lc/a/a/a/f$i;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lc/a/a/a/f;->h(Lc/a/a/a/f$i;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v1, p1}, Lc/a/a/a/b;->g(Lc/a/a/a/f$i;)V

    :goto_1
    invoke-virtual {p0, p1, v0}, Lc/a/a/a/f;->b(Lc/a/a/a/f$i;I)V

    goto :goto_0
.end method

.method o()V
    .locals 5

    new-instance v0, Lc/a/a/a/f$i;

    invoke-direct {v0}, Lc/a/a/a/f$i;-><init>()V

    iget-object v1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {p0}, Lc/a/a/a/f;->E()Lc/a/a/j;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc/a/a/a/f;->a(Lc/a/a/j;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lc/a/a/a/f;->l(I)V

    iget v3, p0, Lc/a/a/a/f;->w:I

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v3}, Lc/a/a/a/f;->a(Lc/a/a/a/f$i;ZI)V

    iget-short v0, v1, Lc/a/a/a/b;->o:S

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lc/a/a/a/b;->r(I)Lc/a/a/b;

    move-result-object v0

    iget v1, v1, Lc/a/a/a/b;->h:I

    iput v1, v0, Lc/a/a/b;->b:I

    return-void
.end method

.method o(I)V
    .locals 2

    iget-object v0, p0, Lc/a/a/a/f;->B:Lc/a/a/a/g$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->F(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/a/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " expected"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/a/a/a/g$a;->b(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->g(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method o(Lc/a/a/a/f$i;)V
    .locals 1

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->g(Lc/a/a/a/f$i;)V

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v0, p1}, Lc/a/a/a/b;->h(Lc/a/a/a/f$i;)V

    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->n(I)V

    return-void
.end method

.method p()V
    .locals 8

    new-instance v0, Lc/a/a/a/f$i;

    invoke-direct {v0}, Lc/a/a/a/f$i;-><init>()V

    const/16 v1, 0x3c

    invoke-virtual {p0, v1}, Lc/a/a/a/f;->D(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lc/a/a/a/f;->E()Lc/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lc/a/a/j;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc/a/a/a/f;->K:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc/a/a/a/f;->K:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/a/a/n;

    goto :goto_0

    :cond_0
    new-instance v2, Lc/a/a/n;

    invoke-direct {v2, v1}, Lc/a/a/n;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    const/16 v2, 0x3e

    invoke-virtual {p0, v2}, Lc/a/a/a/f;->n(I)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x3d

    invoke-virtual {p0, v2}, Lc/a/a/a/f;->D(I)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_3

    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Lc/a/a/a/f;->D(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    const/4 v6, 0x0

    :cond_4
    invoke-virtual {p0}, Lc/a/a/a/f;->E()Lc/a/a/j;

    move-result-object v7

    invoke-virtual {p0, v7, v1}, Lc/a/a/a/f;->a(Lc/a/a/j;Lc/a/a/n;)V

    add-int/2addr v6, v4

    const/16 v7, 0x2c

    invoke-virtual {p0, v7}, Lc/a/a/a/f;->D(I)Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz v3, :cond_5

    invoke-virtual {p0, v6}, Lc/a/a/a/f;->y(I)V

    return-void

    :cond_5
    if-ne v6, v4, :cond_6

    const/16 v3, 0x28

    invoke-virtual {p0, v3}, Lc/a/a/a/f;->E(I)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v0, Lc/a/a/a/f$i;

    invoke-direct {v0}, Lc/a/a/a/f$i;-><init>()V

    invoke-virtual {p0, v4}, Lc/a/a/a/f;->l(I)V

    iget v1, p0, Lc/a/a/a/f;->w:I

    invoke-virtual {p0, v0, v5, v1}, Lc/a/a/a/f;->a(Lc/a/a/a/f$i;ZI)V

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-short v1, v0, Lc/a/a/a/b;->o:S

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lc/a/a/a/b;->r(I)Lc/a/a/b;

    move-result-object v0

    iget-object v1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget v1, v1, Lc/a/a/a/b;->h:I

    iput v1, v0, Lc/a/a/b;->b:I

    return-void

    :cond_6
    invoke-virtual {p0, v2}, Lc/a/a/a/f;->D(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0, v0, v6, v1}, Lc/a/a/a/f;->a(Lc/a/a/a/f$i;ILc/a/a/n;)I

    move-result v5

    goto :goto_4

    :cond_7
    iput v5, v0, Lc/a/a/a/f$i;->b:I

    :goto_4
    invoke-virtual {p0, v6, v5, v0}, Lc/a/a/a/f;->a(IILc/a/a/a/f$i;)V

    invoke-virtual {p0, v6}, Lc/a/a/a/f;->l(I)V

    return-void
.end method

.method p(I)Z
    .locals 7

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-object v0, v0, Lc/a/a/a/b;->g:Lc/a/a/a/b$a;

    iget-object v1, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget-object v2, v1, Lc/a/a/a/f$b;->c:[Lc/a/a/a/f$d;

    aget-object v2, v2, p1

    iget-short v3, v0, Lc/a/a/a/b$a;->b:S

    :goto_0
    iget v4, v1, Lc/a/a/a/f$b;->f:I

    if-ge v3, v4, :cond_3

    iget-object v4, v1, Lc/a/a/a/f$b;->e:[Lc/a/a/a/f$d;

    aget-object v4, v4, v3

    iget-object v5, v4, Lc/a/a/a/f$d;->a:Lc/a/a/j;

    iget-object v6, v2, Lc/a/a/a/f$d;->a:Lc/a/a/j;

    invoke-virtual {v5, v6}, Lc/a/a/j;->g(Lc/a/a/k;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-short v3, v2, Lc/a/a/a/f$d;->d:S

    iget-short v5, v4, Lc/a/a/a/f$d;->d:S

    if-le v3, v5, :cond_1

    iget-boolean v3, v0, Lc/a/a/a/b$a;->e:Z

    if-nez v3, :cond_0

    iget v1, v1, Lc/a/a/a/f$b;->f:I

    iget-short v0, v0, Lc/a/a/a/b$a;->b:S

    if-le v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget v1, v2, Lc/a/a/a/f$d;->b:I

    iget-short v2, v4, Lc/a/a/a/f$d;->d:S

    invoke-virtual {v0, v1, v2}, Lc/a/a/a/b;->f(II)V

    :cond_1
    invoke-virtual {p0, p1, v4}, Lc/a/a/a/f;->a(ILc/a/a/a/f$d;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method q()V
    .locals 2

    iget-object v0, p0, Lc/a/a/a/f;->z:Lc/a/a/a/f$g;

    iget v0, v0, Lc/a/a/a/f$g;->a:I

    const/16 v1, 0x12d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/a/a/a/a;->a(Z)V

    iget-object v0, p0, Lc/a/a/a/f;->z:Lc/a/a/a/f$g;

    iget-object v1, v0, Lc/a/a/a/f$g;->b:Lc/a/a/a/f$f;

    invoke-virtual {p0, v1}, Lc/a/a/a/f;->a(Lc/a/a/a/f$f;)I

    move-result v1

    iput v1, v0, Lc/a/a/a/f$g;->a:I

    return-void
.end method

.method q(I)V
    .locals 8

    iget v0, p0, Lc/a/a/a/f;->u:I

    iget v1, p0, Lc/a/a/a/f;->w:I

    iget-object v2, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    new-instance v3, Lc/a/a/a/b$a;

    invoke-direct {v3}, Lc/a/a/a/b$a;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lc/a/a/a/b;->a(Lc/a/a/a/b$a;Z)V

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    iget-boolean v3, p0, Lc/a/a/a/f;->s:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x28

    invoke-virtual {p0, v3}, Lc/a/a/a/f;->D(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lc/a/a/a/f;->E()Lc/a/a/j;

    move-result-object v5

    iget-object v6, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v6, v6, Lc/a/a/a/f$g;->a:I

    const/16 v7, 0x2c

    if-eq v6, v7, :cond_1

    const/16 v7, 0x3d

    if-eq v6, v7, :cond_2

    const/16 v7, 0x113

    :cond_1
    invoke-virtual {p0, v5, v3}, Lc/a/a/a/f;->a(Lc/a/a/j;Z)Z

    move-result v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v5, p1, v3}, Lc/a/a/a/f;->a(Lc/a/a/j;IZ)Z

    move-result v3

    :goto_1
    iget-boolean v5, p0, Lc/a/a/a/f;->J:Z

    if-eqz v5, :cond_4

    if-eqz v3, :cond_3

    sget-object v5, Lc/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Lc/a/a/a/f;->u:I

    sub-int/2addr v7, v4

    iget v4, p0, Lc/a/a/a/f;->w:I

    invoke-direct {v6, v0, v1, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    sget-object v4, Lc/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lc/a/a/a/f;->u:I

    add-int/lit8 v6, v6, -0x3

    iget v7, p0, Lc/a/a/a/f;->w:I

    invoke-direct {v5, v0, v1, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    const/16 v0, 0x10e

    if-eqz v3, :cond_5

    const/16 v1, 0x7d

    goto :goto_3

    :cond_5
    const/16 v1, 0x10b

    :goto_3
    invoke-virtual {p0, v1, v0, p1}, Lc/a/a/a/f;->b(III)V

    invoke-virtual {v2}, Lc/a/a/a/b;->d()V

    return-void
.end method

.method r()V
    .locals 6

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lc/a/a/a/f;->D(I)Z

    move-result v1

    invoke-virtual {p0}, Lc/a/a/a/f;->D()Lc/a/a/j;

    move-result-object v2

    iget-object v3, p0, Lc/a/a/a/f;->H:Lc/a/a/j;

    invoke-virtual {p0, v3}, Lc/a/a/a/f;->a(Lc/a/a/j;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lc/a/a/a/f;->l(I)V

    iget-short v4, v0, Lc/a/a/a/b;->o:S

    sub-int/2addr v4, v3

    invoke-virtual {v0, v2}, Lc/a/a/a/b;->c(Lc/a/a/j;)I

    move-result v2

    const/16 v5, 0x37

    invoke-virtual {v0, v5, v4, v2}, Lc/a/a/a/b;->b(III)I

    invoke-virtual {v0, v3}, Lc/a/a/a/b;->z(I)V

    if-eqz v1, :cond_0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->n(I)V

    :cond_0
    return-void
.end method

.method r(I)V
    .locals 3

    new-instance v0, Lc/a/a/a/f$i;

    invoke-direct {v0}, Lc/a/a/a/f$i;-><init>()V

    new-instance v1, Lc/a/a/a/f$i;

    invoke-direct {v1}, Lc/a/a/a/f$i;-><init>()V

    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->i(Lc/a/a/a/f$i;)Z

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Lc/a/a/a/f;->a(Lc/a/a/a/f$i;ZI)V

    iget-object v2, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v2, v0, v1}, Lc/a/a/a/b;->c(Lc/a/a/a/f$i;Lc/a/a/a/f$i;)Z

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v0, p1}, Lc/a/a/a/b;->n(I)V

    return-void
.end method

.method s(I)I
    .locals 1

    const/16 v0, 0x25

    if-eq p1, v0, :cond_d

    const/16 v0, 0x26

    if-eq p1, v0, :cond_c

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_b

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_a

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_9

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_8

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_7

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_6

    const/16 v0, 0x5e

    if-eq p1, v0, :cond_5

    const/16 v0, 0x7c

    if-eq p1, v0, :cond_4

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_3

    const/16 v0, 0x101

    if-eq p1, v0, :cond_2

    const/16 v0, 0x119

    if-eq p1, v0, :cond_1

    const/16 v0, 0x123

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/16 p1, 0x15

    return p1

    :pswitch_0
    const/16 p1, 0xb

    return p1

    :pswitch_1
    const/16 p1, 0xa

    return p1

    :pswitch_2
    const/4 p1, 0x6

    return p1

    :pswitch_3
    const/16 p1, 0x10

    return p1

    :pswitch_4
    const/16 p1, 0xf

    return p1

    :pswitch_5
    const/16 p1, 0x12

    return p1

    :pswitch_6
    const/16 p1, 0xd

    return p1

    :cond_0
    const/16 p1, 0xc

    return p1

    :cond_1
    const/16 p1, 0x14

    return p1

    :cond_2
    const/16 p1, 0x13

    return p1

    :cond_3
    const/16 p1, 0x9

    return p1

    :cond_4
    const/16 p1, 0x8

    return p1

    :cond_5
    const/4 p1, 0x4

    return p1

    :cond_6
    const/16 p1, 0x11

    return p1

    :cond_7
    const/16 p1, 0xe

    return p1

    :cond_8
    const/4 p1, 0x5

    return p1

    :cond_9
    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1

    :cond_b
    const/4 p1, 0x2

    return p1

    :cond_c
    const/4 p1, 0x7

    return p1

    :cond_d
    const/4 p1, 0x3

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x125
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method s()V
    .locals 4

    iget v0, p0, Lc/a/a/a/f;->w:I

    iput v0, p0, Lc/a/a/a/f;->x:I

    iget v0, p0, Lc/a/a/a/f;->u:I

    iput v0, p0, Lc/a/a/a/f;->q:I

    iget-object v0, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v1, v0, Lc/a/a/a/f$g;->a:I

    iput v1, p0, Lc/a/a/a/f;->r:I

    iget-object v1, p0, Lc/a/a/a/f;->z:Lc/a/a/a/f$g;

    iget v2, v1, Lc/a/a/a/f$g;->a:I

    const/16 v3, 0x12d

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v1}, Lc/a/a/a/f$g;->a(Lc/a/a/a/f$g;)V

    iget-object v0, p0, Lc/a/a/a/f;->z:Lc/a/a/a/f$g;

    iput v3, v0, Lc/a/a/a/f$g;->a:I

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lc/a/a/a/f$g;->b:Lc/a/a/a/f$f;

    invoke-virtual {p0, v1}, Lc/a/a/a/f;->a(Lc/a/a/a/f$f;)I

    move-result v1

    iput v1, v0, Lc/a/a/a/f$g;->a:I

    :goto_0
    return-void
.end method

.method t(I)I
    .locals 1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x118

    if-eq p1, v0, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x4

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    const/4 p1, 0x2

    return p1
.end method

.method t()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lc/a/a/a/f;->C:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lc/a/a/a/f;->v:I

    iget v0, p0, Lc/a/a/a/f;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/a/a/a/f;->u:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, -0x1

    iput v0, p0, Lc/a/a/a/f;->v:I

    :goto_0
    return-void
.end method

.method u()V
    .locals 5

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-object v1, v0, Lc/a/a/a/b;->b:Lc/a/a/l;

    const/4 v2, 0x0

    iput v2, v1, Lc/a/a/l;->m:I

    iget-object v3, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v3, v3, Lc/a/a/a/f$g;->a:I

    const/16 v4, 0x29

    if-eq v3, v4, :cond_3

    :cond_0
    iget-object v3, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v3, v3, Lc/a/a/a/f$g;->a:I

    const/16 v4, 0x124

    if-eq v3, v4, :cond_2

    const/16 v4, 0x12f

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lc/a/a/a/f;->E()Lc/a/a/j;

    move-result-object v3

    invoke-virtual {p0, v3}, Lc/a/a/a/f;->a(Lc/a/a/j;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<name> or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-static {v1}, Lc/a/a/a/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_2
    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    const/4 v3, 0x1

    iput v3, v1, Lc/a/a/l;->m:I

    :goto_0
    iget v3, v1, Lc/a/a/l;->m:I

    if-nez v3, :cond_3

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Lc/a/a/a/f;->D(I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    invoke-virtual {p0, v2}, Lc/a/a/a/f;->l(I)V

    iget-short v2, v0, Lc/a/a/a/b;->o:S

    iput v2, v1, Lc/a/a/l;->l:I

    invoke-virtual {v0, v2}, Lc/a/a/a/b;->z(I)V

    return-void
.end method

.method u(I)V
    .locals 7

    iget v4, p0, Lc/a/a/a/f;->w:I

    const/16 v0, 0x110

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->D(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/a/a/a/f;->E()Lc/a/a/j;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_2

    :cond_0
    const/16 v0, 0x105

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->D(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "continue"

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lc/a/a/a/f;->s()V

    const-string v0, "break"

    :goto_1
    invoke-static {v0}, Lc/a/a/j;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    goto :goto_0

    :goto_2
    iget-object v0, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget-object v1, v0, Lc/a/a/a/f$b;->c:[Lc/a/a/a/f$d;

    iget v2, v0, Lc/a/a/a/f$b;->d:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lc/a/a/a/a;->a([Lc/a/a/a/f$d;I)[Lc/a/a/a/f$d;

    move-result-object v1

    iput-object v1, v0, Lc/a/a/a/f$b;->c:[Lc/a/a/a/f$d;

    iget-object v0, p0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    iget v6, v0, Lc/a/a/a/f$b;->d:I

    add-int/lit8 v2, v6, 0x1

    iput v2, v0, Lc/a/a/a/f$b;->d:I

    move-object v0, p0

    move v2, v6

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lc/a/a/a/f;->a([Lc/a/a/a/f$d;ILc/a/a/j;II)I

    invoke-virtual {p0, v6}, Lc/a/a/a/f;->p(I)Z

    return-void
.end method

.method v()I
    .locals 4

    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    iget v0, p0, Lc/a/a/a/f;->v:I

    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    iget v1, p0, Lc/a/a/a/f;->v:I

    invoke-direct {p0, v0}, Lc/a/a/a/f;->O(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lc/a/a/a/f;->O(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->w(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v1}, Lc/a/a/a/f;->w(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hexadecimal digit expected \'x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x130

    invoke-virtual {p0, v0, v1}, Lc/a/a/a/f;->a(Ljava/lang/String;I)V

    const/4 v0, 0x0

    throw v0
.end method

.method v(I)Z
    .locals 1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method w()I
    .locals 4

    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x4

    shl-int/2addr v0, v2

    iget v3, p0, Lc/a/a/a/f;->v:I

    invoke-virtual {p0, v3}, Lc/a/a/a/f;->w(I)I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_1

    iget v2, p0, Lc/a/a/a/f;->v:I

    invoke-direct {p0, v2}, Lc/a/a/a/f;->O(I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    invoke-direct {p0, v0}, Lc/a/a/a/f;->P(I)I

    int-to-char v0, v0

    return v0
.end method

.method w(I)I
    .locals 1

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x30

    goto :goto_0

    :cond_0
    const/16 v0, 0x46

    if-gt p1, v0, :cond_1

    add-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, -0x41

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, -0x61

    :goto_0
    return p1
.end method

.method x()V
    .locals 8

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    new-instance v1, Lc/a/a/a/f$i;

    invoke-direct {v1}, Lc/a/a/a/f$i;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lc/a/a/a/f;->b(Z)Z

    move-result v3

    const/16 v4, 0x3b

    const/4 v5, 0x0

    if-nez v3, :cond_6

    iget-object v3, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v3, v3, Lc/a/a/a/f$g;->a:I

    if-ne v3, v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v1}, Lc/a/a/a/f;->f(Lc/a/a/a/f$i;)I

    move-result v3

    iget v6, v1, Lc/a/a/a/f$i;->b:I

    invoke-virtual {p0, v6}, Lc/a/a/a/f;->v(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0, v1}, Lc/a/a/a/b;->o(Lc/a/a/a/f$i;)V

    iget v6, v1, Lc/a/a/a/f$i;->b:I

    const/16 v7, 0xe

    if-ne v6, v7, :cond_2

    if-ne v3, v2, :cond_2

    invoke-virtual {v0, v1}, Lc/a/a/a/b;->k(Lc/a/a/a/f$i;)Lc/a/a/a/c;

    move-result-object v3

    const/16 v6, 0x1e

    invoke-static {v3, v6}, Lc/a/a/a/a;->f(Lc/a/a/a/c;I)V

    invoke-virtual {v0, v1}, Lc/a/a/a/b;->j(Lc/a/a/a/f$i;)I

    move-result v1

    invoke-static {v1}, Lc/a/a/c;->a(I)I

    move-result v1

    iget-short v3, v0, Lc/a/a/a/b;->o:S

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lc/a/a/a/a;->a(Z)V

    :cond_2
    iget-short v5, v0, Lc/a/a/a/b;->o:S

    const/4 v1, -0x1

    const/4 v3, -0x1

    goto :goto_3

    :cond_3
    if-ne v3, v2, :cond_4

    invoke-virtual {v0, v1}, Lc/a/a/a/b;->e(Lc/a/a/a/f$i;)I

    move-result v5

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v1}, Lc/a/a/a/b;->g(Lc/a/a/a/f$i;)V

    iget-short v1, v0, Lc/a/a/a/b;->o:S

    iget-short v6, v0, Lc/a/a/a/b;->q:S

    sub-int/2addr v6, v1

    if-ne v3, v6, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lc/a/a/a/a;->a(Z)V

    move v5, v1

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v0, v5, v3}, Lc/a/a/a/b;->i(II)V

    invoke-virtual {p0, v4}, Lc/a/a/a/f;->D(I)Z

    return-void
.end method

.method x(I)V
    .locals 9

    iget v0, p0, Lc/a/a/a/f;->u:I

    iget v1, p0, Lc/a/a/a/f;->w:I

    new-instance v2, Lc/a/a/a/d;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lc/a/a/a/d;-><init>(I)V

    :goto_0
    invoke-virtual {p0, v2}, Lc/a/a/a/f;->a(Lc/a/a/a/d;)Z

    move-result v3

    iget-object v4, p0, Lc/a/a/a/f;->y:Lc/a/a/a/f$g;

    iget v4, v4, Lc/a/a/a/f$g;->a:I

    const/16 v5, 0x10a

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x109

    invoke-virtual {p0, v4}, Lc/a/a/a/f;->D(I)Z

    move-result v4

    const/4 v5, 0x1

    const/16 v6, 0x111

    if-eqz v4, :cond_2

    iget-boolean v3, p0, Lc/a/a/a/f;->s:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x7b

    invoke-virtual {p0, v3}, Lc/a/a/a/f;->D(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Lc/a/a/a/f;->b()V

    if-eqz v3, :cond_2

    const/16 v4, 0x7d

    invoke-virtual {p0, v4, v6, p1}, Lc/a/a/a/f;->b(III)V

    :cond_2
    iget-boolean v4, p0, Lc/a/a/a/f;->J:Z

    if-eqz v4, :cond_4

    if-eqz v3, :cond_3

    sget-object v4, Lc/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v7, Landroid/graphics/Rect;

    iget v8, p0, Lc/a/a/a/f;->q:I

    sub-int/2addr v8, v5

    iget v5, p0, Lc/a/a/a/f;->x:I

    invoke-direct {v7, v0, v1, v8, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    sget-object v4, Lc/a/a/a/f;->o:Ljava/util/ArrayList;

    new-instance v5, Landroid/graphics/Rect;

    iget v7, p0, Lc/a/a/a/f;->u:I

    add-int/lit8 v7, v7, -0x3

    iget v8, p0, Lc/a/a/a/f;->w:I

    invoke-direct {v5, v0, v1, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    const/16 v0, 0x10b

    invoke-virtual {p0, v0, v6, p1}, Lc/a/a/a/f;->b(III)V

    :cond_5
    iget-object p1, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget v0, v2, Lc/a/a/a/d;->a:I

    invoke-virtual {p1, v0}, Lc/a/a/a/b;->w(I)V

    return-void
.end method

.method y()V
    .locals 1

    iget v0, p0, Lc/a/a/a/f;->v:I

    invoke-virtual {p0, v0}, Lc/a/a/a/f;->B(I)V

    invoke-virtual {p0}, Lc/a/a/a/f;->t()V

    return-void
.end method

.method y(I)V
    .locals 7

    iget-object v0, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-object v0, v0, Lc/a/a/a/b;->b:Lc/a/a/l;

    iget-object v0, v0, Lc/a/a/l;->g:[Lc/a/a/b;

    new-instance v1, Lc/a/a/a/f$i;

    invoke-direct {v1}, Lc/a/a/a/f$i;-><init>()V

    iget-object v2, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    iget-short v3, v2, Lc/a/a/a/b;->n:S

    sub-int v4, v3, p1

    aget-object v5, v0, v4

    iget-object v5, v5, Lc/a/a/b;->a:Lc/a/a/j;

    const/4 v6, 0x1

    invoke-static {v2, v5, v1, v6}, Lc/a/a/a/b;->a(Lc/a/a/a/b;Lc/a/a/j;Lc/a/a/a/f$i;I)I

    add-int/2addr v4, v6

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v2, v0, v4

    iget-object v2, v2, Lc/a/a/b;->a:Lc/a/a/j;

    iget-object v5, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {v5, v1}, Lc/a/a/a/b;->g(Lc/a/a/a/f$i;)V

    iget-object v5, p0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-static {v5, v2, v1, v6}, Lc/a/a/a/b;->a(Lc/a/a/a/b;Lc/a/a/j;Lc/a/a/a/f$i;I)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p1, v1}, Lc/a/a/a/f;->a(IILc/a/a/a/f$i;)V

    invoke-virtual {p0, p1}, Lc/a/a/a/f;->l(I)V

    return-void
.end method

.method z()I
    .locals 5

    iget v0, p0, Lc/a/a/a/f;->v:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x5b

    if-eq v0, v3, :cond_1

    const/16 v3, 0x5d

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lc/a/a/a/a;->a(Z)V

    invoke-virtual {p0}, Lc/a/a/a/f;->y()V

    :goto_2
    iget v3, p0, Lc/a/a/a/f;->v:I

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lc/a/a/a/f;->y()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    if-ne v3, v0, :cond_3

    goto :goto_3

    :cond_3
    neg-int v0, v1

    add-int/lit8 v1, v0, -0x1

    :goto_3
    return v1
.end method
