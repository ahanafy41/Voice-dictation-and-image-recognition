.class public final Lcom/android/cglib/dx/a/b/q;
.super Lcom/android/cglib/dx/a/b/M;
.source ""


# instance fields
.field private final e:Lcom/android/cglib/dx/c/c/c;

.field private f:[B


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/c/c;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/cglib/dx/a/b/M;-><init>(II)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/q;->e:Lcom/android/cglib/dx/c/c/c;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/q;->f:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "array == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/android/cglib/dx/a/b/C;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/b/C;->q:Lcom/android/cglib/dx/a/b/C;

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/b/p;)V
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/q;->e:Lcom/android/cglib/dx/c/c/c;

    invoke-static {p1, v0}, Lcom/android/cglib/dx/a/b/ba;->a(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/c/c/a;)V

    return-void
.end method

.method protected b(Lcom/android/cglib/dx/a/b/M;)I
    .locals 1

    check-cast p1, Lcom/android/cglib/dx/a/b/q;

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/q;->e:Lcom/android/cglib/dx/c/c/c;

    iget-object p1, p1, Lcom/android/cglib/dx/a/b/q;->e:Lcom/android/cglib/dx/c/c/c;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/c/a;->a(Lcom/android/cglib/dx/c/c/a;)I

    move-result p1

    return p1
.end method

.method protected b(Lcom/android/cglib/dx/a/b/Q;I)V
    .locals 2

    new-instance p2, Lcom/android/cglib/dx/d/d;

    invoke-direct {p2}, Lcom/android/cglib/dx/d/d;-><init>()V

    new-instance v0, Lcom/android/cglib/dx/a/b/ba;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/Q;->b()Lcom/android/cglib/dx/a/b/p;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/android/cglib/dx/a/b/ba;-><init>(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;)V

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/q;->e:Lcom/android/cglib/dx/c/c/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/cglib/dx/a/b/ba;->a(Lcom/android/cglib/dx/c/c/c;Z)V

    invoke-virtual {p2}, Lcom/android/cglib/dx/d/d;->h()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/q;->f:[B

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/q;->f:[B

    array-length p1, p1

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/b/M;->a(I)V

    return-void
.end method

.method protected b(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;)V
    .locals 3

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/M;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " encoded array"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v0, Lcom/android/cglib/dx/a/b/ba;

    invoke-direct {v0, p1, p2}, Lcom/android/cglib/dx/a/b/ba;-><init>(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;)V

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/q;->e:Lcom/android/cglib/dx/c/c/c;

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lcom/android/cglib/dx/a/b/ba;->a(Lcom/android/cglib/dx/c/c/c;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/q;->f:[B

    invoke-interface {p2, p1}, Lcom/android/cglib/dx/d/q;->write([B)V

    :goto_0
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/q;->e:Lcom/android/cglib/dx/c/c/c;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/q;->e:Lcom/android/cglib/dx/c/c/c;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/c;->hashCode()I

    move-result v0

    return v0
.end method
