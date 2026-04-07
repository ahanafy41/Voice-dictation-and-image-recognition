.class public final Lcom/android/cglib/dx/a/b/n;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/android/cglib/dx/a/a/u;

.field private final b:Lcom/android/cglib/dx/a/a/p;

.field private final c:Lcom/android/cglib/dx/d/d;

.field private final d:Lcom/android/cglib/dx/a/b/p;

.field private final e:I

.field private final f:I

.field private final g:Lcom/android/cglib/dx/c/d/a;

.field private final h:Z

.field private i:I

.field private j:I

.field private k:Lcom/android/cglib/dx/d/a;

.field private l:Ljava/io/PrintWriter;

.field private m:Ljava/lang/String;

.field private n:Z

.field private final o:[Lcom/android/cglib/dx/a/a/p$b;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/a/a/u;Lcom/android/cglib/dx/a/a/p;Lcom/android/cglib/dx/a/b/p;IIZLcom/android/cglib/dx/c/c/s;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/cglib/dx/a/b/n;->i:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/cglib/dx/a/b/n;->j:I

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/n;->a:Lcom/android/cglib/dx/a/a/u;

    iput-object p2, p0, Lcom/android/cglib/dx/a/b/n;->b:Lcom/android/cglib/dx/a/a/p;

    iput-object p3, p0, Lcom/android/cglib/dx/a/b/n;->d:Lcom/android/cglib/dx/a/b/p;

    invoke-virtual {p7}, Lcom/android/cglib/dx/c/c/d;->g()Lcom/android/cglib/dx/c/d/a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/n;->g:Lcom/android/cglib/dx/c/d/a;

    iput-boolean p6, p0, Lcom/android/cglib/dx/a/b/n;->h:Z

    iput p4, p0, Lcom/android/cglib/dx/a/b/n;->e:I

    iput p5, p0, Lcom/android/cglib/dx/a/b/n;->f:I

    new-instance p1, Lcom/android/cglib/dx/d/d;

    invoke-direct {p1}, Lcom/android/cglib/dx/d/d;-><init>()V

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    new-array p1, p5, [Lcom/android/cglib/dx/a/a/p$b;

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/n;->o:[Lcom/android/cglib/dx/a/a/p$b;

    return-void
.end method

.method private static a(II)I
    .locals 2

    const/4 v0, -0x4

    if-lt p0, v0, :cond_0

    const/16 v1, 0xa

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    mul-int/lit8 p1, p1, 0xf

    add-int/2addr p0, p1

    add-int/2addr p0, v1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Parameter out of range"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(ILjava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/cglib/dx/a/a/u$a;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/a/a/u$a;

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/a/u$a;->a()I

    move-result v1

    iget v2, p0, Lcom/android/cglib/dx/a/b/n;->i:I

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/a/a/u$a;

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/b/n;->a(Lcom/android/cglib/dx/a/a/u$a;)V

    move p1, v1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v0}, Lcom/android/cglib/dx/d/d;->b()I

    move-result v0

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/cglib/dx/d/d;->writeByte(I)V

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/d/d;->e(I)I

    iget v1, p0, Lcom/android/cglib/dx/a/b/n;->j:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/cglib/dx/a/b/n;->j:I

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/n;->k:Lcom/android/cglib/dx/d/a;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/n;->l:Ljava/io/PrintWriter;

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {p1}, Lcom/android/cglib/dx/d/d;->b()I

    move-result p1

    sub-int/2addr p1, v0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/cglib/dx/a/b/n;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "line = %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/cglib/dx/a/b/n;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/n;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/n;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/n;->k:Lcom/android/cglib/dx/d/a;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/cglib/dx/a/b/n;->n:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/n;->l:Ljava/io/PrintWriter;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private a(Lcom/android/cglib/dx/a/a/p$b;)V
    .locals 3

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v0}, Lcom/android/cglib/dx/d/d;->b()I

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/d/d;->writeByte(I)V

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/p$b;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/d/d;->c(I)I

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/n;->k:Lcom/android/cglib/dx/d/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/n;->l:Ljava/io/PrintWriter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v0}, Lcom/android/cglib/dx/d/d;->b()I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/cglib/dx/a/b/n;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/b/n;->d(Lcom/android/cglib/dx/a/a/p$b;)Ljava/lang/String;

    const/4 p1, 0x0

    throw p1
