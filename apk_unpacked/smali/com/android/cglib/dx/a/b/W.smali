.class public final Lcom/android/cglib/dx/a/b/W;
.super Lcom/android/cglib/dx/a/b/z;
.source ""


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/c/w;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/b/z;-><init>(Lcom/android/cglib/dx/c/c/w;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/android/cglib/dx/a/b/C;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/b/C;->c:Lcom/android/cglib/dx/a/b/C;

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/b/p;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->n()Lcom/android/cglib/dx/a/b/V;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/z;->g()Lcom/android/cglib/dx/c/c/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/w;->f()Lcom/android/cglib/dx/c/c/v;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/a/b/V;->b(Lcom/android/cglib/dx/c/c/v;)Lcom/android/cglib/dx/a/b/U;

    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/z;->g()Lcom/android/cglib/dx/c/c/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/w;->f()Lcom/android/cglib/dx/c/c/v;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->n()Lcom/android/cglib/dx/a/b/V;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/a/b/V;->a(Lcom/android/cglib/dx/c/c/v;)I

    move-result p1

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/A;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/v;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  descriptor_idx: "

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

.method public c()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
