.class public Lb/b/a/a/w;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# static fields
.field private static final a:Landroid/graphics/Rect;

.field protected static b:I

.field protected static c:I


# instance fields
.field protected d:Lb/b/a/a/r;

.field protected e:Z

.field private f:Landroid/view/GestureDetector;

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:I

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lb/b/a/a/w;->a:Landroid/graphics/Rect;

    const/16 v0, 0xa

    sput v0, Lb/b/a/a/w;->b:I

    const/16 v0, 0xc

    sput v0, Lb/b/a/a/w;->c:I

    return-void
.end method

.method public constructor <init>(Lb/b/a/a/r;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/b/a/a/w;->e:Z

    iput-object p1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lb/b/a/a/w;->f:Landroid/view/GestureDetector;

    iget-object p1, p0, Lb/b/a/a/w;->f:Landroid/view/GestureDetector;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method private a(FF)V
    .locals 3

    float-to-int p1, p1

    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    add-int/2addr p1, v0

    float-to-int p2, p2

    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v0}, Lb/b/a/a/r;->getMaxScrollX()I

    move-result v0

    iget-object v1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v0}, Lb/b/a/a/r;->getMaxScrollY()I

    move-result v0

    iget-object v2, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le p2, v0, :cond_2

    move p2, v0

    goto :goto_1

    :cond_2
    if-gez p2, :cond_3

    const/4 p2, 0x0

    :cond_3
    :goto_1
    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v0, p1, p2}, Lb/b/a/a/r;->smoothScrollTo(II)V

    return-void
.end method

.method private b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 6

    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v0}, Lb/b/a/a/r;->isSelectText()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lb/b/a/a/w;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v0, v1}, Lb/b/a/a/r;->selectText(Z)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Lb/b/a/a/w;->b:I

    const/4 v4, 0x0

    if-ge v0, v3, :cond_1

    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lb/b/a/a/r;->a(I)Z

    move-result v4

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v3}, Lb/b/a/a/r;->getContentWidth()I

    move-result v3

    sget v5, Lb/b/a/a/w;->b:I

    sub-int/2addr v3, v5

    if-lt v0, v3, :cond_2

    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    if-ge v2, v5, :cond_3

    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v0, v4}, Lb/b/a/a/r;->a(I)Z

    move-result v4

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v0}, Lb/b/a/a/r;->getContentHeight()I

    move-result v0

    sget v3, Lb/b/a/a/w;->b:I

    sub-int/2addr v0, v3

    if-lt v2, v0, :cond_4

    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    goto :goto_0

    :cond_4
    :goto_1
    if-nez v4, :cond_5

    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v0}, Lb/b/a/a/r;->e()V

    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lb/b/a/a/w;->a(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lb/b/a/a/w;->b(I)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lb/b/a/a/r;->a(II)I

    move-result p1

    if-ltz p1, :cond_5

    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v0, p1}, Lb/b/a/a/r;->moveCaret(I)V

    :cond_5
    return-void
.end method

.method private d(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget v0, p0, Lb/b/a/a/w;->g:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float/2addr v0, v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float/2addr v4, v5

    mul-float v0, v0, v0

    mul-float v4, v4, v4

    add-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, p0, Lb/b/a/a/w;->g:F

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    iput v0, p0, Lb/b/a/a/w;->h:F

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v0, v3

    div-float/2addr v0, v4

    iput v0, p0, Lb/b/a/a/w;->i:F

    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v0}, Lb/b/a/a/r;->getTextSize()F

    move-result v0

    iput v0, p0, Lb/b/a/a/w;->j:F

    :cond_0
    invoke-direct {p0, p1}, Lb/b/a/a/w;->e(Landroid/view/MotionEvent;)F

    move-result p1

    iget v0, p0, Lb/b/a/a/w;->g:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    iget v3, p0, Lb/b/a/a/w;->j:F

    div-float/2addr p1, v0

    mul-float v3, v3, p1

    float-to-int p1, v3

    invoke-virtual {v2, p1}, Lb/b/a/a/r;->setTextSize(I)V

    :cond_1
    return v1

    :cond_2
    iput v2, p0, Lb/b/a/a/w;->g:F

    return v3
