.class public abstract Lcom/android/cglib/dx/a/b/B;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/android/cglib/dx/a/b/C;
.end method

.method public abstract a(Lcom/android/cglib/dx/a/b/p;)V
.end method

.method public abstract a(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;)V
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/B;->a()Lcom/android/cglib/dx/a/b/C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/b/C;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract c()I
.end method
