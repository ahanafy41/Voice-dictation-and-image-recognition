.class public Lcom/android/cglib/dx/a/a/u$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cglib/dx/a/a/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:Lcom/android/cglib/dx/c/b/t;


# direct methods
.method public constructor <init>(ILcom/android/cglib/dx/c/b/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    iput p1, p0, Lcom/android/cglib/dx/a/a/u$a;->a:I

    iput-object p2, p0, Lcom/android/cglib/dx/a/a/u$a;->b:Lcom/android/cglib/dx/c/b/t;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "position == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "address < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/a/a/u$a;->a:I

    return v0
.end method

.method public b()Lcom/android/cglib/dx/c/b/t;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/u$a;->b:Lcom/android/cglib/dx/c/b/t;

    return-object v0
.end method
