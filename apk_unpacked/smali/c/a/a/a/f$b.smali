.class Lc/a/a/a/f$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:[Lc/a/a/a/f$h;

.field b:I

.field c:[Lc/a/a/a/f$d;

.field d:I

.field e:[Lc/a/a/a/f$d;

.field f:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/a/a/a/f$b;->b:I

    iput v0, p0, Lc/a/a/a/f$b;->d:I

    iput v0, p0, Lc/a/a/a/f$b;->f:I

    return-void
.end method
