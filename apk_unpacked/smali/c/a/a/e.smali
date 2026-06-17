.class public Lc/a/a/e;
.super Lc/a/a/i;
.source ""


# static fields
.field public static final N:Lc/a/a/e;

.field public static final O:Lc/a/a/e;

.field public static final P:Lc/a/a/e;


# instance fields
.field final Q:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lc/a/a/e;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v0, v1, v2}, Lc/a/a/e;-><init>(D)V

    sput-object v0, Lc/a/a/e;->N:Lc/a/a/e;

    new-instance v0, Lc/a/a/e;

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v0, v1, v2}, Lc/a/a/e;-><init>(D)V

    sput-object v0, Lc/a/a/e;->O:Lc/a/a/e;

    new-instance v0, Lc/a/a/e;

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v2}, Lc/a/a/e;-><init>(D)V

    sput-object v0, Lc/a/a/e;->P:Lc/a/a/e;

    return-void
.end method

.method private constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Lc/a/a/i;-><init>()V

    iput-wide p1, p0, Lc/a/a/e;->Q:D

    return-void
.end method

.method public static a(DD)Lc/a/a/k;
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-eqz v2, :cond_0

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Lc/a/a/e;->h(D)Lc/a/a/i;

    move-result-object p0

    goto :goto_0

    :cond_0
    cmpl-double p2, p0, v0

    if-lez p2, :cond_1

    sget-object p0, Lc/a/a/e;->O:Lc/a/a/e;

    goto :goto_0

    :cond_1
    cmpl-double p2, p0, v0

    if-nez p2, :cond_2

    sget-object p0, Lc/a/a/e;->N:Lc/a/a/e;

    goto :goto_0

    :cond_2
    sget-object p0, Lc/a/a/e;->P:Lc/a/a/e;

    :goto_0
    return-object p0
.end method

.method public static b(DD)Lc/a/a/k;
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-eqz v2, :cond_0

    div-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double p2, p2, v0

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Lc/a/a/e;->h(D)Lc/a/a/i;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lc/a/a/e;->N:Lc/a/a/e;

    :goto_0
    return-object p0
.end method

.method public static h(D)Lc/a/a/i;
    .locals 5

    double-to-long v0, p0

    long-to-double v2, v0

    cmpl-double v4, p0, v2

    if-nez v4, :cond_0

    invoke-static {v0, v1}, Lc/a/a/g;->l(J)Lc/a/a/i;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lc/a/a/e;

    invoke-direct {v0, p0, p1}, Lc/a/a/e;-><init>(D)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a(D)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    add-double/2addr p1, v0

    invoke-static {p1, p2}, Lc/a/a/e;->h(D)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/a/a/k;)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->a(D)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public b(D)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    invoke-static {p1, p2, v0, v1}, Lc/a/a/e;->a(DD)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public b(J)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    double-to-long v0, v0

    and-long/2addr p1, v0

    invoke-static {p1, p2}, Lc/a/a/g;->l(J)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public b(Lc/a/a/k;)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    double-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->b(J)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public c(D)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    invoke-static {p1, p2, v0, v1}, Lc/a/a/e;->b(DD)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public c(J)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    double-to-long v0, v0

    or-long/2addr p1, v0

    invoke-static {p1, p2}, Lc/a/a/g;->l(J)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public c(Lc/a/a/k;)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    double-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->c(J)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 7

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    double-to-long v2, v0

    long-to-double v4, v2

    cmpl-double v6, v4, v0

    if-nez v6, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "nan"

    return-object v0

    :cond_1
    iget-wide v0, p0, Lc/a/a/e;->Q:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_2

    const-string v0, "-inf"

    goto :goto_0

    :cond_2
    const-string v0, "inf"

    :goto_0
    return-object v0

    :cond_3
    iget-wide v0, p0, Lc/a/a/e;->Q:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(D)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Lc/a/a/e;->h(D)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public d(J)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    double-to-long v0, v0

    xor-long/2addr p1, v0

    invoke-static {p1, p2}, Lc/a/a/g;->l(J)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public d(Lc/a/a/k;)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    double-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->d(J)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public e()Lc/a/a/k;
    .locals 4

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    double-to-long v0, v0

    const-wide/16 v2, -0x1

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Lc/a/a/g;->l(J)Lc/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public e(D)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lc/a/a/k;->h(D)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public e(J)Lc/a/a/k;
    .locals 2

    long-to-double p1, p1

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Lc/a/a/k;->h(D)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lc/a/a/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lc/a/a/e;

    iget-wide v2, p1, Lc/a/a/e;->Q:D

    iget-wide v4, p0, Lc/a/a/e;->Q:D

    cmpl-double p1, v2, v4

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public f(J)Lc/a/a/k;
    .locals 2

    long-to-double p1, p1

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Lc/a/a/e;->h(D)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public f(Lc/a/a/k;)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->b(D)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public f(D)Z
    .locals 3

    iget-wide v0, p0, Lc/a/a/e;->Q:D

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

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    sub-double/2addr p1, v0

    invoke-static {p1, p2}, Lc/a/a/e;->h(D)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public g(J)Lc/a/a/k;
    .locals 2

    long-to-double p1, p1

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lc/a/a/k;->h(D)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public g(Lc/a/a/k;)Z
    .locals 2

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->f(D)Z

    move-result p1

    return p1
.end method

.method public h(Lc/a/a/k;)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    double-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->e(J)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public h(J)Z
    .locals 3

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    long-to-double p1, p1

    cmpl-double v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v3, v2

    long-to-int v1, v0

    add-int/2addr v3, v1

    return v3
.end method

.method public i()Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    neg-double v0, v0

    invoke-static {v0, v1}, Lc/a/a/e;->h(D)Lc/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public i(J)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    double-to-long v0, v0

    long-to-int v1, v0

    shl-long/2addr p1, v1

    invoke-static {p1, p2}, Lc/a/a/g;->l(J)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public j()Lc/a/a/j;
    .locals 1

    invoke-virtual {p0}, Lc/a/a/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/j;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public j(J)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    double-to-long v0, v0

    long-to-int v1, v0

    shr-long/2addr p1, v1

    invoke-static {p1, p2}, Lc/a/a/g;->l(J)Lc/a/a/i;

    move-result-object p1

    return-object p1
.end method

.method public j(Lc/a/a/k;)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->c(D)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public k()D
    .locals 2

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    return-wide v0
.end method

.method public k(Lc/a/a/k;)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->d(D)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public l(Lc/a/a/k;)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->e(D)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public n(Lc/a/a/k;)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    double-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->i(J)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public o(Lc/a/a/k;)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    double-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->j(J)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public p(Lc/a/a/k;)Lc/a/a/k;
    .locals 2

    iget-wide v0, p0, Lc/a/a/e;->Q:D

    invoke-virtual {p1, v0, v1}, Lc/a/a/k;->g(D)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method
