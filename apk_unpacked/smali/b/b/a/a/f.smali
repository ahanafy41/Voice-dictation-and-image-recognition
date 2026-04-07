.class Lb/b/a/a/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/a/a/r;->restoreUiState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lb/b/a/a/r;


# direct methods
.method constructor <init>(Lb/b/a/a/r;I)V
    .locals 0

    iput-object p1, p0, Lb/b/a/a/f;->b:Lb/b/a/a/r;

    iput p2, p0, Lb/b/a/a/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/b/a/a/f;->b:Lb/b/a/a/r;

    iget v1, p0, Lb/b/a/a/f;->a:I

    invoke-virtual {v0, v1}, Lb/b/a/a/r;->moveCaret(I)V

    return-void
.end method
