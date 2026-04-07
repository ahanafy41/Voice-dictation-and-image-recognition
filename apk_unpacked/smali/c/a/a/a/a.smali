.class public Lc/a/a/a/a;
.super Lc/a/a/c;
.source ""


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/a/a/c;-><init>()V

    return-void
.end method

.method static a(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x0

    and-int/lit8 p0, p0, 0x3f

    shl-int/lit8 p1, p1, 0x6

    and-int/lit8 p1, p1, -0x40

    or-int/2addr p0, p1

    return p0
.end method

.method static a(III)I
    .locals 0

    shl-int/lit8 p0, p0, 0x0

    and-int/lit8 p0, p0, 0x3f

    shl-int/lit8 p1, p1, 0x6

    and-int/lit16 p1, p1, 0x3fc0

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0xe

    and-int/lit16 p1, p1, -0x4000

    or-int/2addr p0, p1

    return p0
.end method

.method static a(IIII)I
    .locals 0

    shl-int/lit8 p0, p0, 0x0

    and-int/lit8 p0, p0, 0x3f

    shl-int/lit8 p1, p1, 0x6

    and-int/lit16 p1, p1, 0x3fc0

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x17

    const/high16 p2, -0x800000    # Float.NEGATIVE_INFINITY

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    shl-int/lit8 p1, p3, 0xe

    const p2, 0x7fc000

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method static a(Lc/a/a/a/c;I)V
    .locals 1

    invoke-virtual {p0}, Lc/a/a/a/c;->a()I

    move-result v0

    and-int/lit16 v0, v0, -0x3fc1

    shl-int/lit8 p1, p1, 0x6

    and-int/lit16 p1, p1, 0x3fc0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lc/a/a/a/c;->a(I)V

    return-void
.end method

.method protected static a(Z)V
    .locals 0

    return-void
.end method

.method protected static a(ZLjava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lc/a/a/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compiler assert failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/a/a/f;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a([III)V
    .locals 1

    aget v0, p0, p1

    and-int/lit16 v0, v0, -0x3fc1

    shl-int/lit8 p2, p2, 0x6

    and-int/lit16 p2, p2, 0x3fc0

    or-int/2addr p2, v0

    aput p2, p0, p1

    return-void
.end method

.method static a([CI)[C
    .locals 2

    new-array v0, p1, [C

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method static a([II)[I
    .locals 2

    new-array v0, p1, [I

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method static a([Lc/a/a/a/f$d;I)[Lc/a/a/a/f$d;
    .locals 2

    const/4 v0, 0x2

    if-nez p0, :cond_0

    new-array p0, v0, [Lc/a/a/a/f$d;

    goto :goto_0

    :cond_0
    array-length v1, p0

    if-ge v1, p1, :cond_1

    array-length p1, p0

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p0, p1}, Lc/a/a/a/a;->b([Lc/a/a/a/f$d;I)[Lc/a/a/a/f$d;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method static a([Lc/a/a/a/f$h;I)[Lc/a/a/a/f$h;
    .locals 2

    new-array v0, p1, [Lc/a/a/a/f$h;

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method static a([Lc/a/a/b;I)[Lc/a/a/b;
    .locals 2

    new-array v0, p1, [Lc/a/a/b;

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method static a([Lc/a/a/k;I)[Lc/a/a/k;
    .locals 2

    new-array v0, p1, [Lc/a/a/k;

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method static a([Lc/a/a/l;I)[Lc/a/a/l;
    .locals 2

    new-array v0, p1, [Lc/a/a/l;

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method static a([Lc/a/a/m;I)[Lc/a/a/m;
    .locals 2

    new-array v0, p1, [Lc/a/a/m;

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method static b(Lc/a/a/a/c;I)V
    .locals 2

    invoke-virtual {p0}, Lc/a/a/a/c;->a()I

    move-result v0

    const v1, 0x7fffff

    and-int/2addr v0, v1

    shl-int/lit8 p1, p1, 0x17

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lc/a/a/a/c;->a(I)V

    return-void
.end method

.method static b([Lc/a/a/a/f$d;I)[Lc/a/a/a/f$d;
    .locals 2

    new-array v0, p1, [Lc/a/a/a/f$d;

    if-eqz p0, :cond_0

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method static c(Lc/a/a/a/c;I)V
    .locals 1

    invoke-virtual {p0}, Lc/a/a/a/c;->a()I

    move-result v0

    and-int/lit16 v0, v0, 0x3fff

    shl-int/lit8 p1, p1, 0xe

    and-int/lit16 p1, p1, -0x4000

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lc/a/a/a/c;->a(I)V

    return-void
.end method

.method static d(Lc/a/a/a/c;I)V
    .locals 2

    invoke-virtual {p0}, Lc/a/a/a/c;->a()I

    move-result v0

    const v1, -0x7fc001

    and-int/2addr v0, v1

    shl-int/lit8 p1, p1, 0xe

    const v1, 0x7fc000

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lc/a/a/a/c;->a(I)V

    return-void
.end method

.method static e(Lc/a/a/a/c;I)V
    .locals 1

    const v0, 0x1ffff

    add-int/2addr p1, v0

    invoke-static {p0, p1}, Lc/a/a/a/a;->c(Lc/a/a/a/c;I)V

    return-void
.end method

.method static f(Lc/a/a/a/c;I)V
    .locals 1

    invoke-virtual {p0}, Lc/a/a/a/c;->a()I

    move-result v0

    and-int/lit8 v0, v0, -0x40

    shl-int/lit8 p1, p1, 0x0

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lc/a/a/a/c;->a(I)V

    return-void
.end method
