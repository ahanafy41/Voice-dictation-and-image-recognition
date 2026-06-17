.class Landroid/widget/PullingLayout$LoadingDrawable2;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PullingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingDrawable2"
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field final synthetic f:Landroid/widget/PullingLayout;


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->a:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->f:Landroid/widget/PullingLayout;

    invoke-static {v1}, Landroid/widget/PullingLayout;->f(Landroid/widget/PullingLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    float-to-double v0, v0

    const-wide v2, 0x3fd6666666666666L    # 0.35

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    new-instance v2, Landroid/graphics/RectF;

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    int-to-float v0, v0

    const/high16 v3, 0x40200000    # 2.5f

    mul-float v0, v0, v3

    invoke-direct {v2, v1, v1, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->b:I

    const/16 v1, 0x168

    if-le v0, v1, :cond_0

    iget v0, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->e:I

    iget v3, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->e:I

    rsub-int/lit8 v0, v3, 0x0

    iput v0, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->d:I

    goto :goto_0

    :cond_0
    const/4 v3, 0x6

    if-ge v0, v3, :cond_1

    iput v3, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->d:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->e:I

    :cond_1
    :goto_0
    iget v0, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->b:I

    iget v3, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->b:I

    iget v0, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->c:I

    iget v3, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->e:I

    add-int/2addr v0, v3

    iput v0, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->c:I

    iget v0, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->c:I

    rem-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->b:I

    int-to-float v4, v0

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->a:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
