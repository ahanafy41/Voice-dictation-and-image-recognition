.class Lcom/android/cglib/dx/a/a/w;
.super Lcom/android/cglib/dx/c/b/f$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cglib/dx/a/a/x;->a(Lcom/android/cglib/dx/c/b/r;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Z

.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method constructor <init>([ZII)V
    .locals 0

    iput-object p1, p0, Lcom/android/cglib/dx/a/a/w;->a:[Z

    iput p2, p0, Lcom/android/cglib/dx/a/a/w;->b:I

    iput p3, p0, Lcom/android/cglib/dx/a/a/w;->c:I

    invoke-direct {p0}, Lcom/android/cglib/dx/c/b/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/c/b/j;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/f;->g()Lcom/android/cglib/dx/c/b/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/q;->d()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/d;->k()Lcom/android/cglib/dx/c/c/a;

    move-result-object v0

    check-cast v0, Lcom/android/cglib/dx/c/c/l;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/l;->h()I

    move-result v0

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/w;->a:[Z

    const/4 v2, 0x0

    aget-boolean v3, v1, v2

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/cglib/dx/a/a/w;->b:I

    iget v4, p0, Lcom/android/cglib/dx/a/a/w;->c:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/f;->i()Lcom/android/cglib/dx/c/b/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/n;->g()I

    move-result p1

    if-ne v3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    aput-boolean p1, v1, v2

    :cond_1
    return-void
.end method
