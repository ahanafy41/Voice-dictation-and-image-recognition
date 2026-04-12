.class Lcom/baidu/mobstat/BDStatCore$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/BDStatCore;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Ljava/util/Map;

.field final synthetic g:Lorg/json/JSONArray;

.field final synthetic h:Lorg/json/JSONArray;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Z

.field final synthetic m:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Landroid/content/Context;JLjava/lang/String;ILjava/util/Map;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/BDStatCore$9;->m:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/BDStatCore$9;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mobstat/BDStatCore$9;->b:Landroid/content/Context;

    iput-wide p4, p0, Lcom/baidu/mobstat/BDStatCore$9;->c:J

    iput-object p6, p0, Lcom/baidu/mobstat/BDStatCore$9;->d:Ljava/lang/String;

    iput p7, p0, Lcom/baidu/mobstat/BDStatCore$9;->e:I

    iput-object p8, p0, Lcom/baidu/mobstat/BDStatCore$9;->f:Ljava/util/Map;

    iput-object p9, p0, Lcom/baidu/mobstat/BDStatCore$9;->g:Lorg/json/JSONArray;

    iput-object p10, p0, Lcom/baidu/mobstat/BDStatCore$9;->h:Lorg/json/JSONArray;

    iput-object p11, p0, Lcom/baidu/mobstat/BDStatCore$9;->i:Ljava/lang/String;

    iput-object p12, p0, Lcom/baidu/mobstat/BDStatCore$9;->j:Ljava/lang/String;

    iput-object p13, p0, Lcom/baidu/mobstat/BDStatCore$9;->k:Ljava/lang/String;

    iput-boolean p14, p0, Lcom/baidu/mobstat/BDStatCore$9;->l:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/mobstat/BDStatCore$9;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, ""

    :cond_0
    iget-object v2, v0, Lcom/baidu/mobstat/BDStatCore$9;->m:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v2}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/mobstat/BDStatCore$9;->b:Landroid/content/Context;

    iget-wide v4, v0, Lcom/baidu/mobstat/BDStatCore$9;->c:J

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/baidu/mobstat/SessionAnalysis;->onSessionStart(Landroid/content/Context;JZ)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Put event"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/baidu/mobstat/BDStatCore$9;->m:Lcom/baidu/mobstat/BDStatCore;

    iget-object v3, v0, Lcom/baidu/mobstat/BDStatCore$9;->d:Ljava/lang/String;

    iget v5, v0, Lcom/baidu/mobstat/BDStatCore$9;->e:I

    const-wide/16 v6, 0x0

    iget-object v8, v0, Lcom/baidu/mobstat/BDStatCore$9;->f:Ljava/util/Map;

    const/4 v9, 0x0

    move-object v4, v1

    invoke-static/range {v2 .. v9}, Lcom/baidu/mobstat/BDStatCore;->a(Lcom/baidu/mobstat/BDStatCore;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;Lcom/baidu/mobstat/ExtraInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/baidu/mobstat/h;->c()Lcom/baidu/mobstat/h;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/mobstat/g;->a(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/baidu/mobstat/BDStatCore$9;->m:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v2}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionStartTime()J

    move-result-wide v4

    iget-object v2, v0, Lcom/baidu/mobstat/BDStatCore$9;->m:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v2}, Lcom/baidu/mobstat/BDStatCore;->c(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/EventAnalysis;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/mobstat/BDStatCore$9;->b:Landroid/content/Context;

    iget-object v6, v0, Lcom/baidu/mobstat/BDStatCore$9;->d:Ljava/lang/String;

    iget v8, v0, Lcom/baidu/mobstat/BDStatCore$9;->e:I

    iget-wide v9, v0, Lcom/baidu/mobstat/BDStatCore$9;->c:J

    iget-object v11, v0, Lcom/baidu/mobstat/BDStatCore$9;->g:Lorg/json/JSONArray;

    iget-object v12, v0, Lcom/baidu/mobstat/BDStatCore$9;->h:Lorg/json/JSONArray;

    iget-object v13, v0, Lcom/baidu/mobstat/BDStatCore$9;->i:Ljava/lang/String;

    iget-object v14, v0, Lcom/baidu/mobstat/BDStatCore$9;->j:Ljava/lang/String;

    iget-object v15, v0, Lcom/baidu/mobstat/BDStatCore$9;->k:Ljava/lang/String;

    iget-object v7, v0, Lcom/baidu/mobstat/BDStatCore$9;->f:Ljava/util/Map;

    move-object/from16 v16, v15

    iget-boolean v15, v0, Lcom/baidu/mobstat/BDStatCore$9;->l:Z

    move-object/from16 v17, v7

    move-object v7, v1

    move v1, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v1

    invoke-virtual/range {v2 .. v17}, Lcom/baidu/mobstat/EventAnalysis;->onEvent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method
