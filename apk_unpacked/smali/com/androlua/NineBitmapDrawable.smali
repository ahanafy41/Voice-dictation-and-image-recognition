.class public Lcom/androlua/NineBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Lcom/androlua/LuaGcable;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Bitmap;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Rect;

.field private h:Landroid/graphics/Rect;

.field private i:Landroid/graphics/Rect;

.field private j:Landroid/graphics/Rect;

.field private k:Landroid/graphics/Rect;

.field private l:Landroid/graphics/Rect;

.field private m:Landroid/graphics/Rect;

.field private n:Landroid/graphics/Rect;

.field private o:Landroid/graphics/Rect;

.field private p:Z

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 10

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androlua/NineBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    const/high16 v5, -0x1000000

    if-ge v3, v0, :cond_2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    if-ne v6, v5, :cond_0

    move v6, v3

    goto :goto_2

    :cond_0
    if-eq v6, v4, :cond_1

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_d

    add-int/lit8 v3, v0, -0x1

    if-eq v6, v3, :cond_d

    move v3, v6

    :goto_3
    if-ge v3, v0, :cond_4

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    if-eq v7, v5, :cond_3

    sub-int/2addr v0, v3

    move v8, v0

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_c

    const/4 v0, 0x1

    if-eq v8, v0, :cond_c

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_7

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    if-ne v7, v5, :cond_5

    move v7, v3

    goto :goto_7

    :cond_5
    if-eq v7, v4, :cond_6

    if-eqz v7, :cond_6

    goto :goto_6

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    const/4 v7, 0x0

    :goto_7
    if-eqz v7, :cond_b

    add-int/lit8 v3, v1, -0x1

    if-eq v7, v3, :cond_b

    move v3, v7

    :goto_8
    if-ge v3, v1, :cond_9

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    if-eq v4, v5, :cond_8

    sub-int v2, v1, v3

    move v9, v2

    goto :goto_9

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_9
    const/4 v9, 0x0

    :goto_9
    if-eqz v9, :cond_a

    if-eq v9, v0, :cond_a

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/androlua/NineBitmapDrawable;->a(Landroid/graphics/Bitmap;IIII)V

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found y2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found y1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found x2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found x1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IIII)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androlua/NineBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-direct/range {p0 .. p5}, Lcom/androlua/NineBitmapDrawable;->a(Landroid/graphics/Bitmap;IIII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/androlua/LuaBitmap;->getLocalBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/androlua/NineBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;IIII)V
    .locals 5

    iput-object p1, p0, Lcom/androlua/NineBitmapDrawable;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/androlua/NineBitmapDrawable;->g:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2, v2, p4, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/androlua/NineBitmapDrawable;->h:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v3, v0, -0x1

    invoke-direct {v1, p4, v2, v3, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/androlua/NineBitmapDrawable;->i:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, p3, p2, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/androlua/NineBitmapDrawable;->j:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/androlua/NineBitmapDrawable;->k:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p4, p3, v3, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/androlua/NineBitmapDrawable;->l:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    add-int/lit8 v4, p1, -0x1

    invoke-direct {v1, v2, p5, p2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/androlua/NineBitmapDrawable;->m:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2, p5, p4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/androlua/NineBitmapDrawable;->n:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p4, p5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/androlua/NineBitmapDrawable;->o:Landroid/graphics/Rect;

    sub-int p4, v0, p4

    sub-int p5, p1, p5

    iput p2, p0, Lcom/androlua/NineBitmapDrawable;->c:I

    iput p3, p0, Lcom/androlua/NineBitmapDrawable;->d:I

    iput p4, p0, Lcom/androlua/NineBitmapDrawable;->e:I

    iput p5, p0, Lcom/androlua/NineBitmapDrawable;->f:I

    iput v0, p0, Lcom/androlua/NineBitmapDrawable;->r:I

    iput p1, p0, Lcom/androlua/NineBitmapDrawable;->q:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    iget v4, p0, Lcom/androlua/NineBitmapDrawable;->r:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    int-to-float v4, v0

    mul-float v4, v4, v3

    iget v3, p0, Lcom/androlua/NineBitmapDrawable;->q:I

    int-to-float v3, v3

    div-float/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p0, Lcom/androlua/NineBitmapDrawable;->c:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    iget v4, p0, Lcom/androlua/NineBitmapDrawable;->e:I

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-int v4, v4

    iget v5, p0, Lcom/androlua/NineBitmapDrawable;->d:I

    int-to-float v5, v5

    mul-float v5, v5, v2

    float-to-int v5, v5

    iget v6, p0, Lcom/androlua/NineBitmapDrawable;->f:I

    int-to-float v6, v6

    mul-float v6, v6, v2

    float-to-int v2, v6

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    sub-int v4, v1, v4

    invoke-direct {v8, v3, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v4, v7, v1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    sub-int v2, v0, v2

    invoke-direct {v10, v7, v5, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v3, v5, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v4, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v3, v2, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/androlua/NineBitmapDrawable;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/androlua/NineBitmapDrawable;->g:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/androlua/NineBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/androlua/NineBitmapDrawable;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/androlua/NineBitmapDrawable;->h:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/androlua/NineBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/androlua/NineBitmapDrawable;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/androlua/NineBitmapDrawable;->i:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/androlua/NineBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v9, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/androlua/NineBitmapDrawable;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/androlua/NineBitmapDrawable;->j:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/androlua/NineBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/androlua/NineBitmapDrawable;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/androlua/NineBitmapDrawable;->k:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/androlua/NineBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v11, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/androlua/NineBitmapDrawable;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/androlua/NineBitmapDrawable;->l:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/androlua/NineBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v12, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/androlua/NineBitmapDrawable;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/androlua/NineBitmapDrawable;->m:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/androlua/NineBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/androlua/NineBitmapDrawable;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/androlua/NineBitmapDrawable;->n:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/androlua/NineBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/androlua/NineBitmapDrawable;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/androlua/NineBitmapDrawable;->o:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/androlua/NineBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public gc()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/androlua/NineBitmapDrawable;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/NineBitmapDrawable;->p:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/androlua/NineBitmapDrawable;->p:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/NineBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/NineBitmapDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
