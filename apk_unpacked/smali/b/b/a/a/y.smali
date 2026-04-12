.class public Lb/b/a/a/y;
.super Lb/b/a/a/w;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/a/y$a;
    }
.end annotation


# static fields
.field public static m:I = 0x10


# instance fields
.field private final n:Lb/b/a/a/y$a;

.field private final o:Lb/b/a/a/y$a;

.field private final p:Lb/b/a/a/y$a;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:F

.field private x:F


# direct methods
.method public constructor <init>(Lb/b/a/a/r;)V
    .locals 4

    invoke-direct {p0, p1}, Lb/b/a/a/w;-><init>(Lb/b/a/a/r;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/b/a/a/y;->q:Z

    iput-boolean v0, p0, Lb/b/a/a/y;->r:Z

    iput-boolean v0, p0, Lb/b/a/a/y;->s:Z

    iput-boolean v0, p0, Lb/b/a/a/y;->t:Z

    const/4 v0, 0x0

    iput v0, p0, Lb/b/a/a/y;->w:F

    iput v0, p0, Lb/b/a/a/y;->x:F

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    sget v0, Lb/b/a/a/r;->c:I

    int-to-double v0, v0

    const-wide v2, 0x3ff3333333333333L    # 1.2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    const/4 v1, 0x2

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lb/b/a/a/y;->u:I

    new-instance p1, Lb/b/a/a/y$a;

    invoke-direct {p1, p0}, Lb/b/a/a/y$a;-><init>(Lb/b/a/a/y;)V

    iput-object p1, p0, Lb/b/a/a/y;->n:Lb/b/a/a/y$a;

    new-instance p1, Lb/b/a/a/y$a;

    invoke-direct {p1, p0}, Lb/b/a/a/y$a;-><init>(Lb/b/a/a/y;)V

    iput-object p1, p0, Lb/b/a/a/y;->o:Lb/b/a/a/y$a;

    new-instance p1, Lb/b/a/a/y$a;

    invoke-direct {p1, p0}, Lb/b/a/a/y$a;-><init>(Lb/b/a/a/y;)V

    iput-object p1, p0, Lb/b/a/a/y;->p:Lb/b/a/a/y$a;

    return-void
.end method

.method static synthetic a(Lb/b/a/a/y;)I
    .locals 0

    iget p0, p0, Lb/b/a/a/y;->u:I

    return p0
.end method

.method private a(Lb/b/a/a/y$a;Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Lb/b/a/a/y$a;->b(II)Lb/b/a/b/q;

    move-result-object p2

    invoke-virtual {p2}, Lb/b/a/b/q;->a()I

    move-result p2

    if-ltz p2, :cond_0

    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v0, p2}, Lb/b/a/a/r;->moveCaret(I)V

    iget-object p2, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {p2}, Lb/b/a/a/r;->getCaretX()I

    move-result p2

    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v0}, Lb/b/a/a/r;->getCaretY()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lb/b/a/a/y$a;->a(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lb/b/a/a/y;->n:Lb/b/a/a/y$a;

    iget-object v0, v0, Lb/b/a/a/y$a;->c:Landroid/graphics/Rect;

    return-object v0
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v0}, Lb/b/a/a/r;->isSelectText2()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/b/a/a/y;->n:Lb/b/a/a/y$a;

    invoke-virtual {v0}, Lb/b/a/a/y$a;->e()V

    iget-object v0, p0, Lb/b/a/a/y;->o:Lb/b/a/a/y$a;

    invoke-virtual {v0}, Lb/b/a/a/y$a;->c()V

    iget-object v0, p0, Lb/b/a/a/y;->p:Lb/b/a/a/y$a;

    invoke-virtual {v0}, Lb/b/a/a/y$a;->c()V

    iget-boolean v0, p0, Lb/b/a/a/y;->s:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v0}, Lb/b/a/a/r;->getCaretX()I

    move-result v0

    iget-object v2, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v2}, Lb/b/a/a/r;->getCaretY()I

    move-result v2

    iget-object v3, p0, Lb/b/a/a/y;->n:Lb/b/a/a/y$a;

    invoke-virtual {v3, v0, v2}, Lb/b/a/a/y$a;->e(II)V

    :cond_0
    iget-boolean v0, p0, Lb/b/a/a/y;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/a/a/y;->n:Lb/b/a/a/y$a;

    iget-boolean v2, p0, Lb/b/a/a/y;->s:Z

    invoke-virtual {v0, p1, v2}, Lb/b/a/a/y$a;->a(Landroid/graphics/Canvas;Z)V

    :cond_1
    iput-boolean v1, p0, Lb/b/a/a/y;->t:Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lb/b/a/a/y;->n:Lb/b/a/a/y$a;

    invoke-virtual {v0}, Lb/b/a/a/y$a;->c()V

    iget-object v0, p0, Lb/b/a/a/y;->o:Lb/b/a/a/y$a;

    invoke-virtual {v0}, Lb/b/a/a/y$a;->e()V

    iget-object v0, p0, Lb/b/a/a/y;->p:Lb/b/a/a/y$a;

    invoke-virtual {v0}, Lb/b/a/a/y$a;->e()V

    iget-boolean v0, p0, Lb/b/a/a/y;->q:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lb/b/a/a/y;->r:Z

    if-nez v0, :cond_6

    :cond_3
    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v0}, Lb/b/a/a/r;->getSelectionStartX()I

    move-result v0

    iget-object v2, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v2}, Lb/b/a/a/r;->getSelectionStartY()I

    move-result v2

    iget-object v3, p0, Lb/b/a/a/y;->o:Lb/b/a/a/y$a;

    invoke-virtual {v3, v0, v2}, Lb/b/a/a/y$a;->e(II)V

    iget-object v0, p0, Lb/b/a/a/y;->o:Lb/b/a/a/y$a;

    iget-object v2, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v2}, Lb/b/a/a/r;->getSelectionStart()I

    move-result v2

    iget-object v3, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v3}, Lb/b/a/a/r;->getCaretPosition()I

    move-result v3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lb/b/a/a/y$a;->a(Z)V

    iget-object v0, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v0}, Lb/b/a/a/r;->getSelectionEndX()I

    move-result v0

    iget-object v2, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v2}, Lb/b/a/a/r;->getSelectionEndY()I

    move-result v2

    iget-object v3, p0, Lb/b/a/a/y;->p:Lb/b/a/a/y$a;

    invoke-virtual {v3, v0, v2}, Lb/b/a/a/y$a;->e(II)V

    iget-object v0, p0, Lb/b/a/a/y;->p:Lb/b/a/a/y$a;

    iget-object v2, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v2}, Lb/b/a/a/r;->getSelectionEnd()I

    move-result v2

    iget-object v3, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v3}, Lb/b/a/a/r;->getCaretPosition()I

    move-result v3

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-virtual {v0, v1}, Lb/b/a/a/y$a;->a(Z)V

    :cond_6
    iget-object v0, p0, Lb/b/a/a/y;->o:Lb/b/a/a/y$a;

    iget-boolean v1, p0, Lb/b/a/a/y;->q:Z

    invoke-virtual {v0, p1, v1}, Lb/b/a/a/y$a;->a(Landroid/graphics/Canvas;Z)V

    iget-object v0, p0, Lb/b/a/a/y;->p:Lb/b/a/a/y$a;

    iget-boolean v1, p0, Lb/b/a/a/y;->q:Z

    invoke-virtual {v0, p1, v1}, Lb/b/a/a/y$a;->a(Landroid/graphics/Canvas;Z)V

    :goto_1
    return-void
