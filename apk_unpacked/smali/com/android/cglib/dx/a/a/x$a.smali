.class Lcom/android/cglib/dx/a/a/x$a;
.super Lcom/android/cglib/dx/a/a/x$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cglib/dx/a/a/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private e:Lcom/android/cglib/dx/c/b/i;

.field final synthetic f:Lcom/android/cglib/dx/a/a/x;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/a/a/x;Lcom/android/cglib/dx/a/a/s;Lcom/android/cglib/dx/c/b/i;)V
    .locals 0

    iput-object p1, p0, Lcom/android/cglib/dx/a/a/x$a;->f:Lcom/android/cglib/dx/a/a/x;

    invoke-direct {p0, p1, p2}, Lcom/android/cglib/dx/a/a/x$b;-><init>(Lcom/android/cglib/dx/a/a/x;Lcom/android/cglib/dx/a/a/s;)V

    iput-object p3, p0, Lcom/android/cglib/dx/a/a/x$a;->e:Lcom/android/cglib/dx/c/b/i;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/c/b/f;)V
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/x$a;->e:Lcom/android/cglib/dx/c/b/i;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/b/i;->a(Lcom/android/cglib/dx/c/b/f;)Lcom/android/cglib/dx/c/b/n;

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Lcom/android/cglib/dx/c/b/j;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/cglib/dx/a/a/x$b;->a(Lcom/android/cglib/dx/c/b/j;)V

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/x$a;->a(Lcom/android/cglib/dx/c/b/f;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Lcom/android/cglib/dx/c/b/k;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/cglib/dx/a/a/x$b;->a(Lcom/android/cglib/dx/c/b/k;)V

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/x$a;->a(Lcom/android/cglib/dx/c/b/f;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Lcom/android/cglib/dx/c/b/u;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/cglib/dx/a/a/x$b;->a(Lcom/android/cglib/dx/c/b/u;)V

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/x$a;->a(Lcom/android/cglib/dx/c/b/f;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Lcom/android/cglib/dx/c/b/v;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/cglib/dx/a/a/x$b;->a(Lcom/android/cglib/dx/c/b/v;)V

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/x$a;->a(Lcom/android/cglib/dx/c/b/f;)V

    const/4 p1, 0x0

    throw p1
.end method
