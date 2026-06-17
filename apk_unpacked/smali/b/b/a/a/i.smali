.class Lb/b/a/a/i;
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

    iput-object p1, p0, Lb/b/a/a/i;->a:Lb/b/a/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lb/b/a/a/i;->a:Lb/b/a/a/r;

    invoke-static {v0}, Lb/b/a/a/r;->a(Lb/b/a/a/r;)Lb/b/a/a/r$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/b/a/a/r$a;->b(Z)V

    iget-object v0, p0, Lb/b/a/a/i;->a:Lb/b/a/a/r;

    iget v1, v0, Lb/b/a/a/r;->j:I

    if-lez v1, :cond_0

    invoke-static {v0}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result v0

    iget-object v1, p0, Lb/b/a/a/i;->a:Lb/b/a/a/r;

    iget-object v2, v1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    iget v1, v1, Lb/b/a/a/r;->j:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Lb/b/a/b/g;->b(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb/b/a/a/i;->a:Lb/b/a/a/r;

    invoke-static {v0}, Lb/b/a/a/r;->m(Lb/b/a/a/r;)Ljava/lang/Runnable;

    move-result-object v1

    sget-wide v2, Lb/b/a/a/r;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
