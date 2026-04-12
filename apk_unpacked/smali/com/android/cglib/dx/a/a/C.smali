.class public abstract Lcom/android/cglib/dx/a/a/C;
.super Lcom/android/cglib/dx/a/a/h;
.source ""


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/b/t;)V
    .locals 2

    sget-object v0, Lcom/android/cglib/dx/a/a/k;->b:Lcom/android/cglib/dx/a/a/j;

    sget-object v1, Lcom/android/cglib/dx/c/b/o;->c:Lcom/android/cglib/dx/c/b/o;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/cglib/dx/a/a/h;-><init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/t;Lcom/android/cglib/dx/c/b/o;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/cglib/dx/a/a/j;)Lcom/android/cglib/dx/a/a/h;
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/cglib/dx/d/a;)V
    .locals 0

    return-void
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(I)Lcom/android/cglib/dx/a/a/h;
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->h()Lcom/android/cglib/dx/c/b/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/b/o;->d(I)Lcom/android/cglib/dx/c/b/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/h;->a(Lcom/android/cglib/dx/c/b/o;)Lcom/android/cglib/dx/a/a/h;

    move-result-object p1

    return-object p1
.end method
