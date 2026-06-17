.class Landroid/widget/RippleHelper$task;
.super Lcom/androlua/util/TimerTaskX;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RippleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "task"
.end annotation


# instance fields
.field final synthetic h:Landroid/widget/RippleHelper;


# direct methods
.method private constructor <init>(Landroid/widget/RippleHelper;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RippleHelper$task;->h:Landroid/widget/RippleHelper;

    invoke-direct {p0}, Lcom/androlua/util/TimerTaskX;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RippleHelper;Landroid/widget/RippleHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RippleHelper$task;-><init>(Landroid/widget/RippleHelper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->h:Landroid/widget/RippleHelper;

    invoke-static {v0}, Landroid/widget/RippleHelper;->a(Landroid/widget/RippleHelper;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eq v0, v3, :cond_1

    const/4 v1, 0x0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->h:Landroid/widget/RippleHelper;

    invoke-static {v0, v1}, Landroid/widget/RippleHelper;->b(Landroid/widget/RippleHelper;I)I

    invoke-virtual {p0, v1}, Lcom/androlua/util/TimerTaskX;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Landroid/widget/RippleHelper$task;->h:Landroid/widget/RippleHelper;

    invoke-static {v0}, Landroid/widget/RippleHelper;->e(Landroid/widget/RippleHelper;)I

    move-result v2

    div-int/lit8 v2, v2, 0x10

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Landroid/widget/RippleHelper;->e(Landroid/widget/RippleHelper;I)I

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->h:Landroid/widget/RippleHelper;

    invoke-static {v0}, Landroid/widget/RippleHelper;->i(Landroid/widget/RippleHelper;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/RippleHelper$task;->h:Landroid/widget/RippleHelper;

    invoke-static {v2}, Landroid/widget/RippleHelper;->e(Landroid/widget/RippleHelper;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->h:Landroid/widget/RippleHelper;

    invoke-static {v0}, Landroid/widget/RippleHelper;->g(Landroid/widget/RippleHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->h:Landroid/widget/RippleHelper;

    invoke-static {v0}, Landroid/widget/RippleHelper;->e(Landroid/widget/RippleHelper;)I

    move-result v0

    if-ge v0, v4, :cond_4

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->h:Landroid/widget/RippleHelper;

    invoke-static {v0, v1}, Landroid/widget/RippleHelper;->a(Landroid/widget/RippleHelper;I)I

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Landroid/widget/RippleHelper$task;->h:Landroid/widget/RippleHelper;

    invoke-static {v0}, Landroid/widget/RippleHelper;->d(Landroid/widget/RippleHelper;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v0, v5}, Landroid/widget/RippleHelper;->c(Landroid/widget/RippleHelper;I)I

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->h:Landroid/widget/RippleHelper;

    invoke-static {v0}, Landroid/widget/RippleHelper;->f(Landroid/widget/RippleHelper;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/RippleHelper$task;->h:Landroid/widget/RippleHelper;

    invoke-static {v5}, Landroid/widget/RippleHelper;->c(Landroid/widget/RippleHelper;)I

    move-result v5

    iget-object v6, p0, Landroid/widget/RippleHelper$task;->h:Landroid/widget/RippleHelper;

    invoke-static {v6}, Landroid/widget/RippleHelper;->d(Landroid/widget/RippleHelper;)I

    move-result v6

    div-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Landroid/widget/RippleHelper;->d(Landroid/widget/RippleHelper;I)I

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->h:Landroid/widget/RippleHelper;

    invoke-static {v0}, Landroid/widget/RippleHelper;->g(Landroid/widget/RippleHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->h:Landroid/widget/RippleHelper;

    invoke-static {v0}, Landroid/widget/RippleHelper;->c(Landroid/widget/RippleHelper;)I

    move-result v0

    iget-object v3, p0, Landroid/widget/RippleHelper$task;->h:Landroid/widget/RippleHelper;

    invoke-static {v3}, Landroid/widget/RippleHelper;->h(Landroid/widget/RippleHelper;)I

    move-result v3

    div-int/2addr v0, v3

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->h:Landroid/widget/RippleHelper;

    invoke-static {v0}, Landroid/widget/RippleHelper;->h(Landroid/widget/RippleHelper;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/widget/RippleHelper;->b(Landroid/widget/RippleHelper;I)I

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->h:Landroid/widget/RippleHelper;

    invoke-static {v0}, Landroid/widget/RippleHelper;->f(Landroid/widget/RippleHelper;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/widget/RippleHelper;->d(Landroid/widget/RippleHelper;I)I

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->h:Landroid/widget/RippleHelper;

    invoke-static {v0, v2}, Landroid/widget/RippleHelper;->a(Landroid/widget/RippleHelper;I)I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/widget/RippleHelper$task;->h:Landroid/widget/RippleHelper;

    invoke-static {v0}, Landroid/widget/RippleHelper;->b(Landroid/widget/RippleHelper;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->h:Landroid/widget/RippleHelper;

    invoke-static {v0}, Landroid/widget/RippleHelper;->c(Landroid/widget/RippleHelper;)I

    move-result v1

    div-int/lit8 v1, v1, 0x10

    iget-object v2, p0, Landroid/widget/RippleHelper$task;->h:Landroid/widget/RippleHelper;

    invoke-static {v2}, Landroid/widget/RippleHelper;->d(Landroid/widget/RippleHelper;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/widget/RippleHelper$task;->h:Landroid/widget/RippleHelper;

    invoke-static {v0}, Landroid/widget/RippleHelper;->d(Landroid/widget/RippleHelper;)I

    move-result v1

    :goto_0
    invoke-static {v0, v1}, Landroid/widget/RippleHelper;->c(Landroid/widget/RippleHelper;I)I

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->h:Landroid/widget/RippleHelper;

    invoke-static {v0}, Landroid/widget/RippleHelper;->f(Landroid/widget/RippleHelper;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/RippleHelper$task;->h:Landroid/widget/RippleHelper;

    invoke-static {v2}, Landroid/widget/RippleHelper;->c(Landroid/widget/RippleHelper;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/RippleHelper$task;->h:Landroid/widget/RippleHelper;

    invoke-static {v3}, Landroid/widget/RippleHelper;->d(Landroid/widget/RippleHelper;)I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Landroid/widget/RippleHelper;->d(Landroid/widget/RippleHelper;I)I

    iget-object v0, p0, Landroid/widget/RippleHelper$task;->h:Landroid/widget/RippleHelper;

    invoke-static {v0}, Landroid/widget/RippleHelper;->g(Landroid/widget/RippleHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_4
    :goto_1
    return-void
.end method
