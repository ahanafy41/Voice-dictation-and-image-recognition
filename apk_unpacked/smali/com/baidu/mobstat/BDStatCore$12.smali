.class Lcom/baidu/mobstat/BDStatCore$12;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/BDStatCore;->onSessionStart(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:J

.field final synthetic c:Z

.field final synthetic d:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Landroid/content/Context;JZ)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/BDStatCore$12;->d:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/BDStatCore$12;->a:Landroid/content/Context;

    iput-wide p3, p0, Lcom/baidu/mobstat/BDStatCore$12;->b:J

    iput-boolean p5, p0, Lcom/baidu/mobstat/BDStatCore$12;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$12;->d:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v0}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore$12;->a:Landroid/content/Context;

    iget-wide v2, p0, Lcom/baidu/mobstat/BDStatCore$12;->b:J

    iget-boolean v4, p0, Lcom/baidu/mobstat/BDStatCore$12;->c:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/mobstat/SessionAnalysis;->onSessionStart(Landroid/content/Context;JZ)V

    return-void
.end method
