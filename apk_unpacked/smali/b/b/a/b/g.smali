.class public Lb/b/a/b/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field private a:I

.field private final b:Lb/b/a/b/f;


# direct methods
.method public constructor <init>(Lb/b/a/b/f$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/b/a/b/g;->a:I

    new-instance v0, Lb/b/a/b/f;

    invoke-direct {v0, p1}, Lb/b/a/b/f;-><init>(Lb/b/a/b/f$a;)V

    iput-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    return-void
.end method

.method public constructor <init>(Lb/b/a/b/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/b/a/b/g;->a:I

    iput-object p1, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    return-void
.end method

.method public constructor <init>(Lb/b/a/b/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/b/a/b/g;->a:I

    iget-object p1, p1, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    iput-object p1, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0, p1}, Lb/b/a/b/t;->a(I)I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0}, Lb/b/a/b/f;->j()V

    return-void
.end method

.method public a(CIJ)V
    .locals 7

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0, p2}, Lb/b/a/b/t;->g(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [C

    const/4 v0, 0x0

    aput-char p1, v2, v0

    iget-object v1, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    const/4 v6, 0x1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lb/b/a/b/f;->a([CIJZ)V

    return-void
.end method

.method public a(IIJ)V
    .locals 7

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0, p1}, Lb/b/a/b/t;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0}, Lb/b/a/b/t;->f()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v1, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    const/4 v6, 0x1

    move v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lb/b/a/b/f;->a(IIJZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(IJ)V
    .locals 7

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0, p1}, Lb/b/a/b/t;->g(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    const/4 v3, 0x1

    const/4 v6, 0x1

    move v2, p1

    move-wide v4, p2

    invoke-virtual/range {v1 .. v6}, Lb/b/a/b/f;->a(IIJZ)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0, p1}, Lb/b/a/b/t;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/b/a/b/q;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0, p1}, Lb/b/a/b/t;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0, p1}, Lb/b/a/b/f;->a(Z)V

    return-void
.end method

.method public a([CIJ)V
    .locals 7

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0, p2}, Lb/b/a/b/t;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    const/4 v6, 0x1

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lb/b/a/b/f;->a([CIJZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(I)I
    .locals 1

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0, p1}, Lb/b/a/b/f;->n(I)I

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0}, Lb/b/a/b/t;->a()V

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0}, Lb/b/a/b/t;->f()I

    move-result v0

    return v0
.end method

.method public c(I)I
    .locals 1

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0, p1}, Lb/b/a/b/t;->c(I)I

    move-result p1

    return p1
.end method

.method public charAt(I)C
    .locals 1

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0, p1}, Lb/b/a/b/t;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0, p1}, Lb/b/a/b/t;->charAt(I)C

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public clearSpans()V
    .locals 1

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0}, Lb/b/a/b/t;->clearSpans()V

    return-void
.end method

.method public d(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0, p1}, Lb/b/a/b/f;->o(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0}, Lb/b/a/b/t;->b()V

    return-void
.end method

.method public e(I)I
    .locals 1

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0, p1}, Lb/b/a/b/f;->p(I)I

    move-result p1

    return p1
.end method

.method public e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0}, Lb/b/a/b/t;->d()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0}, Lb/b/a/b/f;->k()I

    move-result v0

    return v0
.end method

.method public f(I)I
    .locals 1

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0, p1}, Lb/b/a/b/f;->q(I)I

    move-result p1

    return p1
.end method

.method public g(I)I
    .locals 1

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0, p1}, Lb/b/a/b/t;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lb/b/a/b/g;->a:I

    iget p1, p0, Lb/b/a/b/g;->a:I

    return p1
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb/b/a/b/q;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0}, Lb/b/a/b/t;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 2

    iget v0, p0, Lb/b/a/b/g;->a:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v1}, Lb/b/a/b/t;->f()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0}, Lb/b/a/b/t;->g()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0}, Lb/b/a/b/f;->l()Z

    move-result v0

    return v0
.end method

.method public k()C
    .locals 2

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    iget v1, p0, Lb/b/a/b/g;->a:I

    invoke-virtual {v0, v1}, Lb/b/a/b/t;->charAt(I)C

    move-result v0

    iget v1, p0, Lb/b/a/b/g;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lb/b/a/b/g;->a:I

    return v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0}, Lb/b/a/b/t;->h()I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0}, Lb/b/a/b/t;->length()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0}, Lb/b/a/b/t;->i()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0, p1, p2}, Lb/b/a/b/t;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/b/a/b/g;->b:Lb/b/a/b/f;

    invoke-virtual {v0}, Lb/b/a/b/t;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
