.class Lc/a/a/a/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final a:[I

.field final b:I


# direct methods
.method constructor <init>([II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/a/a/a/c;->a:[I

    iput p2, p0, Lc/a/a/a/c;->b:I

    return-void
.end method


# virtual methods
.method a()I
    .locals 2

    iget-object v0, p0, Lc/a/a/a/c;->a:[I

    iget v1, p0, Lc/a/a/a/c;->b:I

    aget v0, v0, v1

    return v0
.end method

.method a(I)V
    .locals 2

    iget-object v0, p0, Lc/a/a/a/c;->a:[I

    iget v1, p0, Lc/a/a/a/c;->b:I

    aput p1, v0, v1

    return-void
.end method
