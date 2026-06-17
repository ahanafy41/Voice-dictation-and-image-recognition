.class public abstract Lcom/android/cglib/dx/c/b/d;
.super Lcom/android/cglib/dx/c/b/f;
.source ""


# instance fields
.field private final e:Lcom/android/cglib/dx/c/c/a;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/b/q;Lcom/android/cglib/dx/c/b/t;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/b/o;Lcom/android/cglib/dx/c/c/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/cglib/dx/c/b/f;-><init>(Lcom/android/cglib/dx/c/b/q;Lcom/android/cglib/dx/c/b/t;Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/b/o;)V

    if-eqz p5, :cond_0

    iput-object p5, p0, Lcom/android/cglib/dx/c/b/d;->e:Lcom/android/cglib/dx/c/c/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cst == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/d;->e:Lcom/android/cglib/dx/c/c/a;

    invoke-interface {v0}, Lcom/android/cglib/dx/d/r;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/android/cglib/dx/c/c/a;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/c/b/d;->e:Lcom/android/cglib/dx/c/c/a;

    return-object v0
.end method
