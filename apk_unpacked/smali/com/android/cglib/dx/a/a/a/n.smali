.class public final Lcom/android/cglib/dx/a/a/a/n;
.super Lcom/android/cglib/dx/a/a/n;
.source ""


# static fields
.field public static final b:Lcom/android/cglib/dx/a/a/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/cglib/dx/a/a/a/n;

    invoke-direct {v0}, Lcom/android/cglib/dx/a/a/a/n;-><init>()V

    sput-object v0, Lcom/android/cglib/dx/a/a/a/n;->b:Lcom/android/cglib/dx/a/a/n;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/cglib/dx/a/a/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public a(Lcom/android/cglib/dx/a/a/h;Z)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/n;->a(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/cglib/dx/d/a;Lcom/android/cglib/dx/a/a/h;)V
    .locals 4

    invoke-virtual {p2}, Lcom/android/cglib/dx/a/a/h;->h()Lcom/android/cglib/dx/c/b/o;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/android/cglib/dx/a/a/A;

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/a/A;->n()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/cglib/dx/c/b/o;->c(I)Lcom/android/cglib/dx/c/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/b/n;->g()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/cglib/dx/c/b/o;->c(I)Lcom/android/cglib/dx/c/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/n;->g()I

    move-result v0

    invoke-static {v2, v0}, Lcom/android/cglib/dx/a/a/n;->b(II)I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/cglib/dx/a/a/n;->a(Lcom/android/cglib/dx/a/a/h;I)S

    move-result p2

    int-to-short v0, v1

    invoke-static {p1, p2, v0}, Lcom/android/cglib/dx/a/a/n;->a(Lcom/android/cglib/dx/d/a;SS)V

    return-void
.end method

.method public a(Lcom/android/cglib/dx/a/a/A;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/A;->n()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/n;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Lcom/android/cglib/dx/a/a/h;)Ljava/util/BitSet;
    .locals 3

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/h;->h()Lcom/android/cglib/dx/c/b/o;

    move-result-object p1

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/cglib/dx/c/b/o;->c(I)Lcom/android/cglib/dx/c/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/b/n;->g()I

    move-result v2

    invoke-static {v2}, Lcom/android/cglib/dx/a/a/n;->e(I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/cglib/dx/c/b/o;->c(I)Lcom/android/cglib/dx/c/b/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/n;->g()I

    move-result p1

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/n;->e(I)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-object v0
.end method

.method public f(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/h;->h()Lcom/android/cglib/dx/c/b/o;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/cglib/dx/c/b/o;->c(I)Lcom/android/cglib/dx/c/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/b/n;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/cglib/dx/c/b/o;->c(I)Lcom/android/cglib/dx/c/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/n;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/n;->b(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/android/cglib/dx/a/a/h;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/h;->h()Lcom/android/cglib/dx/c/b/o;

    move-result-object v0

    instance-of v1, p1, Lcom/android/cglib/dx/a/a/A;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/cglib/dx/d/h;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/android/cglib/dx/c/b/o;->c(I)Lcom/android/cglib/dx/c/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/b/n;->g()I

    move-result v1

    invoke-static {v1}, Lcom/android/cglib/dx/a/a/n;->e(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/c/b/o;->c(I)Lcom/android/cglib/dx/c/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/n;->g()I

    move-result v0

    invoke-static {v0}, Lcom/android/cglib/dx/a/a/n;->e(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/cglib/dx/a/a/A;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/A;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/a/n;->a(Lcom/android/cglib/dx/a/a/A;)Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v2
.end method
