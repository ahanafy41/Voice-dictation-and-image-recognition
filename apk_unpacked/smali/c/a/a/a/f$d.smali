.class Lc/a/a/a/f$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field a:Lc/a/a/j;

.field b:I

.field c:I

.field d:S


# direct methods
.method public constructor <init>(Lc/a/a/j;IIS)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/a/a/a/f$d;->a:Lc/a/a/j;

    iput p2, p0, Lc/a/a/a/f$d;->b:I

    iput p3, p0, Lc/a/a/a/f$d;->c:I

    iput-short p4, p0, Lc/a/a/a/f$d;->d:S

    return-void
.end method
