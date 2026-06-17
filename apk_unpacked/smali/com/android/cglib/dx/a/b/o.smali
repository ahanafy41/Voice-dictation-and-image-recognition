.class public Lcom/android/cglib/dx/a/b/o;
.super Lcom/android/cglib/dx/a/b/M;
.source ""


# instance fields
.field private final e:Lcom/android/cglib/dx/a/a/g;

.field private f:[B

.field private final g:Z

.field private final h:Lcom/android/cglib/dx/c/c/s;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/a/a/g;ZLcom/android/cglib/dx/c/c/s;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/cglib/dx/a/b/M;-><init>(II)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/o;->e:Lcom/android/cglib/dx/a/a/g;

    iput-boolean p2, p0, Lcom/android/cglib/dx/a/b/o;->g:Z

    iput-object p3, p0, Lcom/android/cglib/dx/a/b/o;->h:Lcom/android/cglib/dx/c/c/s;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "code == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/android/cglib/dx/a/b/p;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/cglib/dx/d/a;Z)[B
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/cglib/dx/a/b/o;->b(Lcom/android/cglib/dx/a/b/p;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/cglib/dx/d/a;Z)[B

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/android/cglib/dx/a/b/p;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/cglib/dx/d/a;Z)[B
    .locals 9

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/o;->e:Lcom/android/cglib/dx/a/a/g;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/g;->f()Lcom/android/cglib/dx/a/a/u;

    move-result-object v2

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/o;->e:Lcom/android/cglib/dx/a/a/g;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/g;->e()Lcom/android/cglib/dx/a/a/p;

    move-result-object v3

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/o;->e:Lcom/android/cglib/dx/a/a/g;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/g;->d()Lcom/android/cglib/dx/a/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/i;->i()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/i;->k()I

    move-result v6

    new-instance v0, Lcom/android/cglib/dx/a/b/n;

    iget-boolean v7, p0, Lcom/android/cglib/dx/a/b/o;->g:Z

    iget-object v8, p0, Lcom/android/cglib/dx/a/b/o;->h:Lcom/android/cglib/dx/c/c/s;

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/cglib/dx/a/b/n;-><init>(Lcom/android/cglib/dx/a/a/u;Lcom/android/cglib/dx/a/a/p;Lcom/android/cglib/dx/a/b/p;IIZLcom/android/cglib/dx/c/c/s;)V

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/b/n;->a()[B

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/cglib/dx/a/b/n;->a(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/cglib/dx/d/a;Z)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public a()Lcom/android/cglib/dx/a/b/C;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/b/C;->o:Lcom/android/cglib/dx/a/b/C;

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/b/p;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/cglib/dx/a/b/o;->a(Lcom/android/cglib/dx/a/b/p;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/cglib/dx/d/a;Z)[B

    return-void
.end method

.method protected b(Lcom/android/cglib/dx/a/b/Q;I)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/Q;->b()Lcom/android/cglib/dx/a/b/p;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/cglib/dx/a/b/o;->a(Lcom/android/cglib/dx/a/b/p;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/cglib/dx/d/a;Z)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/o;->f:[B

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/o;->f:[B

    array-length p1, p1

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/b/M;->a(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "...while placing debug info for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/o;->h:Lcom/android/cglib/dx/c/c/s;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/r;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/cglib/dx/d/g;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/cglib/dx/d/g;

    move-result-object p1

    throw p1
.end method

.method protected b(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;)V
    .locals 7

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/M;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " debug info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/cglib/dx/d/a;->a(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/cglib/dx/a/b/o;->a(Lcom/android/cglib/dx/a/b/p;Ljava/lang/String;Ljava/io/PrintWriter;Lcom/android/cglib/dx/d/a;Z)[B

    :cond_0
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/o;->f:[B

    invoke-interface {p2, p1}, Lcom/android/cglib/dx/d/q;->write([B)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
