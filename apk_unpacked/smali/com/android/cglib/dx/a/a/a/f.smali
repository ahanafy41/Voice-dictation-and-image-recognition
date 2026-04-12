.class public final Lcom/android/cglib/dx/a/a/a/f;
.super Lcom/android/cglib/dx/a/a/n;
.source ""


# static fields
.field public static final b:Lcom/android/cglib/dx/a/a/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/cglib/dx/a/a/a/f;

    invoke-direct {v0}, Lcom/android/cglib/dx/a/a/a/f;-><init>()V

    sput-object v0, Lcom/android/cglib/dx/a/a/a/f;->b:Lcom/android/cglib/dx/a/a/n;

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
    .locals 2

    move-object v0, p2

    check-cast v0, Lcom/android/cglib/dx/a/a/A;

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/a/A;->n()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/android/cglib/dx/a/a/n;->a(Lcom/android/cglib/dx/a/a/h;I)S

    move-result p2

    int-to-short v0, v0

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

.method public f(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/android/cglib/dx/a/a/n;->b(Lcom/android/cglib/dx/a/a/h;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/android/cglib/dx/a/a/h;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/cglib/dx/a/a/A;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/h;->h()Lcom/android/cglib/dx/c/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/cglib/dx/d/h;->size()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lcom/android/cglib/dx/a/a/A;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/a/A;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/a/a/f;->a(Lcom/android/cglib/dx/a/a/A;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
