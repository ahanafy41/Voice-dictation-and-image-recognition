.class final Lc/a/a/j$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:[Lc/a/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x80

    new-array v0, v0, [Lc/a/a/j;

    sput-object v0, Lc/a/a/j$a;->a:[Lc/a/a/j;

    return-void
.end method

.method static synthetic a()[Lc/a/a/j;
    .locals 1

    sget-object v0, Lc/a/a/j$a;->a:[Lc/a/a/j;

    return-object v0
.end method
