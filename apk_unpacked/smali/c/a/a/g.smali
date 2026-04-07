.class public Lc/a/a/g;
.super Lc/a/a/i;
.source ""


# static fields
.field private static final N:[Lc/a/a/g;


# instance fields
.field public final O:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x200

    new-array v1, v0, [Lc/a/a/g;

    sput-object v1, Lc/a/a/g;->N:[Lc/a/a/g;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lc/a/a/g;->N:[Lc/a/a/g;

    new-instance v3, Lc/a/a/g;

    add-int/lit16 v4, v1, -0x100

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Lc/a/a/g;-><init>(J)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lc/a/a/i;-><init>()V

    iput-wide p1, p0, Lc/a/a/g;->O:J

    return-void
.end method

.method public static b(I)Lc/a/a/g;
    .locals 3

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/16 v0, -0x100

    if-lt p0, v0, :cond_0

    sget-object v0, Lc/a/a/g;->N:[Lc/a/a/g;

    add-int/lit16 p0, p0, 0x100

    aget-object p0, v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lc/a/a/g;

    int-to-long v1, p0

    invoke-direct {v0, v1, v2}, Lc/a/a/g;-><init>(J)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static l(J)Lc/a/a/i;
    .locals 3

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p0, v0

    if-ltz v2, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lc/a/a/k;->l(J)Lc/a/a/i;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, 0xff

    cmp-long v2, p0, v0

    if-gtz v2, :cond_2

    const-wide/16 v0, -0x100

    cmp-long v2, p0, v0

    if-ltz v2, :cond_2

    sget-object v0, Lc/a/a/g;->N:[Lc/a/a/g;

    const-wide/16 v1, 0x100

    add-long/2addr p0, v1

    long-to-int p1, p0

    aget-object p0, v0, p1

    goto :goto_1

    :cond_2
    new-instance v0, Lc/a/a/g;

    invoke-direct {v0, p0, p1}, Lc/a/a/g;-><init>(J)V

    move-object p0, v0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public a(D)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p1, v0

    invoke-static {p1, p2}, Lc/a/a/e;->h(D)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public a(J)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    add-long/2addr p1, v0

    invoke-static {p1, p2}, Lc/a/a/g;->l(J)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/a/a/k;)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->a(J)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public b(D)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    long-to-double v0, v0

    invoke-static {p1, p2, v0, v1}, Lc/a/a/e;->a(DD)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public b(J)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    and-long/2addr p1, v0

    invoke-static {p1, p2}, Lc/a/a/g;->l(J)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public b(Lc/a/a/k;)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->b(J)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public c(D)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    long-to-double v0, v0

    invoke-static {p1, p2, v0, v1}, Lc/a/a/e;->b(DD)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public c(J)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    or-long/2addr p1, v0

    invoke-static {p1, p2}, Lc/a/a/g;->l(J)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public c(Lc/a/a/k;)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->c(J)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(D)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Lc/a/a/e;->h(D)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public d(J)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    xor-long/2addr p1, v0

    invoke-static {p1, p2}, Lc/a/a/g;->l(J)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public d(Lc/a/a/k;)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->d(J)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public e()Lc/a/a/k;
    .locals 4

    iget-wide v0, p0, Lc/a/a/g;->O:J

    const-wide/16 v2, -0x1

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Lc/a/a/g;->l(J)Lc/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public e(D)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    long-to-double v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lc/a/a/k;->h(D)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public e(J)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    div-long/2addr p1, v0

    invoke-static {p1, p2}, Lc/a/a/g;->l(J)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lc/a/a/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lc/a/a/g;

    iget-wide v2, p1, Lc/a/a/g;->O:J

    iget-wide v4, p0, Lc/a/a/g;->O:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public f(J)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    mul-long p1, p1, v0

    invoke-static {p1, p2}, Lc/a/a/g;->l(J)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public f(Lc/a/a/k;)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    long-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->b(D)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public f(D)Z
    .locals 3

    iget-wide v0, p0, Lc/a/a/g;->O:J

    long-to-double v0, v0

    cmpl-double v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g(D)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p1, v0

    invoke-static {p1, p2}, Lc/a/a/e;->h(D)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public g(J)Lc/a/a/k;
    .locals 2

    long-to-double p1, p1

    iget-wide v0, p0, Lc/a/a/g;->O:J

    long-to-double v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lc/a/a/k;->h(D)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public g(Lc/a/a/k;)Z
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->h(J)Z

    move-result p1

    return p1
.end method

.method public h(Lc/a/a/k;)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->e(J)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public h(J)Z
    .locals 3

    iget-wide v0, p0, Lc/a/a/g;->O:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    neg-long v0, v0

    invoke-static {v0, v1}, Lc/a/a/g;->l(J)Lc/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public i(J)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    long-to-int v1, v0

    shl-long/2addr p1, v1

    invoke-static {p1, p2}, Lc/a/a/g;->l(J)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public j()Lc/a/a/j;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/j;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public j(J)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    long-to-int v1, v0

    shr-long/2addr p1, v1

    invoke-static {p1, p2}, Lc/a/a/g;->l(J)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public j(Lc/a/a/k;)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    long-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->c(D)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public k()D
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public k(J)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lc/a/a/g;->l(J)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public k(Lc/a/a/k;)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->f(J)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public l(Lc/a/a/k;)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->g(J)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public n(Lc/a/a/k;)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->i(J)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public o(Lc/a/a/k;)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->j(J)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public p(Lc/a/a/k;)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/g;->O:J

    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->k(J)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method
