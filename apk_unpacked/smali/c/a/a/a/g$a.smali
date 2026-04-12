.class Lc/a/a/a/g$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field private b:Ljava/util/Hashtable;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/a/a/a/g$a;->a:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lc/a/a/a/g$a;->b:Ljava/util/Hashtable;

    return-void
.end method

.method static synthetic a(Lc/a/a/a/g$a;Ljava/io/InputStream;Ljava/lang/String;Lb/b/a/b/h;)Lc/a/a/l;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lc/a/a/a/g$a;->a(Ljava/io/InputStream;Ljava/lang/String;Lb/b/a/b/h;)Lc/a/a/l;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/io/InputStream;Ljava/lang/String;Lb/b/a/b/h;)Lc/a/a/l;
    .locals 4

    new-instance v0, Lc/a/a/a/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, p3}, Lc/a/a/a/f;-><init>(Lc/a/a/a/g$a;Ljava/io/InputStream;ZLb/b/a/b/h;)V

    new-instance p3, Lc/a/a/a/b;

    invoke-direct {p3}, Lc/a/a/a/b;-><init>()V

    iput-object p3, v0, Lc/a/a/a/f;->A:Lc/a/a/a/b;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-static {p2}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v3

    invoke-virtual {v0, p0, v2, p1, v3}, Lc/a/a/a/f;->a(Lc/a/a/a/g$a;ILjava/io/InputStream;Lc/a/a/j;)V

    new-instance p1, Lc/a/a/l;

    invoke-direct {p1}, Lc/a/a/l;-><init>()V

    iput-object p1, p3, Lc/a/a/a/b;->b:Lc/a/a/l;

    iget-object p1, p3, Lc/a/a/a/b;->b:Lc/a/a/l;

    invoke-static {p2}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object p2

    iput-object p2, p1, Lc/a/a/l;->i:Lc/a/a/j;

    invoke-virtual {v0, p3}, Lc/a/a/a/f;->a(Lc/a/a/a/b;)V

    iget-object p1, p3, Lc/a/a/a/b;->d:Lc/a/a/a/b;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lc/a/a/a/a;->a(Z)V

    iget-object p1, v0, Lc/a/a/a/f;->F:Lc/a/a/a/f$b;

    if-eqz p1, :cond_1

    iget v0, p1, Lc/a/a/a/f$b;->b:I

    if-nez v0, :cond_2

    iget v0, p1, Lc/a/a/a/f$b;->d:I

    if-nez v0, :cond_2

    iget p1, p1, Lc/a/a/a/f$b;->f:I

    if-nez p1, :cond_2

    :cond_1
    const/4 p2, 0x1

    :cond_2
    invoke-static {p2}, Lc/a/a/a/a;->a(Z)V

    iget-object p1, p3, Lc/a/a/a/b;->b:Lc/a/a/l;

    return-object p1
.end method


# virtual methods
.method public a(Lc/a/a/j;)Lc/a/a/j;
    .locals 1

    iget-object v0, p0, Lc/a/a/a/g$a;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/j;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lc/a/a/a/g$a;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lc/a/a/j;
    .locals 0

    invoke-static {p1}, Lc/a/a/j;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/a/a/a/g$a;->a(Lc/a/a/j;)Lc/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public b(Lc/a/a/j;)Lc/a/a/j;
    .locals 0

    invoke-virtual {p0, p1}, Lc/a/a/a/g$a;->a(Lc/a/a/j;)Lc/a/a/j;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
