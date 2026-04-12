.class public abstract Lcom/android/cglib/dx/a/b/E;
.super Lcom/android/cglib/dx/a/b/z;
.source ""


# instance fields
.field private final c:Lcom/android/cglib/dx/c/c/r;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/c/r;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/c/r;->e()Lcom/android/cglib/dx/c/c/w;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/a/b/z;-><init>(Lcom/android/cglib/dx/c/c/w;)V

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/E;->c:Lcom/android/cglib/dx/c/c/r;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/a/b/p;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/cglib/dx/a/b/z;->a(Lcom/android/cglib/dx/a/b/p;)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->n()Lcom/android/cglib/dx/a/b/V;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/E;->h()Lcom/android/cglib/dx/c/c/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/r;->f()Lcom/android/cglib/dx/c/c/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/t;->g()Lcom/android/cglib/dx/c/c/v;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/a/b/V;->b(Lcom/android/cglib/dx/c/c/v;)Lcom/android/cglib/dx/a/b/U;

    return-void
.end method

.method public final a(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->o()Lcom/android/cglib/dx/a/b/X;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->n()Lcom/android/cglib/dx/a/b/V;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/E;->c:Lcom/android/cglib/dx/c/c/r;

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/c/r;->f()Lcom/android/cglib/dx/c/c/t;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/z;->g()Lcom/android/cglib/dx/c/c/w;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/cglib/dx/a/b/X;->a(Lcom/android/cglib/dx/c/c/w;)I

    move-result v0

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/c/t;->g()Lcom/android/cglib/dx/c/c/v;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/cglib/dx/a/b/V;->a(Lcom/android/cglib/dx/c/c/v;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/b/E;->b(Lcom/android/cglib/dx/a/b/p;)I

    move-result p1

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/A;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/E;->c:Lcom/android/cglib/dx/c/c/r;

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/c/r;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p2, v3, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  class_idx: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/cglib/dx/d/i;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {p2, v4, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-array v2, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/E;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/android/cglib/dx/d/i;->d(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "  %-10s %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  name_idx:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/cglib/dx/d/i;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v0}, Lcom/android/cglib/dx/d/q;->writeShort(I)V

    invoke-interface {p2, p1}, Lcom/android/cglib/dx/d/q;->writeShort(I)V

    invoke-interface {p2, v1}, Lcom/android/cglib/dx/d/q;->writeInt(I)V

    return-void
.end method

.method protected abstract b(Lcom/android/cglib/dx/a/b/p;)I
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public final h()Lcom/android/cglib/dx/c/c/r;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/E;->c:Lcom/android/cglib/dx/c/c/r;

    return-object v0
.end method

.method protected abstract i()Ljava/lang/String;
.end method
