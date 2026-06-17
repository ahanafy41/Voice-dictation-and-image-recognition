.class Lcom/baidu/mobstat/BDStatCore$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/BDStatCore;->onErised(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/BDStatCore$15;->e:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/BDStatCore$15;->a:Landroid/content/Context;

    iput-wide p3, p0, Lcom/baidu/mobstat/BDStatCore$15;->b:J

    iput-object p5, p0, Lcom/baidu/mobstat/BDStatCore$15;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/mobstat/BDStatCore$15;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    move-object/from16 v0, p0

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v1

    iget-object v2, v0, Lcom/baidu/mobstat/BDStatCore$15;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/DataCore;->init(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/baidu/mobstat/BDStatCore$15;->e:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v1}, Lcom/baidu/mobstat/BDStatCore;->c(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/EventAnalysis;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/mobstat/BDStatCore$15;->a:Landroid/content/Context;

    iget-wide v9, v0, Lcom/baidu/mobstat/BDStatCore$15;->b:J

    iget-object v6, v0, Lcom/baidu/mobstat/BDStatCore$15;->c:Ljava/lang/String;

    iget-object v7, v0, Lcom/baidu/mobstat/BDStatCore$15;->d:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v4, v9

    invoke-virtual/range {v2 .. v13}, Lcom/baidu/mobstat/EventAnalysis;->onEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v14

    iget-object v15, v0, Lcom/baidu/mobstat/BDStatCore$15;->a:Landroid/content/Context;

    iget-wide v1, v0, Lcom/baidu/mobstat/BDStatCore$15;->b:J

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-wide/from16 v18, v1

    invoke-virtual/range {v14 .. v20}, Lcom/baidu/mobstat/DataCore;->saveLogData(Landroid/content/Context;ZZJZ)V

    iget-wide v1, v0, Lcom/baidu/mobstat/BDStatCore$15;->b:J

    iget-object v3, v0, Lcom/baidu/mobstat/BDStatCore$15;->e:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v3}, Lcom/baidu/mobstat/BDStatCore;->d(Lcom/baidu/mobstat/BDStatCore;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7530

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget-object v1, v0, Lcom/baidu/mobstat/BDStatCore$15;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/mobstat/v;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/baidu/mobstat/LogSender;->instance()Lcom/baidu/mobstat/LogSender;

    move-result-object v1

    iget-object v2, v0, Lcom/baidu/mobstat/BDStatCore$15;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/LogSender;->onSend(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/baidu/mobstat/BDStatCore$15;->e:Lcom/baidu/mobstat/BDStatCore;

    iget-wide v2, v0, Lcom/baidu/mobstat/BDStatCore$15;->b:J

    invoke-static {v1, v2, v3}, Lcom/baidu/mobstat/BDStatCore;->a(Lcom/baidu/mobstat/BDStatCore;J)J

    :cond_0
    return-void
.end method
