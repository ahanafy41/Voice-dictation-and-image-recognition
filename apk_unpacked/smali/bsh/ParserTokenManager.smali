.class public Lbsh/ParserTokenManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lbsh/ParserConstants;


# static fields
.field static final a:[J

.field static final b:[J

.field static final c:[J

.field static final d:[J

.field static final e:[J

.field static final f:[J

.field static final g:[J

.field static final h:[J

.field static final i:[I

.field static final j:[J

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final k:[J

.field static final l:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field public debugStream:Ljava/io/PrintStream;

.field protected m:Lbsh/JavaCharStream;

.field private final n:[I

.field private final o:[I

.field protected p:C

.field q:I

.field r:I

.field s:I

.field t:I

.field u:I

.field v:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x4

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lbsh/ParserTokenManager;->a:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lbsh/ParserTokenManager;->b:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_2

    sput-object v1, Lbsh/ParserTokenManager;->c:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_3

    sput-object v1, Lbsh/ParserTokenManager;->d:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_4

    sput-object v1, Lbsh/ParserTokenManager;->e:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_5

    sput-object v1, Lbsh/ParserTokenManager;->f:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_6

    sput-object v1, Lbsh/ParserTokenManager;->g:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_7

    sput-object v1, Lbsh/ParserTokenManager;->h:[J

    const/16 v1, 0x39

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    sput-object v2, Lbsh/ParserTokenManager;->i:[I

    const/16 v2, 0x86

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v2, v4

    const/4 v6, 0x2

    aput-object v5, v2, v6

    const/4 v6, 0x3

    aput-object v5, v2, v6

    aput-object v5, v2, v0

    const/4 v0, 0x5

    aput-object v5, v2, v0

    const/4 v0, 0x6

    aput-object v5, v2, v0

    const/4 v0, 0x7

    aput-object v5, v2, v0

    const/16 v0, 0x8

    aput-object v5, v2, v0

    const/16 v0, 0x9

    aput-object v5, v2, v0

    const/16 v0, 0xa

    const-string v7, "abstract"

    aput-object v7, v2, v0

    const/16 v0, 0xb

    const-string v7, "boolean"

    aput-object v7, v2, v0

    const/16 v0, 0xc

    const-string v7, "break"

    aput-object v7, v2, v0

    const/16 v0, 0xd

    const-string v7, "class"

    aput-object v7, v2, v0

    const/16 v0, 0xe

    const-string v7, "byte"

    aput-object v7, v2, v0

    const/16 v0, 0xf

    const-string v7, "case"

    aput-object v7, v2, v0

    const/16 v0, 0x10

    const-string v7, "catch"

    aput-object v7, v2, v0

    const/16 v0, 0x11

    const-string v7, "char"

    aput-object v7, v2, v0

    const/16 v0, 0x12

    const-string v7, "const"

    aput-object v7, v2, v0

    const/16 v0, 0x13

    const-string v7, "continue"

    aput-object v7, v2, v0

    const/16 v0, 0x14

    const-string v7, "default"

    aput-object v7, v2, v0

    const/16 v0, 0x15

    const-string v7, "do"

    aput-object v7, v2, v0

    const/16 v0, 0x16

    const-string v7, "double"

    aput-object v7, v2, v0

    const/16 v0, 0x17

    const-string v7, "else"

    aput-object v7, v2, v0

    const/16 v0, 0x18

    const-string v7, "enum"

    aput-object v7, v2, v0

    const/16 v0, 0x19

    const-string v7, "extends"

    aput-object v7, v2, v0

    const/16 v0, 0x1a

    const-string v7, "false"

    aput-object v7, v2, v0

    const/16 v0, 0x1b

    const-string v7, "final"

    aput-object v7, v2, v0

    const/16 v0, 0x1c

    const-string v7, "finally"

    aput-object v7, v2, v0

    const/16 v0, 0x1d

    const-string v7, "float"

    aput-object v7, v2, v0

    const/16 v0, 0x1e

    const-string v7, "for"

    aput-object v7, v2, v0

    const/16 v0, 0x1f

    const-string v7, "goto"

    aput-object v7, v2, v0

    const/16 v0, 0x20

    const-string v7, "if"

    aput-object v7, v2, v0

    const/16 v0, 0x21

    const-string v7, "implements"

    aput-object v7, v2, v0

    const/16 v0, 0x22

    const-string v7, "import"

    aput-object v7, v2, v0

    const/16 v0, 0x23

    const-string v7, "instanceof"

    aput-object v7, v2, v0

    const/16 v0, 0x24

    const-string v7, "int"

    aput-object v7, v2, v0

    const/16 v0, 0x25

    const-string v7, "interface"

    aput-object v7, v2, v0

    const/16 v0, 0x26

    const-string v7, "long"

    aput-object v7, v2, v0

    const/16 v0, 0x27

    const-string v7, "native"

    aput-object v7, v2, v0

    const/16 v0, 0x28

    const-string v7, "new"

    aput-object v7, v2, v0

    const/16 v0, 0x29

    const-string v7, "null"

    aput-object v7, v2, v0

    const/16 v0, 0x2a

    const-string v7, "package"

    aput-object v7, v2, v0

    const/16 v0, 0x2b

    const-string v7, "private"

    aput-object v7, v2, v0

    const/16 v0, 0x2c

    const-string v7, "protected"

    aput-object v7, v2, v0

    const/16 v0, 0x2d

    const-string v7, "public"

    aput-object v7, v2, v0

    const/16 v0, 0x2e

    const-string v7, "return"

    aput-object v7, v2, v0

    const/16 v0, 0x2f

    const-string v7, "short"

    aput-object v7, v2, v0

    const/16 v0, 0x30

    const-string v7, "static"

    aput-object v7, v2, v0

    const/16 v0, 0x31

    const-string v7, "strictfp"

    aput-object v7, v2, v0

    const/16 v0, 0x32

    const-string v7, "switch"

    aput-object v7, v2, v0

    const/16 v0, 0x33

    const-string v7, "synchronized"

    aput-object v7, v2, v0

    const/16 v0, 0x34

    const-string v7, "transient"

    aput-object v7, v2, v0

    const/16 v0, 0x35

    const-string v7, "throw"

    aput-object v7, v2, v0

    const/16 v0, 0x36

    const-string v7, "throws"

    aput-object v7, v2, v0

    const/16 v0, 0x37

    const-string v7, "true"

    aput-object v7, v2, v0

    const/16 v0, 0x38

    const-string v7, "try"

    aput-object v7, v2, v0

    const-string v0, "void"

    aput-object v0, v2, v1

    const/16 v0, 0x3a

    const-string v1, "volatile"

    aput-object v1, v2, v0

    const/16 v0, 0x3b

    const-string v1, "while"

    aput-object v1, v2, v0

    const/16 v0, 0x3c

    aput-object v5, v2, v0

    const/16 v0, 0x3d

    aput-object v5, v2, v0

    const/16 v0, 0x3e

    aput-object v5, v2, v0

    const/16 v0, 0x3f

    aput-object v5, v2, v0

    const/16 v0, 0x40

    aput-object v5, v2, v0

    const/16 v0, 0x41

    aput-object v5, v2, v0

    const/16 v0, 0x42

    aput-object v5, v2, v0

    const/16 v0, 0x43

    aput-object v5, v2, v0

    const/16 v0, 0x44

    aput-object v5, v2, v0

    const/16 v0, 0x45

    aput-object v5, v2, v0

    const/16 v0, 0x46

    aput-object v5, v2, v0

    const/16 v0, 0x47

    aput-object v5, v2, v0

    const/16 v0, 0x48

    const-string v1, "("

    aput-object v1, v2, v0

    const/16 v0, 0x49

    const-string v1, ")"

    aput-object v1, v2, v0

    const/16 v0, 0x4a

    const-string v1, "{"

    aput-object v1, v2, v0

    const/16 v0, 0x4b

    const-string v1, "}"

    aput-object v1, v2, v0

    const/16 v0, 0x4c

    const-string v1, "["

    aput-object v1, v2, v0

    const/16 v0, 0x4d

    const-string v1, "]"

    aput-object v1, v2, v0

    const/16 v0, 0x4e

    const-string v1, ";"

    aput-object v1, v2, v0

    const/16 v0, 0x4f

    const-string v1, ","

    aput-object v1, v2, v0

    const/16 v0, 0x50

    const-string v1, "."

    aput-object v1, v2, v0

    const/16 v0, 0x51

    const-string v1, "="

    aput-object v1, v2, v0

    const/16 v0, 0x52

    const-string v1, ">"

    aput-object v1, v2, v0

    const/16 v0, 0x53

    const-string v1, "@gt"

    aput-object v1, v2, v0

    const/16 v0, 0x54

    const-string v1, "<"

    aput-object v1, v2, v0

    const/16 v0, 0x55

    const-string v1, "@lt"

    aput-object v1, v2, v0

    const/16 v0, 0x56

    const-string v1, "!"

    aput-object v1, v2, v0

    const/16 v0, 0x57

    const-string v1, "~"

    aput-object v1, v2, v0

    const/16 v0, 0x58

    const-string v1, "?"

    aput-object v1, v2, v0

    const/16 v0, 0x59

    const-string v1, ":"

    aput-object v1, v2, v0

    const/16 v0, 0x5a

    const-string v1, "=="

    aput-object v1, v2, v0

    const/16 v0, 0x5b

    const-string v1, "<="

    aput-object v1, v2, v0

    const/16 v0, 0x5c

    const-string v1, "@lteq"

    aput-object v1, v2, v0

    const/16 v0, 0x5d

    const-string v1, ">="

    aput-object v1, v2, v0

    const/16 v0, 0x5e

    const-string v1, "@gteq"

    aput-object v1, v2, v0

    const/16 v0, 0x5f

    const-string v1, "!="

    aput-object v1, v2, v0

    const/16 v0, 0x60

    const-string v1, "||"

    aput-object v1, v2, v0

    const/16 v0, 0x61

    const-string v1, "@or"

    aput-object v1, v2, v0

    const/16 v0, 0x62

    const-string v1, "&&"

    aput-object v1, v2, v0

    const/16 v0, 0x63

    const-string v1, "@and"

    aput-object v1, v2, v0

    const/16 v0, 0x64

    const-string v1, "++"

    aput-object v1, v2, v0

    const/16 v0, 0x65

    const-string v1, "--"

    aput-object v1, v2, v0

    const/16 v0, 0x66

    const-string v1, "+"

    aput-object v1, v2, v0

    const/16 v0, 0x67

    const-string v1, "-"

    aput-object v1, v2, v0

    const/16 v0, 0x68

    const-string v1, "*"

    aput-object v1, v2, v0

    const/16 v0, 0x69

    const-string v1, "/"

    aput-object v1, v2, v0

    const/16 v0, 0x6a

    const-string v1, "&"

    aput-object v1, v2, v0

    const/16 v0, 0x6b

    const-string v1, "@bitwise_and"

    aput-object v1, v2, v0

    const/16 v0, 0x6c

    const-string v1, "|"

    aput-object v1, v2, v0

    const/16 v0, 0x6d

    const-string v1, "@bitwise_or"

    aput-object v1, v2, v0

    const/16 v0, 0x6e

    const-string v1, "^"

    aput-object v1, v2, v0

    const/16 v0, 0x6f

    const-string v1, "%"

    aput-object v1, v2, v0

    const/16 v0, 0x70

    const-string v1, "<<"

    aput-object v1, v2, v0

    const/16 v0, 0x71

    const-string v1, "@left_shift"

    aput-object v1, v2, v0

    const/16 v0, 0x72

    const-string v1, ">>"

    aput-object v1, v2, v0

    const/16 v0, 0x73

    const-string v1, "@right_shift"

    aput-object v1, v2, v0

    const/16 v0, 0x74

    const-string v1, ">>>"

    aput-object v1, v2, v0

    const/16 v0, 0x75

    const-string v1, "@right_unsigned_shift"

    aput-object v1, v2, v0

    const/16 v0, 0x76

    const-string v1, "+="

    aput-object v1, v2, v0

    const/16 v0, 0x77

    const-string v1, "-="

    aput-object v1, v2, v0

    const/16 v0, 0x78

    const-string v1, "*="

    aput-object v1, v2, v0

    const/16 v0, 0x79

    const-string v1, "/="

    aput-object v1, v2, v0

    const/16 v0, 0x7a

    const-string v1, "&="

    aput-object v1, v2, v0

    const/16 v0, 0x7b

    const-string v1, "@and_assign"

    aput-object v1, v2, v0

    const/16 v0, 0x7c

    const-string v1, "|="

    aput-object v1, v2, v0

    const/16 v0, 0x7d

    const-string v1, "@or_assign"

    aput-object v1, v2, v0

    const/16 v0, 0x7e

    const-string v1, "^="

    aput-object v1, v2, v0

    const/16 v0, 0x7f

    const-string v1, "%="

    aput-object v1, v2, v0

    const/16 v0, 0x80

    const-string v1, "<<="

    aput-object v1, v2, v0

    const/16 v0, 0x81

    const-string v1, "@left_shift_assign"

    aput-object v1, v2, v0

    const/16 v0, 0x82

    const-string v1, ">>="

    aput-object v1, v2, v0

    const/16 v0, 0x83

    const-string v1, "@right_shift_assign"

    aput-object v1, v2, v0

    const/16 v0, 0x84

    const-string v1, ">>>="

    aput-object v1, v2, v0

    const/16 v0, 0x85

    const-string v1, "@right_unsigned_shift_assign"

    aput-object v1, v2, v0

    sput-object v2, Lbsh/ParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v3

    sput-object v0, Lbsh/ParserTokenManager;->lexStateNames:[Ljava/lang/String;

    new-array v0, v6, [J

    fill-array-data v0, :array_9

    sput-object v0, Lbsh/ParserTokenManager;->j:[J

    new-array v0, v6, [J

    fill-array-data v0, :array_a

    sput-object v0, Lbsh/ParserTokenManager;->k:[J

    new-array v0, v6, [J

    fill-array-data v0, :array_b

    sput-object v0, Lbsh/ParserTokenManager;->l:[J

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 8
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 8
        0x1ff00000fffffffeL
        -0x4000
        0xffffffffL
        0x600000000000000L
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x0
        0x0
        -0x80000000800001L
    .end array-data

    :array_4
    .array-data 8
        0x0
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_5
    .array-data 8
        -0x1
        -0x1
        0xffff
        0x0
    .end array-data

    :array_6
    .array-data 8
        -0x1
        -0x1
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 8
        0x3fffffffffffL
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x25
        0x26
        0x2b
        0x2c
        0x2f
        0x30
        0xf
        0x38
        0x3d
        0x49
        0x1a
        0x1b
        0x1d
        0x11
        0x13
        0x34
        0x36
        0x9
        0x39
        0x3a
        0x3c
        0x2
        0x3
        0x5
        0xb
        0xc
        0xf
        0x1a
        0x1b
        0x1f
        0x1d
        0x27
        0x28
        0xf
        0x2f
        0x30
        0xf
        0x3f
        0x40
        0x42
        0x45
        0x46
        0x48
        0xd
        0xe
        0x14
        0x15
        0x17
        0x1c
        0x1e
        0x20
        0x29
        0x2a
        0x2d
        0x2e
        0x31
        0x32
    .end array-data

    :array_9
    .array-data 8
        0x1ffffffffffffc01L    # 1.491668146239872E-154
        -0xc3
        0x3f
    .end array-data

    :array_a
    .array-data 8
        0x3fe
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 8
        0x380
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lbsh/JavaCharStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lbsh/ParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/16 v0, 0x4a

    new-array v0, v0, [I

    iput-object v0, p0, Lbsh/ParserTokenManager;->n:[I

    const/16 v0, 0x94

    new-array v0, v0, [I

    iput-object v0, p0, Lbsh/ParserTokenManager;->o:[I

    const/4 v0, 0x0

    iput v0, p0, Lbsh/ParserTokenManager;->q:I

    iput v0, p0, Lbsh/ParserTokenManager;->r:I

    iput-object p1, p0, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    return-void
.end method

.method public constructor <init>(Lbsh/JavaCharStream;I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/ParserTokenManager;-><init>(Lbsh/JavaCharStream;)V

    invoke-virtual {p0, p2}, Lbsh/ParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method private final a(III)I
    .locals 0

    iput p2, p0, Lbsh/ParserTokenManager;->v:I

    iput p1, p0, Lbsh/ParserTokenManager;->u:I

    :try_start_0
    iget-object p2, p0, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {p2}, Lbsh/JavaCharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p3, p1}, Lbsh/ParserTokenManager;->d(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final a(IJJJ)I
    .locals 0

    invoke-direct/range {p0 .. p7}, Lbsh/ParserTokenManager;->b(IJJJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lbsh/ParserTokenManager;->d(II)I

    move-result p1

    return p1
.end method

.method private final a(JJ)I
    .locals 8

    and-long v6, p3, p1

    const-wide/16 v0, 0x0

    cmp-long v2, v6, v0

    if-nez v2, :cond_0

    const/16 v1, 0x14

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lbsh/ParserTokenManager;->p:C

    const/16 v1, 0x61

    if-eq v0, v1, :cond_1

    const/16 v1, 0x15

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_1
    const-wide/16 v0, 0x20

    invoke-direct {p0, v6, v7, v0, v1}, Lbsh/ParserTokenManager;->b(JJ)I

    move-result v0

    return v0

    :catch_0
    const/16 v1, 0x15

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->b(IJJJ)I

    const/16 v0, 0x16

    return v0
.end method

.method private final a(JJJ)I
    .locals 14

    move-object v13, p0

    const/4 v8, 0x1

    :try_start_0
    iget-object v0, v13, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v13, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, v13, Lbsh/ParserTokenManager;->p:C

    const/16 v1, 0x26

    const/16 v2, 0x62

    const-wide/16 v3, 0x0

    if-eq v0, v1, :cond_16

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_15

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_14

    const/16 v1, 0x72

    if-eq v0, v1, :cond_13

    const-wide v5, 0x100000000L

    const/16 v7, 0x7c

    if-eq v0, v7, :cond_12

    const/16 v9, 0x61

    if-eq v0, v9, :cond_11

    if-eq v0, v2, :cond_10

    const/16 v2, 0x74

    if-eq v0, v2, :cond_f

    const/16 v2, 0x75

    if-eq v0, v2, :cond_e

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_0
    const-wide v3, 0x8000000004000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_1
    const-wide/32 v3, 0x2000000

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_2
    const-wide/high16 v3, 0x4000000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_3
    const-wide/32 v0, 0x200000

    and-long/2addr v0, p1

    cmp-long v2, v0, v3

    if-eqz v2, :cond_0

    const/16 v0, 0x15

    iput v0, v13, Lbsh/ParserTokenManager;->v:I

    iput v8, v13, Lbsh/ParserTokenManager;->u:I

    :cond_0
    const-wide v3, 0x6000040c04c0800L

    const-wide v7, 0x2000000200000000L

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_4
    const-wide v3, 0x3801000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_5
    const-wide v3, 0x600000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_6
    const-wide/32 v3, 0x20802000

    const-wide v7, 0x2000010200000L

    const-wide/16 v11, 0x2

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_7
    const-wide/32 v3, 0x18000000

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_8
    const-wide v3, 0x860800000020000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_9
    const-wide/16 v3, 0x0

    const-wide/32 v7, 0x40080000

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_a
    and-long v0, p1, v5

    cmp-long v2, v0, v3

    if-eqz v2, :cond_17

    const/16 v0, 0x20

    const/16 v1, 0x23

    invoke-direct {p0, v8, v0, v1}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :pswitch_b
    const-wide v3, 0x410000100000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_c
    const-wide/high16 v5, 0x4000000000000L

    and-long v5, p3, v5

    cmp-long v0, v5, v3

    if-eqz v0, :cond_1

    iput v1, v13, Lbsh/ParserTokenManager;->v:I

    iput v8, v13, Lbsh/ParserTokenManager;->u:I

    :cond_1
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x10000000000000L

    const-wide/16 v11, 0x14

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_d
    const-wide/32 v0, 0x4000000

    and-long v0, p3, v0

    cmp-long v2, v0, v3

    if-eqz v2, :cond_2

    const/16 v0, 0x5a

    invoke-direct {p0, v8, v0}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_2
    const-wide/32 v0, 0x8000000

    and-long v0, p3, v0

    cmp-long v2, v0, v3

    if-eqz v2, :cond_3

    const/16 v0, 0x5b

    invoke-direct {p0, v8, v0}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_3
    const-wide/32 v0, 0x20000000

    and-long v0, p3, v0

    cmp-long v2, v0, v3

    if-eqz v2, :cond_4

    const/16 v0, 0x5d

    invoke-direct {p0, v8, v0}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_4
    const-wide v0, 0x80000000L

    and-long v0, p3, v0

    cmp-long v2, v0, v3

    if-eqz v2, :cond_5

    const/16 v0, 0x5f

    invoke-direct {p0, v8, v0}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_5
    const-wide/high16 v0, 0x40000000000000L

    and-long v0, p3, v0

    cmp-long v2, v0, v3

    if-eqz v2, :cond_6

    const/16 v0, 0x76

    invoke-direct {p0, v8, v0}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_6
    const-wide/high16 v0, 0x80000000000000L

    and-long v0, p3, v0

    cmp-long v2, v0, v3

    if-eqz v2, :cond_7

    const/16 v0, 0x77

    invoke-direct {p0, v8, v0}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_7
    const-wide/high16 v0, 0x100000000000000L

    and-long v0, p3, v0

    cmp-long v2, v0, v3

    if-eqz v2, :cond_8

    const/16 v0, 0x78

    invoke-direct {p0, v8, v0}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_8
    const-wide/high16 v0, 0x200000000000000L

    and-long v0, p3, v0

    cmp-long v2, v0, v3

    if-eqz v2, :cond_9

    const/16 v0, 0x79

    invoke-direct {p0, v8, v0}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_9
    const-wide/high16 v0, 0x400000000000000L

    and-long v0, p3, v0

    cmp-long v2, v0, v3

    if-eqz v2, :cond_a

    const/16 v0, 0x7a

    invoke-direct {p0, v8, v0}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_a
    const-wide/high16 v0, 0x1000000000000000L

    and-long v0, p3, v0

    cmp-long v2, v0, v3

    if-eqz v2, :cond_b

    invoke-direct {p0, v8, v7}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_b
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    and-long v0, p3, v0

    cmp-long v2, v0, v3

    if-eqz v2, :cond_c

    const/16 v0, 0x7e

    invoke-direct {p0, v8, v0}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_c
    const-wide/high16 v0, -0x8000000000000000L

    and-long v0, p3, v0

    cmp-long v2, v0, v3

    if-eqz v2, :cond_17

    const/16 v0, 0x7f

    invoke-direct {p0, v8, v0}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :pswitch_e
    const-wide/high16 v0, 0x1000000000000L

    and-long v0, p3, v0

    cmp-long v2, v0, v3

    if-eqz v2, :cond_d

    const/16 v0, 0x70

    iput v0, v13, Lbsh/ParserTokenManager;->v:I

    iput v8, v13, Lbsh/ParserTokenManager;->u:I

    :cond_d
    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    return v0

    :cond_e
    const-wide v3, 0x220000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    return v0

    :cond_f
    const-wide/high16 v3, 0x3000000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    return v0

    :cond_10
    const-wide/16 v3, 0x400

    const-wide v7, 0x280000000000L

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    return v0

    :cond_11
    const-wide v3, 0x48004018000L

    const-wide v7, 0x800000800000000L

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    return v0

    :cond_12
    and-long v0, p3, v5

    cmp-long v2, v0, v3

    if-eqz v2, :cond_17

    const/16 v0, 0x60

    invoke-direct {p0, v8, v0}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_13
    const-wide v3, 0x190180000001000L

    const-wide/high16 v7, 0x28000000000000L

    const-wide/16 v11, 0x28

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->d(JJJJJJ)I

    move-result v0

    return v0

    :cond_14
    const-wide v0, 0x2000000000L

    and-long v0, p3, v0

    cmp-long v2, v0, v3

    if-eqz v2, :cond_17

    const/16 v0, 0x65

    invoke-direct {p0, v8, v0}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_15
    const-wide v0, 0x1000000000L

    and-long v0, p3, v0

    cmp-long v2, v0, v3

    if-eqz v2, :cond_17

    const/16 v0, 0x64

    invoke-direct {p0, v8, v0}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_16
    const-wide v0, 0x400000000L

    and-long v0, p3, v0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_17

    invoke-direct {p0, v8, v2}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_17
    :goto_0
    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :catch_0
    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->b(IJJJ)I

    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6c
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x77
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(JJJJ)I
    .locals 10

    move-object v9, p0

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long v3, v1, v5

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    const/16 v1, 0xb

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, v9, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v9, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, v9, Lbsh/ParserTokenManager;->p:C

    const/16 v3, 0x61

    if-eq v0, v3, :cond_3

    const/16 v3, 0x65

    if-eq v0, v3, :cond_2

    const/16 v3, 0x73

    if-eq v0, v3, :cond_1

    const/16 v0, 0xc

    const-wide/16 v3, 0x0

    move-object p1, p0

    move p2, v0

    move-wide p3, v3

    move-wide p5, v1

    move-wide/from16 p7, v5

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_1
    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lbsh/ParserTokenManager;->b(JJJJ)I

    move-result v0

    return v0

    :cond_2
    const-wide/high16 v3, 0x20000000000000L

    const-wide/16 v7, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lbsh/ParserTokenManager;->b(JJJJ)I

    move-result v0

    return v0

    :cond_3
    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lbsh/ParserTokenManager;->b(JJJJ)I

    move-result v0

    return v0

    :catch_0
    const/16 v0, 0xc

    const-wide/16 v3, 0x0

    move-object p1, p0

    move p2, v0

    move-wide p3, v3

    move-wide p5, v1

    move-wide/from16 p7, v5

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->b(IJJJ)I

    const/16 v0, 0xd

    return v0
.end method

.method private final a(JJJJJJ)I
    .locals 14

    move-object v13, p0

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long v3, v1, v5

    and-long v9, p11, p9

    or-long/2addr v3, v9

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    const/16 v1, 0x8

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p5

    move-wide/from16 v6, p9

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xa

    :try_start_0
    iget-object v3, v13, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v3}, Lbsh/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, v13, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v3, v13, Lbsh/ParserTokenManager;->p:C

    const/16 v4, 0x65

    if-eq v3, v4, :cond_9

    const/16 v4, 0x66

    if-eq v3, v4, :cond_8

    const/16 v4, 0x69

    if-eq v3, v4, :cond_7

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_5

    const/16 v4, 0x72

    if-eq v3, v4, :cond_3

    const/16 v4, 0x74

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-wide/high16 v3, 0x2000000000000L

    and-long/2addr v3, v5

    cmp-long v11, v3, v7

    if-eqz v11, :cond_2

    const/16 v3, 0x71

    iput v3, v13, Lbsh/ParserTokenManager;->v:I

    iput v0, v13, Lbsh/ParserTokenManager;->u:I

    :cond_2
    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->b(JJJJJJ)I

    move-result v0

    return v0

    :cond_3
    const-wide v3, 0x200000000000L

    and-long/2addr v3, v5

    cmp-long v11, v3, v7

    if-eqz v11, :cond_4

    const/16 v1, 0x6d

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_4
    :goto_0
    const/16 v0, 0x9

    move-object p1, p0

    move/from16 p2, v0

    move-wide/from16 p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v9

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_5
    const-wide/high16 v3, 0x800000000000000L

    and-long/2addr v3, v5

    cmp-long v11, v3, v7

    if-eqz v11, :cond_6

    const/16 v1, 0x7b

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_6
    const-wide/16 v3, 0x0

    const-wide v7, 0x80000000000L

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->b(JJJJJJ)I

    move-result v0

    return v0

    :cond_7
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x20000000000000L

    const-wide/16 v11, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->b(JJJJJJ)I

    move-result v0

    return v0

    :cond_8
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x8000000000000L

    const-wide/16 v11, 0x8

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->b(JJJJJJ)I

    move-result v0

    return v0

    :cond_9
    const-wide/high16 v3, 0x8000000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->b(JJJJJJ)I

    move-result v0

    return v0

    :catch_0
    const/16 v3, 0x9

    move-object p1, p0

    move/from16 p2, v3

    move-wide/from16 p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v9

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->b(IJJJ)I

    return v0
.end method

.method private final a(I)V
    .locals 5

    iget-object v0, p0, Lbsh/ParserTokenManager;->n:[I

    aget v1, v0, p1

    iget v2, p0, Lbsh/ParserTokenManager;->t:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lbsh/ParserTokenManager;->o:[I

    iget v3, p0, Lbsh/ParserTokenManager;->s:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lbsh/ParserTokenManager;->s:I

    aput p1, v1, v3

    aput v2, v0, p1

    :cond_0
    return-void
.end method

.method private final a(II)V
    .locals 3

    :goto_0
    iget-object v0, p0, Lbsh/ParserTokenManager;->o:[I

    iget v1, p0, Lbsh/ParserTokenManager;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbsh/ParserTokenManager;->s:I

    sget-object v2, Lbsh/ParserTokenManager;->i:[I

    aget v2, v2, p1

    aput v2, v0, v1

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private static final a(IIIJJ)Z
    .locals 0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    return p1

    :cond_0
    sget-object p0, Lbsh/ParserTokenManager;->a:[J

    aget-wide p2, p0, p2

    and-long/2addr p2, p5

    const-wide/16 p4, 0x0

    cmp-long p0, p2, p4

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method private final b(IJJJ)I
    .locals 5

    const-wide/high16 p6, 0x8000000000000L

    const/16 v0, 0x45

    const/4 v1, -0x1

    const/16 v2, 0x23

    const-wide/16 v3, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    and-long/2addr p2, p6

    cmp-long p1, p2, v3

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v1

    :pswitch_1
    and-long/2addr p2, p6

    cmp-long p1, p2, v3

    if-eqz p1, :cond_2

    iget p1, p0, Lbsh/ParserTokenManager;->u:I

    const/16 p2, 0xa

    if-eq p1, p2, :cond_1

    iput v0, p0, Lbsh/ParserTokenManager;->v:I

    iput p2, p0, Lbsh/ParserTokenManager;->u:I

    :cond_1
    return v2

    :cond_2
    return v1

    :pswitch_2
    and-long p4, p2, p6

    cmp-long p1, p4, v3

    if-eqz p1, :cond_3

    iput v0, p0, Lbsh/ParserTokenManager;->v:I

    const/16 p1, 0x9

    :goto_0
    iput p1, p0, Lbsh/ParserTokenManager;->u:I

    return v2

    :cond_3
    const-wide p4, 0xa00000000L

    and-long/2addr p2, p4

    cmp-long p1, p2, v3

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v1

    :pswitch_3
    const-wide p4, 0x8000a00000000L

    and-long/2addr p4, p2

    cmp-long p1, p4, v3

    if-eqz p1, :cond_5

    iput v0, p0, Lbsh/ParserTokenManager;->v:I

    const/16 p1, 0x8

    goto :goto_0

    :cond_5
    const-wide p4, 0x10102000000000L

    and-long/2addr p2, p4

    cmp-long p1, p2, v3

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v1

    :pswitch_4
    const-wide p4, 0x402000000080400L

    and-long/2addr p4, p2

    cmp-long p1, p4, v3

    if-eqz p1, :cond_7

    return v2

    :cond_7
    const-wide p4, 0x18102a00000000L

    and-long/2addr p2, p4

    cmp-long p1, p2, v3

    if-eqz p1, :cond_8

    iput v0, p0, Lbsh/ParserTokenManager;->v:I

    const/4 p1, 0x7

    goto :goto_0

    :cond_8
    return v1

    :pswitch_5
    const-wide p4, 0x41a102a00080400L

    and-long/2addr p4, p2

    cmp-long p1, p4, v3

    if-eqz p1, :cond_9

    iput v0, p0, Lbsh/ParserTokenManager;->v:I

    const/4 p1, 0x6

    goto :goto_0

    :cond_9
    const-wide p4, 0xc0012100800L

    and-long/2addr p2, p4

    cmp-long p1, p2, v3

    if-eqz p1, :cond_a

    return v2

    :cond_a
    return v1

    :pswitch_6
    const-wide p4, 0x41a1c2a12180c00L

    and-long/2addr p4, p2

    cmp-long p1, p4, v3

    if-eqz p1, :cond_b

    iput v0, p0, Lbsh/ParserTokenManager;->v:I

    const/4 p1, 0x5

    goto :goto_0

    :cond_b
    const-wide p4, 0x45608400400000L

    and-long/2addr p2, p4

    cmp-long p1, p2, v3

    if-eqz p1, :cond_c

    return v2

    :cond_c
    return v1

    :pswitch_7
    const-wide p4, 0x86080003c053000L

    and-long/2addr p4, p2

    cmp-long p1, p4, v3

    if-eqz p1, :cond_d

    return v2

    :cond_d
    const-wide p4, 0x41f7cae02580c00L

    and-long/2addr p2, p4

    cmp-long p1, p2, v3

    if-eqz p1, :cond_f

    iget p1, p0, Lbsh/ParserTokenManager;->u:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_e

    iput v0, p0, Lbsh/ParserTokenManager;->v:I

    iput p2, p0, Lbsh/ParserTokenManager;->u:I

    :cond_e
    return v2

    :cond_f
    return v1

    :pswitch_8
    const-wide p4, 0xc7ffcae3e5d3c00L

    and-long/2addr p4, p2

    cmp-long p1, p4, v3

    if-eqz p1, :cond_11

    iget p1, p0, Lbsh/ParserTokenManager;->u:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_10

    iput v0, p0, Lbsh/ParserTokenManager;->v:I

    iput p2, p0, Lbsh/ParserTokenManager;->u:I

    :cond_10
    return v2

    :cond_11
    const-wide p4, 0x28002408182c000L

    and-long/2addr p2, p4

    cmp-long p1, p2, v3

    if-eqz p1, :cond_12

    return v2

    :cond_12
    return v1

    :pswitch_9
    const-wide p4, 0xefffecebfdffc00L

    and-long/2addr p4, p2

    cmp-long p1, p4, v3

    if-eqz p1, :cond_14

    iget p1, p0, Lbsh/ParserTokenManager;->u:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_13

    iput v0, p0, Lbsh/ParserTokenManager;->v:I

    iput p2, p0, Lbsh/ParserTokenManager;->u:I

    :cond_13
    return v2

    :cond_14
    const-wide p4, 0x100013040000000L

    and-long/2addr p2, p4

    cmp-long p1, p2, v3

    if-eqz p1, :cond_15

    return v2

    :cond_15
    return v1

    :pswitch_a
    const-wide p4, 0x100600000L

    and-long/2addr p4, p2

    cmp-long p1, p4, v3

    if-eqz p1, :cond_16

    return v2

    :cond_16
    const-wide p4, 0xffffffeff9ffc00L

    and-long/2addr p2, p4

    cmp-long p1, p2, v3

    if-eqz p1, :cond_18

    iget p1, p0, Lbsh/ParserTokenManager;->u:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_17

    iput v0, p0, Lbsh/ParserTokenManager;->v:I

    iput p2, p0, Lbsh/ParserTokenManager;->u:I

    :cond_17
    return v2

    :cond_18
    return v1

    :pswitch_b
    const-wide p6, 0x200020000000000L

    and-long/2addr p6, p4

    cmp-long p1, p6, v3

    if-eqz p1, :cond_19

    const/16 p1, 0x38

    return p1

    :cond_19
    const-wide/16 p6, 0x3e

    and-long/2addr p6, p2

    cmp-long p1, p6, v3

    if-eqz p1, :cond_1a

    const/4 p1, 0x0

    return p1

    :cond_1a
    const-wide/32 p6, 0x10000

    and-long/2addr p4, p6

    cmp-long p1, p4, v3

    if-eqz p1, :cond_1b

    const/16 p1, 0xb

    return p1

    :cond_1b
    const-wide p4, 0xffffffffffffc00L

    and-long/2addr p2, p4

    cmp-long p1, p2, v3

    if-eqz p1, :cond_1c

    iput v0, p0, Lbsh/ParserTokenManager;->v:I

    return v2

    :cond_1c
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final b(JJ)I
    .locals 8

    and-long v6, p3, p1

    const-wide/16 v0, 0x0

    cmp-long v2, v6, v0

    if-nez v2, :cond_0

    const/16 v1, 0x15

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lbsh/ParserTokenManager;->p:C

    const/16 v1, 0x73

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_1
    const-wide/16 v0, 0x20

    invoke-direct {p0, v6, v7, v0, v1}, Lbsh/ParserTokenManager;->c(JJ)I

    move-result v0

    return v0

    :catch_0
    const/16 v1, 0x16

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->b(IJJJ)I

    const/16 v0, 0x17

    return v0
.end method

.method private final b(JJJJ)I
    .locals 10

    move-object v9, p0

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long v3, v1, v5

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    const/16 v1, 0xc

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, v9, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v9, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, v9, Lbsh/ParserTokenManager;->p:C

    const/16 v3, 0x64

    if-eq v0, v3, :cond_2

    const/16 v3, 0x73

    if-eq v0, v3, :cond_1

    const/16 v0, 0xd

    const-wide/16 v3, 0x0

    move-object p1, p0

    move p2, v0

    move-wide p3, v3

    move-wide p5, v1

    move-wide/from16 p7, v5

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_1
    const-wide/16 v3, 0x0

    const-wide/16 v7, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lbsh/ParserTokenManager;->c(JJJJ)I

    move-result v0

    return v0

    :cond_2
    const-wide/high16 v3, 0x20000000000000L

    const-wide/16 v7, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lbsh/ParserTokenManager;->c(JJJJ)I

    move-result v0

    return v0

    :catch_0
    const/16 v0, 0xd

    const-wide/16 v3, 0x0

    move-object p1, p0

    move p2, v0

    move-wide p3, v3

    move-wide p5, v1

    move-wide/from16 p7, v5

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->b(IJJJ)I

    const/16 v0, 0xe

    return v0
.end method

.method private final b(JJJJJJ)I
    .locals 14

    move-object v13, p0

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long v3, v1, v5

    and-long v9, p11, p9

    or-long/2addr v3, v9

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    const/16 v1, 0x9

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p5

    move-wide/from16 v6, p9

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xb

    :try_start_0
    iget-object v3, v13, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v3}, Lbsh/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, v13, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v3, v13, Lbsh/ParserTokenManager;->p:C

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_7

    const/16 v4, 0x64

    const-wide/high16 v11, 0x8000000000000L

    if-eq v3, v4, :cond_4

    const/16 v4, 0x67

    if-eq v3, v4, :cond_3

    const/16 v4, 0x74

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    and-long v3, v5, v11

    cmp-long v11, v3, v7

    if-eqz v11, :cond_2

    const/16 v3, 0x73

    iput v3, v13, Lbsh/ParserTokenManager;->v:I

    iput v0, v13, Lbsh/ParserTokenManager;->u:I

    :cond_2
    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x8

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->c(JJJJJJ)I

    move-result v0

    return v0

    :cond_3
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x20000000000000L

    const-wide/16 v11, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->c(JJJJJJ)I

    move-result v0

    return v0

    :cond_4
    and-long v3, v1, v11

    cmp-long v11, v3, v7

    if-eqz v11, :cond_5

    const/16 v1, 0x33

    const/16 v2, 0x23

    invoke-direct {p0, v0, v1, v2}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_5
    const-wide v3, 0x80000000000L

    and-long/2addr v3, v5

    cmp-long v11, v3, v7

    if-eqz v11, :cond_6

    const/16 v1, 0x6b

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_6
    :goto_0
    const/16 v0, 0xa

    move-object p1, p0

    move/from16 p2, v0

    move-wide/from16 p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v9

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_7
    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->c(JJJJJJ)I

    move-result v0

    return v0

    :catch_0
    const/16 v3, 0xa

    move-object p1, p0

    move/from16 p2, v3

    move-wide/from16 p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v9

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->b(IJJJ)I

    return v0
.end method

.method private final b()V
    .locals 3

    const v0, -0x7fffffff

    iput v0, p0, Lbsh/ParserTokenManager;->t:I

    const/16 v0, 0x4a

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbsh/ParserTokenManager;->n:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    move v0, v1

    goto :goto_0
.end method

.method private final b(II)V
    .locals 1

    :goto_0
    sget-object v0, Lbsh/ParserTokenManager;->i:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lbsh/ParserTokenManager;->a(I)V

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private static final b(IIIJJ)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_1

    sget-object p0, Lbsh/ParserTokenManager;->b:[J

    aget-wide p1, p0, p1

    and-long/2addr p1, p3

    cmp-long p0, p1, v2

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    sget-object p0, Lbsh/ParserTokenManager;->a:[J

    aget-wide p1, p0, p2

    and-long/2addr p1, p5

    cmp-long p0, p1, v2

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final c()I
    .locals 8

    iget-char v0, p0, Lbsh/ParserTokenManager;->p:C

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-eq v0, v1, :cond_b

    const/16 v1, 0xa

    if-eq v0, v1, :cond_a

    const/16 v1, 0xc

    if-eq v0, v1, :cond_9

    const/16 v1, 0xd

    if-eq v0, v1, :cond_8

    const/16 v1, 0x20

    if-eq v0, v1, :cond_7

    const/16 v1, 0x21

    if-eq v0, v1, :cond_6

    const/16 v1, 0x25

    if-eq v0, v1, :cond_5

    const/16 v1, 0x26

    if-eq v0, v1, :cond_4

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x5e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x76

    if-eq v0, v1, :cond_1

    const/16 v1, 0x77

    if-eq v0, v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    const/4 v0, 0x6

    invoke-direct {p0, v0, v2}, Lbsh/ParserTokenManager;->d(II)I

    move-result v0

    return v0

    :pswitch_0
    const-wide/high16 v2, 0x1f0000000000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :pswitch_1
    const-wide v2, 0xf800000000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :pswitch_2
    const-wide v2, 0x400000000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :pswitch_3
    const-wide v2, 0x80000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :pswitch_4
    const-wide/32 v2, 0x7c000000

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :pswitch_5
    const-wide/32 v2, 0x3800000

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :pswitch_6
    const-wide/32 v2, 0x700000

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :pswitch_7
    const-wide/32 v2, 0xfa000

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :pswitch_8
    const-wide/16 v2, 0x5800

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :pswitch_9
    const-wide/16 v2, 0x400

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :pswitch_a
    const-wide/16 v2, 0x0

    const-wide v4, 0x282a280a50280000L

    const-wide/16 v6, 0x2a

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :pswitch_b
    const/16 v0, 0x58

    invoke-direct {p0, v2, v0}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :pswitch_c
    const/16 v0, 0x52

    iput v0, p0, Lbsh/ParserTokenManager;->v:I

    const-wide/16 v2, 0x0

    const-wide v4, 0x14000020000000L

    const-wide/16 v6, 0x14

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :pswitch_d
    const/16 v0, 0x51

    iput v0, p0, Lbsh/ParserTokenManager;->v:I

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x4000000

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :pswitch_e
    const/16 v0, 0x54

    iput v0, p0, Lbsh/ParserTokenManager;->v:I

    const-wide/16 v2, 0x0

    const-wide v4, 0x1000008000000L

    const-wide/16 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :pswitch_f
    const/16 v0, 0x4e

    invoke-direct {p0, v2, v0}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :pswitch_10
    const/16 v0, 0x59

    invoke-direct {p0, v2, v0}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :sswitch_0
    const/16 v0, 0x57

    invoke-direct {p0, v2, v0}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :sswitch_1
    const/16 v0, 0x4b

    invoke-direct {p0, v2, v0}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :sswitch_2
    const/16 v0, 0x6c

    iput v0, p0, Lbsh/ParserTokenManager;->v:I

    const-wide/16 v2, 0x0

    const-wide v4, 0x1000000100000000L

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :sswitch_3
    const/16 v0, 0x4a

    invoke-direct {p0, v2, v0}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :sswitch_4
    const-wide v2, 0x3c0000000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :sswitch_5
    const-wide v2, 0x38000000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :sswitch_6
    const-wide v2, 0x4000000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :sswitch_7
    const-wide v2, 0x3f00000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :sswitch_8
    const/16 v0, 0x4c

    invoke-direct {p0, v2, v0}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :sswitch_9
    const/16 v0, 0x69

    iput v0, p0, Lbsh/ParserTokenManager;->v:I

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x200000000000000L

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :sswitch_a
    const/16 v0, 0x50

    const/16 v1, 0xb

    invoke-direct {p0, v2, v0, v1}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :sswitch_b
    const/16 v0, 0x67

    iput v0, p0, Lbsh/ParserTokenManager;->v:I

    const-wide/16 v2, 0x0

    const-wide v4, 0x80002000000000L

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :sswitch_c
    const/16 v0, 0x4f

    invoke-direct {p0, v2, v0}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :sswitch_d
    const/16 v0, 0x66

    iput v0, p0, Lbsh/ParserTokenManager;->v:I

    const-wide/16 v2, 0x0

    const-wide v4, 0x40001000000000L

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :sswitch_e
    const/16 v0, 0x68

    iput v0, p0, Lbsh/ParserTokenManager;->v:I

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x100000000000000L

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :sswitch_f
    const/16 v0, 0x49

    invoke-direct {p0, v2, v0}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :sswitch_10
    const/16 v0, 0x48

    invoke-direct {p0, v2, v0}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_0
    const-wide/high16 v2, 0x800000000000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :cond_1
    const-wide/high16 v2, 0x600000000000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :cond_2
    const/16 v0, 0x6e

    iput v0, p0, Lbsh/ParserTokenManager;->v:I

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :cond_3
    const/16 v0, 0x4d

    invoke-direct {p0, v2, v0}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_4
    const/16 v0, 0x6a

    iput v0, p0, Lbsh/ParserTokenManager;->v:I

    const-wide/16 v2, 0x0

    const-wide v4, 0x400000400000000L

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :cond_5
    const/16 v0, 0x6f

    iput v0, p0, Lbsh/ParserTokenManager;->v:I

    const-wide/16 v2, 0x0

    const-wide/high16 v4, -0x8000000000000000L

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :cond_6
    const/16 v0, 0x56

    iput v0, p0, Lbsh/ParserTokenManager;->v:I

    const-wide/16 v2, 0x0

    const-wide v4, 0x80000000L

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->a(JJJ)I

    move-result v0

    return v0

    :cond_7
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0, v2}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_8
    const/4 v0, 0x3

    invoke-direct {p0, v2, v0, v2}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x4

    invoke-direct {p0, v2, v0, v2}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_a
    const/4 v0, 0x5

    invoke-direct {p0, v2, v0, v2}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x2

    invoke-direct {p0, v2, v0, v2}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_10
        0x29 -> :sswitch_f
        0x2a -> :sswitch_e
        0x2b -> :sswitch_d
        0x2c -> :sswitch_c
        0x2d -> :sswitch_b
        0x2e -> :sswitch_a
        0x2f -> :sswitch_9
        0x5b -> :sswitch_8
        0x69 -> :sswitch_7
        0x6c -> :sswitch_6
        0x6e -> :sswitch_5
        0x70 -> :sswitch_4
        0x7b -> :sswitch_3
        0x7c -> :sswitch_2
        0x7d -> :sswitch_1
        0x7e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x72
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final c(JJ)I
    .locals 8

    and-long v6, p3, p1

    const-wide/16 v0, 0x0

    cmp-long v2, v6, v0

    if-nez v2, :cond_0

    const/16 v1, 0x16

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lbsh/ParserTokenManager;->p:C

    const/16 v1, 0x73

    if-eq v0, v1, :cond_1

    const/16 v1, 0x17

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_1
    const-wide/16 v0, 0x20

    invoke-direct {p0, v6, v7, v0, v1}, Lbsh/ParserTokenManager;->d(JJ)I

    move-result v0

    return v0

    :catch_0
    const/16 v1, 0x17

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->b(IJJJ)I

    const/16 v0, 0x18

    return v0
.end method

.method private final c(JJJJ)I
    .locals 10

    move-object v9, p0

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long v3, v1, v5

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    const/16 v1, 0xd

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, v9, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v9, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, v9, Lbsh/ParserTokenManager;->p:C

    const/16 v3, 0x5f

    if-eq v0, v3, :cond_3

    const/16 v3, 0x69

    if-eq v0, v3, :cond_2

    const/16 v3, 0x73

    if-eq v0, v3, :cond_1

    const/16 v0, 0xe

    const-wide/16 v3, 0x0

    move-object p1, p0

    move p2, v0

    move-wide p3, v3

    move-wide p5, v1

    move-wide/from16 p7, v5

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_1
    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lbsh/ParserTokenManager;->d(JJJJ)I

    move-result v0

    return v0

    :cond_2
    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lbsh/ParserTokenManager;->d(JJJJ)I

    move-result v0

    return v0

    :cond_3
    const-wide/high16 v3, 0x20000000000000L

    const-wide/16 v7, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lbsh/ParserTokenManager;->d(JJJJ)I

    move-result v0

    return v0

    :catch_0
    const/16 v0, 0xe

    const-wide/16 v3, 0x0

    move-object p1, p0

    move p2, v0

    move-wide p3, v3

    move-wide p5, v1

    move-wide/from16 p7, v5

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->b(IJJJ)I

    const/16 v0, 0xf

    return v0
.end method

.method private final c(JJJJJJ)I
    .locals 10

    move-object v8, p0

    and-long v0, p3, p1

    and-long v2, p7, p5

    or-long/2addr v0, v2

    and-long v4, p11, p9

    or-long/2addr v0, v4

    const-wide/16 v6, 0x0

    cmp-long v9, v0, v6

    if-nez v9, :cond_0

    const/16 v1, 0xa

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p5

    move-wide/from16 v6, p9

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, v8, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v8, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, v8, Lbsh/ParserTokenManager;->p:C

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_3

    const/16 v1, 0x61

    if-eq v0, v1, :cond_2

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_1

    const/16 v0, 0xb

    const-wide/16 v6, 0x0

    move-object p1, p0

    move p2, v0

    move-wide p3, v6

    move-wide p5, v2

    move-wide/from16 p7, v4

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_1
    const-wide/high16 v0, 0x20000000000000L

    const-wide/16 v6, 0x20

    move-object p1, p0

    move-wide p2, v2

    move-wide p4, v0

    move-wide/from16 p6, v4

    move-wide/from16 p8, v6

    invoke-direct/range {p1 .. p9}, Lbsh/ParserTokenManager;->a(JJJJ)I

    move-result v0

    return v0

    :cond_2
    const-wide/16 v0, 0x0

    const-wide/16 v6, 0x2

    move-object p1, p0

    move-wide p2, v2

    move-wide p4, v0

    move-wide/from16 p6, v4

    move-wide/from16 p8, v6

    invoke-direct/range {p1 .. p9}, Lbsh/ParserTokenManager;->a(JJJJ)I

    move-result v0

    return v0

    :cond_3
    const-wide/16 v0, 0x0

    const-wide/16 v6, 0x8

    move-object p1, p0

    move-wide p2, v2

    move-wide p4, v0

    move-wide/from16 p6, v4

    move-wide/from16 p8, v6

    invoke-direct/range {p1 .. p9}, Lbsh/ParserTokenManager;->a(JJJJ)I

    move-result v0

    return v0

    :catch_0
    const/16 v0, 0xb

    const-wide/16 v6, 0x0

    move-object p1, p0

    move p2, v0

    move-wide p3, v6

    move-wide p5, v2

    move-wide/from16 p7, v4

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->b(IJJJ)I

    const/16 v0, 0xc

    return v0
.end method

.method private final c(II)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/ParserTokenManager;->a(I)V

    invoke-direct {p0, p2}, Lbsh/ParserTokenManager;->a(I)V

    return-void
.end method

.method private static final c(IIIJJ)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_9

    const/16 v4, 0x33

    if-eq p0, v4, :cond_7

    const/16 v4, 0x3d

    if-eq p0, v4, :cond_5

    const/16 v4, 0x30

    if-eq p0, v4, :cond_3

    const/16 v4, 0x31

    if-eq p0, v4, :cond_1

    sget-object p0, Lbsh/ParserTokenManager;->c:[J

    aget-wide p1, p0, p1

    and-long/2addr p1, p3

    cmp-long p0, p1, v2

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    sget-object p0, Lbsh/ParserTokenManager;->f:[J

    aget-wide p1, p0, p2

    and-long/2addr p1, p5

    cmp-long p0, p1, v2

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    sget-object p0, Lbsh/ParserTokenManager;->e:[J

    aget-wide p1, p0, p2

    and-long/2addr p1, p5

    cmp-long p0, p1, v2

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_5
    sget-object p0, Lbsh/ParserTokenManager;->h:[J

    aget-wide p1, p0, p2

    and-long/2addr p1, p5

    cmp-long p0, p1, v2

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_7
    sget-object p0, Lbsh/ParserTokenManager;->g:[J

    aget-wide p1, p0, p2

    and-long/2addr p1, p5

    cmp-long p0, p1, v2

    if-eqz p0, :cond_8

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_9
    sget-object p0, Lbsh/ParserTokenManager;->d:[J

    aget-wide p1, p0, p2

    and-long/2addr p1, p5

    cmp-long p0, p1, v2

    if-eqz p0, :cond_a

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :goto_4
    return v0
.end method

.method private final d(II)I
    .locals 31

    move-object/from16 v0, p0

    const/16 v1, 0x4a

    iput v1, v0, Lbsh/ParserTokenManager;->s:I

    iget-object v1, v0, Lbsh/ParserTokenManager;->o:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v1, 0x1

    const v3, 0x7fffffff

    move/from16 v5, p2

    const/4 v3, 0x1

    const v4, 0x7fffffff

    const/4 v6, 0x0

    :goto_0
    iget v7, v0, Lbsh/ParserTokenManager;->t:I

    add-int/2addr v7, v1

    iput v7, v0, Lbsh/ParserTokenManager;->t:I

    const v8, 0x7fffffff

    if-ne v7, v8, :cond_0

    invoke-direct/range {p0 .. p0}, Lbsh/ParserTokenManager;->b()V

    :cond_0
    iget-char v7, v0, Lbsh/ParserTokenManager;->p:C

    const/16 v8, 0x9

    const/16 v9, 0xa

    const/16 v10, 0x3f

    const/16 v11, 0x12

    const/4 v13, 0x7

    const/16 v14, 0x40

    const/16 v15, 0x3c

    const/16 v1, 0x45

    const-wide/16 v16, 0x0

    if-ge v7, v14, :cond_30

    const-wide/16 v18, 0x1

    shl-long v18, v18, v7

    :goto_1
    iget-object v7, v0, Lbsh/ParserTokenManager;->o:[I

    add-int/lit8 v3, v3, -0x1

    aget v20, v7, v3

    const/16 v2, 0x2a

    const-wide/high16 v22, 0x3ff000000000000L

    packed-switch v20, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_13

    :pswitch_1
    iget-char v12, v0, Lbsh/ParserTokenManager;->p:C

    if-ne v12, v2, :cond_1e

    iget v2, v0, Lbsh/ParserTokenManager;->s:I

    add-int/lit8 v12, v2, 0x1

    iput v12, v0, Lbsh/ParserTokenManager;->s:I

    const/16 v12, 0x43

    aput v12, v7, v2

    goto/16 :goto_13

    :pswitch_2
    iget-char v2, v0, Lbsh/ParserTokenManager;->p:C

    const/16 v7, 0x2f

    if-ne v2, v7, :cond_1e

    const/16 v2, 0x44

    if-le v4, v2, :cond_1e

    const/16 v2, 0x44

    const/16 v4, 0x44

    goto/16 :goto_13

    :pswitch_3
    const-wide v22, -0x40000000001L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_1e

    goto :goto_2

    :pswitch_4
    const-wide v22, -0x840000000001L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_1e

    :goto_2
    const/16 v2, 0x47

    goto :goto_4

    :pswitch_5
    iget-char v7, v0, Lbsh/ParserTokenManager;->p:C

    if-ne v7, v2, :cond_1e

    const/16 v7, 0x28

    invoke-direct {v0, v7, v2}, Lbsh/ParserTokenManager;->b(II)V

    goto/16 :goto_13

    :pswitch_6
    const-wide v22, -0x40000000001L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_1e

    goto :goto_3

    :pswitch_7
    iget-char v7, v0, Lbsh/ParserTokenManager;->p:C

    if-ne v7, v2, :cond_1e

    :goto_3
    const/16 v2, 0x44

    :goto_4
    invoke-direct {v0, v2, v1}, Lbsh/ParserTokenManager;->c(II)V

    goto/16 :goto_13

    :pswitch_8
    iget-char v2, v0, Lbsh/ParserTokenManager;->p:C

    const/16 v7, 0x2f

    if-ne v2, v7, :cond_1e

    if-le v4, v8, :cond_1e

    const/16 v4, 0x9

    goto/16 :goto_13

    :pswitch_9
    const-wide v22, -0x40000000001L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_1e

    goto :goto_5

    :pswitch_a
    const-wide v22, -0x840000000001L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_1e

    :goto_5
    const/16 v2, 0x41

    goto :goto_6

    :pswitch_b
    iget-char v7, v0, Lbsh/ParserTokenManager;->p:C

    if-ne v7, v2, :cond_1e

    const/16 v2, 0x25

    const/16 v7, 0x27

    goto/16 :goto_10

    :pswitch_c
    const-wide v22, -0x40000000001L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_1e

    const/16 v2, 0x3e

    :goto_6
    invoke-direct {v0, v2, v10}, Lbsh/ParserTokenManager;->c(II)V

    goto/16 :goto_13

    :pswitch_d
    iget-char v7, v0, Lbsh/ParserTokenManager;->p:C

    if-ne v7, v2, :cond_1e

    const/16 v2, 0x3e

    goto/16 :goto_b

    :pswitch_e
    iget-char v2, v0, Lbsh/ParserTokenManager;->p:C

    const/16 v12, 0xd

    if-ne v2, v12, :cond_1e

    iget v2, v0, Lbsh/ParserTokenManager;->s:I

    add-int/lit8 v12, v2, 0x1

    iput v12, v0, Lbsh/ParserTokenManager;->s:I

    const/16 v12, 0x3b

    aput v12, v7, v2

    goto/16 :goto_13

    :pswitch_f
    iget-char v2, v0, Lbsh/ParserTokenManager;->p:C

    if-ne v2, v9, :cond_1e

    if-le v4, v13, :cond_1e

    goto :goto_7

    :pswitch_10
    const-wide/16 v22, 0x2400

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_1e

    if-le v4, v13, :cond_1e

    :goto_7
    const/4 v4, 0x7

    goto/16 :goto_13

    :pswitch_11
    const-wide/16 v22, -0x2401

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-nez v2, :cond_1

    goto/16 :goto_13

    :cond_1
    if-le v4, v13, :cond_2

    const/4 v4, 0x7

    :cond_2
    const/16 v2, 0x14

    invoke-direct {v0, v11, v2}, Lbsh/ParserTokenManager;->b(II)V

    goto/16 :goto_13

    :pswitch_12
    iget-char v12, v0, Lbsh/ParserTokenManager;->p:C

    if-ne v12, v2, :cond_3

    iget v12, v0, Lbsh/ParserTokenManager;->s:I

    add-int/lit8 v10, v12, 0x1

    iput v10, v0, Lbsh/ParserTokenManager;->s:I

    const/16 v10, 0x43

    aput v10, v7, v12

    goto :goto_8

    :cond_3
    const/16 v7, 0x2f

    if-ne v12, v7, :cond_5

    if-le v4, v13, :cond_4

    const/4 v4, 0x7

    :cond_4
    const/16 v7, 0x14

    invoke-direct {v0, v11, v7}, Lbsh/ParserTokenManager;->b(II)V

    :cond_5
    :goto_8
    iget-char v7, v0, Lbsh/ParserTokenManager;->p:C

    if-ne v7, v2, :cond_1e

    const/16 v2, 0x3e

    goto/16 :goto_b

    :pswitch_13
    iget-char v2, v0, Lbsh/ParserTokenManager;->p:C

    const/16 v7, 0x2f

    if-ne v2, v7, :cond_1e

    invoke-direct {v0, v13, v8}, Lbsh/ParserTokenManager;->a(II)V

    goto/16 :goto_13

    :pswitch_14
    const-wide/high16 v22, 0xff000000000000L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-nez v2, :cond_6

    goto/16 :goto_13

    :cond_6
    if-le v4, v15, :cond_7

    const/16 v4, 0x3c

    :cond_7
    const/16 v2, 0x36

    goto/16 :goto_12

    :pswitch_15
    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-nez v2, :cond_8

    goto/16 :goto_13

    :cond_8
    if-le v4, v15, :cond_9

    const/16 v4, 0x3c

    :cond_9
    const/16 v2, 0x35

    goto/16 :goto_12

    :pswitch_16
    iget-char v2, v0, Lbsh/ParserTokenManager;->p:C

    const/16 v7, 0x30

    if-eq v2, v7, :cond_a

    goto/16 :goto_13

    :cond_a
    if-le v4, v15, :cond_b

    const/16 v4, 0x3c

    :cond_b
    const/16 v2, 0xf

    const/16 v7, 0x11

    goto/16 :goto_10

    :pswitch_17
    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_1e

    const/16 v2, 0x32

    goto/16 :goto_e

    :pswitch_18
    const-wide v22, 0x280000000000L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_1e

    const/16 v2, 0x32

    goto/16 :goto_b

    :pswitch_19
    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_1e

    const/16 v2, 0x22

    const/16 v7, 0x24

    goto/16 :goto_10

    :pswitch_1a
    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-nez v2, :cond_c

    goto/16 :goto_13

    :cond_c
    if-le v4, v14, :cond_d

    const/16 v4, 0x40

    :cond_d
    const/16 v2, 0x2e

    goto/16 :goto_e

    :pswitch_1b
    const-wide v22, 0x280000000000L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_1e

    const/16 v2, 0x2e

    goto/16 :goto_b

    :pswitch_1c
    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_1e

    const/16 v2, 0x2b

    const/16 v7, 0x2c

    goto/16 :goto_f

    :pswitch_1d
    and-long v22, v18, v22

    cmp-long v7, v22, v16

    if-nez v7, :cond_e

    goto/16 :goto_13

    :cond_e
    if-le v4, v14, :cond_17

    const/16 v4, 0x40

    goto/16 :goto_e

    :pswitch_1e
    const-wide v22, 0x280000000000L

    and-long v22, v18, v22

    cmp-long v7, v22, v16

    if-eqz v7, :cond_1e

    goto :goto_b

    :pswitch_1f
    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-nez v2, :cond_f

    goto/16 :goto_13

    :cond_f
    if-le v4, v14, :cond_11

    goto :goto_9

    :pswitch_20
    iget-char v2, v0, Lbsh/ParserTokenManager;->p:C

    const/16 v7, 0x2e

    if-eq v2, v7, :cond_10

    goto/16 :goto_13

    :cond_10
    if-le v4, v14, :cond_11

    :goto_9
    const/16 v4, 0x40

    :cond_11
    const/16 v2, 0x1f

    const/16 v7, 0x21

    goto/16 :goto_10

    :pswitch_21
    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_1e

    const/16 v2, 0x25

    const/16 v7, 0x26

    goto/16 :goto_f

    :pswitch_22
    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_1e

    const/4 v2, 0x0

    const/4 v7, 0x6

    goto/16 :goto_10

    :pswitch_23
    const-wide v22, 0x3ff001000000000L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-nez v2, :cond_12

    goto/16 :goto_13

    :cond_12
    if-le v4, v1, :cond_14

    goto :goto_a

    :pswitch_24
    iget-char v2, v0, Lbsh/ParserTokenManager;->p:C

    const/16 v7, 0x24

    if-eq v2, v7, :cond_13

    goto/16 :goto_13

    :cond_13
    if-le v4, v1, :cond_14

    :goto_a
    const/16 v4, 0x45

    :cond_14
    const/16 v2, 0x23

    :goto_b
    invoke-direct {v0, v2}, Lbsh/ParserTokenManager;->a(I)V

    goto/16 :goto_13

    :pswitch_25
    const-wide/high16 v22, 0xff000000000000L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_1e

    const/16 v2, 0x1f

    goto :goto_b

    :pswitch_26
    const-wide/high16 v22, 0xf000000000000L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_1e

    iget v2, v0, Lbsh/ParserTokenManager;->s:I

    add-int/lit8 v10, v2, 0x1

    iput v10, v0, Lbsh/ParserTokenManager;->s:I

    const/16 v10, 0x21

    aput v10, v7, v2

    goto/16 :goto_13

    :pswitch_27
    const-wide/high16 v22, 0xff000000000000L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_1e

    goto :goto_c

    :pswitch_28
    const-wide/high16 v22, 0xff000000000000L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_1e

    const/16 v2, 0x1b

    const/16 v7, 0x1e

    goto/16 :goto_10

    :pswitch_29
    iget-char v2, v0, Lbsh/ParserTokenManager;->p:C

    const/16 v7, 0x22

    if-ne v2, v7, :cond_1e

    const/16 v2, 0x43

    if-le v4, v2, :cond_1e

    const/16 v2, 0x43

    const/16 v4, 0x43

    goto/16 :goto_13

    :pswitch_2a
    const-wide v22, 0x8400000000L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_1e

    goto :goto_c

    :pswitch_2b
    const-wide v22, -0x400002401L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_1e

    goto :goto_c

    :pswitch_2c
    iget-char v2, v0, Lbsh/ParserTokenManager;->p:C

    const/16 v7, 0x22

    if-ne v2, v7, :cond_1e

    :goto_c
    const/16 v2, 0xc

    invoke-direct {v0, v9, v2}, Lbsh/ParserTokenManager;->b(II)V

    goto/16 :goto_13

    :pswitch_2d
    const-wide/high16 v22, 0xff000000000000L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_1e

    const/16 v2, 0x16

    goto :goto_b

    :pswitch_2e
    const-wide/high16 v22, 0xf000000000000L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_1e

    iget v2, v0, Lbsh/ParserTokenManager;->s:I

    add-int/lit8 v10, v2, 0x1

    iput v10, v0, Lbsh/ParserTokenManager;->s:I

    const/16 v10, 0x18

    aput v10, v7, v2

    goto/16 :goto_13

    :pswitch_2f
    const-wide/high16 v22, 0xff000000000000L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_1e

    goto :goto_d

    :pswitch_30
    const-wide/high16 v22, 0xff000000000000L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_1e

    const/16 v2, 0x16

    invoke-direct {v0, v2, v11}, Lbsh/ParserTokenManager;->c(II)V

    goto/16 :goto_13

    :pswitch_31
    const-wide v22, 0x8400000000L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_1e

    goto :goto_d

    :pswitch_32
    iget-char v2, v0, Lbsh/ParserTokenManager;->p:C

    const/16 v7, 0x27

    if-ne v2, v7, :cond_1e

    const/16 v2, 0x42

    if-le v4, v2, :cond_1e

    const/16 v2, 0x42

    const/16 v4, 0x42

    goto/16 :goto_13

    :pswitch_33
    const-wide v22, -0x8000002401L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_1e

    :goto_d
    invoke-direct {v0, v11}, Lbsh/ParserTokenManager;->a(I)V

    goto/16 :goto_13

    :pswitch_34
    iget-char v2, v0, Lbsh/ParserTokenManager;->p:C

    const/16 v7, 0x27

    if-ne v2, v7, :cond_1e

    const/16 v2, 0xd

    const/16 v7, 0xe

    invoke-direct {v0, v2, v7}, Lbsh/ParserTokenManager;->a(II)V

    goto/16 :goto_13

    :pswitch_35
    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-nez v2, :cond_15

    goto :goto_13

    :cond_15
    if-le v4, v14, :cond_16

    const/16 v4, 0x40

    :cond_16
    const/16 v2, 0xe

    :cond_17
    :goto_e
    const/16 v7, 0xf

    :goto_f
    invoke-direct {v0, v2, v7}, Lbsh/ParserTokenManager;->c(II)V

    goto :goto_13

    :pswitch_36
    const-wide v22, 0x280000000000L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_1e

    const/16 v2, 0xe

    goto/16 :goto_b

    :pswitch_37
    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-nez v2, :cond_18

    goto :goto_13

    :cond_18
    if-le v4, v14, :cond_19

    const/16 v4, 0x40

    :cond_19
    const/16 v2, 0x18

    const/16 v7, 0x1a

    :goto_10
    invoke-direct {v0, v2, v7}, Lbsh/ParserTokenManager;->b(II)V

    goto :goto_13

    :pswitch_38
    iget-char v2, v0, Lbsh/ParserTokenManager;->p:C

    const/16 v7, 0x2e

    if-ne v2, v7, :cond_1e

    const/16 v2, 0xb

    goto/16 :goto_b

    :pswitch_39
    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-nez v2, :cond_1a

    goto :goto_13

    :cond_1a
    if-le v4, v15, :cond_1b

    const/16 v2, 0x8

    :goto_11
    const/16 v4, 0x3c

    goto :goto_12

    :cond_1b
    const/16 v2, 0x8

    goto :goto_12

    :pswitch_3a
    const/16 v2, 0x8

    const-wide/high16 v22, 0x3fe000000000000L

    and-long v22, v18, v22

    cmp-long v7, v22, v16

    if-nez v7, :cond_1c

    goto :goto_13

    :cond_1c
    if-le v4, v15, :cond_1d

    goto :goto_11

    :cond_1d
    :goto_12
    invoke-direct {v0, v2, v8}, Lbsh/ParserTokenManager;->c(II)V

    :cond_1e
    :goto_13
    const/4 v10, 0x1

    goto/16 :goto_1c

    :pswitch_3b
    const-wide v24, 0x1ffffffffL

    and-long v24, v18, v24

    cmp-long v2, v24, v16

    if-eqz v2, :cond_21

    const/4 v2, 0x6

    if-le v4, v2, :cond_1f

    const/4 v4, 0x6

    :cond_1f
    const/4 v10, 0x0

    invoke-direct {v0, v10}, Lbsh/ParserTokenManager;->a(I)V

    :cond_20
    :goto_14
    const/4 v10, 0x1

    goto :goto_16

    :cond_21
    const/4 v2, 0x6

    const/4 v10, 0x0

    and-long v20, v18, v22

    cmp-long v12, v20, v16

    if-eqz v12, :cond_22

    invoke-direct {v0, v10, v2}, Lbsh/ParserTokenManager;->b(II)V

    goto :goto_14

    :cond_22
    iget-char v2, v0, Lbsh/ParserTokenManager;->p:C

    const/16 v10, 0x2f

    if-ne v2, v10, :cond_23

    invoke-direct {v0, v13, v8}, Lbsh/ParserTokenManager;->a(II)V

    goto :goto_14

    :cond_23
    const/16 v10, 0x24

    if-ne v2, v10, :cond_25

    if-le v4, v1, :cond_24

    const/16 v4, 0x45

    :cond_24
    const/16 v2, 0x23

    :goto_15
    invoke-direct {v0, v2}, Lbsh/ParserTokenManager;->a(I)V

    goto :goto_14

    :cond_25
    const/16 v10, 0x22

    if-ne v2, v10, :cond_26

    const/16 v2, 0xc

    invoke-direct {v0, v9, v2}, Lbsh/ParserTokenManager;->b(II)V

    goto :goto_14

    :cond_26
    const/16 v10, 0x27

    if-ne v2, v10, :cond_27

    const/16 v2, 0xd

    const/16 v7, 0xe

    invoke-direct {v0, v2, v7}, Lbsh/ParserTokenManager;->a(II)V

    goto :goto_14

    :cond_27
    const/16 v10, 0x2e

    if-ne v2, v10, :cond_28

    const/16 v2, 0xb

    goto :goto_15

    :cond_28
    const/16 v10, 0x23

    if-ne v2, v10, :cond_20

    iget v2, v0, Lbsh/ParserTokenManager;->s:I

    add-int/lit8 v10, v2, 0x1

    iput v10, v0, Lbsh/ParserTokenManager;->s:I

    const/4 v10, 0x1

    aput v10, v7, v2

    :goto_16
    const-wide/high16 v22, 0x3fe000000000000L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_2a

    if-le v4, v15, :cond_29

    const/16 v2, 0x8

    const/16 v4, 0x3c

    goto :goto_17

    :cond_29
    const/16 v2, 0x8

    :goto_17
    invoke-direct {v0, v2, v8}, Lbsh/ParserTokenManager;->c(II)V

    goto/16 :goto_1c

    :cond_2a
    iget-char v2, v0, Lbsh/ParserTokenManager;->p:C

    const/16 v7, 0x30

    if-ne v2, v7, :cond_2e

    if-le v4, v15, :cond_2b

    const/16 v4, 0x3c

    :cond_2b
    const/16 v2, 0xf

    const/16 v7, 0x11

    :goto_18
    invoke-direct {v0, v2, v7}, Lbsh/ParserTokenManager;->b(II)V

    goto :goto_1c

    :pswitch_3c
    const/4 v10, 0x1

    iget-char v2, v0, Lbsh/ParserTokenManager;->p:C

    const/16 v12, 0xd

    if-ne v2, v12, :cond_2e

    iget v2, v0, Lbsh/ParserTokenManager;->s:I

    add-int/lit8 v12, v2, 0x1

    iput v12, v0, Lbsh/ParserTokenManager;->s:I

    const/4 v12, 0x4

    aput v12, v7, v2

    goto :goto_1c

    :pswitch_3d
    const/4 v10, 0x1

    iget-char v2, v0, Lbsh/ParserTokenManager;->p:C

    if-ne v2, v9, :cond_2e

    const/16 v2, 0x8

    if-le v4, v2, :cond_2e

    goto :goto_19

    :pswitch_3e
    const/16 v2, 0x8

    const/4 v10, 0x1

    const-wide/16 v22, 0x2400

    and-long v22, v18, v22

    cmp-long v7, v22, v16

    if-eqz v7, :cond_2e

    if-le v4, v2, :cond_2e

    :goto_19
    const/16 v4, 0x8

    goto :goto_1c

    :pswitch_3f
    const/4 v10, 0x1

    const-wide/16 v22, -0x2401

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_2e

    goto :goto_1a

    :pswitch_40
    const/4 v10, 0x1

    iget-char v2, v0, Lbsh/ParserTokenManager;->p:C

    const/16 v7, 0x21

    if-ne v2, v7, :cond_2e

    :goto_1a
    const/16 v2, 0x15

    const/16 v7, 0x17

    goto :goto_18

    :pswitch_41
    const/4 v10, 0x1

    const-wide v22, 0x1ffffffffL

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-nez v2, :cond_2c

    goto :goto_1c

    :cond_2c
    const/4 v2, 0x6

    if-le v4, v2, :cond_2d

    const/4 v2, 0x0

    const/4 v4, 0x6

    goto :goto_1b

    :cond_2d
    const/4 v2, 0x0

    :goto_1b
    invoke-direct {v0, v2}, Lbsh/ParserTokenManager;->a(I)V

    :cond_2e
    :goto_1c
    if-ne v3, v6, :cond_2f

    :goto_1d
    const/4 v9, 0x0

    goto/16 :goto_2b

    :cond_2f
    const/4 v2, 0x0

    const/16 v10, 0x3f

    goto/16 :goto_1

    :cond_30
    const/4 v10, 0x1

    const/16 v2, 0x80

    if-ge v7, v2, :cond_38

    const-wide/16 v18, 0x1

    and-int/lit8 v2, v7, 0x3f

    shl-long v18, v18, v2

    :cond_31
    iget-object v2, v0, Lbsh/ParserTokenManager;->o:[I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_24

    :sswitch_0
    const/16 v2, 0x47

    goto :goto_1e

    :sswitch_1
    const/16 v2, 0x44

    :goto_1e
    invoke-direct {v0, v2, v1}, Lbsh/ParserTokenManager;->c(II)V

    goto/16 :goto_24

    :sswitch_2
    const/16 v2, 0x41

    const/16 v7, 0x3f

    goto :goto_1f

    :sswitch_3
    const/16 v7, 0x3f

    const/16 v2, 0x3e

    :goto_1f
    invoke-direct {v0, v2, v7}, Lbsh/ParserTokenManager;->c(II)V

    goto/16 :goto_24

    :sswitch_4
    if-le v4, v13, :cond_32

    const/4 v4, 0x7

    :cond_32
    const/16 v2, 0x14

    invoke-direct {v0, v11, v2}, Lbsh/ParserTokenManager;->a(II)V

    goto/16 :goto_24

    :sswitch_5
    const-wide v22, 0x7e0000007eL

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-nez v2, :cond_33

    goto/16 :goto_24

    :cond_33
    if-le v4, v15, :cond_34

    const/16 v4, 0x3c

    :cond_34
    const/16 v2, 0x35

    invoke-direct {v0, v2, v8}, Lbsh/ParserTokenManager;->c(II)V

    goto/16 :goto_24

    :sswitch_6
    const-wide v22, 0x100000001000000L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_37

    const/16 v2, 0x35

    goto/16 :goto_22

    :sswitch_7
    const-wide v22, 0x2000000020L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_37

    const/16 v2, 0x37

    const/16 v7, 0x38

    goto/16 :goto_23

    :sswitch_8
    const-wide v22, 0x2000000020L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_37

    const/16 v2, 0x35

    const/16 v7, 0x36

    goto/16 :goto_23

    :sswitch_9
    const-wide v22, 0x2000000020L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_37

    const/16 v2, 0x33

    const/16 v7, 0x34

    goto/16 :goto_23

    :sswitch_a
    const-wide v22, 0x14404410000000L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_37

    goto :goto_20

    :sswitch_b
    iget-char v2, v0, Lbsh/ParserTokenManager;->p:C

    const/16 v7, 0x5c

    if-ne v2, v7, :cond_37

    const/16 v2, 0x30

    const/16 v7, 0x32

    goto/16 :goto_23

    :sswitch_c
    const-wide/32 v22, -0x10000001

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_37

    :goto_20
    const/16 v2, 0xc

    invoke-direct {v0, v9, v2}, Lbsh/ParserTokenManager;->b(II)V

    goto/16 :goto_24

    :sswitch_d
    const-wide v22, 0x14404410000000L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_37

    goto :goto_21

    :sswitch_e
    iget-char v2, v0, Lbsh/ParserTokenManager;->p:C

    const/16 v7, 0x5c

    if-ne v2, v7, :cond_37

    const/16 v2, 0x2d

    const/16 v7, 0x2f

    goto :goto_23

    :sswitch_f
    const-wide/32 v22, -0x10000001

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_37

    :goto_21
    invoke-direct {v0, v11}, Lbsh/ParserTokenManager;->a(I)V

    goto :goto_24

    :sswitch_10
    const-wide v22, 0x5000000050L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_37

    if-le v4, v14, :cond_37

    const/16 v4, 0x40

    goto :goto_24

    :sswitch_11
    const-wide v22, 0x2000000020L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_37

    const/16 v2, 0x2b

    const/16 v7, 0x2c

    goto :goto_23

    :sswitch_12
    const-wide v22, 0x100000001000L

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-eqz v2, :cond_37

    if-le v4, v15, :cond_37

    const/16 v4, 0x3c

    goto :goto_24

    :sswitch_13
    const-wide v22, 0x7fffffe87fffffeL

    and-long v22, v18, v22

    cmp-long v2, v22, v16

    if-nez v2, :cond_35

    goto :goto_24

    :cond_35
    if-le v4, v1, :cond_36

    const/16 v4, 0x45

    :cond_36
    const/16 v2, 0x23

    :goto_22
    invoke-direct {v0, v2}, Lbsh/ParserTokenManager;->a(I)V

    goto :goto_24

    :sswitch_14
    const/16 v2, 0x15

    const/16 v7, 0x17

    :goto_23
    invoke-direct {v0, v2, v7}, Lbsh/ParserTokenManager;->a(II)V

    :cond_37
    :goto_24
    if-ne v3, v6, :cond_31

    goto/16 :goto_1d

    :cond_38
    shr-int/lit8 v2, v7, 0x8

    shr-int/lit8 v8, v2, 0x6

    const-wide/16 v15, 0x1

    and-int/lit8 v12, v2, 0x3f

    shl-long/2addr v15, v12

    and-int/lit16 v12, v7, 0xff

    const/16 v17, 0x6

    shr-int/lit8 v12, v12, 0x6

    const-wide/16 v17, 0x1

    and-int/lit8 v7, v7, 0x3f

    shl-long v17, v17, v7

    :goto_25
    iget-object v7, v0, Lbsh/ParserTokenManager;->o:[I

    add-int/lit8 v3, v3, -0x1

    aget v7, v7, v3

    if-eqz v7, :cond_49

    const/4 v10, 0x2

    if-eq v7, v10, :cond_48

    const/4 v10, 0x6

    if-eq v7, v10, :cond_45

    const/16 v10, 0x11

    if-eq v7, v10, :cond_44

    const/16 v10, 0x1a

    if-eq v7, v10, :cond_43

    const/16 v10, 0x39

    if-eq v7, v10, :cond_40

    const/16 v10, 0x3e

    if-eq v7, v10, :cond_3f

    const/16 v10, 0x44

    if-eq v7, v10, :cond_3e

    const/16 v10, 0x22

    if-eq v7, v10, :cond_3b

    const/16 v10, 0x23

    if-eq v7, v10, :cond_3b

    if-eq v7, v14, :cond_3a

    const/16 v10, 0x41

    if-eq v7, v10, :cond_3a

    const/16 v10, 0x46

    if-eq v7, v10, :cond_39

    const/16 v10, 0x47

    if-eq v7, v10, :cond_39

    goto/16 :goto_29

    :cond_39
    move/from16 v24, v2

    move/from16 v25, v8

    move/from16 v26, v12

    move-wide/from16 v27, v15

    move-wide/from16 v29, v17

    invoke-static/range {v24 .. v30}, Lbsh/ParserTokenManager;->b(IIIJJ)Z

    move-result v7

    if-eqz v7, :cond_4a

    const/16 v7, 0x47

    goto :goto_27

    :cond_3a
    move/from16 v24, v2

    move/from16 v25, v8

    move/from16 v26, v12

    move-wide/from16 v27, v15

    move-wide/from16 v29, v17

    invoke-static/range {v24 .. v30}, Lbsh/ParserTokenManager;->b(IIIJJ)Z

    move-result v7

    if-eqz v7, :cond_4a

    const/16 v7, 0x41

    goto :goto_28

    :cond_3b
    move/from16 v24, v2

    move/from16 v25, v8

    move/from16 v26, v12

    move-wide/from16 v27, v15

    move-wide/from16 v29, v17

    invoke-static/range {v24 .. v30}, Lbsh/ParserTokenManager;->c(IIIJJ)Z

    move-result v7

    if-nez v7, :cond_3c

    goto/16 :goto_29

    :cond_3c
    if-le v4, v1, :cond_3d

    :goto_26
    const/16 v4, 0x45

    :cond_3d
    const/16 v7, 0x23

    invoke-direct {v0, v7}, Lbsh/ParserTokenManager;->a(I)V

    goto/16 :goto_29

    :cond_3e
    move/from16 v24, v2

    move/from16 v25, v8

    move/from16 v26, v12

    move-wide/from16 v27, v15

    move-wide/from16 v29, v17

    invoke-static/range {v24 .. v30}, Lbsh/ParserTokenManager;->b(IIIJJ)Z

    move-result v7

    if-eqz v7, :cond_4a

    const/16 v7, 0x44

    :goto_27
    invoke-direct {v0, v7, v1}, Lbsh/ParserTokenManager;->c(II)V

    goto/16 :goto_29

    :cond_3f
    move/from16 v24, v2

    move/from16 v25, v8

    move/from16 v26, v12

    move-wide/from16 v27, v15

    move-wide/from16 v29, v17

    invoke-static/range {v24 .. v30}, Lbsh/ParserTokenManager;->b(IIIJJ)Z

    move-result v7

    if-eqz v7, :cond_4a

    const/16 v7, 0x3e

    :goto_28
    const/16 v10, 0x3f

    invoke-direct {v0, v7, v10}, Lbsh/ParserTokenManager;->c(II)V

    goto/16 :goto_29

    :cond_40
    const/16 v10, 0x3f

    move/from16 v24, v2

    move/from16 v25, v8

    move/from16 v26, v12

    move-wide/from16 v27, v15

    move-wide/from16 v29, v17

    invoke-static/range {v24 .. v30}, Lbsh/ParserTokenManager;->b(IIIJJ)Z

    move-result v7

    if-nez v7, :cond_41

    goto/16 :goto_29

    :cond_41
    if-le v4, v13, :cond_42

    const/4 v4, 0x7

    :cond_42
    const/16 v7, 0x14

    invoke-direct {v0, v11, v7}, Lbsh/ParserTokenManager;->a(II)V

    goto/16 :goto_29

    :cond_43
    const/16 v10, 0x3f

    move/from16 v24, v2

    move/from16 v25, v8

    move/from16 v26, v12

    move-wide/from16 v27, v15

    move-wide/from16 v29, v17

    invoke-static/range {v24 .. v30}, Lbsh/ParserTokenManager;->b(IIIJJ)Z

    move-result v7

    if-eqz v7, :cond_4a

    const/16 v7, 0xc

    invoke-direct {v0, v9, v7}, Lbsh/ParserTokenManager;->a(II)V

    goto/16 :goto_29

    :cond_44
    const/16 v10, 0x3f

    move/from16 v24, v2

    move/from16 v25, v8

    move/from16 v26, v12

    move-wide/from16 v27, v15

    move-wide/from16 v29, v17

    invoke-static/range {v24 .. v30}, Lbsh/ParserTokenManager;->b(IIIJJ)Z

    move-result v7

    if-eqz v7, :cond_4a

    iget-object v7, v0, Lbsh/ParserTokenManager;->o:[I

    iget v9, v0, Lbsh/ParserTokenManager;->s:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lbsh/ParserTokenManager;->s:I

    aput v11, v7, v9

    goto :goto_29

    :cond_45
    move/from16 v24, v2

    move/from16 v25, v8

    move/from16 v26, v12

    move-wide/from16 v27, v15

    move-wide/from16 v29, v17

    invoke-static/range {v24 .. v30}, Lbsh/ParserTokenManager;->a(IIIJJ)Z

    move-result v7

    if-eqz v7, :cond_47

    const/4 v7, 0x6

    if-le v4, v7, :cond_46

    const/4 v4, 0x6

    :cond_46
    const/4 v7, 0x0

    invoke-direct {v0, v7}, Lbsh/ParserTokenManager;->a(I)V

    :cond_47
    move/from16 v24, v2

    move/from16 v25, v8

    move/from16 v26, v12

    move-wide/from16 v27, v15

    move-wide/from16 v29, v17

    invoke-static/range {v24 .. v30}, Lbsh/ParserTokenManager;->c(IIIJJ)Z

    move-result v7

    if-eqz v7, :cond_4a

    if-le v4, v1, :cond_3d

    goto/16 :goto_26

    :cond_48
    move/from16 v24, v2

    move/from16 v25, v8

    move/from16 v26, v12

    move-wide/from16 v27, v15

    move-wide/from16 v29, v17

    invoke-static/range {v24 .. v30}, Lbsh/ParserTokenManager;->b(IIIJJ)Z

    move-result v7

    if-eqz v7, :cond_4a

    const/16 v7, 0x15

    const/16 v9, 0x17

    invoke-direct {v0, v7, v9}, Lbsh/ParserTokenManager;->a(II)V

    goto :goto_29

    :cond_49
    move/from16 v24, v2

    move/from16 v25, v8

    move/from16 v26, v12

    move-wide/from16 v27, v15

    move-wide/from16 v29, v17

    invoke-static/range {v24 .. v30}, Lbsh/ParserTokenManager;->a(IIIJJ)Z

    move-result v7

    if-nez v7, :cond_4b

    :cond_4a
    :goto_29
    const/4 v7, 0x6

    const/4 v9, 0x0

    goto :goto_2a

    :cond_4b
    const/4 v7, 0x6

    if-le v4, v7, :cond_4c

    const/4 v4, 0x6

    :cond_4c
    const/4 v9, 0x0

    invoke-direct {v0, v9}, Lbsh/ParserTokenManager;->a(I)V

    :goto_2a
    if-ne v3, v6, :cond_4f

    :goto_2b
    const v1, 0x7fffffff

    if-eq v4, v1, :cond_4d

    iput v4, v0, Lbsh/ParserTokenManager;->v:I

    iput v5, v0, Lbsh/ParserTokenManager;->u:I

    const v1, 0x7fffffff

    const v4, 0x7fffffff

    :cond_4d
    add-int/lit8 v5, v5, 0x1

    iget v3, v0, Lbsh/ParserTokenManager;->s:I

    iput v6, v0, Lbsh/ParserTokenManager;->s:I

    rsub-int/lit8 v6, v6, 0x4a

    if-ne v3, v6, :cond_4e

    return v5

    :cond_4e
    :try_start_0
    iget-object v1, v0, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->readChar()C

    move-result v1

    iput-char v1, v0, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :catch_0
    return v5

    :cond_4f
    const/16 v9, 0xa

    const/4 v10, 0x1

    goto/16 :goto_25

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_0
        :pswitch_38
        :pswitch_37
        :pswitch_0
        :pswitch_36
        :pswitch_35
        :pswitch_0
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_0
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_0
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_14
        0x6 -> :sswitch_13
        0x9 -> :sswitch_12
        0xc -> :sswitch_11
        0xf -> :sswitch_10
        0x11 -> :sswitch_f
        0x13 -> :sswitch_e
        0x14 -> :sswitch_d
        0x1a -> :sswitch_c
        0x1b -> :sswitch_b
        0x1c -> :sswitch_a
        0x23 -> :sswitch_13
        0x28 -> :sswitch_9
        0x2c -> :sswitch_8
        0x30 -> :sswitch_7
        0x34 -> :sswitch_6
        0x35 -> :sswitch_5
        0x39 -> :sswitch_4
        0x3e -> :sswitch_3
        0x40 -> :sswitch_2
        0x41 -> :sswitch_2
        0x44 -> :sswitch_1
        0x46 -> :sswitch_0
        0x47 -> :sswitch_0
    .end sparse-switch
.end method

.method private final d(JJ)I
    .locals 8

    and-long v6, p3, p1

    const-wide/16 v0, 0x0

    cmp-long v2, v6, v0

    if-nez v2, :cond_0

    const/16 v1, 0x17

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lbsh/ParserTokenManager;->p:C

    const/16 v1, 0x69

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_1
    const-wide/16 v0, 0x20

    invoke-direct {p0, v6, v7, v0, v1}, Lbsh/ParserTokenManager;->e(JJ)I

    move-result v0

    return v0

    :catch_0
    const/16 v1, 0x18

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->b(IJJJ)I

    const/16 v0, 0x19

    return v0
.end method

.method private final d(JJJJ)I
    .locals 10

    move-object v9, p0

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long v3, v1, v5

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    const/16 v1, 0xe

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, v9, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v9, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, v9, Lbsh/ParserTokenManager;->p:C

    const/16 v3, 0x67

    if-eq v0, v3, :cond_3

    const/16 v3, 0x69

    if-eq v0, v3, :cond_2

    const/16 v3, 0x73

    if-eq v0, v3, :cond_1

    const/16 v0, 0xf

    const-wide/16 v3, 0x0

    move-object p1, p0

    move p2, v0

    move-wide p3, v3

    move-wide p5, v1

    move-wide/from16 p7, v5

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_1
    const-wide/high16 v3, 0x20000000000000L

    const-wide/16 v7, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lbsh/ParserTokenManager;->e(JJJJ)I

    move-result v0

    return v0

    :cond_2
    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lbsh/ParserTokenManager;->e(JJJJ)I

    move-result v0

    return v0

    :cond_3
    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lbsh/ParserTokenManager;->e(JJJJ)I

    move-result v0

    return v0

    :catch_0
    const/16 v0, 0xf

    const-wide/16 v3, 0x0

    move-object p1, p0

    move p2, v0

    move-wide p3, v3

    move-wide p5, v1

    move-wide/from16 p7, v5

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->b(IJJJ)I

    const/16 v0, 0x10

    return v0
.end method

.method private final d(JJJJJJ)I
    .locals 14

    move-object v13, p0

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long v3, v1, v5

    and-long v9, p11, p9

    or-long/2addr v3, v9

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p5

    move-wide/from16 v6, p9

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x2

    :try_start_0
    iget-object v3, v13, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v3}, Lbsh/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, v13, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v3, v13, Lbsh/ParserTokenManager;->p:C

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_e

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_c

    const/16 v4, 0x65

    if-eq v3, v4, :cond_b

    const/16 v4, 0x66

    if-eq v3, v4, :cond_a

    const/16 v4, 0x69

    if-eq v3, v4, :cond_9

    const/16 v4, 0x6c

    if-eq v3, v4, :cond_8

    const/16 v4, 0x77

    const/16 v11, 0x23

    if-eq v3, v4, :cond_7

    const/16 v4, 0x79

    if-eq v3, v4, :cond_6

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    goto/16 :goto_2

    :pswitch_0
    const-wide v3, 0x80000001400000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_1
    const-wide v3, 0x1000000000L

    and-long/2addr v3, v1

    cmp-long v11, v3, v7

    if-eqz v11, :cond_1

    const/16 v3, 0x24

    :goto_0
    iput v3, v13, Lbsh/ParserTokenManager;->v:I

    iput v0, v13, Lbsh/ParserTokenManager;->u:I

    goto :goto_1

    :cond_1
    const-wide/32 v3, 0x80000

    and-long/2addr v3, v5

    cmp-long v11, v3, v7

    if-eqz v11, :cond_2

    const/16 v3, 0x53

    goto :goto_0

    :cond_2
    const-wide/32 v3, 0x200000

    and-long/2addr v3, v5

    cmp-long v11, v3, v7

    if-eqz v11, :cond_3

    const/16 v3, 0x55

    goto :goto_0

    :cond_3
    :goto_1
    const-wide v3, 0x40a082014000L

    const-wide/32 v7, 0x50000000

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_2
    const-wide v3, 0x800808400L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_3
    const-wide/32 v3, 0x40000000

    and-long/2addr v3, v1

    cmp-long v12, v3, v7

    if-eqz v12, :cond_4

    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1, v11}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_4
    const-wide v3, 0x200000000L

    and-long/2addr v3, v5

    cmp-long v11, v3, v7

    if-eqz v11, :cond_5

    const/16 v3, 0x61

    iput v3, v13, Lbsh/ParserTokenManager;->v:I

    iput v0, v13, Lbsh/ParserTokenManager;->u:I

    :cond_5
    const-wide/high16 v3, 0x62000000000000L

    const-wide/high16 v7, 0x2000000000000000L

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_4
    const-wide v3, 0x600000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_5
    const-wide v3, 0x900020000800L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_6
    const-wide v3, 0x80040180c0000L

    const-wide v7, 0x800000800000000L

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_7
    const-wide v3, 0x40000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_8
    const-wide v3, 0x200000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_9
    const-wide v3, 0x11000000022000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v0

    return v0

    :cond_6
    const-wide/high16 v3, 0x100000000000000L

    and-long/2addr v3, v1

    cmp-long v12, v3, v7

    if-eqz v12, :cond_10

    const/16 v1, 0x38

    invoke-direct {p0, v0, v1, v11}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_7
    const-wide v3, 0x10000000000L

    and-long/2addr v3, v1

    cmp-long v12, v3, v7

    if-eqz v12, :cond_10

    const/16 v1, 0x28

    invoke-direct {p0, v0, v1, v11}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_8
    const-wide v3, 0x400020004000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v0

    return v0

    :cond_9
    const-wide v3, 0xa04080000000000L

    const-wide v7, 0x28280000000000L

    const-wide/16 v11, 0x28

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v0

    return v0

    :cond_a
    const-wide/32 v3, 0x100000

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v0

    return v0

    :cond_b
    const-wide/16 v3, 0x1000

    const-wide/high16 v7, 0x2000000000000L

    const-wide/16 v11, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v0

    return v0

    :cond_c
    const-wide/high16 v3, 0x10000000000000L

    and-long/2addr v3, v5

    cmp-long v11, v3, v7

    if-eqz v11, :cond_d

    const/16 v3, 0x74

    iput v3, v13, Lbsh/ParserTokenManager;->v:I

    iput v0, v13, Lbsh/ParserTokenManager;->u:I

    :cond_d
    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x10

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->e(JJJJJJ)I

    move-result v0

    return v0

    :cond_e
    const-wide/16 v3, 0x1

    and-long/2addr v3, v9

    cmp-long v11, v3, v7

    if-eqz v11, :cond_f

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_f
    const-wide/16 v3, 0x4

    and-long/2addr v3, v9

    cmp-long v11, v3, v7

    if-eqz v11, :cond_10

    const/16 v1, 0x82

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_10
    :goto_2
    const/4 v0, 0x1

    move-object p1, p0

    move/from16 p2, v0

    move-wide/from16 p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v9

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :catch_0
    const/4 v3, 0x1

    move-object p1, p0

    move/from16 p2, v3

    move-wide/from16 p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v9

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->b(IJJJ)I

    return v0

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6e
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x72
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final e(II)I
    .locals 0

    iput p2, p0, Lbsh/ParserTokenManager;->v:I

    iput p1, p0, Lbsh/ParserTokenManager;->u:I

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final e(JJ)I
    .locals 8

    and-long v6, p3, p1

    const-wide/16 v0, 0x0

    cmp-long v2, v6, v0

    if-nez v2, :cond_0

    const/16 v1, 0x18

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, p0, Lbsh/ParserTokenManager;->p:C

    const/16 v1, 0x67

    if-eq v0, v1, :cond_1

    const/16 v1, 0x19

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_1
    const-wide/16 v0, 0x20

    invoke-direct {p0, v6, v7, v0, v1}, Lbsh/ParserTokenManager;->f(JJ)I

    move-result v0

    return v0

    :catch_0
    const/16 v1, 0x19

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->b(IJJJ)I

    const/16 v0, 0x1a

    return v0
.end method

.method private final e(JJJJ)I
    .locals 11

    move-object v9, p0

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long v3, v1, v5

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    const/16 v1, 0xf

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x11

    :try_start_0
    iget-object v3, v9, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v3}, Lbsh/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, v9, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v3, v9, Lbsh/ParserTokenManager;->p:C

    const/16 v4, 0x67

    if-eq v3, v4, :cond_4

    const/16 v4, 0x68

    if-eq v3, v4, :cond_3

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x2

    and-long/2addr v3, v5

    cmp-long v10, v3, v7

    if-eqz v10, :cond_2

    const/16 v1, 0x81

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_2
    :goto_0
    const/16 v0, 0x10

    const-wide/16 v3, 0x0

    move-object p1, p0

    move p2, v0

    move-wide p3, v3

    move-wide/from16 p5, v1

    move-wide/from16 p7, v5

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_3
    const-wide/high16 v3, 0x20000000000000L

    const-wide/16 v7, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lbsh/ParserTokenManager;->f(JJJJ)I

    move-result v0

    return v0

    :cond_4
    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lbsh/ParserTokenManager;->f(JJJJ)I

    move-result v0

    return v0

    :catch_0
    const/16 v3, 0x10

    const-wide/16 v7, 0x0

    move-object p1, p0

    move p2, v3

    move-wide p3, v7

    move-wide/from16 p5, v1

    move-wide/from16 p7, v5

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->b(IJJJ)I

    return v0
.end method

.method private final e(JJJJJJ)I
    .locals 14

    move-object v13, p0

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long v3, v1, v5

    and-long v9, p11, p9

    or-long/2addr v3, v9

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p5

    move-wide/from16 v6, p9

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x3

    :try_start_0
    iget-object v3, v13, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v3}, Lbsh/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, v13, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v3, v13, Lbsh/ParserTokenManager;->p:C

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_d

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_c

    const/16 v4, 0x69

    if-eq v3, v4, :cond_b

    const/16 v4, 0x23

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_0
    const-wide v3, 0x80000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_1
    const-wide v3, 0x400000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_2
    const-wide v3, 0x5100800080400L

    const-wide v7, 0x280000000000L

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_3
    const-wide/32 v3, 0x4042000

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_4
    const-wide/32 v11, 0x20000

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_1

    const/16 v1, 0x11

    invoke-direct {p0, v0, v1, v4}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_1
    const-wide v3, 0x800000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_5
    const-wide v11, 0x80000000L

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_2

    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1, v4}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_2
    const-wide v3, 0x60000400000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_6
    const-wide/high16 v3, 0x10000000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_7
    const-wide/32 v11, 0x1000000

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_e

    const/16 v1, 0x18

    invoke-direct {p0, v0, v1, v4}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :pswitch_8
    const-wide v11, 0x20000000000L

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_3

    const/16 v1, 0x29

    invoke-direct {p0, v0, v1, v4}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_3
    const-wide v3, 0x800200200000800L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_9
    const-wide v3, 0x40000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_a
    const-wide v11, 0x4000000000L

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_4

    const/16 v1, 0x26

    invoke-direct {p0, v0, v1, v4}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_4
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x28000000000000L

    const-wide/16 v11, 0x28

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_b
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x2000000000000L

    const-wide/16 v11, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_c
    const-wide/16 v11, 0x4000

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_5

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1, v4}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_5
    const-wide/32 v11, 0x8000

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_6

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1, v4}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_6
    const-wide/32 v11, 0x800000

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_7

    const/16 v1, 0x17

    invoke-direct {p0, v0, v1, v4}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_7
    const-wide/high16 v11, 0x80000000000000L

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_8

    const/16 v1, 0x37

    invoke-direct {p0, v0, v1, v4}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_8
    const-wide v3, 0x2002000000L

    const-wide/32 v7, 0x50000000

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_d
    const-wide/high16 v11, 0x200000000000000L

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_9

    const/16 v1, 0x39

    invoke-direct {p0, v0, v1, v4}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_9
    const-wide v3, 0x800000000L

    and-long/2addr v3, v5

    cmp-long v11, v3, v7

    if-eqz v11, :cond_a

    const/16 v3, 0x63

    iput v3, v13, Lbsh/ParserTokenManager;->v:I

    iput v0, v13, Lbsh/ParserTokenManager;->u:I

    :cond_a
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x800000000000000L

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_e
    const-wide v3, 0x8000000010000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_f
    const-wide/32 v3, 0x400000

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_10
    const-wide v3, 0x400000038101000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v0

    return v0

    :cond_b
    const-wide v3, 0x2008000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v0

    return v0

    :cond_c
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x2000000000000000L

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->f(JJJJJJ)I

    move-result v0

    return v0

    :cond_d
    const-wide/16 v3, 0x10

    and-long/2addr v3, v9

    cmp-long v11, v3, v7

    if-eqz v11, :cond_e

    const/16 v1, 0x84

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_e
    :goto_0
    const/4 v0, 0x2

    move-object p1, p0

    move/from16 p2, v0

    move-wide/from16 p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v9

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :catch_0
    const/4 v3, 0x2

    move-object p1, p0

    move/from16 p2, v3

    move-wide/from16 p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v9

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->b(IJJJ)I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6b
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x72
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final f(JJ)I
    .locals 9

    and-long v6, p3, p1

    const-wide/16 v0, 0x0

    cmp-long v2, v6, v0

    if-nez v2, :cond_0

    const/16 v1, 0x19

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_0
    const/16 v8, 0x1b

    :try_start_0
    iget-object v2, p0, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v2, p0, Lbsh/ParserTokenManager;->p:C

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x20

    and-long/2addr v2, v6

    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    const/16 v0, 0x85

    invoke-direct {p0, v8, v0}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_2
    :goto_0
    const/16 v1, 0x1a

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :catch_0
    const/16 v1, 0x1a

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->b(IJJJ)I

    return v8
.end method

.method private final f(JJJJ)I
    .locals 11

    move-object v9, p0

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long v3, v1, v5

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    const/16 v1, 0x10

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x12

    :try_start_0
    iget-object v3, v9, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v3}, Lbsh/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, v9, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v3, v9, Lbsh/ParserTokenManager;->p:C

    const/16 v4, 0x69

    if-eq v3, v4, :cond_3

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x8

    and-long/2addr v3, v5

    cmp-long v10, v3, v7

    if-eqz v10, :cond_2

    const/16 v1, 0x83

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_2
    :goto_0
    const/16 v0, 0x11

    const-wide/16 v3, 0x0

    move-object p1, p0

    move p2, v0

    move-wide p3, v3

    move-wide/from16 p5, v1

    move-wide/from16 p7, v5

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_3
    const-wide/high16 v3, 0x20000000000000L

    const-wide/16 v7, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lbsh/ParserTokenManager;->g(JJJJ)I

    move-result v0

    return v0

    :catch_0
    const/16 v3, 0x11

    const-wide/16 v7, 0x0

    move-object p1, p0

    move p2, v3

    move-wide p3, v7

    move-wide/from16 p5, v1

    move-wide/from16 p7, v5

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->b(IJJJ)I

    return v0
.end method

.method private final f(JJJJJJ)I
    .locals 14

    move-object v13, p0

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long v3, v1, v5

    and-long v9, p11, p9

    or-long/2addr v3, v9

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    const/4 v1, 0x2

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p5

    move-wide/from16 v6, p9

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x4

    :try_start_0
    iget-object v3, v13, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v3}, Lbsh/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, v13, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v3, v13, Lbsh/ParserTokenManager;->p:C

    const/16 v4, 0x23

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    const-wide/high16 v3, 0x20000000000000L

    and-long/2addr v3, v1

    cmp-long v11, v3, v7

    if-eqz v11, :cond_1

    const/16 v3, 0x35

    iput v3, v13, Lbsh/ParserTokenManager;->v:I

    iput v0, v13, Lbsh/ParserTokenManager;->u:I

    :cond_1
    const-wide/high16 v3, 0x40000000000000L

    const-wide v7, 0x280000000000L

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_2
    const-wide v3, 0x8000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_3
    const-wide/32 v3, 0x100000

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_4
    const-wide/32 v11, 0x40000

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_2

    const/16 v1, 0x12

    invoke-direct {p0, v0, v1, v4}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_2
    const-wide/32 v11, 0x20000000

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_3

    const/16 v1, 0x1d

    invoke-direct {p0, v0, v1, v4}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_3
    const-wide v11, 0x800000000000L

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_4

    const/16 v1, 0x2f

    invoke-direct {p0, v0, v1, v4}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_4
    const-wide/high16 v3, 0x400000000000000L

    const-wide/high16 v7, 0x2000000000000L

    const-wide/16 v11, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_5
    const-wide/16 v11, 0x2000

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_5

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1, v4}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_5
    const-wide/high16 v3, 0x10000000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_6
    const-wide v3, 0x402400000400L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_7
    const-wide/32 v3, 0x10000000

    and-long/2addr v3, v5

    cmp-long v11, v3, v7

    if-eqz v11, :cond_6

    const/16 v1, 0x5c

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_6
    const-wide/32 v3, 0x40000000

    and-long/2addr v3, v5

    cmp-long v11, v3, v7

    if-eqz v11, :cond_b

    const/16 v1, 0x5e

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :pswitch_8
    const-wide/32 v3, 0x2000000

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_9
    const-wide/32 v3, 0x8000000

    and-long/2addr v3, v1

    cmp-long v11, v3, v7

    if-eqz v11, :cond_7

    const/16 v3, 0x1b

    iput v3, v13, Lbsh/ParserTokenManager;->v:I

    iput v0, v13, Lbsh/ParserTokenManager;->u:I

    :cond_7
    const-wide/32 v3, 0x10400000

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_a
    const-wide/16 v11, 0x1000

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_b

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1, v4}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :pswitch_b
    const-wide v3, 0x1200000080000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_c
    const-wide/32 v11, 0x10000

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_8

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, v4}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_8
    const-wide/high16 v3, 0x8000000000000L

    const-wide/high16 v7, 0x28000000000000L

    const-wide/16 v11, 0x28

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_d
    const-wide/32 v11, 0x4000000

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_9

    const/16 v1, 0x1a

    invoke-direct {p0, v0, v1, v4}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_9
    const-wide/high16 v11, 0x800000000000000L

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_a

    const/16 v1, 0x3b

    invoke-direct {p0, v0, v1, v4}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_a
    const-wide v3, 0x100200000800L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_e
    const-wide/high16 v3, 0x6000000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_f
    const-wide v3, 0xc0800000000L

    const-wide/high16 v7, 0x2000000000000000L

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_10
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x800000000000000L

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->g(JJJJJJ)I

    move-result v0

    return v0

    :cond_b
    :goto_0
    const/4 v0, 0x3

    move-object p1, p0

    move/from16 p2, v0

    move-wide/from16 p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v9

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :catch_0
    const/4 v3, 0x3

    move-object p1, p0

    move/from16 p2, v3

    move-wide/from16 p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v9

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->b(IJJJ)I

    return v0

    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final g(JJJJ)I
    .locals 10

    move-object v9, p0

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long v3, v1, v5

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    const/16 v1, 0x11

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, v9, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v9, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, v9, Lbsh/ParserTokenManager;->p:C

    const/16 v3, 0x66

    if-eq v0, v3, :cond_1

    const/16 v0, 0x12

    const-wide/16 v3, 0x0

    move-object p1, p0

    move p2, v0

    move-wide p3, v3

    move-wide p5, v1

    move-wide/from16 p7, v5

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_1
    const-wide/high16 v3, 0x20000000000000L

    const-wide/16 v7, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lbsh/ParserTokenManager;->h(JJJJ)I

    move-result v0

    return v0

    :catch_0
    const/16 v0, 0x12

    const-wide/16 v3, 0x0

    move-object p1, p0

    move p2, v0

    move-wide p3, v3

    move-wide p5, v1

    move-wide/from16 p7, v5

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->b(IJJJ)I

    const/16 v0, 0x13

    return v0
.end method

.method private final g(JJJJJJ)I
    .locals 14

    move-object v13, p0

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long v3, v1, v5

    and-long v9, p11, p9

    or-long/2addr v3, v9

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    const/4 v1, 0x3

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p5

    move-wide/from16 v6, p9

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x5

    :try_start_0
    iget-object v3, v13, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v3}, Lbsh/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, v13, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v3, v13, Lbsh/ParserTokenManager;->p:C

    const/16 v4, 0x23

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    const-wide v11, 0x400000000L

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_1

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1, v4}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_1
    const-wide v3, 0x2080000000000L

    const-wide/high16 v7, 0x28000000000000L

    const-wide/16 v11, 0x28

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->h(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_2
    const-wide/high16 v11, 0x40000000000000L

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_2

    const/16 v1, 0x36

    invoke-direct {p0, v0, v1, v4}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_2
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x2000000000000000L

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->h(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_3
    const-wide/high16 v3, 0x8000000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->h(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_4
    const-wide v11, 0x400000000000L

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_3

    const/16 v1, 0x2e

    invoke-direct {p0, v0, v1, v4}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_3
    const-wide v3, 0x800080000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->h(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_5
    const-wide v3, 0x200000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->h(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_6
    const-wide/32 v3, 0x10100000

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->h(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_7
    const-wide/high16 v3, 0x410000000000000L

    const-wide v7, 0x280000000000L

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->h(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_8
    const-wide/high16 v11, 0x4000000000000L

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_7

    const/16 v1, 0x32

    invoke-direct {p0, v0, v1, v4}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :pswitch_9
    const-wide v3, 0x40000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->h(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_a
    const-wide v3, 0x2000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->h(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_b
    const-wide/32 v11, 0x400000

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_4

    const/16 v1, 0x16

    invoke-direct {p0, v0, v1, v4}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_4
    const-wide v11, 0x8000000000L

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_7

    const/16 v1, 0x27

    invoke-direct {p0, v0, v1, v4}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :pswitch_c
    const-wide/32 v3, 0x2000000

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->h(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_d
    const-wide v11, 0x200000000000L

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_5

    const/16 v1, 0x2d

    invoke-direct {p0, v0, v1, v4}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_5
    const-wide/high16 v11, 0x1000000000000L

    and-long/2addr v11, v1

    cmp-long v3, v11, v7

    if-eqz v3, :cond_6

    const/16 v1, 0x30

    invoke-direct {p0, v0, v1, v4}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_6
    const-wide v3, 0x100000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->h(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_e
    const-wide/16 v3, 0xc00

    const-wide/high16 v7, 0x800000000000000L

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->h(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_f
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x2000000000000L

    const-wide/16 v11, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->h(JJJJJJ)I

    move-result v0

    return v0

    :cond_7
    :goto_0
    const/4 v0, 0x4

    move-object p1, p0

    move/from16 p2, v0

    move-wide/from16 p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v9

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :catch_0
    const/4 v3, 0x4

    move-object p1, p0

    move/from16 p2, v3

    move-wide/from16 p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v9

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->b(IJJJ)I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final h(JJJJ)I
    .locals 11

    move-object v9, p0

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long v3, v1, v5

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    const/16 v1, 0x12

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x14

    :try_start_0
    iget-object v3, v9, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v3}, Lbsh/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, v9, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v3, v9, Lbsh/ParserTokenManager;->p:C

    const/16 v4, 0x74

    if-eq v3, v4, :cond_1

    const/16 v0, 0x13

    const-wide/16 v3, 0x0

    move-object p1, p0

    move p2, v0

    move-wide p3, v3

    move-wide/from16 p5, v1

    move-wide/from16 p7, v5

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_1
    const-wide/high16 v3, 0x20000000000000L

    and-long/2addr v3, v1

    cmp-long v10, v3, v7

    if-eqz v10, :cond_2

    const/16 v3, 0x75

    iput v3, v9, Lbsh/ParserTokenManager;->v:I

    iput v0, v9, Lbsh/ParserTokenManager;->u:I

    :cond_2
    const-wide/16 v3, 0x0

    const-wide/16 v7, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lbsh/ParserTokenManager;->i(JJJJ)I

    move-result v0

    return v0

    :catch_0
    const/16 v3, 0x13

    const-wide/16 v7, 0x0

    move-object p1, p0

    move p2, v3

    move-wide p3, v7

    move-wide/from16 p5, v1

    move-wide/from16 p7, v5

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->b(IJJJ)I

    return v0
.end method

.method private final h(JJJJJJ)I
    .locals 14

    move-object v13, p0

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long v3, v1, v5

    and-long v9, p11, p9

    or-long/2addr v3, v9

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    const/4 v1, 0x4

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p5

    move-wide/from16 v6, p9

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x6

    :try_start_0
    iget-object v3, v13, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v3}, Lbsh/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, v13, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v3, v13, Lbsh/ParserTokenManager;->p:C

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_e

    const/16 v4, 0x61

    if-eq v3, v4, :cond_d

    const/16 v4, 0x63

    if-eq v3, v4, :cond_c

    const/16 v4, 0x6c

    if-eq v3, v4, :cond_b

    const/16 v4, 0x79

    const/16 v11, 0x23

    if-eq v3, v4, :cond_9

    const/16 v4, 0x65

    if-eq v3, v4, :cond_6

    const/16 v4, 0x66

    if-eq v3, v4, :cond_5

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_4

    const/16 v4, 0x6f

    if-eq v3, v4, :cond_3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-wide/32 v3, 0x80000

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->i(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_1
    const-wide/32 v3, 0x100000

    and-long/2addr v3, v1

    cmp-long v12, v3, v7

    if-eqz v12, :cond_1

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1, v11}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_1
    const-wide v3, 0x100000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->i(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_2
    const-wide/32 v3, 0x2000000

    and-long/2addr v3, v1

    cmp-long v12, v3, v7

    if-eqz v12, :cond_2

    const/16 v1, 0x19

    invoke-direct {p0, v0, v1, v11}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_2
    const-wide/16 v3, 0x0

    const-wide v7, 0x2802280000000000L    # 5.759938310470282E-116

    const-wide/16 v11, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->i(JJJJJJ)I

    move-result v0

    return v0

    :cond_3
    const-wide/high16 v3, 0x8000000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->i(JJJJJJ)I

    move-result v0

    return v0

    :cond_4
    const-wide/16 v3, 0x800

    and-long/2addr v3, v1

    cmp-long v12, v3, v7

    if-eqz v12, :cond_a

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1, v11}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_5
    const-wide/high16 v3, 0x2000000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->i(JJJJJJ)I

    move-result v0

    return v0

    :cond_6
    const-wide v3, 0x40000000000L

    and-long/2addr v3, v1

    cmp-long v12, v3, v7

    if-eqz v12, :cond_7

    const/16 v1, 0x2a

    invoke-direct {p0, v0, v1, v11}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_7
    const-wide v3, 0x80000000000L

    and-long/2addr v3, v1

    cmp-long v12, v3, v7

    if-eqz v12, :cond_8

    const/16 v1, 0x2b

    invoke-direct {p0, v0, v1, v11}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_8
    const-wide v3, 0x10000200000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->i(JJJJJJ)I

    move-result v0

    return v0

    :cond_9
    const-wide/32 v3, 0x10000000

    and-long/2addr v3, v1

    cmp-long v12, v3, v7

    if-eqz v12, :cond_a

    const/16 v1, 0x1c

    invoke-direct {p0, v0, v1, v11}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_a
    :goto_0
    const/4 v0, 0x5

    move-object p1, p0

    move/from16 p2, v0

    move-wide/from16 p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v9

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_b
    const-wide/high16 v3, 0x400000000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->i(JJJJJJ)I

    move-result v0

    return v0

    :cond_c
    const-wide v3, 0x800000400L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->i(JJJJJJ)I

    move-result v0

    return v0

    :cond_d
    const-wide v3, 0x2000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->i(JJJJJJ)I

    move-result v0

    return v0

    :cond_e
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x28000000000000L

    const-wide/16 v11, 0x28

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->i(JJJJJJ)I

    move-result v0

    return v0

    :catch_0
    const/4 v3, 0x5

    move-object p1, p0

    move/from16 p2, v3

    move-wide/from16 p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v9

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->b(IJJJ)I

    return v0

    :pswitch_data_0
    .packed-switch 0x73
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final i(JJJJ)I
    .locals 9

    move-object v8, p0

    and-long v0, p3, p1

    and-long v2, p7, p5

    or-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const/16 v1, 0x13

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-wide v4, p1

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, v8, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v8, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v0, v8, Lbsh/ParserTokenManager;->p:C

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_1

    const/16 v0, 0x14

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object p1, p0

    move p2, v0

    move-wide p3, v4

    move-wide p5, v6

    move-wide/from16 p7, v2

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_1
    const-wide/16 v0, 0x20

    invoke-direct {p0, v2, v3, v0, v1}, Lbsh/ParserTokenManager;->a(JJ)I

    move-result v0

    return v0

    :catch_0
    const/16 v0, 0x14

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object p1, p0

    move p2, v0

    move-wide p3, v4

    move-wide p5, v6

    move-wide/from16 p7, v2

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->b(IJJJ)I

    const/16 v0, 0x15

    return v0
.end method

.method private final i(JJJJJJ)I
    .locals 14

    move-object v13, p0

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long v3, v1, v5

    and-long v9, p11, p9

    or-long/2addr v3, v9

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    const/4 v1, 0x5

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p5

    move-wide/from16 v6, p9

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x7

    :try_start_0
    iget-object v3, v13, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v3}, Lbsh/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, v13, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v3, v13, Lbsh/ParserTokenManager;->p:C

    const/16 v4, 0x63

    if-eq v3, v4, :cond_9

    const/16 v4, 0x65

    const/16 v11, 0x23

    if-eq v3, v4, :cond_6

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_5

    const/16 v4, 0x70

    if-eq v3, v4, :cond_3

    const/16 v4, 0x68

    if-eq v3, v4, :cond_2

    const/16 v4, 0x69

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x20000000000000L

    const-wide/16 v11, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->j(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_1
    const-wide/16 v3, 0x400

    and-long/2addr v3, v1

    cmp-long v12, v3, v7

    if-eqz v12, :cond_4

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1, v11}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :pswitch_2
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x808000000000000L

    const-wide/16 v11, 0x8

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->j(JJJJJJ)I

    move-result v0

    return v0

    :cond_1
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x2000000000000000L

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->j(JJJJJJ)I

    move-result v0

    return v0

    :cond_2
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x2000000000000L

    const-wide/16 v11, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->j(JJJJJJ)I

    move-result v0

    return v0

    :cond_3
    const-wide/high16 v3, 0x2000000000000L

    and-long/2addr v3, v1

    cmp-long v12, v3, v7

    if-eqz v12, :cond_4

    const/16 v1, 0x31

    invoke-direct {p0, v0, v1, v11}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_4
    :goto_0
    const/4 v0, 0x6

    move-object p1, p0

    move/from16 p2, v0

    move-wide/from16 p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v9

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_5
    const-wide v3, 0x18000200000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->j(JJJJJJ)I

    move-result v0

    return v0

    :cond_6
    const-wide/32 v3, 0x80000

    and-long/2addr v3, v1

    cmp-long v12, v3, v7

    if-eqz v12, :cond_7

    const/16 v1, 0x13

    invoke-direct {p0, v0, v1, v11}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_7
    const-wide/high16 v3, 0x400000000000000L

    and-long/2addr v3, v1

    cmp-long v12, v3, v7

    if-eqz v12, :cond_8

    const/16 v1, 0x3a

    invoke-direct {p0, v0, v1, v11}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_8
    const-wide v3, 0x100800000000L

    const-wide v7, 0x280000000000L

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->j(JJJJJJ)I

    move-result v0

    return v0

    :cond_9
    const-wide v3, 0x2000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->j(JJJJJJ)I

    move-result v0

    return v0

    :catch_0
    const/4 v3, 0x6

    move-object p1, p0

    move/from16 p2, v3

    move-wide/from16 p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v9

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->b(IJJJ)I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x73
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final j(JJJJJJ)I
    .locals 14

    move-object v13, p0

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long v3, v1, v5

    and-long v9, p11, p9

    or-long/2addr v3, v9

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    const/4 v1, 0x6

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p5

    move-wide/from16 v6, p9

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x8

    :try_start_0
    iget-object v3, v13, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v3}, Lbsh/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, v13, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v3, v13, Lbsh/ParserTokenManager;->p:C

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_8

    const/16 v4, 0x74

    const/16 v11, 0x23

    if-eq v3, v4, :cond_6

    const/16 v4, 0x64

    if-eq v3, v4, :cond_4

    const/16 v4, 0x65

    if-eq v3, v4, :cond_3

    const/16 v0, 0x6e

    if-eq v3, v0, :cond_2

    const/16 v0, 0x6f

    if-eq v3, v0, :cond_1

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-wide/high16 v3, 0x8000000000000L

    const-wide/high16 v7, 0x802000000000000L

    const-wide/16 v11, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->k(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_1
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x8000000000000L

    const-wide/16 v11, 0x8

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->k(JJJJJJ)I

    move-result v0

    return v0

    :pswitch_2
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x2000000000000000L

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->k(JJJJJJ)I

    move-result v0

    return v0

    :cond_1
    const-wide v3, 0x800000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->k(JJJJJJ)I

    move-result v0

    return v0

    :cond_2
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x20000000000000L

    const-wide/16 v11, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->k(JJJJJJ)I

    move-result v0

    return v0

    :cond_3
    const-wide v3, 0x2000000000L

    and-long/2addr v3, v1

    cmp-long v12, v3, v7

    if-eqz v12, :cond_5

    const/16 v1, 0x25

    invoke-direct {p0, v0, v1, v11}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_4
    const-wide v3, 0x100000000000L

    and-long/2addr v3, v1

    cmp-long v12, v3, v7

    if-eqz v12, :cond_5

    const/16 v1, 0x2c

    invoke-direct {p0, v0, v1, v11}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_5
    :goto_0
    const/4 v0, 0x7

    move-object p1, p0

    move/from16 p2, v0

    move-wide/from16 p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v9

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_6
    const-wide/high16 v3, 0x10000000000000L

    and-long/2addr v3, v1

    cmp-long v12, v3, v7

    if-eqz v12, :cond_7

    const/16 v1, 0x34

    invoke-direct {p0, v0, v1, v11}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_7
    const-wide v3, 0x200000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->k(JJJJJJ)I

    move-result v0

    return v0

    :cond_8
    const-wide/16 v3, 0x0

    const-wide v7, 0x280000000000L

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->k(JJJJJJ)I

    move-result v0

    return v0

    :catch_0
    const/4 v3, 0x7

    move-object p1, p0

    move/from16 p2, v3

    move-wide/from16 p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v9

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->b(IJJJ)I

    return v0

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final k(JJJJJJ)I
    .locals 14

    move-object v13, p0

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long v3, v1, v5

    and-long v9, p11, p9

    or-long/2addr v3, v9

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    const/4 v1, 0x7

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p5

    move-wide/from16 v6, p9

    invoke-direct/range {v0 .. v7}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x9

    :try_start_0
    iget-object v3, v13, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v3}, Lbsh/JavaCharStream;->readChar()C

    move-result v3

    iput-char v3, v13, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-char v3, v13, Lbsh/ParserTokenManager;->p:C

    const/16 v4, 0x61

    if-eq v3, v4, :cond_b

    const/16 v4, 0x69

    if-eq v3, v4, :cond_a

    const/16 v4, 0x73

    const/16 v11, 0x23

    if-eq v3, v4, :cond_8

    const/16 v4, 0x7a

    if-eq v3, v4, :cond_7

    const/16 v4, 0x66

    if-eq v3, v4, :cond_5

    const/16 v4, 0x67

    if-eq v3, v4, :cond_4

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_2

    const/16 v0, 0x6f

    if-eq v3, v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    const-wide v7, 0x200000000000L

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->a(JJJJJJ)I

    move-result v0

    return v0

    :cond_2
    const-wide/high16 v3, 0x2000000000000000L

    and-long/2addr v3, v5

    cmp-long v11, v3, v7

    if-eqz v11, :cond_3

    const/16 v1, 0x7d

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->e(II)I

    move-result v0

    return v0

    :cond_3
    :goto_0
    const/16 v0, 0x8

    move-object p1, p0

    move/from16 p2, v0

    move-wide/from16 p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v9

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->a(IJJJ)I

    move-result v0

    return v0

    :cond_4
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x800000000000000L

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->a(JJJJJJ)I

    move-result v0

    return v0

    :cond_5
    const-wide v3, 0x800000000L

    and-long/2addr v3, v1

    cmp-long v12, v3, v7

    if-eqz v12, :cond_6

    invoke-direct {p0, v0, v11, v11}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_6
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x2000000000000L

    const-wide/16 v11, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->a(JJJJJJ)I

    move-result v0

    return v0

    :cond_7
    const-wide/high16 v3, 0x8000000000000L

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->a(JJJJJJ)I

    move-result v0

    return v0

    :cond_8
    const-wide v3, 0x200000000L

    and-long/2addr v3, v1

    cmp-long v12, v3, v7

    if-eqz v12, :cond_9

    const/16 v1, 0x21

    invoke-direct {p0, v0, v1, v11}, Lbsh/ParserTokenManager;->a(III)I

    move-result v0

    return v0

    :cond_9
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x20000000000000L

    const-wide/16 v11, 0x20

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->a(JJJJJJ)I

    move-result v0

    return v0

    :cond_a
    const-wide/16 v3, 0x0

    const-wide/high16 v7, 0x8000000000000L

    const-wide/16 v11, 0x8

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->a(JJJJJJ)I

    move-result v0

    return v0

    :cond_b
    const-wide/16 v3, 0x0

    const-wide v7, 0x80000000000L

    const-wide/16 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lbsh/ParserTokenManager;->a(JJJJJJ)I

    move-result v0

    return v0

    :catch_0
    const/16 v3, 0x8

    move-object p1, p0

    move/from16 p2, v3

    move-wide/from16 p3, v1

    move-wide/from16 p5, v5

    move-wide/from16 p7, v9

    invoke-direct/range {p1 .. p8}, Lbsh/ParserTokenManager;->b(IJJJ)I

    return v0
.end method


# virtual methods
.method public ReInit(Lbsh/JavaCharStream;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lbsh/ParserTokenManager;->s:I

    iput v0, p0, Lbsh/ParserTokenManager;->u:I

    iget v0, p0, Lbsh/ParserTokenManager;->r:I

    iput v0, p0, Lbsh/ParserTokenManager;->q:I

    iput-object p1, p0, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-direct {p0}, Lbsh/ParserTokenManager;->b()V

    return-void
.end method

.method public ReInit(Lbsh/JavaCharStream;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lbsh/ParserTokenManager;->ReInit(Lbsh/JavaCharStream;)V

    invoke-virtual {p0, p2}, Lbsh/ParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method public SwitchTo(I)V
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    iput p1, p0, Lbsh/ParserTokenManager;->q:I

    return-void

    :cond_0
    new-instance v0, Lbsh/TokenMgrError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error: Ignoring invalid lexical state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ". State unchanged."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lbsh/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method protected a()Lbsh/Token;
    .locals 3

    iget v0, p0, Lbsh/ParserTokenManager;->v:I

    invoke-static {v0}, Lbsh/Token;->newToken(I)Lbsh/Token;

    move-result-object v0

    iget v1, p0, Lbsh/ParserTokenManager;->v:I

    iput v1, v0, Lbsh/Token;->kind:I

    sget-object v2, Lbsh/ParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    aget-object v1, v2, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->GetImage()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, v0, Lbsh/Token;->image:Ljava/lang/String;

    iget-object v1, p0, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->getBeginLine()I

    move-result v1

    iput v1, v0, Lbsh/Token;->beginLine:I

    iget-object v1, p0, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->getBeginColumn()I

    move-result v1

    iput v1, v0, Lbsh/Token;->beginColumn:I

    iget-object v1, p0, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->getEndLine()I

    move-result v1

    iput v1, v0, Lbsh/Token;->endLine:I

    iget-object v1, p0, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->getEndColumn()I

    move-result v1

    iput v1, v0, Lbsh/Token;->endColumn:I

    return-object v0
.end method

.method public getNextToken()Lbsh/Token;
    .locals 17

    move-object/from16 v0, p0

    const-string v1, ""

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, v0, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v5}, Lbsh/JavaCharStream;->BeginToken()C

    move-result v5

    iput-char v5, v0, Lbsh/ParserTokenManager;->p:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const v5, 0x7fffffff

    iput v5, v0, Lbsh/ParserTokenManager;->v:I

    iput v4, v0, Lbsh/ParserTokenManager;->u:I

    invoke-direct/range {p0 .. p0}, Lbsh/ParserTokenManager;->c()I

    move-result v6

    iget v7, v0, Lbsh/ParserTokenManager;->v:I

    const/4 v8, 0x1

    if-eq v7, v5, :cond_4

    iget v4, v0, Lbsh/ParserTokenManager;->u:I

    add-int/lit8 v5, v4, 0x1

    if-ge v5, v6, :cond_1

    iget-object v5, v0, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    sub-int/2addr v6, v4

    sub-int/2addr v6, v8

    invoke-virtual {v5, v6}, Lbsh/JavaCharStream;->backup(I)V

    :cond_1
    sget-object v4, Lbsh/ParserTokenManager;->j:[J

    iget v5, v0, Lbsh/ParserTokenManager;->v:I

    shr-int/lit8 v6, v5, 0x6

    aget-wide v6, v4, v6

    and-int/lit8 v4, v5, 0x3f

    const-wide/16 v8, 0x1

    shl-long v10, v8, v4

    and-long/2addr v6, v10

    const-wide/16 v10, 0x0

    cmp-long v4, v6, v10

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lbsh/ParserTokenManager;->a()Lbsh/Token;

    move-result-object v1

    iput-object v3, v1, Lbsh/Token;->specialToken:Lbsh/Token;

    return-object v1

    :cond_2
    sget-object v4, Lbsh/ParserTokenManager;->l:[J

    shr-int/lit8 v6, v5, 0x6

    aget-wide v6, v4, v6

    and-int/lit8 v4, v5, 0x3f

    shl-long v4, v8, v4

    and-long/2addr v4, v6

    cmp-long v6, v4, v10

    if-eqz v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Lbsh/ParserTokenManager;->a()Lbsh/Token;

    move-result-object v4

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    iput-object v3, v4, Lbsh/Token;->specialToken:Lbsh/Token;

    iput-object v4, v3, Lbsh/Token;->next:Lbsh/Token;

    :goto_2
    move-object v3, v4

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v3}, Lbsh/JavaCharStream;->getEndLine()I

    move-result v3

    iget-object v5, v0, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v5}, Lbsh/JavaCharStream;->getEndColumn()I

    move-result v5

    :try_start_1
    iget-object v7, v0, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v7}, Lbsh/JavaCharStream;->readChar()C

    iget-object v7, v0, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v7, v8}, Lbsh/JavaCharStream;->backup(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v12, v3

    move v13, v5

    const/4 v10, 0x0

    goto :goto_6

    :catch_0
    nop

    if-gt v6, v8, :cond_5

    move-object v2, v1

    goto :goto_3

    :cond_5
    iget-object v2, v0, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->GetImage()Ljava/lang/String;

    move-result-object v2

    :goto_3
    iget-char v7, v0, Lbsh/ParserTokenManager;->p:C

    const/16 v9, 0xa

    if-eq v7, v9, :cond_7

    const/16 v9, 0xd

    if-ne v7, v9, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_5

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    :goto_5
    move v12, v3

    move v13, v5

    const/4 v10, 0x1

    :goto_6
    if-nez v10, :cond_9

    iget-object v2, v0, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v2, v8}, Lbsh/JavaCharStream;->backup(I)V

    if-gt v6, v8, :cond_8

    goto :goto_7

    :cond_8
    iget-object v1, v0, Lbsh/ParserTokenManager;->m:Lbsh/JavaCharStream;

    invoke-virtual {v1}, Lbsh/JavaCharStream;->GetImage()Ljava/lang/String;

    move-result-object v1

    :goto_7
    move-object v14, v1

    goto :goto_8

    :cond_9
    move-object v14, v2

    :goto_8
    new-instance v1, Lbsh/TokenMgrError;

    iget v11, v0, Lbsh/ParserTokenManager;->q:I

    iget-char v15, v0, Lbsh/ParserTokenManager;->p:C

    const/16 v16, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lbsh/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v1

    :catch_1
    iput v4, v0, Lbsh/ParserTokenManager;->v:I

    goto :goto_1
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0

    iput-object p1, p0, Lbsh/ParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
