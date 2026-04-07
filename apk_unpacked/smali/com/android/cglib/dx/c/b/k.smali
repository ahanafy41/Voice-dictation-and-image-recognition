.class public final Lcom/android/cglib/dx/c/b/k;
.super Lcom/android/cglib/dx/c/b/f;
.source ""


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/b/q;Lcom/android/cglib/dx/c/b/t;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/b/n;)V
    .locals 0

    invoke-static {p4}, Lcom/android/cglib/dx/c/b/o;->a(Lcom/android/cglib/dx/c/b/n;)Lcom/android/cglib/dx/c/b/o;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/cglib/dx/c/b/k;-><init>(Lcom/android/cglib/dx/c/b/q;Lcom/android/cglib/dx/c/b/t;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/b/o;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/cglib/dx/c/b/q;Lcom/android/cglib/dx/c/b/t;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/b/o;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/cglib/dx/c/b/f;-><init>(Lcom/android/cglib/dx/c/b/q;Lcom/android/cglib/dx/c/b/t;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/b/o;)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/q;->b()I

    move-result p2

    const/4 p4, 0x5

    if-eq p2, p4, :cond_2

    const/4 p4, 0x6

    if-eq p2, p4, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/q;->b()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "can\'t mix branchingness with result"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus branchingness"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/c/b/f$b;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/cglib/dx/c/b/f$b;->a(Lcom/android/cglib/dx/c/b/k;)V

    return-void
.end method

.method public e()Lcom/android/cglib/dx/c/d/e;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/c/d/b;->c:Lcom/android/cglib/dx/c/d/b;

    return-object v0
.end method
