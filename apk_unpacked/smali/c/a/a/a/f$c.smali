.class Lc/a/a/a/f$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Lc/a/a/a/f$c;

.field b:Lc/a/a/a/f$i;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/a/a/a/f$i;

    invoke-direct {v0}, Lc/a/a/a/f$i;-><init>()V

    iput-object v0, p0, Lc/a/a/a/f$c;->b:Lc/a/a/a/f$i;

    return-void
.end method
