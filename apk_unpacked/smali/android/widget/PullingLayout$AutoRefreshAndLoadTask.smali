.class Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PullingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRefreshAndLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Float;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Landroid/widget/PullingLayout;


# direct methods
.method private constructor <init>(Landroid/widget/PullingLayout;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->b:Landroid/widget/PullingLayout;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/16 p1, 0x10

    iput p1, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->a:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/PullingLayout;Landroid/widget/PullingLayout$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;-><init>(Landroid/widget/PullingLayout;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    :goto_0
    iget-object v0, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->b:Landroid/widget/PullingLayout;

    iget v1, v0, Landroid/widget/PullingLayout;->pullDownY:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0}, Landroid/widget/PullingLayout;->l(Landroid/widget/PullingLayout;)F

    move-result v0

    mul-float v0, v0, v2

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->b:Landroid/widget/PullingLayout;

    iget v1, v0, Landroid/widget/PullingLayout;->pullDownY:F

    iget v2, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->a:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/widget/PullingLayout;->pullDownY:F

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Float;

    iget v0, v0, Landroid/widget/PullingLayout;->pullDownY:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    :try_start_0
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->b:Landroid/widget/PullingLayout;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/widget/PullingLayout;->f(Landroid/widget/PullingLayout;I)V

    iget-object p1, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->b:Landroid/widget/PullingLayout;

    invoke-static {p1}, Landroid/widget/PullingLayout;->c(Landroid/widget/PullingLayout;)Landroid/widget/PullingLayout$OnRefreshListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->b:Landroid/widget/PullingLayout;

    invoke-static {p1}, Landroid/widget/PullingLayout;->c(Landroid/widget/PullingLayout;)Landroid/widget/PullingLayout$OnRefreshListener;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->b:Landroid/widget/PullingLayout;

    invoke-interface {p1, v0}, Landroid/widget/PullingLayout$OnRefreshListener;->onRefresh(Landroid/widget/PullingLayout;)V

    :cond_0
    iget-object p1, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->b:Landroid/widget/PullingLayout;

    invoke-static {p1}, Landroid/widget/PullingLayout;->q(Landroid/widget/PullingLayout;)V

    return-void
.end method

.method protected varargs a([Ljava/lang/Float;)V
    .locals 1

    iget-object p1, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->b:Landroid/widget/PullingLayout;

    iget v0, p1, Landroid/widget/PullingLayout;->pullDownY:F

    invoke-static {p1}, Landroid/widget/PullingLayout;->l(Landroid/widget/PullingLayout;)F

    move-result p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    iget-object p1, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->b:Landroid/widget/PullingLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/widget/PullingLayout;->f(Landroid/widget/PullingLayout;I)V

    :cond_0
    iget-object p1, p0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->b:Landroid/widget/PullingLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->a([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Float;

    invoke-virtual {p0, p1}, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;->a([Ljava/lang/Float;)V

    return-void
.end method
