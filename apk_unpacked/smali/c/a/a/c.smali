.class public Lc/a/a/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x39

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lc/a/a/c;->a:[I

    return-void

    :array_0
    .array-data 4
        0x60
        0x71
        0x41
        0x54
        0x50
        0x50
        0x5c
        0x6c
        0x3c
        0x10
        0x3c
        0x54
        0x6c
        0x7c
        0x7c
        0x7c
        0x7c
        0x7c
        0x7c
        0x60
        0x60
        0x60
        0x68
        0x22
        0xbc
        0xbc
        0xbc
        0x84
        0xe4
        0x54
        0x54
        0x10
        0x62
        0x62
        0x4
        0xe2
        0x14
        0x51
        0x50
        0x7c
        0x7c
        0x7c
        0x7c
        0x7c
        0x7c
        0x60
        0x71
        0x31
        0x51
        0x71
        0x31
        0x50
        0x4
        0x54
        0x71
        0x71
        0x17
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x6

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[string \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\"]"

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x50

    if-le v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x17

    and-int/lit16 p0, p0, 0x1ff

    return p0
.end method

.method public static c(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0xe

    and-int/lit16 p0, p0, 0x1ff

    return p0
.end method

.method public static d(I)I
    .locals 1

    shr-int/lit8 p0, p0, 0xe

    const v0, 0x3ffff

    and-int/2addr p0, v0

    const v0, 0x1ffff

    sub-int/2addr p0, v0

    return p0
.end method

.method public static e(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x0

    and-int/lit8 p0, p0, 0x3f

    return p0
.end method

.method public static f(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g(I)I
    .locals 0

    or-int/lit16 p0, p0, 0x100

    return p0
.end method

.method public static h(I)I
    .locals 1

    sget-object v0, Lc/a/a/c;->a:[I

    aget p0, v0, p0

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static i(I)I
    .locals 1

    sget-object v0, Lc/a/a/c;->a:[I

    aget p0, v0, p0

    shr-int/lit8 p0, p0, 0x2

    and-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static j(I)I
    .locals 1

    sget-object v0, Lc/a/a/c;->a:[I

    aget p0, v0, p0

    and-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static k(I)Z
    .locals 1

    sget-object v0, Lc/a/a/c;->a:[I

    aget p0, v0, p0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
