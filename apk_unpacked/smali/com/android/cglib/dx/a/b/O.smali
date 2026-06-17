.class public final Lcom/android/cglib/dx/a/b/O;
.super Lcom/android/cglib/dx/a/b/A;
.source ""


# instance fields
.field private final b:Lcom/android/cglib/dx/c/d/a;

.field private final c:Lcom/android/cglib/dx/c/c/v;

.field private d:Lcom/android/cglib/dx/a/b/Y;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/d/a;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/A;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/O;->b:Lcom/android/cglib/dx/c/d/a;

    invoke-static {p1}, Lcom/android/cglib/dx/a/b/O;->a(Lcom/android/cglib/dx/c/d/a;)Lcom/android/cglib/dx/c/c/v;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cglib/dx/a/b/O;->c:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/d/a;->c()Lcom/android/cglib/dx/c/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/d/h;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/cglib/dx/a/b/Y;

    invoke-direct {v0, p1}, Lcom/android/cglib/dx/a/b/Y;-><init>(Lcom/android/cglib/dx/c/d/e;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/android/cglib/dx/a/b/O;->d:Lcom/android/cglib/dx/a/b/Y;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "prototype == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Lcom/android/cglib/dx/c/d/c;)C
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/d/c;->h()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x5b

    if-ne p0, v0, :cond_0

    const/16 p0, 0x4c

    :cond_0
    return p0
.end method

.method private static a(Lcom/android/cglib/dx/c/d/a;)Lcom/android/cglib/dx/c/c/v;
    .locals 4

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/d/a;->c()Lcom/android/cglib/dx/c/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/d/h;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/d/a;->d()Lcom/android/cglib/dx/c/d/c;

    move-result-object p0

    invoke-static {p0}, Lcom/android/cglib/dx/a/b/O;->a(Lcom/android/cglib/dx/c/d/c;)C

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/cglib/dx/c/d/b;->getType(I)Lcom/android/cglib/dx/c/d/c;

    move-result-object v3

    invoke-static {v3}, Lcom/android/cglib/dx/a/b/O;->a(Lcom/android/cglib/dx/c/d/c;)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/cglib/dx/c/c/v;-><init>(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public a()Lcom/android/cglib/dx/a/b/C;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/b/C;->d:Lcom/android/cglib/dx/a/b/C;

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/b/p;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->n()Lcom/android/cglib/dx/a/b/V;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->o()Lcom/android/cglib/dx/a/b/X;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->p()Lcom/android/cglib/dx/a/b/L;

    move-result-object p1

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/O;->b:Lcom/android/cglib/dx/c/d/a;

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/d/a;->d()Lcom/android/cglib/dx/c/d/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/cglib/dx/a/b/X;->b(Lcom/android/cglib/dx/c/d/c;)Lcom/android/cglib/dx/a/b/W;

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/O;->c:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/a/b/V;->b(Lcom/android/cglib/dx/c/c/v;)Lcom/android/cglib/dx/a/b/U;

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/O;->d:Lcom/android/cglib/dx/a/b/Y;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/a/b/L;->b(Lcom/android/cglib/dx/a/b/M;)Lcom/android/cglib/dx/a/b/M;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/dx/a/b/Y;

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/O;->d:Lcom/android/cglib/dx/a/b/Y;

    :cond_0
    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->n()Lcom/android/cglib/dx/a/b/V;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/O;->c:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/a/b/V;->a(Lcom/android/cglib/dx/c/c/v;)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->o()Lcom/android/cglib/dx/a/b/X;

    move-result-object p1

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/O;->b:Lcom/android/cglib/dx/c/d/a;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/d/a;->d()Lcom/android/cglib/dx/c/d/c;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/cglib/dx/a/b/X;->a(Lcom/android/cglib/dx/c/d/c;)I

    move-result p1

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/O;->d:Lcom/android/cglib/dx/a/b/Y;

    invoke-static {v1}, Lcom/android/cglib/dx/a/b/M;->c(Lcom/android/cglib/dx/a/b/M;)I

    move-result v1

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/O;->b:Lcom/android/cglib/dx/c/d/a;

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/d/a;->d()Lcom/android/cglib/dx/c/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/d/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " proto("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/O;->b:Lcom/android/cglib/dx/c/d/a;

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/d/a;->c()Lcom/android/cglib/dx/c/d/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/cglib/dx/d/h;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    if-eqz v6, :cond_0

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v3, v6}, Lcom/android/cglib/dx/c/d/b;->getType(I)Lcom/android/cglib/dx/c/d/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/cglib/dx/c/d/c;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/A;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v5, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  shorty_idx:      "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/cglib/dx/d/i;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " // "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/cglib/dx/a/b/O;->c:Lcom/android/cglib/dx/c/c/v;

    invoke-virtual {v4}, Lcom/android/cglib/dx/c/c/v;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-interface {p2, v4, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  return_type_idx: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/cglib/dx/d/i;->g(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/O;->b:Lcom/android/cglib/dx/c/d/a;

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/d/a;->d()Lcom/android/cglib/dx/c/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/d/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  parameters_off:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/cglib/dx/d/i;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_2
    invoke-interface {p2, v0}, Lcom/android/cglib/dx/d/q;->writeInt(I)V

    invoke-interface {p2, p1}, Lcom/android/cglib/dx/d/q;->writeInt(I)V

    invoke-interface {p2, v1}, Lcom/android/cglib/dx/d/q;->writeInt(I)V

    return-void
.end method

.method public c()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method
