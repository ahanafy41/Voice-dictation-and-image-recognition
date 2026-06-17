.class public final Lcom/android/cglib/dx/a/a/x;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cglib/dx/a/a/x$a;,
        Lcom/android/cglib/dx/a/a/x$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/android/cglib/dx/a/b;

.field private final b:Lcom/android/cglib/dx/c/b/r;

.field private final c:I

.field private final d:Lcom/android/cglib/dx/c/b/i;

.field private final e:Lcom/android/cglib/dx/a/a/a;

.field private final f:Lcom/android/cglib/dx/a/a/s;

.field private final g:Lcom/android/cglib/dx/a/a/x$b;

.field private final h:I

.field private i:[I

.field private final j:I

.field private k:Z


# direct methods
.method private constructor <init>(Lcom/android/cglib/dx/c/b/r;ILcom/android/cglib/dx/c/b/i;ILcom/android/cglib/dx/a/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/android/cglib/dx/a/a/x;->a:Lcom/android/cglib/dx/a/b;

    iput-object p1, p0, Lcom/android/cglib/dx/a/a/x;->b:Lcom/android/cglib/dx/c/b/r;

    iput p2, p0, Lcom/android/cglib/dx/a/a/x;->c:I

    iput-object p3, p0, Lcom/android/cglib/dx/a/a/x;->d:Lcom/android/cglib/dx/c/b/i;

    new-instance p2, Lcom/android/cglib/dx/a/a/a;

    invoke-direct {p2, p1}, Lcom/android/cglib/dx/a/a/a;-><init>(Lcom/android/cglib/dx/c/b/r;)V

    iput-object p2, p0, Lcom/android/cglib/dx/a/a/x;->e:Lcom/android/cglib/dx/a/a/a;

    iput p4, p0, Lcom/android/cglib/dx/a/a/x;->j:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/cglib/dx/a/a/x;->i:[I

    invoke-static {p1, p4}, Lcom/android/cglib/dx/a/a/x;->a(Lcom/android/cglib/dx/c/b/r;I)Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/cglib/dx/a/a/x;->k:Z

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/r;->a()Lcom/android/cglib/dx/c/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/d/h;->size()I

    move-result p4

    mul-int/lit8 p4, p4, 0x3

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/c;->j()I

    move-result v0

    add-int/2addr v0, p4

    if-nez p3, :cond_2

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/c;->k()I

    move-result p1

    iget-boolean p2, p0, Lcom/android/cglib/dx/a/a/x;->k:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/android/cglib/dx/a/a/x;->j:I

    :goto_0
    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/cglib/dx/a/a/x;->h:I

    new-instance p1, Lcom/android/cglib/dx/a/a/s;

    iget p2, p0, Lcom/android/cglib/dx/a/a/x;->h:I

    invoke-direct {p1, p5, v0, p4, p2}, Lcom/android/cglib/dx/a/a/s;-><init>(Lcom/android/cglib/dx/a/b;III)V

    iput-object p1, p0, Lcom/android/cglib/dx/a/a/x;->f:Lcom/android/cglib/dx/a/a/s;

    if-eqz p3, :cond_1

    new-instance p1, Lcom/android/cglib/dx/a/a/x$a;

    iget-object p2, p0, Lcom/android/cglib/dx/a/a/x;->f:Lcom/android/cglib/dx/a/a/s;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/cglib/dx/a/a/x$a;-><init>(Lcom/android/cglib/dx/a/a/x;Lcom/android/cglib/dx/a/a/s;Lcom/android/cglib/dx/c/b/i;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/android/cglib/dx/a/a/x$b;

    iget-object p2, p0, Lcom/android/cglib/dx/a/a/x;->f:Lcom/android/cglib/dx/a/a/s;

    invoke-direct {p1, p0, p2}, Lcom/android/cglib/dx/a/a/x$b;-><init>(Lcom/android/cglib/dx/a/a/x;Lcom/android/cglib/dx/a/a/s;)V

    :goto_1
    iput-object p1, p0, Lcom/android/cglib/dx/a/a/x;->g:Lcom/android/cglib/dx/a/a/x$b;

    return-void

    :cond_2
    invoke-virtual {p3}, Lcom/android/cglib/dx/c/b/i;->i()I

    throw p2
.end method

.method static synthetic a(Lcom/android/cglib/dx/a/a/x;)Lcom/android/cglib/dx/a/a/a;
    .locals 0

    iget-object p0, p0, Lcom/android/cglib/dx/a/a/x;->e:Lcom/android/cglib/dx/a/a/a;

    return-object p0
.end method

.method public static a(Lcom/android/cglib/dx/c/b/r;ILcom/android/cglib/dx/c/b/i;ILcom/android/cglib/dx/a/b;)Lcom/android/cglib/dx/a/a/g;
    .locals 7

    new-instance v6, Lcom/android/cglib/dx/a/a/x;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/cglib/dx/a/a/x;-><init>(Lcom/android/cglib/dx/c/b/r;ILcom/android/cglib/dx/c/b/i;ILcom/android/cglib/dx/a/b;)V

    invoke-direct {v6}, Lcom/android/cglib/dx/a/a/x;->c()Lcom/android/cglib/dx/a/a/g;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/android/cglib/dx/c/b/f;)Lcom/android/cglib/dx/c/b/o;
    .locals 0

    invoke-static {p0}, Lcom/android/cglib/dx/a/a/x;->b(Lcom/android/cglib/dx/c/b/f;)Lcom/android/cglib/dx/c/b/o;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/android/cglib/dx/c/b/f;Lcom/android/cglib/dx/c/b/n;)Lcom/android/cglib/dx/c/b/o;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/cglib/dx/a/a/x;->b(Lcom/android/cglib/dx/c/b/f;Lcom/android/cglib/dx/c/b/n;)Lcom/android/cglib/dx/c/b/o;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 6

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/x;->b:Lcom/android/cglib/dx/c/b/r;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/r;->a()Lcom/android/cglib/dx/c/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/x;->i:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    add-int/lit8 v4, v3, 0x1

    array-length v5, v1

    if-ne v4, v5, :cond_0

    const/4 v5, -0x1

    goto :goto_1

    :cond_0
    aget v5, v1, v4

    :goto_1
    aget v3, v1, v3

    invoke-virtual {v0, v3}, Lcom/android/cglib/dx/c/b/c;->e(I)Lcom/android/cglib/dx/c/b/b;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Lcom/android/cglib/dx/a/a/x;->a(Lcom/android/cglib/dx/c/b/b;I)V

    move v3, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/android/cglib/dx/c/b/b;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/x;->e:Lcom/android/cglib/dx/a/a/a;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/a/a/a;->c(Lcom/android/cglib/dx/c/b/b;)Lcom/android/cglib/dx/a/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/x;->f:Lcom/android/cglib/dx/a/a/s;

    invoke-virtual {v1, v0}, Lcom/android/cglib/dx/a/a/s;->a(Lcom/android/cglib/dx/a/a/h;)V

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/x;->d:Lcom/android/cglib/dx/c/b/i;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/x;->g:Lcom/android/cglib/dx/a/a/x$b;

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/x;->e:Lcom/android/cglib/dx/a/a/a;

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/a/a/a;->b(Lcom/android/cglib/dx/c/b/b;)Lcom/android/cglib/dx/a/a/e;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/cglib/dx/a/a/x$b;->a(Lcom/android/cglib/dx/c/b/b;Lcom/android/cglib/dx/a/a/e;)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/b;->c()Lcom/android/cglib/dx/c/b/g;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/x;->g:Lcom/android/cglib/dx/a/a/x$b;

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/c/b/g;->a(Lcom/android/cglib/dx/c/b/f$b;)V

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/x;->f:Lcom/android/cglib/dx/a/a/s;

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/x;->e:Lcom/android/cglib/dx/a/a/a;

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/a/a/a;->a(Lcom/android/cglib/dx/c/b/b;)Lcom/android/cglib/dx/a/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/a/a/s;->a(Lcom/android/cglib/dx/a/a/h;)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/b;->e()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/b;->d()Lcom/android/cglib/dx/c/b/f;

    move-result-object v1

    if-ltz v0, :cond_1

    if-eq v0, p2, :cond_1

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/b/f;->g()Lcom/android/cglib/dx/c/b/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/b/q;->b()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/b;->f()I

    move-result p1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/cglib/dx/a/a/x;->f:Lcom/android/cglib/dx/a/a/s;

    const/4 p2, 0x1

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/x;->e:Lcom/android/cglib/dx/a/a/a;

    invoke-virtual {v1, v0}, Lcom/android/cglib/dx/a/a/a;->a(I)Lcom/android/cglib/dx/a/a/e;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/cglib/dx/a/a/s;->a(ILcom/android/cglib/dx/a/a/e;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/cglib/dx/a/a/A;

    sget-object p2, Lcom/android/cglib/dx/a/a/k;->Q:Lcom/android/cglib/dx/a/a/j;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/b/f;->h()Lcom/android/cglib/dx/c/b/t;

    move-result-object v1

    sget-object v2, Lcom/android/cglib/dx/c/b/o;->c:Lcom/android/cglib/dx/c/b/o;

    iget-object v3, p0, Lcom/android/cglib/dx/a/a/x;->e:Lcom/android/cglib/dx/a/a/a;

    invoke-virtual {v3, v0}, Lcom/android/cglib/dx/a/a/a;->a(I)Lcom/android/cglib/dx/a/a/e;

    move-result-object v0

    invoke-direct {p1, p2, v1, v2, v0}, Lcom/android/cglib/dx/a/a/A;-><init>(Lcom/android/cglib/dx/a/a/j;Lcom/android/cglib/dx/c/b/t;Lcom/android/cglib/dx/c/b/o;Lcom/android/cglib/dx/a/a/e;)V

    iget-object p2, p0, Lcom/android/cglib/dx/a/a/x;->f:Lcom/android/cglib/dx/a/a/s;

    invoke-virtual {p2, p1}, Lcom/android/cglib/dx/a/a/s;->a(Lcom/android/cglib/dx/a/a/h;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/b/i;->a(Lcom/android/cglib/dx/c/b/b;)Lcom/android/cglib/dx/c/b/p;

    const/4 p1, 0x0

    throw p1
.end method

.method private static a(Lcom/android/cglib/dx/c/b/r;I)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/r;->a()Lcom/android/cglib/dx/c/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/c;->k()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/r;->a()Lcom/android/cglib/dx/c/b/c;

    move-result-object p0

    new-instance v3, Lcom/android/cglib/dx/a/a/w;

    invoke-direct {v3, v1, v0, p1}, Lcom/android/cglib/dx/a/a/w;-><init>([ZII)V

    invoke-virtual {p0, v3}, Lcom/android/cglib/dx/c/b/c;->a(Lcom/android/cglib/dx/c/b/f$b;)V

    aget-boolean p0, v1, v2

    return p0
.end method

.method private static b(Lcom/android/cglib/dx/c/b/f;)Lcom/android/cglib/dx/c/b/o;
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/f;->i()Lcom/android/cglib/dx/c/b/n;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/cglib/dx/a/a/x;->b(Lcom/android/cglib/dx/c/b/f;Lcom/android/cglib/dx/c/b/n;)Lcom/android/cglib/dx/c/b/o;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/android/cglib/dx/c/b/f;Lcom/android/cglib/dx/c/b/n;)Lcom/android/cglib/dx/c/b/o;
    .locals 3

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/f;->j()Lcom/android/cglib/dx/c/b/o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/f;->g()Lcom/android/cglib/dx/c/b/q;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/b/q;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/android/cglib/dx/d/h;->size()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/n;->g()I

    move-result p0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/c/b/o;->c(I)Lcom/android/cglib/dx/c/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/b/n;->g()I

    move-result v2

    if-ne p0, v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/c/b/o;->c(I)Lcom/android/cglib/dx/c/b/n;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/c/b/o;->c(I)Lcom/android/cglib/dx/c/b/n;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/cglib/dx/c/b/o;->a(Lcom/android/cglib/dx/c/b/n;Lcom/android/cglib/dx/c/b/n;)Lcom/android/cglib/dx/c/b/o;

    move-result-object v0

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/b/o;->b(Lcom/android/cglib/dx/c/b/n;)Lcom/android/cglib/dx/c/b/o;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 14

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/x;->b:Lcom/android/cglib/dx/c/b/r;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/r;->a()Lcom/android/cglib/dx/c/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/d/h;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/cglib/dx/d/m;->i()I

    move-result v2

    invoke-static {v2}, Lcom/android/cglib/dx/d/b;->a(I)[I

    move-result-object v3

    invoke-static {v2}, Lcom/android/cglib/dx/d/b;->a(I)[I

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    invoke-virtual {v0, v5}, Lcom/android/cglib/dx/c/b/c;->d(I)Lcom/android/cglib/dx/c/b/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/cglib/dx/c/b/b;->a()I

    move-result v6

    invoke-static {v3, v6}, Lcom/android/cglib/dx/d/b;->d([II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-array v5, v1, [I

    iget-object v6, p0, Lcom/android/cglib/dx/a/a/x;->b:Lcom/android/cglib/dx/c/b/r;

    invoke-virtual {v6}, Lcom/android/cglib/dx/c/b/r;->b()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    const/4 v8, -0x1

    if-eq v6, v8, :cond_b

    :goto_2
    iget-object v9, p0, Lcom/android/cglib/dx/a/a/x;->b:Lcom/android/cglib/dx/c/b/r;

    invoke-virtual {v9, v6}, Lcom/android/cglib/dx/c/b/r;->a(I)Lcom/android/cglib/dx/d/k;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/cglib/dx/d/k;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_4

    invoke-virtual {v9, v11}, Lcom/android/cglib/dx/d/k;->d(I)I

    move-result v12

    invoke-static {v2, v12}, Lcom/android/cglib/dx/d/b;->c([II)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_5

    :cond_1
    invoke-static {v3, v12}, Lcom/android/cglib/dx/d/b;->c([II)Z

    move-result v13

    if-nez v13, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v0, v12}, Lcom/android/cglib/dx/c/b/c;->e(I)Lcom/android/cglib/dx/c/b/b;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/cglib/dx/c/b/b;->e()I

    move-result v13

    if-ne v13, v6, :cond_3

    invoke-static {v2, v12}, Lcom/android/cglib/dx/d/b;->d([II)V

    move v6, v12

    goto :goto_2

    :cond_3
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    :goto_5
    if-eq v6, v8, :cond_a

    invoke-static {v3, v6}, Lcom/android/cglib/dx/d/b;->a([II)V

    invoke-static {v2, v6}, Lcom/android/cglib/dx/d/b;->a([II)V

    aput v6, v5, v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v6}, Lcom/android/cglib/dx/c/b/c;->e(I)Lcom/android/cglib/dx/c/b/b;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/cglib/dx/c/b/c;->a(Lcom/android/cglib/dx/c/b/b;)Lcom/android/cglib/dx/c/b/b;

    move-result-object v9

    if-nez v9, :cond_5

    goto :goto_7

    :cond_5
    invoke-virtual {v9}, Lcom/android/cglib/dx/c/b/b;->a()I

    move-result v9

    invoke-virtual {v6}, Lcom/android/cglib/dx/c/b/b;->e()I

    move-result v10

    invoke-static {v3, v9}, Lcom/android/cglib/dx/d/b;->c([II)Z

    move-result v11

    if-eqz v11, :cond_6

    move v6, v9

    goto :goto_5

    :cond_6
    if-eq v10, v9, :cond_7

    if-ltz v10, :cond_7

    invoke-static {v3, v10}, Lcom/android/cglib/dx/d/b;->c([II)Z

    move-result v9

    if-eqz v9, :cond_7

    move v6, v10

    goto :goto_5

    :cond_7
    invoke-virtual {v6}, Lcom/android/cglib/dx/c/b/b;->g()Lcom/android/cglib/dx/d/k;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/cglib/dx/d/k;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v9, :cond_9

    invoke-virtual {v6, v10}, Lcom/android/cglib/dx/d/k;->d(I)I

    move-result v11

    invoke-static {v3, v11}, Lcom/android/cglib/dx/d/b;->c([II)Z

    move-result v12

    if-eqz v12, :cond_8

    move v6, v11

    goto :goto_5

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_9
    const/4 v6, -0x1

    goto :goto_5

    :cond_a
    :goto_7
    invoke-static {v3, v4}, Lcom/android/cglib/dx/d/b;->b([II)I

    move-result v6

    goto/16 :goto_1

    :cond_b
    if-ne v7, v1, :cond_c

    iput-object v5, p0, Lcom/android/cglib/dx/a/a/x;->i:[I

    return-void

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method static synthetic b(Lcom/android/cglib/dx/a/a/x;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/cglib/dx/a/a/x;->k:Z

    return p0
.end method

.method static synthetic c(Lcom/android/cglib/dx/a/a/x;)I
    .locals 0

    iget p0, p0, Lcom/android/cglib/dx/a/a/x;->h:I

    return p0
.end method

.method private c()Lcom/android/cglib/dx/a/a/g;
    .locals 4

    invoke-direct {p0}, Lcom/android/cglib/dx/a/a/x;->b()V

    invoke-direct {p0}, Lcom/android/cglib/dx/a/a/x;->a()V

    new-instance v0, Lcom/android/cglib/dx/a/a/z;

    iget-object v1, p0, Lcom/android/cglib/dx/a/a/x;->b:Lcom/android/cglib/dx/c/b/r;

    iget-object v2, p0, Lcom/android/cglib/dx/a/a/x;->i:[I

    iget-object v3, p0, Lcom/android/cglib/dx/a/a/x;->e:Lcom/android/cglib/dx/a/a/a;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/cglib/dx/a/a/z;-><init>(Lcom/android/cglib/dx/c/b/r;[ILcom/android/cglib/dx/a/a/a;)V

    new-instance v1, Lcom/android/cglib/dx/a/a/g;

    iget v2, p0, Lcom/android/cglib/dx/a/a/x;->c:I

    iget-object v3, p0, Lcom/android/cglib/dx/a/a/x;->f:Lcom/android/cglib/dx/a/a/s;

    invoke-virtual {v3}, Lcom/android/cglib/dx/a/a/s;->a()Lcom/android/cglib/dx/a/a/t;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/android/cglib/dx/a/a/g;-><init>(ILcom/android/cglib/dx/a/a/t;Lcom/android/cglib/dx/a/a/b;)V

    return-object v1
.end method

.method static synthetic d(Lcom/android/cglib/dx/a/a/x;)I
    .locals 0

    iget p0, p0, Lcom/android/cglib/dx/a/a/x;->j:I

    return p0
.end method

.method static synthetic e(Lcom/android/cglib/dx/a/a/x;)Lcom/android/cglib/dx/c/b/r;
    .locals 0

    iget-object p0, p0, Lcom/android/cglib/dx/a/a/x;->b:Lcom/android/cglib/dx/c/b/r;

    return-object p0
.end method
