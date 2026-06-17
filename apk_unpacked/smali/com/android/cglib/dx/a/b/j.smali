.class Lcom/android/cglib/dx/a/b/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/cglib/dx/a/a/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cglib/dx/a/b/k;->b(Lcom/android/cglib/dx/a/b/Q;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/cglib/dx/a/b/p;

.field final synthetic b:Lcom/android/cglib/dx/a/b/k;


# direct methods
.method constructor <init>(Lcom/android/cglib/dx/a/b/k;Lcom/android/cglib/dx/a/b/p;)V
    .locals 0

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/j;->b:Lcom/android/cglib/dx/a/b/k;

    iput-object p2, p0, Lcom/android/cglib/dx/a/b/j;->a:Lcom/android/cglib/dx/a/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/c/c/a;)I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/j;->a:Lcom/android/cglib/dx/a/b/p;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/a/b/p;->a(Lcom/android/cglib/dx/c/c/a;)Lcom/android/cglib/dx/a/b/A;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/A;->d()I

    move-result p1

    return p1
.end method
