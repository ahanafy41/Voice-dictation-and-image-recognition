.class public abstract Lcom/android/cglib/dx/a/b/z;
.super Lcom/android/cglib/dx/a/b/A;
.source ""


# instance fields
.field private final b:Lcom/android/cglib/dx/c/c/w;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/c/w;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/A;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/z;->b:Lcom/android/cglib/dx/c/c/w;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "type == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/a/b/p;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->o()Lcom/android/cglib/dx/a/b/X;

    move-result-object p1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/z;->b:Lcom/android/cglib/dx/c/c/w;

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/a/b/X;->b(Lcom/android/cglib/dx/c/c/w;)Lcom/android/cglib/dx/a/b/W;

    return-void
.end method

.method public final g()Lcom/android/cglib/dx/c/c/w;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/z;->b:Lcom/android/cglib/dx/c/c/w;

    return-object v0
.end method
