.class public final Lcom/android/cglib/dx/a/a/e;
.super Lcom/android/cglib/dx/a/a/C;
.source ""


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/b/t;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/a/C;-><init>(Lcom/android/cglib/dx/c/b/t;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/cglib/dx/c/b/o;)Lcom/android/cglib/dx/a/a/h;
    .locals 1

    new-instance p1, Lcom/android/cglib/dx/a/a/e;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->g()Lcom/android/cglib/dx/c/b/t;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/cglib/dx/a/a/e;-><init>(Lcom/android/cglib/dx/c/b/t;)V

    return-object p1
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Z)Ljava/lang/String;
    .locals 0

    const-string p1, "code-address"

    return-object p1
.end method
