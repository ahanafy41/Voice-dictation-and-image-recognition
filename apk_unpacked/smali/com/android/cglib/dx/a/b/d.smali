.class public final Lcom/android/cglib/dx/a/b/d;
.super Lcom/android/cglib/dx/a/b/M;
.source ""


# instance fields
.field private e:Lcom/android/cglib/dx/a/b/c;


# virtual methods
.method public a()Lcom/android/cglib/dx/a/b/C;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/b/C;->v:Lcom/android/cglib/dx/a/b/C;

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/b/p;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->q()Lcom/android/cglib/dx/a/b/L;

    move-result-object p1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/d;->e:Lcom/android/cglib/dx/a/b/c;

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/a/b/L;->b(Lcom/android/cglib/dx/a/b/M;)Lcom/android/cglib/dx/a/b/M;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/a/b/c;

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/d;->e:Lcom/android/cglib/dx/a/b/c;

    return-void
.end method

.method protected b(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;)V
    .locals 3

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/d;->e:Lcom/android/cglib/dx/a/b/c;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/M;->d()I

    move-result p1

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  annotations_off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/cglib/dx/d/i;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, p1}, Lcom/android/cglib/dx/d/q;->writeInt(I)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/d;->e:Lcom/android/cglib/dx/a/b/c;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/b/c;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
