.class Lb/b/a/a/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/a/a/r$a;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lb/b/a/a/r$a;


# direct methods
.method constructor <init>(Lb/b/a/a/r$a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/a/p;->b:Lb/b/a/a/r$a;

    iput-object p2, p0, Lb/b/a/a/p;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lb/b/a/a/p;->b:Lb/b/a/a/r$a;

    iget-object v0, v0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v0, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    iget-object v1, p0, Lb/b/a/a/p;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lb/b/a/b/g;->a(Ljava/util/List;)V

    sget-object v0, Lc/a/a/a/f;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lc/a/a/a/f;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/a/a/p;->b:Lb/b/a/a/r$a;

    iget-object v0, v0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v0, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lc/a/a/a/f;->o:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lb/b/a/a/p;->b:Lb/b/a/a/r$a;

    iget-object v0, v0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v0, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lb/b/a/b/m;->d()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    invoke-virtual {v0, v1}, Lb/b/a/b/g;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lb/b/a/a/p;->b:Lb/b/a/a/r$a;

    iget-object v0, v0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method
