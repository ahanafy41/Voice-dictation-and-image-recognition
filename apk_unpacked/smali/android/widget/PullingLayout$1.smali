.class Landroid/widget/PullingLayout$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PullingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/PullingLayout;


# direct methods
.method constructor <init>(Landroid/widget/PullingLayout;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    iget-object v0, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    iget v1, v0, Landroid/widget/PullingLayout;->pullDownY:F

    invoke-static {v0}, Landroid/widget/PullingLayout;->a(Landroid/widget/PullingLayout;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p1, Landroid/widget/PullingLayout;->MOVE_SPEED:F

    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    invoke-static {p1}, Landroid/widget/PullingLayout;->b(Landroid/widget/PullingLayout;)Z

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x2

    if-nez p1, :cond_1

    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    invoke-static {p1}, Landroid/widget/PullingLayout;->k(Landroid/widget/PullingLayout;)I

    move-result p1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    iget v2, p1, Landroid/widget/PullingLayout;->pullDownY:F

    invoke-static {p1}, Landroid/widget/PullingLayout;->l(Landroid/widget/PullingLayout;)F

    move-result p1

    cmpg-float p1, v2, p1

    if-gtz p1, :cond_0

    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    invoke-static {p1}, Landroid/widget/PullingLayout;->l(Landroid/widget/PullingLayout;)F

    move-result v2

    iput v2, p1, Landroid/widget/PullingLayout;->pullDownY:F

    :goto_0
    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    invoke-static {p1}, Landroid/widget/PullingLayout;->m(Landroid/widget/PullingLayout;)Landroid/widget/PullingLayout$MyTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PullingLayout$MyTimer;->cancel()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    invoke-static {p1}, Landroid/widget/PullingLayout;->k(Landroid/widget/PullingLayout;)I

    move-result p1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    invoke-static {p1}, Landroid/widget/PullingLayout;->a(Landroid/widget/PullingLayout;)F

    move-result p1

    neg-float p1, p1

    iget-object v2, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    invoke-static {v2}, Landroid/widget/PullingLayout;->n(Landroid/widget/PullingLayout;)F

    move-result v2

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_1

    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    invoke-static {p1}, Landroid/widget/PullingLayout;->n(Landroid/widget/PullingLayout;)F

    move-result v2

    neg-float v2, v2

    invoke-static {p1, v2}, Landroid/widget/PullingLayout;->a(Landroid/widget/PullingLayout;F)F

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    iget v2, p1, Landroid/widget/PullingLayout;->pullDownY:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_2

    iget v4, p1, Landroid/widget/PullingLayout;->MOVE_SPEED:F

    sub-float/2addr v2, v4

    iput v2, p1, Landroid/widget/PullingLayout;->pullDownY:F

    goto :goto_2

    :cond_2
    invoke-static {p1}, Landroid/widget/PullingLayout;->a(Landroid/widget/PullingLayout;)F

    move-result p1

    cmpg-float p1, p1, v3

    if-gez p1, :cond_3

    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    iget v2, p1, Landroid/widget/PullingLayout;->MOVE_SPEED:F

    invoke-static {p1, v2}, Landroid/widget/PullingLayout;->b(Landroid/widget/PullingLayout;F)F

    :cond_3
    :goto_2
    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    iget v2, p1, Landroid/widget/PullingLayout;->pullDownY:F

    const/4 v4, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    iput v3, p1, Landroid/widget/PullingLayout;->pullDownY:F

    invoke-static {p1}, Landroid/widget/PullingLayout;->o(Landroid/widget/PullingLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    invoke-static {p1}, Landroid/widget/PullingLayout;->k(Landroid/widget/PullingLayout;)I

    move-result p1

    if-eq p1, v1, :cond_4

    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    invoke-static {p1}, Landroid/widget/PullingLayout;->k(Landroid/widget/PullingLayout;)I

    move-result p1

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    invoke-static {p1, v4}, Landroid/widget/PullingLayout;->f(Landroid/widget/PullingLayout;I)V

    :cond_4
    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    invoke-static {p1}, Landroid/widget/PullingLayout;->m(Landroid/widget/PullingLayout;)Landroid/widget/PullingLayout$MyTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PullingLayout$MyTimer;->cancel()V

    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_5
    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    invoke-static {p1}, Landroid/widget/PullingLayout;->a(Landroid/widget/PullingLayout;)F

    move-result p1

    cmpl-float p1, p1, v3

    if-lez p1, :cond_7

    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    invoke-static {p1, v3}, Landroid/widget/PullingLayout;->a(Landroid/widget/PullingLayout;F)F

    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    invoke-static {p1}, Landroid/widget/PullingLayout;->p(Landroid/widget/PullingLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    invoke-static {p1}, Landroid/widget/PullingLayout;->k(Landroid/widget/PullingLayout;)I

    move-result p1

    if-eq p1, v1, :cond_6

    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    invoke-static {p1}, Landroid/widget/PullingLayout;->k(Landroid/widget/PullingLayout;)I

    move-result p1

    if-eq p1, v0, :cond_6

    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    invoke-static {p1, v4}, Landroid/widget/PullingLayout;->f(Landroid/widget/PullingLayout;I)V

    :cond_6
    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    invoke-static {p1}, Landroid/widget/PullingLayout;->m(Landroid/widget/PullingLayout;)Landroid/widget/PullingLayout$MyTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PullingLayout$MyTimer;->cancel()V

    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_7
    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    iget v0, p1, Landroid/widget/PullingLayout;->pullDownY:F

    invoke-static {p1}, Landroid/widget/PullingLayout;->a(Landroid/widget/PullingLayout;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr v0, p1

    cmpl-float p1, v0, v3

    if-nez p1, :cond_8

    iget-object p1, p0, Landroid/widget/PullingLayout$1;->a:Landroid/widget/PullingLayout;

    invoke-static {p1}, Landroid/widget/PullingLayout;->m(Landroid/widget/PullingLayout;)Landroid/widget/PullingLayout$MyTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PullingLayout$MyTimer;->cancel()V

    :cond_8
    return-void
.end method
