.class public abstract Lcom/android/cglib/dx/a/b/Q;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/android/cglib/dx/a/b/p;

.field private final c:I

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/cglib/dx/a/b/p;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p3}, Lcom/android/cglib/dx/a/b/Q;->c(I)V

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/Q;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/cglib/dx/a/b/Q;->b:Lcom/android/cglib/dx/a/b/p;

    iput p3, p0, Lcom/android/cglib/dx/a/b/Q;->c:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/cglib/dx/a/b/Q;->d:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/cglib/dx/a/b/Q;->e:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "file == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static c(I)V
    .locals 1

    if-lez p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid alignment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/a/b/Q;->c:I

    return v0
.end method

.method public final a(I)I
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/android/cglib/dx/a/b/Q;->d:I

    if-ltz v0, :cond_0

    add-int/2addr v0, p1

    return v0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "fileOffset not yet set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "relative < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract a(Lcom/android/cglib/dx/a/b/B;)I
.end method

.method protected final a(Lcom/android/cglib/dx/d/a;)V
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/a/b/Q;->c:I

    invoke-interface {p1, v0}, Lcom/android/cglib/dx/d/q;->d(I)V

    return-void
.end method

.method public final b(I)I
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/android/cglib/dx/a/b/Q;->d:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/cglib/dx/a/b/Q;->c:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr p1, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/cglib/dx/a/b/Q;->d:I

    return p1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "fileOffset already set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "fileOffset < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Lcom/android/cglib/dx/a/b/p;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/Q;->b:Lcom/android/cglib/dx/a/b/p;

    return-object v0
.end method

.method public final b(Lcom/android/cglib/dx/d/a;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/Q;->g()V

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/b/Q;->a(Lcom/android/cglib/dx/d/a;)V

    invoke-interface {p1}, Lcom/android/cglib/dx/d/q;->b()I

    move-result v0

    iget v1, p0, Lcom/android/cglib/dx/a/b/Q;->d:I

    if-gez v1, :cond_0

    iput v0, p0, Lcom/android/cglib/dx/a/b/Q;->d:I

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_3

    :goto_0
    invoke-interface {p1}, Lcom/android/cglib/dx/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/Q;->a:Ljava/lang/String;

    const-string v2, "\n"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/Q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {p1, v3, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/b/Q;->c(Lcom/android/cglib/dx/d/a;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alignment mismatch: for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but expected "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/cglib/dx/a/b/Q;->d:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()I
    .locals 2

    iget v0, p0, Lcom/android/cglib/dx/a/b/Q;->d:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fileOffset not set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract c(Lcom/android/cglib/dx/d/a;)V
.end method

.method public abstract d()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/cglib/dx/a/b/B;",
            ">;"
        }
    .end annotation
.end method

.method public final e()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/Q;->h()V

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/Q;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/cglib/dx/a/b/Q;->e:Z

    return-void
.end method

.method protected abstract f()V
.end method

.method protected final g()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/cglib/dx/a/b/Q;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not prepared"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final h()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/cglib/dx/a/b/Q;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "already prepared"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract i()I
.end method
