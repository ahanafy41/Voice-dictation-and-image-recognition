.class public final Lcom/android/cglib/dx/a/b/H;
.super Lcom/android/cglib/dx/a/b/E;
.source ""


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/c/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/b/E;-><init>(Lcom/android/cglib/dx/c/c/r;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/android/cglib/dx/a/b/C;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/b/C;->f:Lcom/android/cglib/dx/a/b/C;

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/b/p;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/cglib/dx/a/b/E;->a(Lcom/android/cglib/dx/a/b/p;)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->k()Lcom/android/cglib/dx/a/b/P;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/H;->j()Lcom/android/cglib/dx/c/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/d;->g()Lcom/android/cglib/dx/c/d/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/a/b/P;->b(Lcom/android/cglib/dx/c/d/a;)Lcom/android/cglib/dx/a/b/O;

    return-void
.end method

.method protected b(Lcom/android/cglib/dx/a/b/p;)I
    .locals 1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->k()Lcom/android/cglib/dx/a/b/P;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/H;->j()Lcom/android/cglib/dx/c/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/d;->g()Lcom/android/cglib/dx/c/d/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/a/b/P;->a(Lcom/android/cglib/dx/c/d/a;)I

    move-result p1

    return p1
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    const-string v0, "proto_idx"

    return-object v0
.end method

.method public j()Lcom/android/cglib/dx/c/c/d;
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/E;->h()Lcom/android/cglib/dx/c/c/r;

    move-result-object v0

    check-cast v0, Lcom/android/cglib/dx/c/c/d;

    return-object v0
.end method
