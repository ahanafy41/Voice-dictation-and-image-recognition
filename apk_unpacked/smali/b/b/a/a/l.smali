.class Lb/b/a/a/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/a/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/a/a/r;->f()V
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

    iput-object p1, p0, Lb/b/a/a/l;->a:Lb/b/a/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZII)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/b/a/a/l;->a:Lb/b/a/a/r;

    invoke-static {p1}, Lb/b/a/a/r;->o(Lb/b/a/a/r;)Lb/b/a/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/a/a/e;->b()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lb/b/a/a/l;->a:Lb/b/a/a/r;

    invoke-static {p1}, Lb/b/a/a/r;->o(Lb/b/a/a/r;)Lb/b/a/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/a/a/e;->a()V

    :goto_0
    return-void
.end method