.end method

.method private a(Lcom/android/cglib/dx/a/a/u$a;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/u$a;->b()Lcom/android/cglib/dx/c/b/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/t;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/u$a;->a()I

    move-result p1

    iget v1, p0, Lcom/android/cglib/dx/a/b/n;->j:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/cglib/dx/a/b/n;->i:I

    sub-int/2addr p1, v1

    if-ltz p1, :cond_6

    const/4 v1, -0x4

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/cglib/dx/a/b/n;->a(I)V

    const/4 v0, 0x0

    :cond_1
    invoke-static {v0, p1}, Lcom/android/cglib/dx/a/b/n;->a(II)I

    move-result v1

    and-int/lit16 v3, v1, -0x100

    if-lez v3, :cond_3

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/b/n;->b(I)V

    invoke-static {v0, v2}, Lcom/android/cglib/dx/a/b/n;->a(II)I

    move-result v1

    and-int/lit16 p1, v1, -0x100

    if-lez p1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/a/b/n;->a(I)V

    invoke-static {v2, v2}, Lcom/android/cglib/dx/a/b/n;->a(II)I

    move-result v1

    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v3, v1}, Lcom/android/cglib/dx/d/d;->writeByte(I)V

    iget v1, p0, Lcom/android/cglib/dx/a/b/n;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/cglib/dx/a/b/n;->j:I

    iget v0, p0, Lcom/android/cglib/dx/a/b/n;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/cglib/dx/a/b/n;->i:I

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/n;->k:Lcom/android/cglib/dx/d/a;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/n;->l:Ljava/io/PrintWriter;

    if-eqz p1, :cond_5

    :cond_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    iget v0, p0, Lcom/android/cglib/dx/a/b/n;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    iget v0, p0, Lcom/android/cglib/dx/a/b/n;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "%04x: line %d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/cglib/dx/a/b/n;->a(ILjava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Position entries must be in ascending address order"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/android/cglib/dx/c/c/v;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/n;->d:Lcom/android/cglib/dx/a/b/p;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/b/p;->n()Lcom/android/cglib/dx/a/b/V;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/a/b/V;->a(Lcom/android/cglib/dx/c/c/v;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/d/d;->c(I)I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/d/d;->c(I)I

    :goto_1
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/cglib/dx/a/a/u$a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/cglib/dx/a/a/p$b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/n;->k:Lcom/android/cglib/dx/d/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/n;->l:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v3, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v3}, Lcom/android/cglib/dx/d/d;->b()I

    move-result v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/a/a/u$a;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/u$a;->b()Lcom/android/cglib/dx/c/b/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/t;->a()I

    move-result p1

    iput p1, p0, Lcom/android/cglib/dx/a/b/n;->j:I

    :cond_2
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    iget v4, p0, Lcom/android/cglib/dx/a/b/n;->j:I

    invoke-virtual {p1, v4}, Lcom/android/cglib/dx/d/d;->c(I)I

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {p1}, Lcom/android/cglib/dx/d/d;->b()I

    move-result p1

    sub-int/2addr p1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "line_start: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/cglib/dx/a/b/n;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/cglib/dx/a/b/n;->a(ILjava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/n;->f()I

    move-result p1

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/n;->g:Lcom/android/cglib/dx/c/d/a;

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/d/a;->c()Lcom/android/cglib/dx/c/d/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/cglib/dx/d/h;->size()I

    move-result v4

    iget-boolean v5, p0, Lcom/android/cglib/dx/a/b/n;->h:Z

    if-nez v5, :cond_6

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/cglib/dx/a/a/p$b;

    invoke-virtual {v6}, Lcom/android/cglib/dx/a/a/p$b;->d()I

    move-result v7

    if-ne p1, v7, :cond_4

    iget-object v5, p0, Lcom/android/cglib/dx/a/b/n;->o:[Lcom/android/cglib/dx/a/a/p$b;

    aput-object v6, v5, p1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    :cond_6
    iget-object v5, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v5}, Lcom/android/cglib/dx/d/d;->b()I

    move-result v5

    iget-object v6, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v6, v4}, Lcom/android/cglib/dx/d/d;->c(I)I

    if-eqz v0, :cond_7

    iget-object v6, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v6}, Lcom/android/cglib/dx/d/d;->b()I

    move-result v6

    sub-int/2addr v6, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    const-string v5, "parameters_size: %04x"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v6, v2}, Lcom/android/cglib/dx/a/b/n;->a(ILjava/lang/String;)V

    :cond_7
    move v2, p1

    const/4 p1, 0x0

    :goto_2
    const/4 v5, 0x0

    if-ge p1, v4, :cond_b

    invoke-virtual {v3, p1}, Lcom/android/cglib/dx/c/d/b;->c(I)Lcom/android/cglib/dx/c/d/c;

    move-result-object v6

    iget-object v7, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v7}, Lcom/android/cglib/dx/d/d;->b()I

    move-result v7

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/cglib/dx/a/a/p$b;

    invoke-virtual {v9}, Lcom/android/cglib/dx/a/a/p$b;->d()I

    move-result v10

    if-eq v2, v10, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v9}, Lcom/android/cglib/dx/a/a/p$b;->f()Lcom/android/cglib/dx/c/c/v;

    throw v5

    :cond_9
    invoke-direct {p0, v5}, Lcom/android/cglib/dx/a/b/n;->a(Lcom/android/cglib/dx/c/c/v;)V

    if-eqz v0, :cond_a

    iget-object v5, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v5}, Lcom/android/cglib/dx/d/d;->b()I

    move-result v5

    sub-int/2addr v5, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parameter "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "<unnamed>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "v"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/android/cglib/dx/a/b/n;->a(ILjava/lang/String;)V

    :cond_a
    invoke-virtual {v6}, Lcom/android/cglib/dx/c/d/c;->e()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_b
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/n;->o:[Lcom/android/cglib/dx/a/a/p$b;

    array-length p2, p1

    :goto_4
    if-ge v1, p2, :cond_d

    aget-object v0, p1, v1

    if-nez v0, :cond_c

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_c
    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/p$b;->f()Lcom/android/cglib/dx/c/c/v;

    throw v5

    :cond_d
    return-void
.end method

.method private b()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/cglib/dx/a/a/u$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/n;->a:Lcom/android/cglib/dx/a/a/u;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/cglib/dx/d/h;->size()I

    move-result v0

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/n;->a:Lcom/android/cglib/dx/a/a/u;

    invoke-virtual {v3, v1}, Lcom/android/cglib/dx/a/a/u;->c(I)Lcom/android/cglib/dx/a/a/u$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/cglib/dx/a/b/l;

    invoke-direct {v0, p0}, Lcom/android/cglib/dx/a/b/l;-><init>(Lcom/android/cglib/dx/a/b/n;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2
.end method

.method private b(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v0}, Lcom/android/cglib/dx/d/d;->b()I

    move-result v0

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/cglib/dx/d/d;->writeByte(I)V

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/d/d;->c(I)I

    iget v1, p0, Lcom/android/cglib/dx/a/b/n;->i:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/cglib/dx/a/b/n;->i:I

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/n;->k:Lcom/android/cglib/dx/d/a;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/n;->l:Ljava/io/PrintWriter;

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {p1}, Lcom/android/cglib/dx/d/d;->b()I

    move-result p1

    sub-int/2addr p1, v0

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/cglib/dx/a/b/n;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%04x: advance pc"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/cglib/dx/a/b/n;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private b(Lcom/android/cglib/dx/a/a/p$b;)V
    .locals 3

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v0}, Lcom/android/cglib/dx/d/d;->b()I

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/d/d;->writeByte(I)V

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/p$b;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/a/b/n;->d(I)V

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/n;->k:Lcom/android/cglib/dx/d/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/n;->l:Ljava/io/PrintWriter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v0}, Lcom/android/cglib/dx/d/d;->b()I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/cglib/dx/a/b/n;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/b/n;->d(Lcom/android/cglib/dx/a/a/p$b;)Ljava/lang/String;

    const/4 p1, 0x0

    throw p1