.end method

.method public a(Lb/b/a/b/c;)V
    .locals 2

    iget-object v0, p0, Lb/b/a/a/y;->n:Lb/b/a/a/y$a;

    sget-object v1, Lb/b/a/b/c$a;->f:Lb/b/a/b/c$a;

    invoke-virtual {p1, v1}, Lb/b/a/b/c;->a(Lb/b/a/b/c$a;)I

    move-result p1

    invoke-virtual {v0, p1}, Lb/b/a/a/y$a;->a(I)V

    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lb/b/a/a/y;->v:I

    iput-boolean v0, p0, Lb/b/a/a/y;->s:Z

    iput-boolean v0, p0, Lb/b/a/a/y;->q:Z

    iput-boolean v0, p0, Lb/b/a/a/y;->r:Z

    iget-object v0, p0, Lb/b/a/a/y;->n:Lb/b/a/a/y$a;

    invoke-virtual {v0}, Lb/b/a/a/y$a;->a()V

    iget-object v0, p0, Lb/b/a/a/y;->o:Lb/b/a/a/y$a;

    invoke-virtual {v0}, Lb/b/a/a/y$a;->a()V

    iget-object v0, p0, Lb/b/a/a/y;->p:Lb/b/a/a/y$a;

    invoke-virtual {v0}, Lb/b/a/a/y$a;->a()V

    invoke-super {p0, p1}, Lb/b/a/a/w;->b(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lb/b/a/a/y;->n:Lb/b/a/a/y$a;

    invoke-virtual {v2, v0, v1}, Lb/b/a/a/y$a;->c(II)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object p1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {p1, v3}, Lb/b/a/a/r;->selectText(Z)V

    return v3

    :cond_0
    iget-object v2, p0, Lb/b/a/a/y;->o:Lb/b/a/a/y$a;

    invoke-virtual {v2, v0, v1}, Lb/b/a/a/y$a;->c(II)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    invoke-super {p0, p1}, Lb/b/a/a/w;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-super {p0, p1}, Lb/b/a/a/w;->onDown(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x0

    iput v0, p0, Lb/b/a/a/y;->v:I

    iget-boolean v0, p0, Lb/b/a/a/w;->e:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v2, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    add-int/2addr p1, v2

    iget-object v2, p0, Lb/b/a/a/y;->n:Lb/b/a/a/y$a;

    invoke-virtual {v2, v0, p1}, Lb/b/a/a/y$a;->c(II)Z

    move-result v2

    iput-boolean v2, p0, Lb/b/a/a/y;->s:Z

    iget-object v2, p0, Lb/b/a/a/y;->o:Lb/b/a/a/y$a;

    invoke-virtual {v2, v0, p1}, Lb/b/a/a/y$a;->c(II)Z

    move-result v2

    iput-boolean v2, p0, Lb/b/a/a/y;->q:Z

    iget-object v2, p0, Lb/b/a/a/y;->p:Lb/b/a/a/y$a;

    invoke-virtual {v2, v0, p1}, Lb/b/a/a/y$a;->c(II)Z

    move-result v2

    iput-boolean v2, p0, Lb/b/a/a/y;->r:Z

    iget-object v2, p0, Lb/b/a/a/y;->o:Lb/b/a/a/y$a;

    iget-boolean v3, p0, Lb/b/a/a/y;->q:Z

    invoke-virtual {v2, v3}, Lb/b/a/a/y$a;->a(Z)V

    iget-object v2, p0, Lb/b/a/a/y;->p:Lb/b/a/a/y$a;

    iget-boolean v3, p0, Lb/b/a/a/y;->r:Z

    invoke-virtual {v2, v3}, Lb/b/a/a/y$a;->a(Z)V

    iget-boolean v2, p0, Lb/b/a/a/y;->s:Z

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lb/b/a/a/y;->t:Z

    iget-object v2, p0, Lb/b/a/a/y;->n:Lb/b/a/a/y$a;

    invoke-virtual {v2, v0, p1}, Lb/b/a/a/y$a;->d(II)V

    iget-object p1, p0, Lb/b/a/a/y;->n:Lb/b/a/a/y$a;

    :goto_0
    invoke-virtual {p1}, Lb/b/a/a/y$a;->d()V

    goto :goto_1

    :cond_0
    iget-boolean v2, p0, Lb/b/a/a/y;->q:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lb/b/a/a/y;->o:Lb/b/a/a/y$a;

    invoke-virtual {v2, v0, p1}, Lb/b/a/a/y$a;->d(II)V

    iget-object p1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {p1}, Lb/b/a/a/r;->focusSelectionStart()V

    iget-object p1, p0, Lb/b/a/a/y;->o:Lb/b/a/a/y$a;

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lb/b/a/a/y;->r:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lb/b/a/a/y;->p:Lb/b/a/a/y$a;

    invoke-virtual {v2, v0, p1}, Lb/b/a/a/y$a;->d(II)V

    iget-object p1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {p1}, Lb/b/a/a/r;->focusSelectionEnd()V

    iget-object p1, p0, Lb/b/a/a/y;->p:Lb/b/a/a/y$a;

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-boolean v0, p0, Lb/b/a/a/y;->s:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lb/b/a/a/y;->q:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lb/b/a/a/y;->r:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lb/b/a/a/w;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lb/b/a/a/y;->b(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lb/b/a/a/y;->onDoubleTap(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    iget-boolean v0, p0, Lb/b/a/a/y;->s:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, p2}, Lb/b/a/a/y;->b(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lb/b/a/a/y;->t:Z

    iget-object p1, p0, Lb/b/a/a/y;->n:Lb/b/a/a/y$a;

    invoke-direct {p0, p1, p2}, Lb/b/a/a/y;->a(Lb/b/a/a/y$a;Landroid/view/MotionEvent;)V

    :goto_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lb/b/a/a/y;->q:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, p2}, Lb/b/a/a/y;->b(Landroid/view/MotionEvent;)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lb/b/a/a/y;->o:Lb/b/a/a/y$a;

    invoke-direct {p0, p1, p2}, Lb/b/a/a/y;->a(Lb/b/a/a/y$a;Landroid/view/MotionEvent;)V

    :goto_1
    return v1

    :cond_3
    iget-boolean v0, p0, Lb/b/a/a/y;->r:Z

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v1, :cond_4

    invoke-virtual {p0, p2}, Lb/b/a/a/y;->b(Landroid/view/MotionEvent;)Z

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lb/b/a/a/y;->p:Lb/b/a/a/y$a;

    invoke-direct {p0, p1, p2}, Lb/b/a/a/y;->a(Lb/b/a/a/y$a;Landroid/view/MotionEvent;)V

    :goto_2
    return v1

    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lb/b/a/a/w;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lb/b/a/a/w;->d:Lb/b/a/a/r;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lb/b/a/a/y;->n:Lb/b/a/a/y$a;

    invoke-virtual {v2, v0, v1}, Lb/b/a/a/y$a;->c(II)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lb/b/a/a/y;->o:Lb/b/a/a/y$a;

    invoke-virtual {v2, v0, v1}, Lb/b/a/a/y$a;->c(II)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lb/b/a/a/y;->p:Lb/b/a/a/y$a;

    invoke-virtual {v2, v0, v1}, Lb/b/a/a/y$a;->c(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lb/b/a/a/y;->t:Z

    invoke-super {p0, p1}, Lb/b/a/a/w;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v3
.end method
