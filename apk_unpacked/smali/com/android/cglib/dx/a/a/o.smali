.class public final Lcom/android/cglib/dx/a/a/o;
.super Lcom/android/cglib/dx/a/a/C;
.source ""


# instance fields
.field private final e:Lcom/android/cglib/dx/c/b/n;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/b/t;Lcom/android/cglib/dx/c/b/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/a/C;-><init>(Lcom/android/cglib/dx/c/b/t;)V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/android/cglib/dx/a/a/o;->e:Lcom/android/cglib/dx/c/b/n;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "local == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/c/b/o;)Lcom/android/cglib/dx/a/a/h;
    .locals 2

    new-instance p1, Lcom/android/cglib/dx/a/a/o;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->g()Lcom/android/cglib/dx/c/b/t;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/o;->e:Lcom/android/cglib/dx/c/b/n;

    invoke-direct {p1, v0, v1}, Lcom/android/cglib/dx/a/a/o;-><init>(Lcom/android/cglib/dx/c/b/t;Lcom/android/cglib/dx/c/b/n;)V

    return-object p1
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/o;->e:Lcom/android/cglib/dx/c/b/n;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Z)Ljava/lang/String;
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "local-end "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/cglib/dx/a/a/o;->e:Lcom/android/cglib/dx/c/b/n;

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/r;->a(Lcom/android/cglib/dx/c/b/n;)Ljava/lang/String;

    const/4 p1, 0x0

    throw p1
.end method

.method public b(I)Lcom/android/cglib/dx/a/a/h;
    .locals 3

    new-instance v0, Lcom/android/cglib/dx/a/a/o;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->g()Lcom/android/cglib/dx/c/b/t;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cglib/dx/a/a/o;->e:Lcom/android/cglib/dx/c/b/n;

    invoke-virtual {v2, p1}, Lcom/android/cglib/dx/c/b/n;->b(I)Lcom/android/cglib/dx/c/b/n;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/cglib/dx/a/a/o;-><init>(Lcom/android/cglib/dx/c/b/t;Lcom/android/cglib/dx/c/b/n;)V

    return-object v0
.end method

.method public l()Lcom/android/cglib/dx/c/b/n;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/o;->e:Lcom/android/cglib/dx/c/b/n;

    return-object v0
.end method
