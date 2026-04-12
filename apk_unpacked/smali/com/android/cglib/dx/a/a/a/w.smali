.class public final Lcom/android/cglib/dx/a/a/a/w;
.super Lcom/android/cglib/dx/a/a/n;
.source ""


# static fields
.field public static final b:Lcom/android/cglib/dx/a/a/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/cglib/dx/a/a/a/w;

    invoke-direct {v0}, Lcom/android/cglib/dx/a/a/a/w;-><init>()V

    sput-object v0, Lcom/android/cglib/dx/a/a/a/w;->b:Lcom/android/cglib/dx/a/a/n;

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

    const/4 v0, 0x3

    return v0
.end method

.method public a(Lcom/android/cglib/dx/a/a/h;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/n;->d(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public a(Lcom/android/cglib/dx/d/a;Lcom/android/cglib/dx/a/a/h;)V
    .locals 4

    invoke-virtual {p2}, Lcom/android/cglib/dx/a/a/h;->h()Lcom/android/cglib/dx/c/b/o;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/android/cglib/dx/a/a/f;

    invoke-virtual {v1}, Lcom/android/cglib/dx/a/a/f;->m()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/cglib/dx/d/h;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Lcom/android/cglib/dx/c/b/o;->c(I)Lcom/android/cglib/dx/c/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/b/n;->g()I

    move-result v3

    :goto_0
    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/o;->i()I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/cglib/dx/a/a/n;->a(Lcom/android/cglib/dx/a/a/h;I)S

    move-result p2

    int-to-short v0, v1

    int-to-short v1, v3

    invoke-static {p1, p2, v0, v1}, Lcom/android/cglib/dx/a/a/n;->a(Lcom/android/cglib/dx/d/a;SSS)V

    return-void
.end method

.method public f(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/h;->h()Lcom/android/cglib/dx/c/b/o;

    move-result-object v1

    invoke-static {v1}, Lcom/android/cglib/dx/a/a/n;->c(Lcom/android/cglib/dx/c/b/o;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/n;->e(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/android/cglib/dx/a/a/h;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/cglib/dx/a/a/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/cglib/dx/a/a/f;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/f;->m()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/f;->l()Lcom/android/cglib/dx/c/c/a;

    move-result-object v2

    invoke-static {v0}, Lcom/android/cglib/dx/a/a/n;->f(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    instance-of v0, v2, Lcom/android/cglib/dx/c/c/s;

    if-nez v0, :cond_2

    instance-of v0, v2, Lcom/android/cglib/dx/c/c/w;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/h;->h()Lcom/android/cglib/dx/c/b/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cglib/dx/d/h;->size()I

    invoke-virtual {p1}, Lcom/android/cglib/dx/d/h;->size()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/n;->a(Lcom/android/cglib/dx/c/b/o;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Lcom/android/cglib/dx/c/b/o;->c(I)Lcom/android/cglib/dx/c/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/b/n;->g()I

    move-result v0

    invoke-static {v0}, Lcom/android/cglib/dx/a/a/n;->f(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/cglib/dx/c/b/o;->i()I

    move-result p1

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/n;->d(I)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method
