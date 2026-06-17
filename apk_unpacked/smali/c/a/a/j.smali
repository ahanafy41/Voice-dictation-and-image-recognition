.class public Lc/a/a/j;
.super Lc/a/a/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/j$a;
    }
.end annotation


# static fields
.field public static M:Lc/a/a/k;


# instance fields
.field public final N:[B

.field public final O:I

.field public final P:I

.field private final Q:I

.field private R:Ljava/lang/String;


# direct methods
.method private constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Lc/a/a/k;-><init>()V

    iput-object p1, p0, Lc/a/a/j;->N:[B

    iput p2, p0, Lc/a/a/j;->O:I

    iput p3, p0, Lc/a/a/j;->P:I

    invoke-static {p1, p2, p3}, Lc/a/a/j;->b([BII)I

    move-result p1

    iput p1, p0, Lc/a/a/j;->Q:I

    return-void
.end method

.method private a(II)D
    .locals 6

    add-int/lit8 v0, p1, 0x40

    if-le p2, v0, :cond_0

    move p2, v0

    :cond_0
    move v0, p1

    :goto_0
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    if-ge v0, p2, :cond_2

    iget-object v3, p0, Lc/a/a/j;->N:[B

    aget-byte v3, v3, v0

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_1

    const/16 v4, 0x45

    if-eq v3, v4, :cond_1

    const/16 v4, 0x65

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    return-wide v1

    :cond_1
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sub-int v0, p2, p1

    new-array v0, v0, [C

    move v3, p1

    :goto_1
    if-ge v3, p2, :cond_3

    sub-int v4, v3, p1

    iget-object v5, p0, Lc/a/a/j;->N:[B

    aget-byte v5, v5, v3

    int-to-char v5, v5

    aput-char v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :try_start_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    return-wide v1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(III)D
    .locals 11

    iget-object v0, p0, Lc/a/a/j;->N:[B

    aget-byte v0, v0, p2

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    :cond_1
    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_1
    if-ge p2, p3, :cond_8

    iget-object v5, p0, Lc/a/a/j;->N:[B

    aget-byte v6, v5, p2

    const/16 v7, 0xa

    const/16 v8, 0x30

    if-le p1, v7, :cond_4

    aget-byte v7, v5, p2

    if-lt v7, v8, :cond_2

    aget-byte v5, v5, p2

    const/16 v7, 0x39

    if-gt v5, v7, :cond_2

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lc/a/a/j;->N:[B

    aget-byte v7, v5, p2

    const/16 v8, 0x41

    if-lt v7, v8, :cond_3

    aget-byte v5, v5, p2

    const/16 v7, 0x5a

    if-gt v5, v7, :cond_3

    const/16 v8, 0x37

    goto :goto_2

    :cond_3
    const/16 v8, 0x57

    :cond_4
    :goto_2
    sub-int/2addr v6, v8

    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    if-ltz v6, :cond_7

    if-lt v6, p1, :cond_5

    goto :goto_3

    :cond_5
    int-to-long v9, p1

    mul-long v3, v3, v9

    int-to-long v5, v6

    add-long/2addr v3, v5

    cmp-long v5, v3, v1

    if-gez v5, :cond_6

    return-wide v7

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    return-wide v7

    :cond_8
    if-eqz v0, :cond_9

    neg-long p1, v3

    long-to-double p1, p1

    goto :goto_4

    :cond_9
    long-to-double p1, v3

    :goto_4
    return-wide p1
.end method

.method public static a([C)I
    .locals 4

    array-length v0, p0

    move v1, v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    aget-char v2, p0, v0

    const/16 v3, 0x80

    if-lt v2, v3, :cond_0

    const/16 v3, 0x800

    if-lt v2, v3, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static a([CI[BI)I
    .locals 6

    const/4 v0, 0x0

    move v1, p3

    :goto_0
    if-ge v0, p1, :cond_2

    aget-char v2, p0, v0

    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    move v1, v3

    goto :goto_1

    :cond_0
    const/16 v4, 0x800

    if-ge v2, v4, :cond_1

    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v5, v2, 0x6

    and-int/lit8 v5, v5, 0x1f

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, p2, v1

    add-int/lit8 v1, v4, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v5, v2, 0xc

    and-int/lit8 v5, v5, 0xf

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    aput-byte v5, p2, v1

    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v5, v2, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v3

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    add-int/lit8 v4, v1, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    move v1, v4

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v1, p3

    return v1
.end method

.method public static a([CII)Lc/a/a/j;
    .locals 4

    new-array v0, p2, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    add-int v3, v2, p1

    aget-char v3, p0, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1, p2}, Lc/a/a/j;->d([BII)Lc/a/a/j;

    move-result-object p0

    return-object p0
.end method

.method public static a([BII)Ljava/lang/String;
    .locals 6

    add-int/2addr p2, p1

    const/4 v0, 0x0

    move v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p0, v1

    const/16 v4, 0xe0

    and-int/2addr v1, v4

    const/16 v5, 0xc0

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_0

    :goto_1
    move v1, v3

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-array v1, v2, [C

    :goto_3
    if-ge p1, p2, :cond_7

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, p1, 0x1

    aget-byte p1, p0, p1

    if-gez p1, :cond_6

    if-lt v3, p2, :cond_3

    goto :goto_5

    :cond_3
    const/16 v4, -0x20

    if-lt p1, v4, :cond_5

    add-int/lit8 v4, v3, 0x1

    if-lt v4, p2, :cond_4

    goto :goto_4

    :cond_4
    and-int/lit8 p1, p1, 0xf

    shl-int/lit8 p1, p1, 0xc

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr p1, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr p1, v4

    goto :goto_5

    :cond_5
    :goto_4
    and-int/lit8 p1, p1, 0x3f

    shl-int/lit8 p1, p1, 0x6

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr p1, v3

    move v3, v4

    :cond_6
    :goto_5
    int-to-char p1, p1

    aput-char p1, v1, v0

    move v0, v2

    move p1, v3

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static a([BI[BII)Z
    .locals 3

    array-length v0, p0

    add-int v1, p1, p4

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    array-length v0, p2

    add-int v1, p3, p4

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_2

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    add-int/lit8 v1, p3, 0x1

    aget-byte p3, p2, p3

    if-eq p1, p3, :cond_1

    return v2

    :cond_1
    move p1, v0

    move p3, v1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v2
.end method

.method public static b([BII)I
    .locals 4

    shr-int/lit8 v0, p2, 0x5

    add-int/lit8 v0, v0, 0x1

    move v1, p2

    :goto_0
    if-lt p2, v0, :cond_0

    shl-int/lit8 v2, v1, 0x5

    shr-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    add-int v3, p1, p2

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    sub-int/2addr p2, v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static c([BII)Lc/a/a/j;
    .locals 4

    const/16 v0, 0x20

    if-le p2, v0, :cond_0

    invoke-static {p0, p1, p2}, Lc/a/a/j;->f([BII)Lc/a/a/j;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2}, Lc/a/a/j;->b([BII)I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    invoke-static {}, Lc/a/a/j$a;->a()[Lc/a/a/j;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget v3, v2, Lc/a/a/j;->Q:I

    if-ne v3, v0, :cond_1

    invoke-direct {v2, p0, p1, p2}, Lc/a/a/j;->e([BII)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v2

    :cond_1
    invoke-static {p0, p1, p2}, Lc/a/a/j;->f([BII)Lc/a/a/j;

    move-result-object p0

    invoke-static {}, Lc/a/a/j$a;->a()[Lc/a/a/j;

    move-result-object p1

    aput-object p0, p1, v1

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Lc/a/a/j;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lc/a/a/j;->a([C)I

    move-result v0

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lc/a/a/j;->a([CI[BI)I

    array-length p0, v0

    invoke-static {v0, v2, p0}, Lc/a/a/j;->d([BII)Lc/a/a/j;

    move-result-object p0

    return-object p0
.end method

.method public static d([BII)Lc/a/a/j;
    .locals 4

    array-length v0, p0

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    new-instance v0, Lc/a/a/j;

    invoke-direct {v0, p0, p1, p2}, Lc/a/a/j;-><init>([BII)V

    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lc/a/a/j;->b([BII)I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    invoke-static {}, Lc/a/a/j$a;->a()[Lc/a/a/j;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget v3, v2, Lc/a/a/j;->Q:I

    if-ne v3, v0, :cond_1

    invoke-direct {v2, p0, p1, p2}, Lc/a/a/j;->e([BII)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v2

    :cond_1
    new-instance v0, Lc/a/a/j;

    invoke-direct {v0, p0, p1, p2}, Lc/a/a/j;-><init>([BII)V

    invoke-static {}, Lc/a/a/j$a;->a()[Lc/a/a/j;

    move-result-object p0

    aput-object v0, p0, v1

    return-object v0
.end method

.method private e([BII)Z
    .locals 2

    iget v0, p0, Lc/a/a/j;->P:I

    if-ne v0, p3, :cond_0

    iget-object v0, p0, Lc/a/a/j;->N:[B

    iget v1, p0, Lc/a/a/j;->O:I

    invoke-static {v0, v1, p1, p2, p3}, Lc/a/a/j;->a([BI[BII)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static f([BII)Lc/a/a/j;
    .locals 2

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lc/a/a/j;

    invoke-direct {p0, v0, v1, p2}, Lc/a/a/j;-><init>([BII)V

    return-object p0
.end method

.method private o()D
    .locals 3

    invoke-virtual {p0}, Lc/a/a/j;->n()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lc/a/a/k;->d()Lc/a/a/k;

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public a(D)Lc/a/a/k;
    .locals 2

    invoke-direct {p0}, Lc/a/a/j;->o()D

    move-result-wide v0

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Lc/a/a/k;->h(D)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/a/a/k;)Lc/a/a/k;
    .locals 3

    invoke-virtual {p0}, Lc/a/a/j;->n()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lc/a/a/k;->p:Lc/a/a/j;

    invoke-virtual {p0, v0, p1}, Lc/a/a/k;->a(Lc/a/a/k;Lc/a/a/k;)Lc/a/a/k;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->a(D)Lc/a/a/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public a(Lc/a/a/j;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    iget v1, p1, Lc/a/a/j;->P:I

    iget v2, p0, Lc/a/a/j;->P:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    iget-object v1, p1, Lc/a/a/j;->N:[B

    iget-object v2, p0, Lc/a/a/j;->N:[B

    if-ne v1, v2, :cond_2

    iget v1, p1, Lc/a/a/j;->O:I

    iget v2, p0, Lc/a/a/j;->O:I

    if-ne v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lc/a/a/j;->hashCode()I

    move-result v1

    invoke-virtual {p0}, Lc/a/a/j;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lc/a/a/j;->P:I

    if-ge v1, v2, :cond_5

    iget-object v2, p1, Lc/a/a/j;->N:[B

    iget v4, p1, Lc/a/a/j;->O:I

    add-int/2addr v4, v1

    aget-byte v2, v2, v4

    iget-object v4, p0, Lc/a/a/j;->N:[B

    iget v5, p0, Lc/a/a/j;->O:I

    add-int/2addr v5, v1

    aget-byte v4, v4, v5

    if-eq v2, v4, :cond_4

    return v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public b(D)Lc/a/a/k;
    .locals 2

    invoke-direct {p0}, Lc/a/a/j;->o()D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lc/a/a/e;->a(DD)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public c(D)Lc/a/a/k;
    .locals 2

    invoke-direct {p0}, Lc/a/a/j;->o()D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lc/a/a/e;->b(DD)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lc/a/a/j;->R:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/a/a/j;->N:[B

    iget v1, p0, Lc/a/a/j;->O:I

    iget v2, p0, Lc/a/a/j;->P:I

    invoke-static {v0, v1, v2}, Lc/a/a/j;->a([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/j;->R:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lc/a/a/j;->R:Ljava/lang/String;

    return-object v0
.end method

.method public d(D)Lc/a/a/k;
    .locals 2

    invoke-direct {p0}, Lc/a/a/j;->o()D

    move-result-wide v0

    mul-double v0, v0, p1

    invoke-static {v0, v1}, Lc/a/a/k;->h(D)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public e(D)Lc/a/a/k;
    .locals 2

    invoke-direct {p0}, Lc/a/a/j;->o()D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lc/a/a/k;->h(D)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lc/a/a/j;

    if-eqz v0, :cond_0

    check-cast p1, Lc/a/a/j;

    invoke-virtual {p0, p1}, Lc/a/a/j;->a(Lc/a/a/j;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f(Lc/a/a/k;)Lc/a/a/k;
    .locals 3

    invoke-virtual {p0}, Lc/a/a/j;->n()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lc/a/a/k;->r:Lc/a/a/j;

    invoke-virtual {p0, v0, p1}, Lc/a/a/k;->a(Lc/a/a/k;Lc/a/a/k;)Lc/a/a/k;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->b(D)Lc/a/a/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public g()Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/j;->M:Lc/a/a/k;

    return-object v0
.end method

.method public g(D)Lc/a/a/k;
    .locals 2

    invoke-direct {p0}, Lc/a/a/j;->o()D

    move-result-wide v0

    sub-double/2addr p1, v0

    invoke-static {p1, p2}, Lc/a/a/k;->h(D)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public g(Lc/a/a/k;)Z
    .locals 0

    invoke-virtual {p1, p0}, Lc/a/a/k;->a(Lc/a/a/j;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lc/a/a/j;->Q:I

    return v0
.end method

.method public i()Lc/a/a/k;
    .locals 3

    invoke-virtual {p0}, Lc/a/a/j;->n()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-super {p0}, Lc/a/a/k;->i()Lc/a/a/k;

    move-result-object v0

    goto :goto_0

    :cond_0
    neg-double v0, v0

    invoke-static {v0, v1}, Lc/a/a/k;->h(D)Lc/a/a/i;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public j()Lc/a/a/j;
    .locals 0

    return-object p0
.end method

.method public j(Lc/a/a/k;)Lc/a/a/k;
    .locals 3

    invoke-virtual {p0}, Lc/a/a/j;->n()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lc/a/a/k;->u:Lc/a/a/j;

    invoke-virtual {p0, v0, p1}, Lc/a/a/k;->a(Lc/a/a/k;Lc/a/a/k;)Lc/a/a/k;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->c(D)Lc/a/a/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public k()D
    .locals 3

    invoke-virtual {p0}, Lc/a/a/j;->n()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method public k(Lc/a/a/k;)Lc/a/a/k;
    .locals 3

    invoke-virtual {p0}, Lc/a/a/j;->n()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lc/a/a/k;->s:Lc/a/a/j;

    invoke-virtual {p0, v0, p1}, Lc/a/a/k;->a(Lc/a/a/k;Lc/a/a/k;)Lc/a/a/k;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->d(D)Lc/a/a/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public l(Lc/a/a/k;)Lc/a/a/k;
    .locals 3

    invoke-virtual {p0}, Lc/a/a/j;->n()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lc/a/a/k;->t:Lc/a/a/j;

    invoke-virtual {p0, v0, p1}, Lc/a/a/k;->a(Lc/a/a/k;Lc/a/a/k;)Lc/a/a/k;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->e(D)Lc/a/a/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public l()Ljava/lang/String;
    .locals 1

    const-string v0, "string"

    return-object v0
.end method

.method public m()I
    .locals 6

    iget v0, p0, Lc/a/a/j;->O:I

    iget v1, p0, Lc/a/a/j;->P:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v3, p0, Lc/a/a/j;->N:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    const/16 v3, 0xe0

    and-int/2addr v0, v3

    const/16 v5, 0xc0

    if-eq v0, v5, :cond_1

    if-eq v0, v3, :cond_0

    :goto_1
    move v0, v4

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public n()D
    .locals 6

    iget v0, p0, Lc/a/a/j;->O:I

    iget v1, p0, Lc/a/a/j;->P:I

    add-int/2addr v1, v0

    :goto_0
    const/16 v2, 0x20

    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lc/a/a/j;->N:[B

    aget-byte v3, v3, v0

    if-ne v3, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lc/a/a/j;->N:[B

    add-int/lit8 v4, v1, -0x1

    aget-byte v3, v3, v4

    if-ne v3, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    if-lt v0, v1, :cond_2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_2
    iget-object v2, p0, Lc/a/a/j;->N:[B

    aget-byte v3, v2, v0

    const/16 v4, 0x30

    if-ne v3, v4, :cond_4

    add-int/lit8 v3, v0, 0x1

    if-ge v3, v1, :cond_4

    aget-byte v4, v2, v3

    const/16 v5, 0x78

    if-eq v4, v5, :cond_3

    aget-byte v2, v2, v3

    const/16 v3, 0x58

    if-ne v2, v3, :cond_4

    :cond_3
    const/16 v2, 0x10

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v2, v0, v1}, Lc/a/a/j;->a(III)D

    move-result-wide v0

    return-wide v0

    :cond_4
    const/16 v2, 0xa

    invoke-direct {p0, v2, v0, v1}, Lc/a/a/j;->a(III)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v0, v1}, Lc/a/a/j;->a(II)D

    move-result-wide v2

    :cond_5
    return-wide v2
.end method

.method public p(Lc/a/a/k;)Lc/a/a/k;
    .locals 3

    invoke-virtual {p0}, Lc/a/a/j;->n()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lc/a/a/k;->q:Lc/a/a/j;

    invoke-virtual {p0, v0, p1}, Lc/a/a/k;->a(Lc/a/a/k;Lc/a/a/k;)Lc/a/a/k;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->g(D)Lc/a/a/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method
