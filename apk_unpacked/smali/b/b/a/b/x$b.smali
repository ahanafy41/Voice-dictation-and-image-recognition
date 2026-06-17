.class Lb/b/a/b/x$b;
.super Lb/b/a/b/x$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/b/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic f:Lb/b/a/b/x;


# direct methods
.method public constructor <init>(Lb/b/a/b/x;III)V
    .locals 1

    iput-object p1, p0, Lb/b/a/b/x$b;->f:Lb/b/a/b/x;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lb/b/a/b/x$a;-><init>(Lb/b/a/b/x;Lb/b/a/b/w;)V

    iput p2, p0, Lb/b/a/b/x$a;->a:I

    iput p3, p0, Lb/b/a/b/x$a;->b:I

    iput p4, p0, Lb/b/a/b/x$a;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lb/b/a/b/x$a;->a:I

    return v0
.end method

.method public a(IIJ)Z
    .locals 7

    iget-object v0, p0, Lb/b/a/b/x$b;->f:Lb/b/a/b/x;

    iget-wide v1, v0, Lb/b/a/b/x;->f:J

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-gez v6, :cond_0

    return v3

    :cond_0
    sub-long/2addr p3, v1

    const-wide/32 v1, 0x3b9aca00

    cmp-long v4, p3, v1

    if-gez v4, :cond_1

    iget p3, p0, Lb/b/a/b/x$a;->a:I

    iget p4, p0, Lb/b/a/b/x$a;->b:I

    sub-int/2addr p3, p4

    sub-int/2addr p3, p2

    const/4 v1, 0x1

    add-int/2addr p3, v1

    if-ne p1, p3, :cond_1

    iput p1, p0, Lb/b/a/b/x$a;->a:I

    add-int/2addr p4, p2

    iput p4, p0, Lb/b/a/b/x$a;->b:I

    invoke-static {v0}, Lb/b/a/b/x;->a(Lb/b/a/b/x;)V

    return v1

    :cond_1
    return v3
.end method

.method public b()I
    .locals 2

    iget v0, p0, Lb/b/a/b/x$a;->a:I

    iget v1, p0, Lb/b/a/b/x$a;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public c()V
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lb/b/a/b/x$b;->f:Lb/b/a/b/x;

    invoke-static {v1}, Lb/b/a/b/x;->b(Lb/b/a/b/x;)Lb/b/a/b/t;

    move-result-object v1

    iget v2, p0, Lb/b/a/b/x$a;->b:I

    invoke-virtual {v1, v2}, Lb/b/a/b/t;->b(I)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lb/b/a/b/x$a;->c:Ljava/lang/String;

    return-void
.end method

.method public d()V
    .locals 7

    iget-object v0, p0, Lb/b/a/b/x$b;->f:Lb/b/a/b/x;

    invoke-static {v0}, Lb/b/a/b/x;->b(Lb/b/a/b/x;)Lb/b/a/b/t;

    move-result-object v1

    iget v2, p0, Lb/b/a/b/x$a;->a:I

    iget v3, p0, Lb/b/a/b/x$a;->b:I

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lb/b/a/b/t;->a(IIJZ)V

    return-void
.end method

.method public e()V
    .locals 7

    iget-object v0, p0, Lb/b/a/b/x$a;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/b/a/b/x$b;->c()V

    iget-object v0, p0, Lb/b/a/b/x$b;->f:Lb/b/a/b/x;

    invoke-static {v0}, Lb/b/a/b/x;->b(Lb/b/a/b/x;)Lb/b/a/b/t;

    move-result-object v0

    iget v1, p0, Lb/b/a/b/x$a;->b:I

    invoke-virtual {v0, v1}, Lb/b/a/b/t;->m(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/a/b/x$b;->f:Lb/b/a/b/x;

    invoke-static {v0}, Lb/b/a/b/x;->b(Lb/b/a/b/x;)Lb/b/a/b/t;

    move-result-object v1

    iget-object v0, p0, Lb/b/a/b/x$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iget v3, p0, Lb/b/a/b/x$a;->a:I

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lb/b/a/b/t;->a([CIJZ)V

    :goto_0
    return-void
.end method
