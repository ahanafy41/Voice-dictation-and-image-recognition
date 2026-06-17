.class public final Lcom/android/cglib/dx/a/b/k;
.super Lcom/android/cglib/dx/a/b/M;
.source ""


# instance fields
.field private final e:Lcom/android/cglib/dx/c/c/s;

.field private final f:Lcom/android/cglib/dx/a/a/g;

.field private g:Lcom/android/cglib/dx/a/b/f;

.field private final h:Z

.field private final i:Lcom/android/cglib/dx/c/d/e;

.field private j:Lcom/android/cglib/dx/a/b/o;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/c/s;Lcom/android/cglib/dx/a/a/g;ZLcom/android/cglib/dx/c/d/e;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/cglib/dx/a/b/M;-><init>(II)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/k;->e:Lcom/android/cglib/dx/c/c/s;

    iput-object p2, p0, Lcom/android/cglib/dx/a/b/k;->f:Lcom/android/cglib/dx/a/a/g;

    iput-boolean p3, p0, Lcom/android/cglib/dx/a/b/k;->h:Z

    iput-object p4, p0, Lcom/android/cglib/dx/a/b/k;->i:Lcom/android/cglib/dx/c/d/e;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/k;->g:Lcom/android/cglib/dx/a/b/f;

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/k;->j:Lcom/android/cglib/dx/a/b/o;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "throwsList == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "code == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ref == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;)V
    .locals 1

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/k;->f:Lcom/android/cglib/dx/a/a/g;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/g;->d()Lcom/android/cglib/dx/a/a/i;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/cglib/dx/a/a/i;->a(Lcom/android/cglib/dx/d/a;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "...while writing instructions for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/k;->e:Lcom/android/cglib/dx/c/c/s;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/r;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/cglib/dx/d/g;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/cglib/dx/d/g;

    move-result-object p1

    throw p1
.end method

.method private h()I
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/k;->e:Lcom/android/cglib/dx/c/c/s;

    iget-boolean v1, p0, Lcom/android/cglib/dx/a/b/k;->h:Z

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/c/c/d;->a(Z)I

    move-result v0

    return v0
.end method

.method private i()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/k;->f:Lcom/android/cglib/dx/a/a/g;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/g;->d()Lcom/android/cglib/dx/a/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/i;->j()I

    move-result v0

    return v0
.end method

.method private j()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/k;->f:Lcom/android/cglib/dx/a/a/g;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/g;->d()Lcom/android/cglib/dx/a/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/i;->k()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Lcom/android/cglib/dx/a/b/C;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/b/C;->m:Lcom/android/cglib/dx/a/b/C;

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/b/p;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->a()Lcom/android/cglib/dx/a/b/L;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->o()Lcom/android/cglib/dx/a/b/X;

    move-result-object v1

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/k;->f:Lcom/android/cglib/dx/a/a/g;

    invoke-virtual {v2}, Lcom/android/cglib/dx/a/a/g;->i()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/k;->f:Lcom/android/cglib/dx/a/a/g;

    invoke-virtual {v2}, Lcom/android/cglib/dx/a/a/g;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Lcom/android/cglib/dx/a/b/o;

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/k;->f:Lcom/android/cglib/dx/a/a/g;

    iget-boolean v4, p0, Lcom/android/cglib/dx/a/b/k;->h:Z

    iget-object v5, p0, Lcom/android/cglib/dx/a/b/k;->e:Lcom/android/cglib/dx/c/c/s;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/cglib/dx/a/b/o;-><init>(Lcom/android/cglib/dx/a/a/g;ZLcom/android/cglib/dx/c/c/s;)V

    iput-object v2, p0, Lcom/android/cglib/dx/a/b/k;->j:Lcom/android/cglib/dx/a/b/o;

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/k;->j:Lcom/android/cglib/dx/a/b/o;

    invoke-virtual {v0, v2}, Lcom/android/cglib/dx/a/b/L;->a(Lcom/android/cglib/dx/a/b/M;)V

    :cond_1
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/k;->f:Lcom/android/cglib/dx/a/a/g;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/g;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/k;->f:Lcom/android/cglib/dx/a/a/g;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/g;->a()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cglib/dx/c/d/c;

    invoke-virtual {v1, v2}, Lcom/android/cglib/dx/a/b/X;->b(Lcom/android/cglib/dx/c/d/c;)Lcom/android/cglib/dx/a/b/W;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/cglib/dx/a/b/f;

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/k;->f:Lcom/android/cglib/dx/a/a/g;

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/a/b/f;-><init>(Lcom/android/cglib/dx/a/a/g;)V

    iput-object v0, p0, Lcom/android/cglib/dx/a/b/k;->g:Lcom/android/cglib/dx/a/b/f;

    :cond_3
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/k;->f:Lcom/android/cglib/dx/a/a/g;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/g;->c()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/c/c/a;

    invoke-virtual {p1, v1}, Lcom/android/cglib/dx/a/b/p;->b(Lcom/android/cglib/dx/c/c/a;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected b(Lcom/android/cglib/dx/a/b/Q;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/Q;->b()Lcom/android/cglib/dx/a/b/p;

    move-result-object p1

    iget-object p2, p0, Lcom/android/cglib/dx/a/b/k;->f:Lcom/android/cglib/dx/a/a/g;

    new-instance v0, Lcom/android/cglib/dx/a/b/j;

    invoke-direct {v0, p0, p1}, Lcom/android/cglib/dx/a/b/j;-><init>(Lcom/android/cglib/dx/a/b/k;Lcom/android/cglib/dx/a/b/p;)V

    invoke-virtual {p2, v0}, Lcom/android/cglib/dx/a/a/g;->a(Lcom/android/cglib/dx/a/a/g$a;)V

    iget-object p2, p0, Lcom/android/cglib/dx/a/b/k;->g:Lcom/android/cglib/dx/a/b/f;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/android/cglib/dx/a/b/f;->a(Lcom/android/cglib/dx/a/b/p;)V

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/k;->g:Lcom/android/cglib/dx/a/b/f;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/f;->b()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/android/cglib/dx/a/b/k;->f:Lcom/android/cglib/dx/a/a/g;

    invoke-virtual {p2}, Lcom/android/cglib/dx/a/a/g;->d()Lcom/android/cglib/dx/a/a/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/cglib/dx/a/a/i;->i()I

    move-result p2

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    :cond_1
    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x10

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/android/cglib/dx/a/b/M;->a(I)V

    return-void
.end method

.method protected b(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;)V
    .locals 13

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->e()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/k;->j()I

    move-result v1

    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/k;->i()I

    move-result v2

    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/k;->h()I

    move-result v3

    iget-object v4, p0, Lcom/android/cglib/dx/a/b/k;->f:Lcom/android/cglib/dx/a/a/g;

    invoke-virtual {v4}, Lcom/android/cglib/dx/a/a/g;->d()Lcom/android/cglib/dx/a/a/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/cglib/dx/a/a/i;->i()I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget-object v7, p0, Lcom/android/cglib/dx/a/b/k;->g:Lcom/android/cglib/dx/a/b/f;

    if-nez v7, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Lcom/android/cglib/dx/a/b/f;->a()I

    move-result v7

    :goto_1
    iget-object v8, p0, Lcom/android/cglib/dx/a/b/k;->j:Lcom/android/cglib/dx/a/b/o;

    if-nez v8, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, Lcom/android/cglib/dx/a/b/M;->d()I

    move-result v8

    :goto_2
    const/4 v9, 0x2

    if-eqz v0, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/M;->f()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/cglib/dx/a/b/k;->e:Lcom/android/cglib/dx/c/c/s;

    invoke-virtual {v11}, Lcom/android/cglib/dx/c/c/r;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v6, v10}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  registers_size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/cglib/dx/d/i;->d(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  ins_size:       "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/cglib/dx/d/i;->d(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  outs_size:      "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/cglib/dx/d/i;->d(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  tries_size:     "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/cglib/dx/d/i;->d(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  debug_off:      "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/android/cglib/dx/d/i;->g(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    invoke-interface {p2, v11, v10}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  insns_size:     "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/cglib/dx/d/i;->g(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v11, v10}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    iget-object v10, p0, Lcom/android/cglib/dx/a/b/k;->i:Lcom/android/cglib/dx/c/d/e;

    invoke-interface {v10}, Lcom/android/cglib/dx/c/d/e;->size()I

    move-result v10

    if-eqz v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  throws "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/cglib/dx/a/b/k;->i:Lcom/android/cglib/dx/c/d/e;

    invoke-static {v11}, Lcom/android/cglib/dx/c/d/b;->b(Lcom/android/cglib/dx/c/d/e;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v6, v10}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_3
    invoke-interface {p2, v1}, Lcom/android/cglib/dx/d/q;->writeShort(I)V

    invoke-interface {p2, v3}, Lcom/android/cglib/dx/d/q;->writeShort(I)V

    invoke-interface {p2, v2}, Lcom/android/cglib/dx/d/q;->writeShort(I)V

    invoke-interface {p2, v7}, Lcom/android/cglib/dx/d/q;->writeShort(I)V

    invoke-interface {p2, v8}, Lcom/android/cglib/dx/d/q;->writeInt(I)V

    invoke-interface {p2, v4}, Lcom/android/cglib/dx/d/q;->writeInt(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/cglib/dx/a/b/k;->c(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;)V

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/k;->g:Lcom/android/cglib/dx/a/b/f;

    if-eqz v1, :cond_6

    if-eqz v5, :cond_5

    if-eqz v0, :cond_4

    const-string v1, "  padding: 0"

    invoke-interface {p2, v9, v1}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_4
    invoke-interface {p2, v6}, Lcom/android/cglib/dx/d/q;->writeShort(I)V

    :cond_5
    iget-object v1, p0, Lcom/android/cglib/dx/a/b/k;->g:Lcom/android/cglib/dx/a/b/f;

    invoke-virtual {v1, p1, p2}, Lcom/android/cglib/dx/a/b/f;->a(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;)V

    :cond_6
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/k;->j:Lcom/android/cglib/dx/a/b/o;

    if-eqz v0, :cond_7

    const-string v0, "  debug info"

    invoke-interface {p2, v6, v0}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/k;->j:Lcom/android/cglib/dx/a/b/o;

    const-string v1, "    "

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/cglib/dx/a/b/o;->a(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/k;->e:Lcom/android/cglib/dx/c/c/s;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/r;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CodeItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/k;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
