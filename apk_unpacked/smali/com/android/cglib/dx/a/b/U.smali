.class public final Lcom/android/cglib/dx/a/b/U;
.super Lcom/android/cglib/dx/a/b/A;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final b:Lcom/android/cglib/dx/c/c/v;

.field private c:Lcom/android/cglib/dx/a/b/T;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/c/v;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/A;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/U;->b:Lcom/android/cglib/dx/c/c/v;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/U;->c:Lcom/android/cglib/dx/a/b/T;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/android/cglib/dx/a/b/C;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/b/C;->b:Lcom/android/cglib/dx/a/b/C;

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/b/p;)V
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/U;->c:Lcom/android/cglib/dx/a/b/T;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->m()Lcom/android/cglib/dx/a/b/L;

    move-result-object p1

    new-instance v0, Lcom/android/cglib/dx/a/b/T;

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/U;->b:Lcom/android/cglib/dx/c/c/v;

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/a/b/T;-><init>(Lcom/android/cglib/dx/c/c/v;)V

    iput-object v0, p0, Lcom/android/cglib/dx/a/b/U;->c:Lcom/android/cglib/dx/a/b/T;

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/U;->c:Lcom/android/cglib/dx/a/b/T;

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/a/b/L;->a(Lcom/android/cglib/dx/a/b/M;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;)V
    .locals 4

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/U;->c:Lcom/android/cglib/dx/a/b/T;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/M;->d()I

    move-result p1

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/A;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/U;->b:Lcom/android/cglib/dx/c/c/v;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/android/cglib/dx/c/c/v;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  string_data_off: "

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

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/cglib/dx/a/b/U;

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/U;->b:Lcom/android/cglib/dx/c/c/v;

    iget-object p1, p1, Lcom/android/cglib/dx/a/b/U;->b:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/c/a;->a(Lcom/android/cglib/dx/c/c/a;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/cglib/dx/a/b/U;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/android/cglib/dx/a/b/U;

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/U;->b:Lcom/android/cglib/dx/c/c/v;

    iget-object p1, p1, Lcom/android/cglib/dx/a/b/U;->b:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/c/v;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g()Lcom/android/cglib/dx/c/c/v;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/U;->b:Lcom/android/cglib/dx/c/c/v;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/U;->b:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/v;->hashCode()I

    move-result v0

    return v0
.end method
