.class public final Lcom/android/cglib/dx/a/a/u;
.super Lcom/android/cglib/dx/d/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cglib/dx/a/a/u$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/android/cglib/dx/a/a/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/cglib/dx/a/a/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/a/a/u;-><init>(I)V

    sput-object v0, Lcom/android/cglib/dx/a/a/u;->c:Lcom/android/cglib/dx/a/a/u;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/d/h;-><init>(I)V

    return-void
.end method

.method public static a(Lcom/android/cglib/dx/a/a/i;I)Lcom/android/cglib/dx/a/a/u;
    .locals 13

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus howMuch"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object v1, Lcom/android/cglib/dx/c/b/t;->a:Lcom/android/cglib/dx/c/b/t;

    invoke-virtual {p0}, Lcom/android/cglib/dx/d/h;->size()I

    move-result v3

    new-array v4, v3, [Lcom/android/cglib/dx/a/a/u$a;

    const/4 v5, 0x0

    move-object v8, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v6, v3, :cond_6

    invoke-virtual {p0, v6}, Lcom/android/cglib/dx/a/a/i;->c(I)Lcom/android/cglib/dx/a/a/h;

    move-result-object v10

    instance-of v11, v10, Lcom/android/cglib/dx/a/a/e;

    if-eqz v11, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v10}, Lcom/android/cglib/dx/a/a/h;->g()Lcom/android/cglib/dx/c/b/t;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/android/cglib/dx/c/b/t;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v11, v8}, Lcom/android/cglib/dx/c/b/t;->a(Lcom/android/cglib/dx/c/b/t;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_2

    :cond_3
    if-ne p1, v2, :cond_4

    if-nez v9, :cond_4

    goto :goto_2

    :cond_4
    new-instance v8, Lcom/android/cglib/dx/a/a/u$a;

    invoke-virtual {v10}, Lcom/android/cglib/dx/a/a/h;->c()I

    move-result v9

    invoke-direct {v8, v9, v11}, Lcom/android/cglib/dx/a/a/u$a;-><init>(ILcom/android/cglib/dx/c/b/t;)V

    aput-object v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    move-object v8, v11

    const/4 v9, 0x0

    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    new-instance p0, Lcom/android/cglib/dx/a/a/u;

    invoke-direct {p0, v7}, Lcom/android/cglib/dx/a/a/u;-><init>(I)V

    :goto_3
    if-ge v5, v7, :cond_7

    aget-object p1, v4, v5

    invoke-virtual {p0, v5, p1}, Lcom/android/cglib/dx/a/a/u;->a(ILcom/android/cglib/dx/a/a/u$a;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/android/cglib/dx/d/o;->f()V

    return-object p0

    :cond_8
    sget-object p0, Lcom/android/cglib/dx/a/a/u;->c:Lcom/android/cglib/dx/a/a/u;

    return-object p0
.end method


# virtual methods
.method public a(ILcom/android/cglib/dx/a/a/u$a;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/cglib/dx/d/h;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public c(I)Lcom/android/cglib/dx/a/a/u$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/d/h;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/a/a/u$a;

    return-object p1
.end method
