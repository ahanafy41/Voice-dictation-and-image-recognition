.class public final Lcom/android/cglib/dx/a/b/c;
.super Lcom/android/cglib/dx/a/b/M;
.source ""


# instance fields
.field private final e:Lcom/android/cglib/dx/c/a/c;

.field private final f:[Lcom/android/cglib/dx/a/b/b;


# virtual methods
.method public a()Lcom/android/cglib/dx/a/b/C;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/b/C;->k:Lcom/android/cglib/dx/a/b/C;

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/b/p;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->a()Lcom/android/cglib/dx/a/b/L;

    move-result-object p1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/c;->f:[Lcom/android/cglib/dx/a/b/b;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/c;->f:[Lcom/android/cglib/dx/a/b/b;

    aget-object v3, v2, v1

    invoke-virtual {p1, v3}, Lcom/android/cglib/dx/a/b/L;->b(Lcom/android/cglib/dx/a/b/M;)Lcom/android/cglib/dx/a/b/M;

    move-result-object v3

    check-cast v3, Lcom/android/cglib/dx/a/b/b;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected b(Lcom/android/cglib/dx/a/b/M;)I
    .locals 1

    check-cast p1, Lcom/android/cglib/dx/a/b/c;

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/c;->e:Lcom/android/cglib/dx/c/a/c;

    iget-object p1, p1, Lcom/android/cglib/dx/a/b/c;->e:Lcom/android/cglib/dx/c/a/c;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/a/c;->a(Lcom/android/cglib/dx/c/a/c;)I

    move-result p1

    return p1
.end method

.method protected b(Lcom/android/cglib/dx/a/b/Q;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/c;->f:[Lcom/android/cglib/dx/a/b/b;

    invoke-static {p1}, Lcom/android/cglib/dx/a/b/b;->a([Lcom/android/cglib/dx/a/b/b;)V

    return-void
.end method

.method protected b(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;)V
    .locals 6

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->e()Z

    move-result p1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/c;->f:[Lcom/android/cglib/dx/a/b/b;

    array-length v0, v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/M;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " annotation set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/cglib/dx/d/i;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v0}, Lcom/android/cglib/dx/d/q;->writeInt(I)V

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/c;->f:[Lcom/android/cglib/dx/a/b/b;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/cglib/dx/a/b/M;->d()I

    move-result v3

    if-eqz p1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  entries["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/cglib/dx/d/i;->g(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v4}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/android/cglib/dx/a/b/c;->f:[Lcom/android/cglib/dx/a/b/b;

    aget-object v4, v4, v2

    const-string v5, "    "

    invoke-virtual {v4, p2, v5}, Lcom/android/cglib/dx/a/b/b;->a(Lcom/android/cglib/dx/d/a;Ljava/lang/String;)V

    :cond_1
    invoke-interface {p2, v3}, Lcom/android/cglib/dx/d/q;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/c;->e:Lcom/android/cglib/dx/c/a/c;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/c;->e:Lcom/android/cglib/dx/c/a/c;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/a/c;->hashCode()I

    move-result v0

    return v0
.end method
