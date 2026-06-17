.class Lcom/baidu/mobstat/BDStatCore$16;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/BDStatCore;->autoTrackLaunchInfo(Landroid/content/Context;Lcom/baidu/mobstat/LaunchInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/LaunchInfo;

.field final synthetic b:Z

.field final synthetic c:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Lcom/baidu/mobstat/LaunchInfo;Z)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/BDStatCore$16;->c:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/BDStatCore$16;->a:Lcom/baidu/mobstat/LaunchInfo;

    iput-boolean p3, p0, Lcom/baidu/mobstat/BDStatCore$16;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$16;->c:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v0}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore$16;->a:Lcom/baidu/mobstat/LaunchInfo;

    iget-boolean v2, p0, Lcom/baidu/mobstat/BDStatCore$16;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/SessionAnalysis;->autoTrackLaunchInfo(Lcom/baidu/mobstat/LaunchInfo;Z)V

    return-void
.end method
