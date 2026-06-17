.class public Lb/b/a/b/x;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/b/x$b;,
        Lb/b/a/b/x$c;,
        Lb/b/a/b/x$a;
    }
.end annotation


# instance fields
.field private a:Lb/b/a/b/t;

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lb/b/a/b/x$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:I

.field private e:I

.field f:J


# direct methods
.method public constructor <init>(Lb/b/a/b/t;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lb/b/a/b/x;->b:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/b/a/b/x;->c:Z

    iput v0, p0, Lb/b/a/b/x;->d:I

    iput v0, p0, Lb/b/a/b/x;->e:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lb/b/a/b/x;->f:J

    iput-object p1, p0, Lb/b/a/b/x;->a:Lb/b/a/b/t;

    return-void
.end method

.method private a(Lb/b/a/b/x$a;)V
    .locals 1

    invoke-direct {p0}, Lb/b/a/b/x;->h()V

    iget v0, p0, Lb/b/a/b/x;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/b/a/b/x;->e:I

    iget-object v0, p0, Lb/b/a/b/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lb/b/a/b/x;)V
    .locals 0

    invoke-direct {p0}, Lb/b/a/b/x;->h()V

    return-void
.end method

.method static synthetic b(Lb/b/a/b/x;)Lb/b/a/b/t;
    .locals 0

    iget-object p0, p0, Lb/b/a/b/x;->a:Lb/b/a/b/t;

    return-object p0
.end method

.method private h()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lb/b/a/b/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lb/b/a/b/x;->e:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lb/b/a/b/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/a/b/x;->c:Z

    return-void
.end method

.method public a(IIJ)V
    .locals 3

    invoke-virtual {p0}, Lb/b/a/b/x;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/a/b/x;->b:Ljava/util/LinkedList;

    iget v2, p0, Lb/b/a/b/x;->e:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/a/b/x$a;

    instance-of v2, v0, Lb/b/a/b/x$b;

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/b/a/b/x$a;->a(IIJ)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lb/b/a/b/x$a;->c()V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Lb/b/a/b/x$b;

    iget v2, p0, Lb/b/a/b/x;->d:I

    invoke-direct {v0, p0, p1, p2, v2}, Lb/b/a/b/x$b;-><init>(Lb/b/a/b/x;III)V

    invoke-direct {p0, v0}, Lb/b/a/b/x;->a(Lb/b/a/b/x$a;)V

    iget-boolean p1, p0, Lb/b/a/b/x;->c:Z

    if-nez p1, :cond_2

    iget p1, p0, Lb/b/a/b/x;->d:I

    add-int/2addr p1, v1

    iput p1, p0, Lb/b/a/b/x;->d:I

    :cond_2
    iput-wide p3, p0, Lb/b/a/b/x;->f:J

    return-void
.end method

.method public b(IIJ)V
    .locals 3

    invoke-virtual {p0}, Lb/b/a/b/x;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/a/b/x;->b:Ljava/util/LinkedList;

    iget v2, p0, Lb/b/a/b/x;->e:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/a/b/x$a;

    instance-of v2, v0, Lb/b/a/b/x$c;

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/b/a/b/x$a;->a(IIJ)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lb/b/a/b/x$a;->c()V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Lb/b/a/b/x$c;

    iget v2, p0, Lb/b/a/b/x;->d:I

    invoke-direct {v0, p0, p1, p2, v2}, Lb/b/a/b/x$c;-><init>(Lb/b/a/b/x;III)V

    invoke-direct {p0, v0}, Lb/b/a/b/x;->a(Lb/b/a/b/x$a;)V

    iget-boolean p1, p0, Lb/b/a/b/x;->c:Z

    if-nez p1, :cond_2

    iget p1, p0, Lb/b/a/b/x;->d:I

    add-int/2addr p1, v1

    iput p1, p0, Lb/b/a/b/x;->d:I

    :cond_2
    iput-wide p3, p0, Lb/b/a/b/x;->f:J

    return-void
.end method

.method public final b()Z
    .locals 2

    iget v0, p0, Lb/b/a/b/x;->e:I

    iget-object v1, p0, Lb/b/a/b/x;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()Z
    .locals 1

    iget v0, p0, Lb/b/a/b/x;->e:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/b/a/b/x;->c:Z

    iget v0, p0, Lb/b/a/b/x;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/b/a/b/x;->d:I

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lb/b/a/b/x;->c:Z

    return v0
.end method

.method public f()I
    .locals 4

    invoke-virtual {p0}, Lb/b/a/b/x;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/b/a/b/x;->b:Ljava/util/LinkedList;

    iget v1, p0, Lb/b/a/b/x;->e:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/a/b/x$a;

    iget v1, v0, Lb/b/a/b/x$a;->d:I

    :goto_0
    iget-object v2, p0, Lb/b/a/b/x;->b:Ljava/util/LinkedList;

    iget v3, p0, Lb/b/a/b/x;->e:I

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/a/b/x$a;

    iget v3, v2, Lb/b/a/b/x$a;->d:I

    if-eq v3, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lb/b/a/b/x$a;->d()V

    iget v0, p0, Lb/b/a/b/x;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/b/a/b/x;->e:I

    invoke-virtual {p0}, Lb/b/a/b/x;->b()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    :goto_1
    invoke-virtual {v0}, Lb/b/a/b/x$a;->a()I

    move-result v0

    return v0

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public g()I
    .locals 4

    invoke-virtual {p0}, Lb/b/a/b/x;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/b/a/b/x;->b:Ljava/util/LinkedList;

    iget v1, p0, Lb/b/a/b/x;->e:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/a/b/x$a;

    iget v1, v0, Lb/b/a/b/x$a;->d:I

    :goto_0
    iget-object v2, p0, Lb/b/a/b/x;->b:Ljava/util/LinkedList;

    iget v3, p0, Lb/b/a/b/x;->e:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/a/b/x$a;

    iget v3, v2, Lb/b/a/b/x$a;->d:I

    if-eq v3, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lb/b/a/b/x$a;->e()V

    iget v0, p0, Lb/b/a/b/x;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lb/b/a/b/x;->e:I

    invoke-virtual {p0}, Lb/b/a/b/x;->c()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    :goto_1
    invoke-virtual {v0}, Lb/b/a/b/x$a;->b()I

    move-result v0

    return v0

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method
