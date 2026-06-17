.class public Lb/b/a/b/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field protected b:[C

.field protected c:I

.field protected d:I

.field protected e:I

.field private f:I

.field private g:Lb/b/a/b/u;

.field private h:Lb/b/a/b/x;

.field protected i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/b/a/b/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x33

    new-array v0, v0, [C

    iput-object v0, p0, Lb/b/a/b/t;->b:[C

    iget-object v0, p0, Lb/b/a/b/t;->b:[C

    const/16 v1, 0x32

    const v2, 0xffff

    aput-char v2, v0, v1

    const/4 v0, 0x1

    iput v0, p0, Lb/b/a/b/t;->f:I

    const/4 v2, 0x0

    iput v2, p0, Lb/b/a/b/t;->c:I

    iput v1, p0, Lb/b/a/b/t;->d:I

    iput v0, p0, Lb/b/a/b/t;->e:I

    new-instance v0, Lb/b/a/b/u;

    invoke-direct {v0}, Lb/b/a/b/u;-><init>()V

    iput-object v0, p0, Lb/b/a/b/t;->g:Lb/b/a/b/u;

    new-instance v0, Lb/b/a/b/x;

    invoke-direct {v0, p0}, Lb/b/a/b/x;-><init>(Lb/b/a/b/t;)V

    iput-object v0, p0, Lb/b/a/b/t;->h:Lb/b/a/b/x;

    return-void
.end method

.method private a(II)I
    .locals 4

    const/4 v0, 0x0

    move v0, p1

    const/4 v1, 0x0

    :goto_0
    add-int v2, p1, p2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lb/b/a/b/t;->b:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private a(III)I
    .locals 2

    invoke-virtual {p0, p3}, Lb/b/a/b/t;->h(I)I

    move-result v0

    invoke-virtual {p0, p3}, Lb/b/a/b/t;->g(I)Z

    move-result p3

    const-string v1, "findCharOffsetBackward: Invalid startingOffset given"

    invoke-static {p3, v1}, Lb/b/a/b/v;->a(ZLjava/lang/String;)V

    :cond_0
    :goto_0
    if-ge p2, p1, :cond_2

    iget-object p3, p0, Lb/b/a/b/t;->b:[C

    array-length v1, p3

    if-ge v0, v1, :cond_2

    aget-char p3, p3, v0

    const/16 v1, 0xa

    if-ne p3, v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget p3, p0, Lb/b/a/b/t;->c:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lb/b/a/b/t;->d:I

    goto :goto_0

    :cond_2
    if-eq p2, p1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    invoke-virtual {p0, v0}, Lb/b/a/b/t;->j(I)I

    move-result p1

    return p1
.end method

.method private b(III)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p3}, Lb/b/a/b/t;->g(I)Z

    move-result v1

    const-string v2, "findCharOffsetBackward: Invalid startOffset given"

    invoke-static {v1, v2}, Lb/b/a/b/v;->a(ZLjava/lang/String;)V

    invoke-virtual {p0, p3}, Lb/b/a/b/t;->h(I)I

    move-result p3

    :cond_1
    :goto_0
    add-int/lit8 v1, p1, -0x1

    const/4 v2, -0x1

    if-le p2, v1, :cond_3

    if-ltz p3, :cond_3

    iget v1, p0, Lb/b/a/b/t;->d:I

    if-ne p3, v1, :cond_2

    iget p3, p0, Lb/b/a/b/t;->c:I

    :cond_2
    add-int/2addr p3, v2

    iget-object v1, p0, Lb/b/a/b/t;->b:[C

    aget-char v1, v1, p3

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    if-ltz p3, :cond_4

    invoke-virtual {p0, p3}, Lb/b/a/b/t;->j(I)I

    move-result p1

    add-int/lit8 v2, p1, 0x1

    goto :goto_1

    :cond_4
    const-string p1, "findCharOffsetBackward: Invalid cache entry or line arguments"

    invoke-static {v0, p1}, Lb/b/a/b/v;->a(ZLjava/lang/String;)V

    :goto_1
    return v2
.end method

.method private b(II)V
    .locals 3

    iget-object v0, p0, Lb/b/a/b/t;->i:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lb/b/a/b/t;->n(I)Lb/b/a/b/q;

    move-result-object v0

    iget-object v1, p0, Lb/b/a/b/t;->i:Ljava/util/List;

    invoke-virtual {v0}, Lb/b/a/b/q;->a()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/a/b/q;

    invoke-virtual {v0}, Lb/b/a/b/q;->a()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lb/b/a/b/q;->a(I)V

    iget-object v0, p0, Lb/b/a/b/t;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lb/b/a/b/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-le v2, p1, :cond_4

    add-int/2addr v2, p2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    :cond_4
    iget v2, v1, Landroid/graphics/Rect;->right:I

    if-le v2, p1, :cond_2

    add-int/2addr v2, p2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method private c(II)V
    .locals 4

    invoke-virtual {p0}, Lb/b/a/b/t;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/b/a/b/t;->clearSpans()V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lb/b/a/b/t;->o(I)Lb/b/a/b/q;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    iget-object v2, p0, Lb/b/a/b/t;->i:Ljava/util/List;

    invoke-virtual {v0}, Lb/b/a/b/q;->a()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/a/b/q;

    invoke-virtual {v2}, Lb/b/a/b/q;->a()I

    move-result v3

    if-le v3, v1, :cond_1

    invoke-virtual {v2}, Lb/b/a/b/q;->a()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lb/b/a/b/q;->a(I)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lb/b/a/b/t;->i:Ljava/util/List;

    invoke-virtual {v0}, Lb/b/a/b/q;->a()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lb/b/a/b/q;->b()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lb/b/a/b/t;->i:Ljava/util/List;

    invoke-virtual {v0}, Lb/b/a/b/q;->a()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/a/b/q;

    invoke-virtual {v2}, Lb/b/a/b/q;->a()I

    move-result v3

    if-le v3, v1, :cond_3

    invoke-virtual {v2}, Lb/b/a/b/q;->a()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lb/b/a/b/q;->a(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lb/b/a/b/t;->i:Ljava/util/List;

    invoke-virtual {v0}, Lb/b/a/b/q;->a()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_0
    sub-int/2addr p2, v1

    if-lez p2, :cond_5

    invoke-virtual {v0}, Lb/b/a/b/q;->a()I

    move-result v0

    :goto_1
    if-ltz v0, :cond_5

    iget-object v1, p0, Lb/b/a/b/t;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/a/b/q;

    invoke-virtual {v1}, Lb/b/a/b/q;->a()I

    move-result v2

    if-le p2, v2, :cond_4

    sub-int/2addr p2, v2

    iget-object v1, p0, Lb/b/a/b/t;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lb/b/a/b/q;->a()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {v1, v0}, Lb/b/a/b/q;->a(I)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lb/b/a/b/t;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lb/b/a/b/t;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-le v2, p1, :cond_9

    sub-int/2addr v2, p2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    :cond_9
    iget v2, v1, Landroid/graphics/Rect;->right:I

    if-le v2, p1, :cond_7

    sub-int/2addr v2, p2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_a
    :goto_4
    return-void
.end method

.method public static i(I)I
    .locals 4

    add-int/lit8 p0, p0, 0x32

    add-int/lit8 p0, p0, 0x1

    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    long-to-int p0, v0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private n(I)Lb/b/a/b/q;
    .locals 5

    iget-object v0, p0, Lb/b/a/b/t;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lb/b/a/b/t;->i:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/a/b/q;

    invoke-virtual {v4}, Lb/b/a/b/q;->a()I

    move-result v4

    add-int/2addr v3, v4

    if-lt v3, p1, :cond_0

    new-instance p1, Lb/b/a/b/q;

    sub-int/2addr v3, v4

    invoke-direct {p1, v2, v3}, Lb/b/a/b/q;-><init>(II)V

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lb/b/a/b/q;

    invoke-direct {p1, v1, v1}, Lb/b/a/b/q;-><init>(II)V

    return-object p1
.end method

.method private o(I)Lb/b/a/b/q;
    .locals 5

    iget-object v0, p0, Lb/b/a/b/t;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lb/b/a/b/t;->i:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/a/b/q;

    invoke-virtual {v4}, Lb/b/a/b/q;->a()I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, p1, :cond_0

    new-instance p1, Lb/b/a/b/q;

    sub-int/2addr v3, v4

    invoke-direct {p1, v2, v3}, Lb/b/a/b/q;-><init>(II)V

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lb/b/a/b/q;

    invoke-direct {p1, v1, v1}, Lb/b/a/b/q;-><init>(II)V

    return-object p1
.end method


# virtual methods
.method public declared-synchronized a(I)I
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lb/b/a/b/t;->g(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lb/b/a/b/t;->g:Lb/b/a/b/u;

    invoke-virtual {v0, p1}, Lb/b/a/b/u;->a(I)Lb/b/a/b/q;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/b/q;->a()I

    move-result v2

    invoke-virtual {v0}, Lb/b/a/b/q;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lb/b/a/b/t;->h(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lb/b/a/b/t;->h(I)I

    move-result p1

    const/16 v3, 0xa

    if-le p1, v0, :cond_3

    move v5, v2

    const/4 v2, -0x1

    const/4 v4, -0x1

    :cond_1
    :goto_0
    if-ge v0, p1, :cond_7

    iget-object v6, p0, Lb/b/a/b/t;->b:[C

    array-length v6, v6

    if-ge v0, v6, :cond_7

    iget-object v6, p0, Lb/b/a/b/t;->b:[C

    aget-char v6, v6, v0

    if-ne v6, v3, :cond_2

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {p0, v0}, Lb/b/a/b/t;->j(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move v5, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget v6, p0, Lb/b/a/b/t;->c:I

    if-ne v0, v6, :cond_1

    iget v0, p0, Lb/b/a/b/t;->d:I

    goto :goto_0

    :cond_3
    if-ge p1, v0, :cond_6

    move v5, v2

    const/4 v2, -0x1

    const/4 v4, -0x1

    :cond_4
    :goto_1
    if-le v0, p1, :cond_7

    if-lez v0, :cond_7

    iget v6, p0, Lb/b/a/b/t;->d:I

    if-ne v0, v6, :cond_5

    iget v0, p0, Lb/b/a/b/t;->c:I

    :cond_5
    add-int/2addr v0, v1

    iget-object v6, p0, Lb/b/a/b/t;->b:[C

    aget-char v6, v6, v0

    if-ne v6, v3, :cond_4

    invoke-virtual {p0, v0}, Lb/b/a/b/t;->j(I)I

    move-result v2

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v2, v5, -0x1

    move v7, v5

    move v5, v2

    move v2, v7

    goto :goto_1

    :cond_6
    move v5, v2

    const/4 v2, -0x1

    const/4 v4, -0x1

    :cond_7
    if-ne v0, p1, :cond_9

    if-eq v2, v1, :cond_8

    iget-object p1, p0, Lb/b/a/b/t;->g:Lb/b/a/b/u;

    invoke-virtual {p1, v2, v4}, Lb/b/a/b/u;->a(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    monitor-exit p0

    return v5

    :cond_9
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lb/b/a/b/t;->h:Lb/b/a/b/x;

    invoke-virtual {v0}, Lb/b/a/b/x;->a()V

    return-void
.end method

.method public declared-synchronized a(IIJZ)V
    .locals 0

    monitor-enter p0

    if-eqz p5, :cond_0

    :try_start_0
    iget-object p5, p0, Lb/b/a/b/t;->h:Lb/b/a/b/x;

    invoke-virtual {p5, p1, p2, p3, p4}, Lb/b/a/b/x;->a(IIJ)V

    :cond_0
    add-int p3, p1, p2

    iget p4, p0, Lb/b/a/b/t;->c:I

    if-eq p3, p4, :cond_2

    invoke-virtual {p0, p3}, Lb/b/a/b/t;->f(I)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p0, p3}, Lb/b/a/b/t;->k(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lb/b/a/b/t;->c()I

    move-result p4

    add-int/2addr p3, p4

    invoke-virtual {p0, p3}, Lb/b/a/b/t;->l(I)V

    :cond_2
    :goto_0
    const/4 p3, 0x0

    :goto_1
    if-ge p3, p2, :cond_4

    iget p4, p0, Lb/b/a/b/t;->c:I

    add-int/lit8 p4, p4, -0x1

    iput p4, p0, Lb/b/a/b/t;->c:I

    iget-object p4, p0, Lb/b/a/b/t;->b:[C

    iget p5, p0, Lb/b/a/b/t;->c:I

    aget-char p4, p4, p5

    const/16 p5, 0xa

    if-ne p4, p5, :cond_3

    iget p4, p0, Lb/b/a/b/t;->e:I

    add-int/lit8 p4, p4, -0x1

    iput p4, p0, Lb/b/a/b/t;->e:I

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    iget-object p3, p0, Lb/b/a/b/t;->g:Lb/b/a/b/u;

    invoke-virtual {p3, p1}, Lb/b/a/b/u;->c(I)V

    invoke-direct {p0, p1, p2}, Lb/b/a/b/t;->c(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lb/b/a/b/t;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/b/a/b/q;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lb/b/a/b/t;->i:Ljava/util/List;

    return-void
.end method

.method public declared-synchronized a([CII)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lb/b/a/b/t;->b:[C

    invoke-virtual {p0, p2}, Lb/b/a/b/t;->e(I)V

    iput p3, p0, Lb/b/a/b/t;->e:I

    const/4 p1, 0x1

    iput p1, p0, Lb/b/a/b/t;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a([CIJZ)V
    .locals 1

    monitor-enter p0

    if-eqz p5, :cond_0

    :try_start_0
    iget-object p5, p0, Lb/b/a/b/t;->h:Lb/b/a/b/x;

    array-length v0, p1

    invoke-virtual {p5, p2, v0, p3, p4}, Lb/b/a/b/x;->b(IIJ)V

    :cond_0
    invoke-virtual {p0, p2}, Lb/b/a/b/t;->h(I)I

    move-result p3

    iget p4, p0, Lb/b/a/b/t;->d:I

    if-eq p3, p4, :cond_2

    invoke-virtual {p0, p3}, Lb/b/a/b/t;->f(I)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p0, p3}, Lb/b/a/b/t;->k(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3}, Lb/b/a/b/t;->l(I)V

    :cond_2
    :goto_0
    array-length p3, p1

    invoke-virtual {p0}, Lb/b/a/b/t;->c()I

    move-result p4

    if-lt p3, p4, :cond_3

    array-length p3, p1

    invoke-virtual {p0}, Lb/b/a/b/t;->c()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0, p3}, Lb/b/a/b/t;->d(I)V

    :cond_3
    const/4 p3, 0x0

    :goto_1
    array-length p4, p1

    if-ge p3, p4, :cond_5

    aget-char p4, p1, p3

    const/16 p5, 0xa

    if-ne p4, p5, :cond_4

    iget p4, p0, Lb/b/a/b/t;->e:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lb/b/a/b/t;->e:I

    :cond_4
    iget-object p4, p0, Lb/b/a/b/t;->b:[C

    iget p5, p0, Lb/b/a/b/t;->c:I

    aget-char v0, p1, p3

    aput-char v0, p4, p5

    iget p4, p0, Lb/b/a/b/t;->c:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lb/b/a/b/t;->c:I

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    iget-object p3, p0, Lb/b/a/b/t;->g:Lb/b/a/b/u;

    invoke-virtual {p3, p2}, Lb/b/a/b/u;->c(I)V

    array-length p1, p1

    invoke-direct {p0, p2, p1}, Lb/b/a/b/t;->b(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lb/b/a/b/t;->h:Lb/b/a/b/x;

    invoke-virtual {v0}, Lb/b/a/b/x;->d()V

    return-void
.end method

.method b(I)[C
    .locals 4

    new-array v0, p1, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lb/b/a/b/t;->b:[C

    iget v3, p0, Lb/b/a/b/t;->c:I

    add-int/2addr v3, v1

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected final c()I
    .locals 2

    iget v0, p0, Lb/b/a/b/t;->d:I

    iget v1, p0, Lb/b/a/b/t;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized c(I)I
    .locals 2

    monitor-enter p0

    if-gez p1, :cond_0

    const/4 p1, -0x1

    monitor-exit p0

    return p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lb/b/a/b/t;->g:Lb/b/a/b/u;

    invoke-virtual {v0, p1}, Lb/b/a/b/u;->b(I)Lb/b/a/b/q;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/b/q;->a()I

    move-result v1

    invoke-virtual {v0}, Lb/b/a/b/q;->b()I

    move-result v0

    if-le p1, v1, :cond_1

    invoke-direct {p0, p1, v1, v0}, Lb/b/a/b/t;->a(III)I

    move-result v0

    goto :goto_0

    :cond_1
    if-ge p1, v1, :cond_2

    invoke-direct {p0, p1, v1, v0}, Lb/b/a/b/t;->b(III)I

    move-result v0

    :cond_2
    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lb/b/a/b/t;->g:Lb/b/a/b/u;

    invoke-virtual {v1, p1, v0}, Lb/b/a/b/u;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized charAt(I)C
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/b/a/b/t;->b:[C

    invoke-virtual {p0, p1}, Lb/b/a/b/t;->h(I)I

    move-result p1

    aget-char p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clearSpans()V
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lb/b/a/b/t;->i:Ljava/util/List;

    iget-object v0, p0, Lb/b/a/b/t;->i:Ljava/util/List;

    new-instance v1, Lb/b/a/b/q;

    invoke-virtual {p0}, Lb/b/a/b/t;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lb/b/a/b/q;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/b/t;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected d(I)V
    .locals 4

    iget v0, p0, Lb/b/a/b/t;->f:I

    mul-int/lit8 v0, v0, 0x32

    add-int/2addr p1, v0

    iget-object v0, p0, Lb/b/a/b/t;->b:[C

    array-length v0, v0

    add-int/2addr v0, p1

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lb/b/a/b/t;->c:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lb/b/a/b/t;->b:[C

    aget-char v2, v2, v1

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lb/b/a/b/t;->d:I

    :goto_1
    iget-object v2, p0, Lb/b/a/b/t;->b:[C

    array-length v3, v2

    if-ge v1, v3, :cond_1

    add-int v3, v1, p1

    aget-char v2, v2, v1

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget v1, p0, Lb/b/a/b/t;->d:I

    add-int/2addr v1, p1

    iput v1, p0, Lb/b/a/b/t;->d:I

    iput-object v0, p0, Lb/b/a/b/t;->b:[C

    iget p1, p0, Lb/b/a/b/t;->f:I

    shl-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/b/a/b/t;->f:I

    return-void
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/b/a/b/q;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/b/t;->i:Ljava/util/List;

    return-object v0
.end method

.method protected e(I)V
    .locals 4

    iget-object v0, p0, Lb/b/a/b/t;->b:[C

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v1, -0x1

    const v3, 0xffff

    aput-char v3, v0, v1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    iget-object v0, p0, Lb/b/a/b/t;->b:[C

    add-int/lit8 v1, v2, -0x1

    add-int/lit8 v3, p1, -0x1

    aget-char p1, v0, p1

    aput-char p1, v0, v2

    move v2, v1

    move p1, v3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lb/b/a/b/t;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lb/b/a/b/t;->d:I

    return-void
.end method

.method public final declared-synchronized f()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/b/a/b/t;->b:[C

    array-length v0, v0

    invoke-virtual {p0}, Lb/b/a/b/t;->c()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final f(I)Z
    .locals 1

    iget v0, p0, Lb/b/a/b/t;->c:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lb/b/a/b/t;->h:Lb/b/a/b/x;

    invoke-virtual {v0}, Lb/b/a/b/x;->e()Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized g(I)Z
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lb/b/a/b/t;->f()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lb/b/a/b/t;->h:Lb/b/a/b/x;

    invoke-virtual {v0}, Lb/b/a/b/x;->f()I

    move-result v0

    return v0
.end method

.method protected final h(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lb/b/a/b/t;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Lb/b/a/b/t;->c()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lb/b/a/b/t;->h:Lb/b/a/b/x;

    invoke-virtual {v0}, Lb/b/a/b/x;->g()I

    move-result v0

    return v0
.end method

.method protected final j(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lb/b/a/b/t;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Lb/b/a/b/t;->c()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method protected final k(I)V
    .locals 3

    :goto_0
    iget v0, p0, Lb/b/a/b/t;->c:I

    if-le v0, p1, :cond_0

    iget v1, p0, Lb/b/a/b/t;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lb/b/a/b/t;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lb/b/a/b/t;->c:I

    iget-object v0, p0, Lb/b/a/b/t;->b:[C

    iget v1, p0, Lb/b/a/b/t;->d:I

    iget v2, p0, Lb/b/a/b/t;->c:I

    aget-char v2, v0, v2

    aput-char v2, v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final l(I)V
    .locals 4

    :goto_0
    iget v0, p0, Lb/b/a/b/t;->d:I

    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lb/b/a/b/t;->b:[C

    iget v2, p0, Lb/b/a/b/t;->c:I

    aget-char v3, v1, v0

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lb/b/a/b/t;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/b/a/b/t;->d:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public length()I
    .locals 1

    invoke-virtual {p0}, Lb/b/a/b/t;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method declared-synchronized m(I)V
    .locals 3

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Lb/b/a/b/t;->c:I

    invoke-direct {p0, v0, p1}, Lb/b/a/b/t;->b(II)V

    iget v0, p0, Lb/b/a/b/t;->e:I

    iget v1, p0, Lb/b/a/b/t;->c:I

    invoke-direct {p0, v1, p1}, Lb/b/a/b/t;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lb/b/a/b/t;->e:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lb/b/a/b/t;->c:I

    rsub-int/lit8 v1, p1, 0x0

    invoke-direct {p0, v0, v1}, Lb/b/a/b/t;->c(II)V

    iget v0, p0, Lb/b/a/b/t;->e:I

    iget v1, p0, Lb/b/a/b/t;->c:I

    add-int/2addr v1, p1

    neg-int v2, p1

    invoke-direct {p0, v1, v2}, Lb/b/a/b/t;->a(II)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lb/b/a/b/t;->e:I

    :goto_0
    iget v0, p0, Lb/b/a/b/t;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lb/b/a/b/t;->c:I

    iget-object p1, p0, Lb/b/a/b/t;->g:Lb/b/a/b/u;

    iget v0, p0, Lb/b/a/b/t;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lb/b/a/b/t;->j(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lb/b/a/b/u;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized subSequence(II)Ljava/lang/CharSequence;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lb/b/a/b/t;->g(I)Z

    move-result v0

    if-eqz v0, :cond_4

    if-gtz p2, :cond_0

    goto :goto_1

    :cond_0
    add-int v0, p1, p2

    invoke-virtual {p0}, Lb/b/a/b/t;->f()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lb/b/a/b/t;->f()I

    move-result p2

    sub-int/2addr p2, p1

    :cond_1
    invoke-virtual {p0, p1}, Lb/b/a/b/t;->h(I)I

    move-result p1

    new-array v0, p2, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_3

    iget-object v2, p0, Lb/b/a/b/t;->b:[C

    aget-char v2, v2, p1

    aput-char v2, v0, v1

    add-int/lit8 p1, p1, 0x1

    iget v2, p0, Lb/b/a/b/t;->c:I

    if-ne p1, v2, :cond_2

    iget p1, p0, Lb/b/a/b/t;->d:I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    :goto_1
    :try_start_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lb/b/a/b/t;->f()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lb/b/a/b/t;->charAt(I)C

    move-result v3

    const v4, 0xffff

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v0
.end method
