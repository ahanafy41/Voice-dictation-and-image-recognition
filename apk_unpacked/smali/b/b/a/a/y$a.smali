.class Lb/b/a/a/y$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/a/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:Landroid/graphics/Rect;

.field public final c:Landroid/graphics/Rect;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private final j:Landroid/graphics/Paint;

.field private k:Z

.field private l:Z

.field final synthetic m:Lb/b/a/a/y;


# direct methods
.method public constructor <init>(Lb/b/a/a/y;)V
    .locals 5

    iput-object p1, p0, Lb/b/a/a/y$a;->m:Lb/b/a/a/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lb/b/a/a/y$a;->m:Lb/b/a/a/y;

    invoke-static {v0}, Lb/b/a/a/y;->a(Lb/b/a/a/y;)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lb/b/a/a/y$a;->a:I

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lb/b/a/a/y$a;->m:Lb/b/a/a/y;

    invoke-static {v1}, Lb/b/a/a/y;->a(Lb/b/a/a/y;)I

    move-result v1

    iget-object v2, p0, Lb/b/a/a/y$a;->m:Lb/b/a/a/y;

    invoke-static {v2}, Lb/b/a/a/y;->a(Lb/b/a/a/y;)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lb/b/a/a/y$a;->b:Landroid/graphics/Rect;

    iput v3, p0, Lb/b/a/a/y$a;->d:I

    iput v3, p0, Lb/b/a/a/y$a;->e:I

    iput v3, p0, Lb/b/a/a/y$a;->f:I

    iput v3, p0, Lb/b/a/a/y$a;->g:I

    iput v3, p0, Lb/b/a/a/y$a;->h:I

    iput v3, p0, Lb/b/a/a/y$a;->i:I

    invoke-virtual {p0}, Lb/b/a/a/y$a;->b()I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lb/b/a/a/y$a;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lb/b/a/a/y$a;->a:I

    add-int/2addr v2, v4

    invoke-direct {v1, v0, v3, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lb/b/a/a/y$a;->c:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lb/b/a/a/y$a;->j:Landroid/graphics/Paint;

    iget-object v0, p0, Lb/b/a/a/y$a;->j:Landroid/graphics/Paint;

    iget-object p1, p1, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {p1}, Lb/b/a/a/r;->getColorScheme()Lb/b/a/b/c;

    move-result-object p1

    sget-object v1, Lb/b/a/b/c$a;->f:Lb/b/a/b/c$a;

    invoke-virtual {p1, v1}, Lb/b/a/b/c;->a(Lb/b/a/b/c$a;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lb/b/a/a/y$a;->j:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private f()V
    .locals 6

    iget v0, p0, Lb/b/a/a/y$a;->f:I

    invoke-virtual {p0}, Lb/b/a/a/y$a;->b()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lb/b/a/a/y$a;->d:I

    if-lt v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :goto_0
    iget v2, p0, Lb/b/a/a/y$a;->g:I

    iget v3, p0, Lb/b/a/a/y$a;->e:I

    if-lt v2, v3, :cond_1

    move v5, v3

    move v3, v2

    move v2, v5

    :cond_1
    iget-object v4, p0, Lb/b/a/a/y$a;->m:Lb/b/a/a/y;

    iget-object v4, v4, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/view/View;->invalidate(IIII)V

    invoke-virtual {p0}, Lb/b/a/a/y$a;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lb/b/a/a/y$a;->h:I

    iput v0, p0, Lb/b/a/a/y$a;->i:I

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lb/b/a/a/y$a;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public a(II)V
    .locals 0

    invoke-direct {p0}, Lb/b/a/a/y$a;->f()V

    invoke-virtual {p0, p1, p2}, Lb/b/a/a/y$a;->e(II)V

    invoke-direct {p0}, Lb/b/a/a/y$a;->f()V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Z)V
    .locals 12

    invoke-virtual {p0}, Lb/b/a/a/y$a;->b()I

    move-result p2

    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lb/b/a/a/y$a;->d:I

    mul-int/lit8 v2, p2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lb/b/a/a/y$a;->e:I

    sub-int/2addr v2, p2

    iget v3, p0, Lb/b/a/a/y$a;->a:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lb/b/a/a/y$a;->f:I

    mul-int/lit8 v4, p2, 0x3

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lb/b/a/a/y$a;->g:I

    add-int/2addr v4, p2

    int-to-float p2, v4

    invoke-direct {v1, v0, v2, v3, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v5, p0, Lb/b/a/a/y$a;->j:Landroid/graphics/Paint;

    const/high16 v2, 0x42700000    # 60.0f

    const/high16 v3, 0x42700000    # 60.0f

    const/4 v4, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    new-instance v7, Landroid/graphics/RectF;

    iget p2, p0, Lb/b/a/a/y$a;->f:I

    int-to-float v0, p2

    iget v1, p0, Lb/b/a/a/y$a;->g:I

    int-to-float v2, v1

    iget-object v3, p0, Lb/b/a/a/y$a;->b:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, v4

    int-to-float p2, p2

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-direct {v7, v0, v2, p2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v11, p0, Lb/b/a/a/y$a;->j:Landroid/graphics/Paint;

    const/4 v8, 0x0

    const/high16 v9, 0x43b40000    # 360.0f

    const/4 v10, 0x1

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    iput-boolean p1, p0, Lb/b/a/a/y$a;->l:Z

    iget-boolean p1, p0, Lb/b/a/a/y$a;->l:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/b/a/a/y$a;->j:Landroid/graphics/Paint;

    iget-object v0, p0, Lb/b/a/a/y$a;->m:Lb/b/a/a/y;

    iget-object v0, v0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v0}, Lb/b/a/a/r;->getColorScheme()Lb/b/a/b/c;

    move-result-object v0

    sget-object v1, Lb/b/a/b/c$a;->f:Lb/b/a/b/c$a;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lb/b/a/a/y$a;->j:Landroid/graphics/Paint;

    iget-object v0, p0, Lb/b/a/a/y$a;->m:Lb/b/a/a/y;

    iget-object v0, v0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v0}, Lb/b/a/a/r;->getColorScheme()Lb/b/a/b/c;

    move-result-object v0

    sget-object v1, Lb/b/a/b/c$a;->g:Lb/b/a/b/c$a;

    :goto_0
    invoke-virtual {v0, v1}, Lb/b/a/b/c;->a(Lb/b/a/b/c$a;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lb/b/a/a/y$a;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public b(II)Lb/b/a/b/q;
    .locals 3

    iget-object v0, p0, Lb/b/a/a/y$a;->m:Lb/b/a/a/y;

    invoke-virtual {v0, p1}, Lb/b/a/a/w;->a(I)I

    move-result p1

    iget v0, p0, Lb/b/a/a/y$a;->h:I

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lb/b/a/a/y$a;->b()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lb/b/a/a/y$a;->m:Lb/b/a/a/y;

    invoke-virtual {v0, p2}, Lb/b/a/a/w;->b(I)I

    move-result p2

    iget v0, p0, Lb/b/a/a/y$a;->i:I

    sub-int/2addr p2, v0

    iget v0, p0, Lb/b/a/a/y$a;->a:I

    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, -0x2

    new-instance v0, Lb/b/a/b/q;

    iget-object v1, p0, Lb/b/a/a/y$a;->m:Lb/b/a/a/y;

    iget-object v1, v1, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v1, p1, p2}, Lb/b/a/a/r;->a(II)I

    move-result v1

    iget-object v2, p0, Lb/b/a/a/y$a;->m:Lb/b/a/a/y;

    iget-object v2, v2, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v2, p1, p2}, Lb/b/a/a/r;->b(II)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lb/b/a/b/q;-><init>(II)V

    return-object v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/b/a/a/y$a;->k:Z

    return-void
