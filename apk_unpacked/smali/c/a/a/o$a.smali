.class final Lc/a/a/o$a;
.super Lc/a/a/o;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:[Lc/a/a/k;

.field private final b:Lc/a/a/o;


# direct methods
.method constructor <init>([Lc/a/a/k;Lc/a/a/o;)V
    .locals 0

    invoke-direct {p0}, Lc/a/a/o;-><init>()V

    iput-object p1, p0, Lc/a/a/o$a;->a:[Lc/a/a/k;

    iput-object p2, p0, Lc/a/a/o$a;->b:Lc/a/a/o;

    return-void
.end method


# virtual methods
.method public a()Lc/a/a/k;
    .locals 2

    iget-object v0, p0, Lc/a/a/o$a;->a:[Lc/a/a/k;

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/a/a/o$a;->b:Lc/a/a/o;

    invoke-virtual {v0}, Lc/a/a/o;->a()Lc/a/a/k;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public a(I)Lc/a/a/k;
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    sget-object p1, Lc/a/a/k;->b:Lc/a/a/k;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lc/a/a/o$a;->a:[Lc/a/a/k;

    array-length v2, v1

    if-gt p1, v2, :cond_1

    sub-int/2addr p1, v0

    aget-object p1, v1, p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc/a/a/o$a;->b:Lc/a/a/o;

    array-length v1, v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lc/a/a/o;->a(I)Lc/a/a/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Lc/a/a/o$a;->a:[Lc/a/a/k;

    array-length v0, v0

    iget-object v1, p0, Lc/a/a/o$a;->b:Lc/a/a/o;

    invoke-virtual {v1}, Lc/a/a/o;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
