.class public Lb/b/a/a/x;
.super Lb/b/a/a/w;
.source ""


# static fields
.field public static m:I = 0x10


# instance fields
.field private n:I

.field private o:F

.field private p:F


# direct methods
.method public constructor <init>(Lb/b/a/a/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/b/a/a/w;-><init>(Lb/b/a/a/r;)V

    const/4 p1, 0x0

    iput p1, p0, Lb/b/a/a/x;->o:F

    iput p1, p0, Lb/b/a/a/x;->p:F

    iget-object p1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {p1}, Lb/b/a/a/r;->d()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    sput p1, Lb/b/a/a/x;->m:I

    return-void
.end method

.method private b(FF)V
    .locals 6

    iget v0, p0, Lb/b/a/a/x;->o:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    cmpl-float v0, p1, v1

    if-gtz v0, :cond_1

    :cond_0
    iget v0, p0, Lb/b/a/a/x;->o:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    :cond_1
    iput v1, p0, Lb/b/a/a/x;->o:F

    :cond_2
    iget v0, p0, Lb/b/a/a/x;->p:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_4

    :cond_3
    iget v0, p0, Lb/b/a/a/x;->p:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    cmpg-float v0, p2, v1

    if-gez v0, :cond_5

    :cond_4
    iput v1, p0, Lb/b/a/a/x;->p:F

    :cond_5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x3fd49ba5e353f7cfL    # 0.322

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_8

    iget v4, p0, Lb/b/a/a/x;->o:F

    add-float/2addr v4, p1

    float-to-int p1, v4

    sget v5, Lb/b/a/a/x;->m:I

    div-int/2addr p1, v5

    mul-int v5, v5, p1

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, p0, Lb/b/a/a/x;->o:F

    :cond_6
    :goto_0
    const/4 v4, 0x1

    if-lez p1, :cond_7

    iget-object v5, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v5}, Lb/b/a/a/r;->moveCaretRight()V

    add-int/lit8 p1, p1, -0x1

    iget v5, p0, Lb/b/a/a/x;->n:I

    if-nez v5, :cond_6

    iput v4, p0, Lb/b/a/a/x;->n:I

    goto :goto_0

    :cond_7
    :goto_1
    if-gez p1, :cond_8

    iget-object v5, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v5}, Lb/b/a/a/r;->moveCaretLeft()V

    add-int/lit8 p1, p1, 0x1

    iget v5, p0, Lb/b/a/a/x;->n:I

    if-nez v5, :cond_7

    iput v4, p0, Lb/b/a/a/x;->n:I

    goto :goto_1

    :cond_8
    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v4, v0

    cmpl-double p1, v4, v2

    if-ltz p1, :cond_c

    iget p1, p0, Lb/b/a/a/x;->p:F

    add-float/2addr p1, p2

    float-to-int p2, p1

    sget v0, Lb/b/a/a/x;->m:I

    div-int/2addr p2, v0

    mul-int v0, v0, p2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lb/b/a/a/x;->p:F

    move p1, p2

    :goto_2
    const/4 v0, -0x1

    if-lez p1, :cond_a

    iget-object v1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v1}, Lb/b/a/a/r;->moveCaretDown()V

    iget v1, p0, Lb/b/a/a/x;->n:I

    if-nez v1, :cond_9

    iput v0, p0, Lb/b/a/a/x;->n:I

    :cond_9
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_a
    :goto_3
    if-gez p2, :cond_c

    iget-object p1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {p1}, Lb/b/a/a/r;->moveCaretUp()V

    iget p1, p0, Lb/b/a/a/x;->n:I

    if-nez p1, :cond_b

    iput v0, p0, Lb/b/a/a/x;->n:I

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_c
    return-void
.end method


# virtual methods
.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lb/b/a/a/x;->o:F

    iput v0, p0, Lb/b/a/a/x;->p:F

    const/4 v0, 0x0

    iput v0, p0, Lb/b/a/a/x;->n:I

    invoke-super {p0, p1}, Lb/b/a/a/w;->b(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object p1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {p1}, Lb/b/a/a/r;->isSelectText()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {p1}, Lb/b/a/a/r;->getCaretPosition()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lb/b/a/a/r;->setSelectionRange(II)V

    return v1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lb/b/a/a/x;->n:I

    iget-object p1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {p1}, Lb/b/a/a/r;->d()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    sput p1, Lb/b/a/a/x;->m:I

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    invoke-virtual {p0, p2}, Lb/b/a/a/x;->b(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object p1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {p1}, Lb/b/a/a/r;->isSelectText()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {p1}, Lb/b/a/a/r;->getCaretPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lb/b/a/a/r;->setSelectionRange(II)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    iget p1, p0, Lb/b/a/a/x;->n:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    const/4 p3, 0x0

    :cond_1
    :goto_0
    neg-float p1, p3

    neg-float p3, p4

    invoke-direct {p0, p1, p3}, Lb/b/a/a/x;->b(FF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, p2}, Lb/b/a/a/x;->b(Landroid/view/MotionEvent;)Z

    :cond_2
    return v1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
