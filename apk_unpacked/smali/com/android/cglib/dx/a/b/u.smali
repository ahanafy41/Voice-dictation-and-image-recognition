.class public final Lcom/android/cglib/dx/a/b/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/cglib/dx/d/r;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/cglib/dx/d/r;",
        "Ljava/lang/Comparable<",
        "Lcom/android/cglib/dx/a/b/u;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/android/cglib/dx/c/c/j;

.field private b:Lcom/android/cglib/dx/a/b/c;


# virtual methods
.method public a(Lcom/android/cglib/dx/a/b/u;)I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/u;->a:Lcom/android/cglib/dx/c/c/j;

    iget-object p1, p1, Lcom/android/cglib/dx/a/b/u;->a:Lcom/android/cglib/dx/c/c/j;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/c/a;->a(Lcom/android/cglib/dx/c/c/a;)I

    move-result p1

    return p1
.end method

.method public a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/u;->a:Lcom/android/cglib/dx/c/c/j;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/c/r;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/u;->b:Lcom/android/cglib/dx/a/b/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/b/p;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->e()Lcom/android/cglib/dx/a/b/w;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->q()Lcom/android/cglib/dx/a/b/L;

    move-result-object p1

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/u;->a:Lcom/android/cglib/dx/c/c/j;

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/a/b/w;->b(Lcom/android/cglib/dx/c/c/j;)Lcom/android/cglib/dx/a/b/v;

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/u;->b:Lcom/android/cglib/dx/a/b/c;

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/a/b/L;->b(Lcom/android/cglib/dx/a/b/M;)Lcom/android/cglib/dx/a/b/M;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/a/b/c;

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/u;->b:Lcom/android/cglib/dx/a/b/c;

    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->e()Lcom/android/cglib/dx/a/b/w;

    move-result-object p1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/u;->a:Lcom/android/cglib/dx/c/c/j;

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/a/b/w;->a(Lcom/android/cglib/dx/c/c/j;)I

    move-result p1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/u;->b:Lcom/android/cglib/dx/a/b/c;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/b/M;->d()I

    move-result v0

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/u;->a:Lcom/android/cglib/dx/c/c/j;

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/c/r;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      field_idx:       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/cglib/dx/d/i;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p2, v2, v1}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      annotations_off: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/cglib/dx/d/i;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, p1}, Lcom/android/cglib/dx/d/q;->writeInt(I)V

    invoke-interface {p2, v0}, Lcom/android/cglib/dx/d/q;->writeInt(I)V

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/cglib/dx/a/b/u;

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/b/u;->a(Lcom/android/cglib/dx/a/b/u;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/cglib/dx/a/b/u;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/u;->a:Lcom/android/cglib/dx/c/c/j;

    check-cast p1, Lcom/android/cglib/dx/a/b/u;

    iget-object p1, p1, Lcom/android/cglib/dx/a/b/u;->a:Lcom/android/cglib/dx/c/c/j;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/c/r;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/u;->a:Lcom/android/cglib/dx/c/c/j;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/r;->hashCode()I

    move-result v0

    return v0
.end method
