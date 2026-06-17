.class public final Lcom/android/cglib/dx/c/b/u;
.super Lcom/android/cglib/dx/c/b/d;
.source ""


# instance fields
.field private final f:Lcom/android/cglib/dx/c/d/e;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/b/q;Lcom/android/cglib/dx/c/b/t;Lcom/android/cglib/dx/c/b/o;Lcom/android/cglib/dx/c/d/e;Lcom/android/cglib/dx/c/c/a;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/cglib/dx/c/b/d;-><init>(Lcom/android/cglib/dx/c/b/q;Lcom/android/cglib/dx/c/b/t;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/b/o;Lcom/android/cglib/dx/c/c/a;)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/q;->b()I

    move-result p1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_1

    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/android/cglib/dx/c/b/u;->f:Lcom/android/cglib/dx/c/d/e;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "catches == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus branchingness"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/c/b/f$b;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/cglib/dx/c/b/f$b;->a(Lcom/android/cglib/dx/c/b/u;)V

    return-void
.end method

.method public e()Lcom/android/cglib/dx/c/d/e;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/u;->f:Lcom/android/cglib/dx/c/d/e;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/d;->k()Lcom/android/cglib/dx/c/c/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/cglib/dx/d/r;->a()Ljava/lang/String;

    move-result-object v1

    instance-of v2, v0, Lcom/android/cglib/dx/c/c/v;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/v;->i()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/cglib/dx/c/b/u;->f:Lcom/android/cglib/dx/c/d/e;

    invoke-static {v1}, Lcom/android/cglib/dx/c/b/v;->a(Lcom/android/cglib/dx/c/d/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
