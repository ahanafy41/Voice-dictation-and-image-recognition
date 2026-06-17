.class Lb/b/a/a/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/b/a/a/r;


# direct methods
.method constructor <init>(Lb/b/a/a/r;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/a/g;->a:Lb/b/a/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lb/b/a/a/g;->a:Lb/b/a/a/r;

    invoke-static {v0}, Lb/b/a/a/r;->a(Lb/b/a/a/r;)Lb/b/a/a/r$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/a/r$a;->e()V

    iget-object v0, p0, Lb/b/a/a/g;->a:Lb/b/a/a/r;

    invoke-virtual {v0}, Lb/b/a/a/r;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/a/a/g;->a:Lb/b/a/a/r;

    invoke-static {v0}, Lb/b/a/a/r;->b(Lb/b/a/a/r;)Ljava/lang/Runnable;

    move-result-object v1

    sget-wide v2, Lb/b/a/a/r;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