.end method

.method private c(I)I
    .locals 5

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/n;->b:Lcom/android/cglib/dx/a/a/p;

    invoke-virtual {v0}, Lcom/android/cglib/dx/d/h;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_5

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/n;->b:Lcom/android/cglib/dx/a/a/p;

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/a/a/p;->c(I)Lcom/android/cglib/dx/a/a/p$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/a/p$b;->a()I

    move-result v1

    iget v2, p0, Lcom/android/cglib/dx/a/b/n;->i:I

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/n;->b:Lcom/android/cglib/dx/a/a/p;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/a/a/p;->c(I)Lcom/android/cglib/dx/a/a/p$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/p$b;->d()I

    move-result v1

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/n;->o:[Lcom/android/cglib/dx/a/a/p$b;

    aget-object v4, v3, v1

    if-ne p1, v4, :cond_0

    goto :goto_1

    :cond_0
    aput-object p1, v3, v1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/p$b;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v4, :cond_2

    invoke-virtual {p1, v4}, Lcom/android/cglib/dx/a/a/p$b;->b(Lcom/android/cglib/dx/a/a/p$b;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v4}, Lcom/android/cglib/dx/a/a/p$b;->g()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/b/n;->b(Lcom/android/cglib/dx/a/a/p$b;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/b/n;->c(Lcom/android/cglib/dx/a/a/p$b;)V

    const/4 p1, 0x0

    throw p1

    :cond_3
    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/p$b;->b()Lcom/android/cglib/dx/a/a/p$a;

    move-result-object v1

    sget-object v3, Lcom/android/cglib/dx/a/a/p$a;->c:Lcom/android/cglib/dx/a/a/p$a;

    if-eq v1, v3, :cond_4

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/a/b/n;->a(Lcom/android/cglib/dx/a/a/p$b;)V

    :cond_4
    :goto_1
    move p1, v2

    goto :goto_0

    :cond_5
    return p1
.end method

.method private c(Lcom/android/cglib/dx/a/a/p$b;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/p$b;->f()Lcom/android/cglib/dx/c/c/v;

    const/4 p1, 0x0

    throw p1
.end method

.method private c()[B
    .locals 10

    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/n;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/n;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/cglib/dx/a/b/n;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/cglib/dx/d/d;->writeByte(I)V

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/n;->k:Lcom/android/cglib/dx/d/a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/n;->l:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/cglib/dx/a/b/n;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "%04x: prologue end"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/cglib/dx/a/b/n;->a(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/n;->b:Lcom/android/cglib/dx/a/a/p;

    invoke-virtual {v3}, Lcom/android/cglib/dx/d/h;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/cglib/dx/a/b/n;->c(I)I

    move-result v2

    invoke-direct {p0, v4, v0}, Lcom/android/cglib/dx/a/b/n;->a(ILjava/util/ArrayList;)I

    move-result v4

    const v5, 0x7fffffff

    if-ge v2, v3, :cond_2

    iget-object v6, p0, Lcom/android/cglib/dx/a/b/n;->b:Lcom/android/cglib/dx/a/a/p;

    invoke-virtual {v6, v2}, Lcom/android/cglib/dx/a/a/p;->c(I)Lcom/android/cglib/dx/a/a/p$b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/cglib/dx/a/a/p$b;->a()I

    move-result v6

    goto :goto_1

    :cond_2
    const v6, 0x7fffffff

    :goto_1
    if-ge v4, v1, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/cglib/dx/a/a/u$a;

    invoke-virtual {v7}, Lcom/android/cglib/dx/a/a/u$a;->a()I

    move-result v7

    goto :goto_2

    :cond_3
    const v7, 0x7fffffff

    :goto_2
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ne v8, v5, :cond_4

    goto :goto_3

    :cond_4
    iget v9, p0, Lcom/android/cglib/dx/a/b/n;->e:I

    if-ne v8, v9, :cond_5

    if-ne v6, v5, :cond_5

    if-ne v7, v5, :cond_5

    :goto_3
    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/n;->d()V

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v0}, Lcom/android/cglib/dx/d/d;->h()[B

    move-result-object v0

    return-object v0

    :cond_5
    if-ne v8, v7, :cond_6

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/cglib/dx/a/a/u$a;

    invoke-direct {p0, v4}, Lcom/android/cglib/dx/a/b/n;->a(Lcom/android/cglib/dx/a/a/u$a;)V

    move v4, v5

    goto :goto_0

    :cond_6
    iget v5, p0, Lcom/android/cglib/dx/a/b/n;->i:I

    sub-int/2addr v8, v5

    invoke-direct {p0, v8}, Lcom/android/cglib/dx/a/b/n;->b(I)V

    goto :goto_0
.end method

.method private d(Lcom/android/cglib/dx/a/a/p$b;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/p$b;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/p$b;->c()Lcom/android/cglib/dx/c/c/v;

    const/4 p1, 0x0

    throw p1
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/d/d;->writeByte(I)V

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/n;->k:Lcom/android/cglib/dx/d/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/n;->l:Ljava/io/PrintWriter;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    const-string v1, "end sequence"

    invoke-direct {p0, v0, v1}, Lcom/android/cglib/dx/a/b/n;->a(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private d(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/n;->c:Lcom/android/cglib/dx/d/d;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/d/d;->c(I)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signed value where unsigned required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/cglib/dx/a/a/p$b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/n;->g:Lcom/android/cglib/dx/c/d/a;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/d/a;->c()Lcom/android/cglib/dx/c/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/cglib/dx/d/h;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/n;->f()I

    move-result v1

    new-instance v2, Ljava/util/BitSet;

    iget v3, p0, Lcom/android/cglib/dx/a/b/n;->f:I

    sub-int/2addr v3, v1

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/n;->b:Lcom/android/cglib/dx/a/a/p;

    invoke-virtual {v3}, Lcom/android/cglib/dx/d/h;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    iget-object v5, p0, Lcom/android/cglib/dx/a/b/n;->b:Lcom/android/cglib/dx/a/a/p;

    invoke-virtual {v5, v4}, Lcom/android/cglib/dx/a/a/p;->c(I)Lcom/android/cglib/dx/a/a/p$b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/cglib/dx/a/a/p$b;->d()I

    move-result v6

    if-ge v6, v1, :cond_0

    goto :goto_1

    :cond_0
    sub-int/2addr v6, v1

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/cglib/dx/a/b/m;

    invoke-direct {v1, p0}, Lcom/android/cglib/dx/a/b/m;-><init>(Lcom/android/cglib/dx/a/b/n;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private f()I
    .locals 2

    iget v0, p0, Lcom/android/cglib/dx/a/b/n;->f:I

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/n;->g:Lcom/android/cglib/dx/c/d/a;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/d/a;->c()Lcom/android/cglib/dx/c/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/d/b;->i()I

    move-result v1

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/cglib/dx/a/b/n;->h:Z

    xor-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a()[B
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/n;->c()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "...while encoding debug info"

    invoke-static {v0, v1}, Lcom/android/cglib/dx/d/g;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/cglib/dx/d/g;

    move-result-object v0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/cglib/dx/d/a;Z)[B
    .locals 0

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/n;->m:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/cglib/dx/a/b/n;->l:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/cglib/dx/a/b/n;->k:Lcom/android/cglib/dx/d/a;

    iput-boolean p4, p0, Lcom/android/cglib/dx/a/b/n;->n:Z

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/n;->a()[B

    move-result-object p1

    return-object p1
.end method
