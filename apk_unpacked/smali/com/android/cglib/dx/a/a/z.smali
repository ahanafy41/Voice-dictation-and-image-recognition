.class public final Lcom/android/cglib/dx/a/a/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/cglib/dx/a/a/b;


# instance fields
.field private final a:Lcom/android/cglib/dx/c/b/r;

.field private final b:[I

.field private final c:Lcom/android/cglib/dx/a/a/a;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/b/r;[ILcom/android/cglib/dx/a/a/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Lcom/android/cglib/dx/a/a/z;->a:Lcom/android/cglib/dx/c/b/r;

    iput-object p2, p0, Lcom/android/cglib/dx/a/a/z;->b:[I

    iput-object p3, p0, Lcom/android/cglib/dx/a/a/z;->c:Lcom/android/cglib/dx/a/a/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "addresses == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "order == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Lcom/android/cglib/dx/c/b/b;Lcom/android/cglib/dx/a/a/a;)Lcom/android/cglib/dx/a/a/c;
    .locals 6

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/b;->g()Lcom/android/cglib/dx/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/d/k;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/b;->e()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/b;->d()Lcom/android/cglib/dx/c/b/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/f;->e()Lcom/android/cglib/dx/c/d/e;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/cglib/dx/c/d/e;->size()I

    move-result v3

    if-nez v3, :cond_0

    sget-object p0, Lcom/android/cglib/dx/a/a/c;->c:Lcom/android/cglib/dx/a/a/c;

    return-object p0

    :cond_0
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    if-ne v1, v3, :cond_2

    :cond_1
    if-eq v2, v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    if-ne v1, v4, :cond_2

    invoke-virtual {v0, v3}, Lcom/android/cglib/dx/d/k;->d(I)I

    move-result v1

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "shouldn\'t happen: weird successors list"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_5

    invoke-interface {p0, v2}, Lcom/android/cglib/dx/c/d/e;->getType(I)Lcom/android/cglib/dx/c/d/c;

    move-result-object v4

    sget-object v5, Lcom/android/cglib/dx/c/d/c;->p:Lcom/android/cglib/dx/c/d/c;

    invoke-virtual {v4, v5}, Lcom/android/cglib/dx/c/d/c;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v3, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    new-instance v2, Lcom/android/cglib/dx/a/a/c;

    invoke-direct {v2, v3}, Lcom/android/cglib/dx/a/a/c;-><init>(I)V

    :goto_3
    if-ge v1, v3, :cond_6

    new-instance v4, Lcom/android/cglib/dx/c/c/w;

    invoke-interface {p0, v1}, Lcom/android/cglib/dx/c/d/e;->getType(I)Lcom/android/cglib/dx/c/d/c;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/cglib/dx/c/c/w;-><init>(Lcom/android/cglib/dx/c/d/c;)V

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/d/k;->d(I)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/cglib/dx/a/a/a;->a(I)Lcom/android/cglib/dx/a/a/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/cglib/dx/a/a/h;->c()I

    move-result v5

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/cglib/dx/a/a/c;->a(ILcom/android/cglib/dx/c/c/w;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Lcom/android/cglib/dx/d/o;->f()V

    return-object v2
.end method

.method private static a(Lcom/android/cglib/dx/c/b/b;Lcom/android/cglib/dx/c/b/b;Lcom/android/cglib/dx/a/a/c;Lcom/android/cglib/dx/a/a/a;)Lcom/android/cglib/dx/a/a/d$a;
    .locals 0

    invoke-virtual {p3, p0}, Lcom/android/cglib/dx/a/a/a;->b(Lcom/android/cglib/dx/c/b/b;)Lcom/android/cglib/dx/a/a/e;

    move-result-object p0

    invoke-virtual {p3, p1}, Lcom/android/cglib/dx/a/a/a;->a(Lcom/android/cglib/dx/c/b/b;)Lcom/android/cglib/dx/a/a/e;

    move-result-object p1

    new-instance p3, Lcom/android/cglib/dx/a/a/d$a;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->c()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/h;->c()I

    move-result p1

    invoke-direct {p3, p0, p1, p2}, Lcom/android/cglib/dx/a/a/d$a;-><init>(IILcom/android/cglib/dx/a/a/c;)V

    return-object p3
.end method

.method public static a(Lcom/android/cglib/dx/c/b/r;[ILcom/android/cglib/dx/a/a/a;)Lcom/android/cglib/dx/a/a/d;
    .locals 10

    array-length v0, p1

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/r;->a()Lcom/android/cglib/dx/c/b/c;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v2, Lcom/android/cglib/dx/a/a/c;->c:Lcom/android/cglib/dx/a/a/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    move-object v4, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget v7, p1, v2

    invoke-virtual {p0, v7}, Lcom/android/cglib/dx/c/b/c;->e(I)Lcom/android/cglib/dx/c/b/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/cglib/dx/c/b/b;->b()Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v7, p2}, Lcom/android/cglib/dx/a/a/z;->a(Lcom/android/cglib/dx/c/b/b;Lcom/android/cglib/dx/a/a/a;)Lcom/android/cglib/dx/a/a/c;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/cglib/dx/d/h;->size()I

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v8}, Lcom/android/cglib/dx/d/h;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v5, v7, p2}, Lcom/android/cglib/dx/a/a/z;->a(Lcom/android/cglib/dx/c/b/b;Lcom/android/cglib/dx/c/b/b;Lcom/android/cglib/dx/a/a/a;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v6, v7

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lcom/android/cglib/dx/d/h;->size()I

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v5, v6, v4, p2}, Lcom/android/cglib/dx/a/a/z;->a(Lcom/android/cglib/dx/c/b/b;Lcom/android/cglib/dx/c/b/b;Lcom/android/cglib/dx/a/a/c;Lcom/android/cglib/dx/a/a/a;)Lcom/android/cglib/dx/a/a/d$a;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    move-object v5, v7

    move-object v6, v5

    move-object v4, v8

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lcom/android/cglib/dx/d/h;->size()I

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v5, v6, v4, p2}, Lcom/android/cglib/dx/a/a/z;->a(Lcom/android/cglib/dx/c/b/b;Lcom/android/cglib/dx/c/b/b;Lcom/android/cglib/dx/a/a/c;Lcom/android/cglib/dx/a/a/a;)Lcom/android/cglib/dx/a/a/d$a;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_6

    sget-object p0, Lcom/android/cglib/dx/a/a/d;->c:Lcom/android/cglib/dx/a/a/d;

    return-object p0

    :cond_6
    new-instance p1, Lcom/android/cglib/dx/a/a/d;

    invoke-direct {p1, p0}, Lcom/android/cglib/dx/a/a/d;-><init>(I)V

    :goto_3
    if-ge v3, p0, :cond_7

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/cglib/dx/a/a/d$a;

    invoke-virtual {p1, v3, p2}, Lcom/android/cglib/dx/a/a/d;->a(ILcom/android/cglib/dx/a/a/d$a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lcom/android/cglib/dx/d/o;->f()V

    return-object p1
.end method

.method private static a(Lcom/android/cglib/dx/c/b/b;Lcom/android/cglib/dx/c/b/b;Lcom/android/cglib/dx/a/a/a;)Z
    .locals 0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p2, p0}, Lcom/android/cglib/dx/a/a/a;->b(Lcom/android/cglib/dx/c/b/b;)Lcom/android/cglib/dx/a/a/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/h;->c()I

    move-result p0

    invoke-virtual {p2, p1}, Lcom/android/cglib/dx/a/a/a;->a(Lcom/android/cglib/dx/c/b/b;)Lcom/android/cglib/dx/a/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/h;->c()I

    move-result p1

    sub-int/2addr p1, p0

    const p0, 0xffff

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "end == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "start == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Z
    .locals 5

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/z;->a:Lcom/android/cglib/dx/c/b/r;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/r;->a()Lcom/android/cglib/dx/c/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/d/h;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Lcom/android/cglib/dx/c/b/c;->d(I)Lcom/android/cglib/dx/c/b/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/cglib/dx/c/b/b;->d()Lcom/android/cglib/dx/c/b/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/cglib/dx/c/b/f;->e()Lcom/android/cglib/dx/c/d/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/cglib/dx/c/d/e;->size()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public b()Ljava/util/HashSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/android/cglib/dx/c/d/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/z;->a:Lcom/android/cglib/dx/c/b/r;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/b/r;->a()Lcom/android/cglib/dx/c/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/cglib/dx/d/h;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Lcom/android/cglib/dx/c/b/c;->d(I)Lcom/android/cglib/dx/c/b/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/cglib/dx/c/b/b;->d()Lcom/android/cglib/dx/c/b/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/cglib/dx/c/b/f;->e()Lcom/android/cglib/dx/c/d/e;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/cglib/dx/c/d/e;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    invoke-interface {v5, v7}, Lcom/android/cglib/dx/c/d/e;->getType(I)Lcom/android/cglib/dx/c/d/c;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public build()Lcom/android/cglib/dx/a/a/d;
    .locals 3

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/z;->a:Lcom/android/cglib/dx/c/b/r;

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/z;->b:[I

    iget-object v2, p0, Lcom/android/cglib/dx/a/a/z;->c:Lcom/android/cglib/dx/a/a/a;

    invoke-static {v0, v1, v2}, Lcom/android/cglib/dx/a/a/z;->a(Lcom/android/cglib/dx/c/b/r;[ILcom/android/cglib/dx/a/a/a;)Lcom/android/cglib/dx/a/a/d;

    move-result-object v0

    return-object v0
.end method
