.class Lb/b/a/a/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/a/r$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/b/a/a/r$a;


# direct methods
.method constructor <init>(Lb/b/a/a/r$a;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/a/q;->a:Lb/b/a/a/r$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lb/b/a/a/q;->a:Lb/b/a/a/r$a;

    invoke-virtual {v0}, Lb/b/a/a/r$a;->b()V

    return-void
.end method