.end method

.method public c(II)Z
    .locals 3

    iget-boolean v0, p0, Lb/b/a/a/y$a;->k:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lb/b/a/a/y$a;->f:I

    if-lt p1, v0, :cond_0

    iget-object v1, p0, Lb/b/a/a/y$a;->b:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    if-ge p1, v0, :cond_0

    iget p1, p0, Lb/b/a/a/y$a;->g:I

    if-lt p2, p1, :cond_0

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()V
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lb/b/a/a/y$a;->f:I

    iget v2, p0, Lb/b/a/a/y$a;->g:I

    iget-object v3, p0, Lb/b/a/a/y$a;->b:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v1

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lb/b/a/a/y$a;->m:Lb/b/a/a/y;

    iget-object v1, v1, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public d(II)V
    .locals 1

    iget v0, p0, Lb/b/a/a/y$a;->f:I

    sub-int/2addr p1, v0

    iput p1, p0, Lb/b/a/a/y$a;->h:I

    iget p1, p0, Lb/b/a/a/y$a;->g:I

    sub-int/2addr p2, p1

    iput p2, p0, Lb/b/a/a/y$a;->i:I

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/a/a/y$a;->k:Z

    return-void
.end method

.method public e(II)V
    .locals 1

    iget v0, p0, Lb/b/a/a/y$a;->a:I

    add-int/2addr p2, v0

    iput p1, p0, Lb/b/a/a/y$a;->d:I

    iput p2, p0, Lb/b/a/a/y$a;->e:I

    invoke-virtual {p0}, Lb/b/a/a/y$a;->b()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lb/b/a/a/y$a;->f:I

    iget p1, p0, Lb/b/a/a/y$a;->a:I

    add-int/2addr p2, p1

    iput p2, p0, Lb/b/a/a/y$a;->g:I

    return-void
.end method