.end method

.method private e(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method


# virtual methods
.method protected final a(I)I
    .locals 1

    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public a()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Lb/b/a/a/w;->a:Landroid/graphics/Rect;

    return-object v0
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public a(Lb/b/a/b/c;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(III)Z
    .locals 2

    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v0, p3}, Lb/b/a/a/r;->b(I)Landroid/graphics/Rect;

    move-result-object p3

    iget v0, p3, Landroid/graphics/Rect;->top:I

    sget v1, Lb/b/a/a/w;->c:I

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    iget p2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v1

    if-lt p1, p2, :cond_0

    iget p2, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, v1

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-direct {p0, p1}, Lb/b/a/a/w;->d(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lb/b/a/a/w;->f:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lb/b/a/a/w;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method protected final b(I)I
    .locals 1

    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {p1}, Lb/b/a/a/r;->e()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/b/a/a/w;->e:Z

    iput-boolean p1, p0, Lb/b/a/a/w;->l:Z

    const/4 v0, 0x0

    iput v0, p0, Lb/b/a/a/w;->g:F

    iput p1, p0, Lb/b/a/a/w;->k:I

    const/4 p1, 0x1

    return p1
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/a/a/w;->e:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lb/b/a/a/w;->a(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lb/b/a/a/w;->b(I)I

    move-result p1

    iget-object v2, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v2, v1, p1}, Lb/b/a/a/r;->a(II)I

    move-result p1

    iget-object v1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v1}, Lb/b/a/a/r;->isSelectText()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v1, p1}, Lb/b/a/a/r;->inSelectionRange(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v1}, Lb/b/a/a/r;->createDocumentProvider()Lb/b/a/b/g;

    move-result-object v1

    invoke-virtual {v1, p1}, Lb/b/a/b/g;->a(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lb/b/a/b/g;->c(I)I

    move-result v2

    add-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lb/b/a/b/g;->c(I)I

    move-result p1

    sub-int/2addr p1, v0

    :goto_0
    iget-object v1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    sub-int/2addr p1, v2

    invoke-virtual {v1, v2, p1}, Lb/b/a/a/r;->setSelectionRange(II)V

    goto :goto_5

    :cond_0
    if-ltz p1, :cond_6

    iget-object v1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v1, p1}, Lb/b/a/a/r;->moveCaret(I)V

    iget-object v1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v1}, Lb/b/a/a/r;->createDocumentProvider()Lb/b/a/b/g;

    move-result-object v1

    move v2, p1

    :goto_1
    if-ltz v2, :cond_2

    invoke-virtual {v1, v2}, Lb/b/a/b/g;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eq v2, p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    :goto_3
    if-ltz p1, :cond_5

    invoke-virtual {v1, p1}, Lb/b/a/b/g;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    iget-object v1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v1, v0}, Lb/b/a/a/r;->selectText(Z)V

    goto :goto_0

    :cond_6
    :goto_5
    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lb/b/a/a/w;->a(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lb/b/a/a/w;->b(I)I

    move-result p1

    iget-object v1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v1}, Lb/b/a/a/r;->getCaretPosition()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Lb/b/a/a/w;->a(III)Z

    move-result v1

    iput-boolean v1, p0, Lb/b/a/a/w;->e:Z

    iget-object v1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v1}, Lb/b/a/a/r;->getLeftOffset()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lb/b/a/a/w;->l:Z

    iget-object v1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v1}, Lb/b/a/a/r;->isFlingScrolling()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {p1}, Lb/b/a/a/r;->stopFlingScrolling()V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v1}, Lb/b/a/a/r;->isSelectText()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v1}, Lb/b/a/a/r;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Lb/b/a/a/w;->a(III)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {p1}, Lb/b/a/a/r;->focusSelectionStart()V

    :goto_1
    iget-object p1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {p1, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    iput-boolean v2, p0, Lb/b/a/a/w;->e:Z

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v1}, Lb/b/a/a/r;->getSelectionEnd()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Lb/b/a/a/w;->a(III)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {p1}, Lb/b/a/a/r;->focusSelectionEnd()V

    goto :goto_1

    :cond_3
    :goto_2
    iget-boolean p1, p0, Lb/b/a/a/w;->e:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {p1, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_4
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    iget-boolean p1, p0, Lb/b/a/a/w;->e:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Lb/b/a/a/w;->k:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    const/4 p3, 0x0

    :cond_1
    :goto_0
    iget-object p1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    neg-float p3, p3

    float-to-int p3, p3

    mul-int/lit8 p3, p3, 0x2

    neg-float p4, p4

    float-to-int p4, p4

    mul-int/lit8 p4, p4, 0x2

    invoke-virtual {p1, p3, p4}, Lb/b/a/a/r;->c(II)V

    :cond_2
    invoke-virtual {p0, p2}, Lb/b/a/a/w;->b(Landroid/view/MotionEvent;)Z

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lb/b/a/a/w;->onDoubleTap(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    iget-boolean p1, p0, Lb/b/a/a/w;->e:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lb/b/a/a/w;->c(Landroid/view/MotionEvent;)V

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, v0, :cond_6

    iget p1, p0, Lb/b/a/a/w;->k:I

    const/4 v1, -0x1

    if-nez p1, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    iput v0, p0, Lb/b/a/a/w;->k:I

    goto :goto_0

    :cond_1
    iput v1, p0, Lb/b/a/a/w;->k:I

    :cond_2
    :goto_0
    iget p1, p0, Lb/b/a/a/w;->k:I

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    const/4 p4, 0x0

    goto :goto_1

    :cond_3
    if-ne p1, v1, :cond_4

    const/4 p3, 0x0

    :cond_4
    :goto_1
    iget-boolean p1, p0, Lb/b/a/a/w;->l:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {p1}, Lb/b/a/a/r;->getMaxScrollY()I

    move-result p1

    iget-object v1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr p1, v1

    int-to-float p1, p1

    mul-float p4, p4, p1

    :cond_5
    invoke-direct {p0, p3, p4}, Lb/b/a/a/w;->a(FF)V

    :cond_6
    :goto_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v0, :cond_7

    invoke-virtual {p0, p2}, Lb/b/a/a/w;->b(Landroid/view/MotionEvent;)Z

    :cond_7
    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v0}, Lb/b/a/a/r;->isAccessibilityEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {p1, v1}, Lb/b/a/a/r;->a(Z)V

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lb/b/a/a/w;->a(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lb/b/a/a/w;->b(I)I

    move-result p1

    iget-object v2, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v2, v0, p1}, Lb/b/a/a/r;->a(II)I

    move-result v2

    iget-object v3, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v3}, Lb/b/a/a/r;->isSelectText()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v3, v0, p1}, Lb/b/a/a/r;->b(II)I

    move-result v3

    iget-object v4, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v4, v3}, Lb/b/a/a/r;->inSelectionRange(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v4}, Lb/b/a/a/r;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0, v0, p1, v4}, Lb/b/a/a/w;->a(III)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v4}, Lb/b/a/a/r;->getSelectionEnd()I

    move-result v4

    invoke-virtual {p0, v0, p1, v4}, Lb/b/a/a/w;->a(III)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lb/b/a/a/r;->selectText(Z)V

    if-ltz v3, :cond_3

    :goto_0
    iget-object p1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {p1, v2}, Lb/b/a/a/r;->moveCaret(I)V

    goto :goto_1

    :cond_2
    if-ltz v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {p1, v1}, Lb/b/a/a/r;->a(Z)V

    return v1
.end method
