.class Lcom/android/cglib/dx/a/b/J;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cglib/dx/a/b/L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/cglib/dx/a/b/M;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/a/b/M;Lcom/android/cglib/dx/a/b/M;)I
    .locals 0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/B;->a()Lcom/android/cglib/dx/a/b/C;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/cglib/dx/a/b/B;->a()Lcom/android/cglib/dx/a/b/C;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/cglib/dx/a/b/M;

    check-cast p2, Lcom/android/cglib/dx/a/b/M;

    invoke-virtual {p0, p1, p2}, Lcom/android/cglib/dx/a/b/J;->a(Lcom/android/cglib/dx/a/b/M;Lcom/android/cglib/dx/a/b/M;)I

    move-result p1

    return p1
.end method
