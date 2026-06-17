.class Landroid/widget/PullingLayout$FailDrawable;
.super Landroid/widget/PullingLayout$LoadingDrawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PullingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FailDrawable"
.end annotation


# instance fields
.field final synthetic d:Landroid/widget/PullingLayout;


# direct methods
.method constructor <init>(Landroid/widget/PullingLayout;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout$FailDrawable;->d:Landroid/widget/PullingLayout;

    invoke-direct {p0, p1}, Landroid/widget/PullingLayout$LoadingDrawable;-><init>(Landroid/widget/PullingLayout;)V

    invoke-virtual {p0}, Landroid/widget/PullingLayout$LoadingDrawable;->a()V

    return-void
.end method
