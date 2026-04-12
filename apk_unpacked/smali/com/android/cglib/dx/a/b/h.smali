.class public final Lcom/android/cglib/dx/a/b/h;
.super Lcom/android/cglib/dx/a/b/A;
.source ""


# instance fields
.field private final b:Lcom/android/cglib/dx/c/c/w;

.field private final c:I

.field private final d:Lcom/android/cglib/dx/c/c/w;

.field private e:Lcom/android/cglib/dx/a/b/Y;

.field private final f:Lcom/android/cglib/dx/c/c/v;

.field private final g:Lcom/android/cglib/dx/a/b/g;

.field private h:Lcom/android/cglib/dx/a/b/q;

.field private i:Lcom/android/cglib/dx/a/b/e;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/c/w;ILcom/android/cglib/dx/c/c/w;Lcom/android/cglib/dx/c/d/e;Lcom/android/cglib/dx/c/c/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/A;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p4, :cond_1

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/h;->b:Lcom/android/cglib/dx/c/c/w;

    iput p2, p0, Lcom/android/cglib/dx/a/b/h;->c:I

    iput-object p3, p0, Lcom/android/cglib/dx/a/b/h;->d:Lcom/android/cglib/dx/c/c/w;

    invoke-interface {p4}, Lcom/android/cglib/dx/c/d/e;->size()I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    move-object p2, p3

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/cglib/dx/a/b/Y;

    invoke-direct {p2, p4}, Lcom/android/cglib/dx/a/b/Y;-><init>(Lcom/android/cglib/dx/c/d/e;)V

    :goto_0
    iput-object p2, p0, Lcom/android/cglib/dx/a/b/h;->e:Lcom/android/cglib/dx/a/b/Y;

    iput-object p5, p0, Lcom/android/cglib/dx/a/b/h;->f:Lcom/android/cglib/dx/c/c/v;

    new-instance p2, Lcom/android/cglib/dx/a/b/g;

    invoke-direct {p2, p1}, Lcom/android/cglib/dx/a/b/g;-><init>(Lcom/android/cglib/dx/c/c/w;)V

    iput-object p2, p0, Lcom/android/cglib/dx/a/b/h;->g:Lcom/android/cglib/dx/a/b/g;

    iput-object p3, p0, Lcom/android/cglib/dx/a/b/h;->h:Lcom/android/cglib/dx/a/b/q;

    new-instance p1, Lcom/android/cglib/dx/a/b/e;

    invoke-direct {p1}, Lcom/android/cglib/dx/a/b/e;-><init>()V

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/h;->i:Lcom/android/cglib/dx/a/b/e;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "interfaces == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "thisClass == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/android/cglib/dx/a/b/C;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/b/C;->g:Lcom/android/cglib/dx/a/b/C;

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/b/p;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->o()Lcom/android/cglib/dx/a/b/X;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->a()Lcom/android/cglib/dx/a/b/L;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->q()Lcom/android/cglib/dx/a/b/L;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->p()Lcom/android/cglib/dx/a/b/L;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->n()Lcom/android/cglib/dx/a/b/V;

    move-result-object v4

    iget-object v5, p0, Lcom/android/cglib/dx/a/b/h;->b:Lcom/android/cglib/dx/c/c/w;

    invoke-virtual {v0, v5}, Lcom/android/cglib/dx/a/b/X;->b(Lcom/android/cglib/dx/c/c/w;)Lcom/android/cglib/dx/a/b/W;

    iget-object v5, p0, Lcom/android/cglib/dx/a/b/h;->g:Lcom/android/cglib/dx/a/b/g;

    invoke-virtual {v5}, Lcom/android/cglib/dx/a/b/g;->i()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->b()Lcom/android/cglib/dx/a/b/L;

    move-result-object p1

    iget-object v5, p0, Lcom/android/cglib/dx/a/b/h;->g:Lcom/android/cglib/dx/a/b/g;

    invoke-virtual {p1, v5}, Lcom/android/cglib/dx/a/b/L;->a(Lcom/android/cglib/dx/a/b/M;)V

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/h;->g:Lcom/android/cglib/dx/a/b/g;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/g;->h()Lcom/android/cglib/dx/c/c/c;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v5, Lcom/android/cglib/dx/a/b/q;

    invoke-direct {v5, p1}, Lcom/android/cglib/dx/a/b/q;-><init>(Lcom/android/cglib/dx/c/c/c;)V

    invoke-virtual {v1, v5}, Lcom/android/cglib/dx/a/b/L;->b(Lcom/android/cglib/dx/a/b/M;)Lcom/android/cglib/dx/a/b/M;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/a/b/q;

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/h;->h:Lcom/android/cglib/dx/a/b/q;

    :cond_0
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/h;->d:Lcom/android/cglib/dx/c/c/w;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/a/b/X;->b(Lcom/android/cglib/dx/c/c/w;)Lcom/android/cglib/dx/a/b/W;

    :cond_1
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/h;->e:Lcom/android/cglib/dx/a/b/Y;

    if-eqz p1, :cond_2

    invoke-virtual {v3, p1}, Lcom/android/cglib/dx/a/b/L;->b(Lcom/android/cglib/dx/a/b/M;)Lcom/android/cglib/dx/a/b/M;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/a/b/Y;

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/h;->e:Lcom/android/cglib/dx/a/b/Y;

    :cond_2
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/h;->f:Lcom/android/cglib/dx/c/c/v;

    if-eqz p1, :cond_3

    invoke-virtual {v4, p1}, Lcom/android/cglib/dx/a/b/V;->b(Lcom/android/cglib/dx/c/c/v;)Lcom/android/cglib/dx/a/b/U;

    :cond_3
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/h;->i:Lcom/android/cglib/dx/a/b/e;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/e;->h()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/h;->i:Lcom/android/cglib/dx/a/b/e;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/e;->i()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/h;->i:Lcom/android/cglib/dx/a/b/e;

    invoke-virtual {v2, p1}, Lcom/android/cglib/dx/a/b/L;->b(Lcom/android/cglib/dx/a/b/M;)Lcom/android/cglib/dx/a/b/M;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/a/b/e;

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/h;->i:Lcom/android/cglib/dx/a/b/e;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/h;->i:Lcom/android/cglib/dx/a/b/e;

    invoke-virtual {v2, p1}, Lcom/android/cglib/dx/a/b/L;->a(Lcom/android/cglib/dx/a/b/M;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface/range {p2 .. p2}, Lcom/android/cglib/dx/d/a;->e()Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/cglib/dx/a/b/p;->o()Lcom/android/cglib/dx/a/b/X;

    move-result-object v3

    iget-object v4, v0, Lcom/android/cglib/dx/a/b/h;->b:Lcom/android/cglib/dx/c/c/w;

    invoke-virtual {v3, v4}, Lcom/android/cglib/dx/a/b/X;->a(Lcom/android/cglib/dx/c/c/w;)I

    move-result v4

    iget-object v5, v0, Lcom/android/cglib/dx/a/b/h;->d:Lcom/android/cglib/dx/c/c/w;

    const/4 v6, -0x1

    if-nez v5, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v5}, Lcom/android/cglib/dx/a/b/X;->a(Lcom/android/cglib/dx/c/c/w;)I

    move-result v3

    :goto_0
    iget-object v5, v0, Lcom/android/cglib/dx/a/b/h;->e:Lcom/android/cglib/dx/a/b/Y;

    invoke-static {v5}, Lcom/android/cglib/dx/a/b/M;->c(Lcom/android/cglib/dx/a/b/M;)I

    move-result v5

    iget-object v7, v0, Lcom/android/cglib/dx/a/b/h;->i:Lcom/android/cglib/dx/a/b/e;

    invoke-virtual {v7}, Lcom/android/cglib/dx/a/b/e;->h()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    iget-object v7, v0, Lcom/android/cglib/dx/a/b/h;->i:Lcom/android/cglib/dx/a/b/e;

    invoke-virtual {v7}, Lcom/android/cglib/dx/a/b/M;->d()I

    move-result v7

    :goto_1
    iget-object v9, v0, Lcom/android/cglib/dx/a/b/h;->f:Lcom/android/cglib/dx/c/c/v;

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/cglib/dx/a/b/p;->n()Lcom/android/cglib/dx/a/b/V;

    move-result-object v6

    iget-object v9, v0, Lcom/android/cglib/dx/a/b/h;->f:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v6, v9}, Lcom/android/cglib/dx/a/b/V;->a(Lcom/android/cglib/dx/c/c/v;)I

    move-result v6

    :goto_2
    iget-object v9, v0, Lcom/android/cglib/dx/a/b/h;->g:Lcom/android/cglib/dx/a/b/g;

    invoke-virtual {v9}, Lcom/android/cglib/dx/a/b/g;->i()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    iget-object v9, v0, Lcom/android/cglib/dx/a/b/h;->g:Lcom/android/cglib/dx/a/b/g;

    invoke-virtual {v9}, Lcom/android/cglib/dx/a/b/M;->d()I

    move-result v9

    :goto_3
    iget-object v10, v0, Lcom/android/cglib/dx/a/b/h;->h:Lcom/android/cglib/dx/a/b/q;

    invoke-static {v10}, Lcom/android/cglib/dx/a/b/M;->c(Lcom/android/cglib/dx/a/b/M;)I

    move-result v10

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/cglib/dx/a/b/A;->f()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x20

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/cglib/dx/a/b/h;->b:Lcom/android/cglib/dx/c/c/w;

    invoke-virtual {v11}, Lcom/android/cglib/dx/c/c/w;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  class_idx:           "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/cglib/dx/d/i;->g(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x4

    invoke-interface {v1, v11, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  access_flags:        "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/cglib/dx/a/b/h;->c:I

    invoke-static {v12}, Lcom/android/cglib/dx/c/b/a;->a(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  superclass_idx:      "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/cglib/dx/d/i;->g(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " // "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/cglib/dx/a/b/h;->d:Lcom/android/cglib/dx/c/c/w;

    const-string v14, "<none>"

    if-nez v13, :cond_4

    move-object v13, v14

    goto :goto_4

    :cond_4
    invoke-virtual {v13}, Lcom/android/cglib/dx/c/c/w;->a()Ljava/lang/String;

    move-result-object v13

    :goto_4
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  interfaces_off:      "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/cglib/dx/d/i;->g(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v11, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    if-eqz v5, :cond_5

    iget-object v2, v0, Lcom/android/cglib/dx/a/b/h;->e:Lcom/android/cglib/dx/a/b/Y;

    invoke-virtual {v2}, Lcom/android/cglib/dx/a/b/Y;->h()Lcom/android/cglib/dx/c/d/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/cglib/dx/c/d/e;->size()I

    move-result v13

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v13, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v15}, Lcom/android/cglib/dx/c/d/e;->getType(I)Lcom/android/cglib/dx/c/d/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/cglib/dx/c/d/c;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    invoke-interface {v1, v11, v8}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x4

    goto :goto_5

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  source_file_idx:     "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/cglib/dx/d/i;->g(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/cglib/dx/a/b/h;->f:Lcom/android/cglib/dx/c/c/v;

    if-nez v8, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v8}, Lcom/android/cglib/dx/c/c/v;->a()Ljava/lang/String;

    move-result-object v14

    :goto_6
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x4

    invoke-interface {v1, v8, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  annotations_off:     "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/cglib/dx/d/i;->g(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  class_data_off:      "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/android/cglib/dx/d/i;->g(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  static_values_off:   "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcom/android/cglib/dx/d/i;->g(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v8, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_7
    invoke-interface {v1, v4}, Lcom/android/cglib/dx/d/q;->writeInt(I)V

    iget v2, v0, Lcom/android/cglib/dx/a/b/h;->c:I

    invoke-interface {v1, v2}, Lcom/android/cglib/dx/d/q;->writeInt(I)V

    invoke-interface {v1, v3}, Lcom/android/cglib/dx/d/q;->writeInt(I)V

    invoke-interface {v1, v5}, Lcom/android/cglib/dx/d/q;->writeInt(I)V

    invoke-interface {v1, v6}, Lcom/android/cglib/dx/d/q;->writeInt(I)V

    invoke-interface {v1, v7}, Lcom/android/cglib/dx/d/q;->writeInt(I)V

    invoke-interface {v1, v9}, Lcom/android/cglib/dx/d/q;->writeInt(I)V

    invoke-interface {v1, v10}, Lcom/android/cglib/dx/d/q;->writeInt(I)V

    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/b/r;)V
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/h;->g:Lcom/android/cglib/dx/a/b/g;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/a/b/g;->a(Lcom/android/cglib/dx/a/b/r;)V

    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/b/r;Lcom/android/cglib/dx/c/c/a;)V
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/h;->g:Lcom/android/cglib/dx/a/b/g;

    invoke-virtual {v0, p1, p2}, Lcom/android/cglib/dx/a/b/g;->a(Lcom/android/cglib/dx/a/b/r;Lcom/android/cglib/dx/c/c/a;)V

    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/b/t;)V
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/h;->g:Lcom/android/cglib/dx/a/b/g;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/a/b/g;->a(Lcom/android/cglib/dx/a/b/t;)V

    return-void
.end method

.method public b(Lcom/android/cglib/dx/a/b/t;)V
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/h;->g:Lcom/android/cglib/dx/a/b/g;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/a/b/g;->b(Lcom/android/cglib/dx/a/b/t;)V

    return-void
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public g()Lcom/android/cglib/dx/c/d/e;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/h;->e:Lcom/android/cglib/dx/a/b/Y;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/cglib/dx/c/d/b;->c:Lcom/android/cglib/dx/c/d/b;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/cglib/dx/a/b/Y;->h()Lcom/android/cglib/dx/c/d/e;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/android/cglib/dx/c/c/w;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/h;->d:Lcom/android/cglib/dx/c/c/w;

    return-object v0
.end method

.method public i()Lcom/android/cglib/dx/c/c/w;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/h;->b:Lcom/android/cglib/dx/c/c/w;

    return-object v0
.end method
