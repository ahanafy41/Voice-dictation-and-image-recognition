.class Lcom/baidu/mobstat/BDStatCore$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/BDStatCore;->onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/baidu/mobstat/ExtraInfo;

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:J

.field final synthetic g:Z

.field final synthetic h:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/baidu/mobstat/ExtraInfo;Landroid/content/Context;JZ)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/BDStatCore$11;->h:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/BDStatCore$11;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mobstat/BDStatCore$11;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/mobstat/BDStatCore$11;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/baidu/mobstat/BDStatCore$11;->d:Lcom/baidu/mobstat/ExtraInfo;

    iput-object p6, p0, Lcom/baidu/mobstat/BDStatCore$11;->e:Landroid/content/Context;

    iput-wide p7, p0, Lcom/baidu/mobstat/BDStatCore$11;->f:J

    iput-boolean p9, p0, Lcom/baidu/mobstat/BDStatCore$11;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$11;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore$11;->h:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v1}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionStartTime()J

    move-result-wide v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End event"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore$11;->h:Lcom/baidu/mobstat/BDStatCore;

    iget-object v2, p0, Lcom/baidu/mobstat/BDStatCore$11;->b:Ljava/lang/String;

    const/4 v4, 0x1

    const-wide/16 v5, -0x1

    iget-object v7, p0, Lcom/baidu/mobstat/BDStatCore$11;->c:Ljava/util/Map;

    iget-object v8, p0, Lcom/baidu/mobstat/BDStatCore$11;->d:Lcom/baidu/mobstat/ExtraInfo;

    move-object v3, v0

    invoke-static/range {v1 .. v8}, Lcom/baidu/mobstat/BDStatCore;->a(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;Lcom/baidu/mobstat/ExtraInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mobstat/h;->c()Lcom/baidu/mobstat/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/g;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore$11;->h:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v1}, Lcom/baidu/mobstat/BDStatCore;->c(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/EventAnalysis;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/BDStatCore$11;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/baidu/mobstat/BDStatCore$11;->b:Ljava/lang/String;

    iget-wide v7, p0, Lcom/baidu/mobstat/BDStatCore$11;->f:J

    iget-object v11, p0, Lcom/baidu/mobstat/BDStatCore$11;->d:Lcom/baidu/mobstat/ExtraInfo;

    iget-object v12, p0, Lcom/baidu/mobstat/BDStatCore$11;->c:Ljava/util/Map;

    iget-boolean v13, p0, Lcom/baidu/mobstat/BDStatCore$11;->g:Z

    move-wide v3, v9

    move-object v6, v0

    move-object v9, v11

    move-object v10, v12

    move v11, v13

    invoke-virtual/range {v1 .. v11}, Lcom/baidu/mobstat/EventAnalysis;->onEventEnd(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Ljava/util/Map;Z)V

    return-void
.end method
