.class public abstract Lcom/android/cglib/dx/c/c/x;
.super Lcom/android/cglib/dx/c/c/a;
.source ""

# interfaces
.implements Lcom/android/cglib/dx/c/d/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/cglib/dx/c/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    invoke-interface {p0}, Lcom/android/cglib/dx/c/d/d;->getType()Lcom/android/cglib/dx/c/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/d/c;->b()I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    invoke-interface {p0}, Lcom/android/cglib/dx/c/d/d;->getType()Lcom/android/cglib/dx/c/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/d/c;->c()I

    move-result v0

    return v0
.end method
