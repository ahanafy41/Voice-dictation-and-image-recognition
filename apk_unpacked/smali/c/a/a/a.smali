.class public final Lc/a/a/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:[B


# instance fields
.field private b:[B

.field private c:I

.field private d:I

.field private e:Lc/a/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lc/a/a/a;->a:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lc/a/a/a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lc/a/a/a;->b:[B

    const/4 p1, 0x0

    iput p1, p0, Lc/a/a/a;->c:I

    iput p1, p0, Lc/a/a/a;->d:I

    const/4 p1, 0x0

    iput-object p1, p0, Lc/a/a/a;->e:Lc/a/a/k;

    return-void
.end method

.method private final b(II)V
    .locals 3

    iget-object v0, p0, Lc/a/a/a;->b:[B

    array-length v1, v0

    if-eq p1, v1, :cond_0

    new-array p1, p1, [B

    iget v1, p0, Lc/a/a/a;->d:I

    iget v2, p0, Lc/a/a/a;->c:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lc/a/a/a;->b:[B

    iput p2, p0, Lc/a/a/a;->d:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lc/a/a/a;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1}, Lc/a/a/j;->a([C)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lc/a/a/a;->a(II)V

    array-length v1, p1

    iget-object v2, p0, Lc/a/a/a;->b:[B

    iget v3, p0, Lc/a/a/a;->d:I

    iget v4, p0, Lc/a/a/a;->c:I

    add-int/2addr v3, v4

    invoke-static {p1, v1, v2, v3}, Lc/a/a/j;->a([CI[BI)I

    iget p1, p0, Lc/a/a/a;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Lc/a/a/a;->c:I

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lc/a/a/a;->c()Lc/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/k;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(II)V
    .locals 3

    iget-object v0, p0, Lc/a/a/a;->e:Lc/a/a/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/a/a/k;->j()Lc/a/a/j;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lc/a/a/a;->e:Lc/a/a/k;

    iget v1, v0, Lc/a/a/j;->P:I

    iput v1, p0, Lc/a/a/a;->c:I

    iput p1, p0, Lc/a/a/a;->d:I

    iget v1, p0, Lc/a/a/a;->c:I

    add-int/2addr p1, v1

    add-int/2addr p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lc/a/a/a;->b:[B

    iget-object p1, v0, Lc/a/a/j;->N:[B

    iget p2, v0, Lc/a/a/j;->O:I

    iget-object v0, p0, Lc/a/a/a;->b:[B

    iget v2, p0, Lc/a/a/a;->d:I

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_0
    iget v0, p0, Lc/a/a/a;->d:I

    iget v1, p0, Lc/a/a/a;->c:I

    add-int/2addr v1, v0

    add-int/2addr v1, p2

    iget-object v2, p0, Lc/a/a/a;->b:[B

    array-length v2, v2

    if-gt v1, v2, :cond_1

    if-ge v0, p1, :cond_5

    :cond_1
    iget v0, p0, Lc/a/a/a;->c:I

    add-int v1, p1, v0

    add-int/2addr v1, p2

    const/16 v2, 0x20

    if-ge v1, v2, :cond_2

    const/16 v1, 0x20

    goto :goto_0

    :cond_2
    mul-int/lit8 v2, v0, 0x2

    if-ge v1, v2, :cond_3

    mul-int/lit8 v1, v0, 0x2

    :cond_3
    :goto_0
    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    iget p1, p0, Lc/a/a/a;->c:I

    sub-int p1, v1, p1

    sub-int/2addr p1, p2

    :goto_1
    invoke-direct {p0, v1, p1}, Lc/a/a/a;->b(II)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final b()Lc/a/a/j;
    .locals 3

    iget v0, p0, Lc/a/a/a;->c:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lc/a/a/a;->b(II)V

    iget-object v0, p0, Lc/a/a/a;->b:[B

    iget v1, p0, Lc/a/a/a;->d:I

    iget v2, p0, Lc/a/a/a;->c:I

    invoke-static {v0, v1, v2}, Lc/a/a/j;->c([BII)Lc/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public c()Lc/a/a/k;
    .locals 1

    iget-object v0, p0, Lc/a/a/a;->e:Lc/a/a/k;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lc/a/a/a;->b()Lc/a/a/j;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lc/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
