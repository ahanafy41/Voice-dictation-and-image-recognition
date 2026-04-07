.class Lb/b/a/a/o;
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

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lb/b/a/a/r;


# direct methods
.method constructor <init>(Lb/b/a/a/r;III)V
    .locals 0

    iput-object p1, p0, Lb/b/a/a/o;->d:Lb/b/a/a/r;

    iput p2, p0, Lb/b/a/a/o;->a:I

    iput p3, p0, Lb/b/a/a/o;->b:I

    iput p4, p0, Lb/b/a/a/o;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lb/b/a/a/o;->d:Lb/b/a/a/r;

    iget v1, p0, Lb/b/a/a/o;->a:I

    iget v2, p0, Lb/b/a/a/o;->b:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Lb/b/a/a/r;->setSelectionRange(II)V

    iget v0, p0, Lb/b/a/a/o;->c:I

    iget v1, p0, Lb/b/a/a/o;->b:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lb/b/a/a/o;->d:Lb/b/a/a/r;

    invoke-virtual {v0}, Lb/b/a/a/r;->focusSelectionStart()V

    :cond_0
    return-void
.end method
