.class public final Lcom/android/cglib/dx/a/b/v;
.super Lcom/android/cglib/dx/a/b/E;
.source ""


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/c/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/b/E;-><init>(Lcom/android/cglib/dx/c/c/r;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/android/cglib/dx/a/b/C;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/b/C;->e:Lcom/android/cglib/dx/a/b/C;

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/b/p;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/cglib/dx/a/b/E;->a(Lcom/android/cglib/dx/a/b/p;)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->o()Lcom/android/cglib/dx/a/b/X;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/v;->j()Lcom/android/cglib/dx/c/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/j;->getType()Lcom/android/cglib/dx/c/d/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/a/b/X;->b(Lcom/android/cglib/dx/c/d/c;)Lcom/android/cglib/dx/a/b/W;

    return-void
.end method

.method protected b(Lcom/android/cglib/dx/a/b/p;)I
    .locals 1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->o()Lcom/android/cglib/dx/a/b/X;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/v;->j()Lcom/android/cglib/dx/c/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/j;->getType()Lcom/android/cglib/dx/c/d/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/a/b/X;->a(Lcom/android/cglib/dx/c/d/c;)I

    move-result p1

    return p1
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    const-string v0, "type_idx"

    return-object v0
.end method

.method public j()Lcom/android/cglib/dx/c/c/j;
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/E;->h()Lcom/android/cglib/dx/c/c/r;

    move-result-object v0

    check-cast v0, Lcom/android/cglib/dx/c/c/j;

    return-object v0
.end method
