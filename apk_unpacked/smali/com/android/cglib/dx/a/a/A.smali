.class public final Lcom/android/cglib/dx/a/a/A;
.super Lcom/android/cglib/dx/a/a/l;
.source ""


# instance fields
.field private e:Lcom/android/cglib/dx/a/a/e;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/t;Lcom/android/cglib/dx/c/b/o;Lcom/android/cglib/dx/a/a/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/cglib/dx/a/a/l;-><init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/t;Lcom/android/cglib/dx/c/b/o;)V

    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/android/cglib/dx/a/a/A;->e:Lcom/android/cglib/dx/a/a/e;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "target == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/a/a/e;)Lcom/android/cglib/dx/a/a/A;
    .locals 4

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->f()Lcom/android/cglib/dx/a/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/j;->f()Lcom/android/cglib/dx/a/a/j;

    move-result-object v0

    new-instance v1, Lcom/android/cglib/dx/a/a/A;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->g()Lcom/android/cglib/dx/c/b/t;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->h()Lcom/android/cglib/dx/c/b/o;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3, p1}, Lcom/android/cglib/dx/a/a/A;-><init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/t;Lcom/android/cglib/dx/c/b/o;Lcom/android/cglib/dx/a/a/e;)V

    return-object v1
.end method

.method public a(Lcom/android/cglib/dx/a/a/j;)Lcom/android/cglib/dx/a/a/h;
    .locals 4

    new-instance v0, Lcom/android/cglib/dx/a/a/A;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->g()Lcom/android/cglib/dx/c/b/t;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->h()Lcom/android/cglib/dx/c/b/o;

    move-result-object v2

    iget-object v3, p0, Lcom/android/cglib/dx/a/a/A;->e:Lcom/android/cglib/dx/a/a/e;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/cglib/dx/a/a/A;-><init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/t;Lcom/android/cglib/dx/c/b/o;Lcom/android/cglib/dx/a/a/e;)V

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/c/b/o;)Lcom/android/cglib/dx/a/a/h;
    .locals 4

    new-instance v0, Lcom/android/cglib/dx/a/a/A;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->f()Lcom/android/cglib/dx/a/a/j;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->g()Lcom/android/cglib/dx/c/b/t;

    move-result-object v2

    iget-object v3, p0, Lcom/android/cglib/dx/a/a/A;->e:Lcom/android/cglib/dx/a/a/e;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/cglib/dx/a/a/A;-><init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/t;Lcom/android/cglib/dx/c/b/o;Lcom/android/cglib/dx/a/a/e;)V

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/A;->e:Lcom/android/cglib/dx/a/a/e;

    if-nez v0, :cond_0

    const-string v0, "????"

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/h;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/android/cglib/dx/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/A;->e:Lcom/android/cglib/dx/a/a/e;

    return-object v0
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/A;->e:Lcom/android/cglib/dx/a/a/e;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/h;->c()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/A;->e:Lcom/android/cglib/dx/a/a/e;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/h;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->c()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public o()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/A;->e:Lcom/android/cglib/dx/a/a/e;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
