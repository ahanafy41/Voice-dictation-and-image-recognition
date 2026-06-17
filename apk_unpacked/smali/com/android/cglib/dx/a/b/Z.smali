.class public abstract Lcom/android/cglib/dx/a/b/Z;
.super Lcom/android/cglib/dx/a/b/Q;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/cglib/dx/a/b/p;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/cglib/dx/a/b/Q;-><init>(Ljava/lang/String;Lcom/android/cglib/dx/a/b/p;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/cglib/dx/a/b/B;)I
    .locals 1

    check-cast p1, Lcom/android/cglib/dx/a/b/A;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/A;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/B;->c()I

    move-result p1

    mul-int v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/android/cglib/dx/a/b/Q;->a(I)I

    move-result p1

    return p1
.end method

.method protected final c(Lcom/android/cglib/dx/d/a;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/Q;->b()Lcom/android/cglib/dx/a/b/p;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/Q;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/Q;->d()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cglib/dx/a/b/B;

    invoke-virtual {v3, v0, p1}, Lcom/android/cglib/dx/a/b/B;->a(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;)V

    invoke-interface {p1, v1}, Lcom/android/cglib/dx/d/q;->d(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final f()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/Q;->b()Lcom/android/cglib/dx/a/b/p;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/Z;->j()V

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/Q;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cglib/dx/a/b/B;

    invoke-virtual {v2, v0}, Lcom/android/cglib/dx/a/b/B;->a(Lcom/android/cglib/dx/a/b/p;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/Q;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cglib/dx/a/b/B;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/b/B;->c()I

    move-result v0

    mul-int v1, v1, v0

    return v1
.end method

.method protected abstract j()V
.end method
