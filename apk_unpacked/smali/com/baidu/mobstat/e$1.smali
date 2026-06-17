.class Lcom/baidu/mobstat/e$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:J

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lorg/json/JSONArray;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Lorg/json/JSONArray;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/util/Map;

.field final synthetic l:Z

.field final synthetic m:Lorg/json/JSONObject;

.field final synthetic n:Ljava/lang/String;

.field final synthetic o:Lcom/baidu/mobstat/e;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/baidu/mobstat/e$1;->o:Lcom/baidu/mobstat/e;

    move-object v1, p2

    iput-object v1, v0, Lcom/baidu/mobstat/e$1;->a:Landroid/content/Context;

    move-object v1, p3

    iput-object v1, v0, Lcom/baidu/mobstat/e$1;->b:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/baidu/mobstat/e$1;->c:Ljava/lang/String;

    move v1, p5

    iput v1, v0, Lcom/baidu/mobstat/e$1;->d:I

    move-wide v1, p6

    iput-wide v1, v0, Lcom/baidu/mobstat/e$1;->e:J

    move-object v1, p8

    iput-object v1, v0, Lcom/baidu/mobstat/e$1;->f:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/baidu/mobstat/e$1;->g:Lorg/json/JSONArray;

    move-object v1, p10

    iput-object v1, v0, Lcom/baidu/mobstat/e$1;->h:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/baidu/mobstat/e$1;->i:Lorg/json/JSONArray;

    move-object v1, p12

    iput-object v1, v0, Lcom/baidu/mobstat/e$1;->j:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/baidu/mobstat/e$1;->k:Ljava/util/Map;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/baidu/mobstat/e$1;->l:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/baidu/mobstat/e$1;->m:Lorg/json/JSONObject;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/baidu/mobstat/e$1;->n:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v0, p0

    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/BDStatCore;->getSessionStartTime()J

    move-result-wide v4

    const-wide/16 v1, 0x0

    cmp-long v3, v4, v1

    if-gtz v3, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/baidu/mobstat/e$1;->o:Lcom/baidu/mobstat/e;

    iget-object v3, v0, Lcom/baidu/mobstat/e$1;->a:Landroid/content/Context;

    iget-object v6, v0, Lcom/baidu/mobstat/e$1;->b:Ljava/lang/String;

    iget-object v7, v0, Lcom/baidu/mobstat/e$1;->c:Ljava/lang/String;

    iget v8, v0, Lcom/baidu/mobstat/e$1;->d:I

    iget-wide v9, v0, Lcom/baidu/mobstat/e$1;->e:J

    iget-object v11, v0, Lcom/baidu/mobstat/e$1;->f:Ljava/lang/String;

    iget-object v12, v0, Lcom/baidu/mobstat/e$1;->g:Lorg/json/JSONArray;

    iget-object v13, v0, Lcom/baidu/mobstat/e$1;->h:Ljava/lang/String;

    iget-object v14, v0, Lcom/baidu/mobstat/e$1;->i:Lorg/json/JSONArray;

    iget-object v15, v0, Lcom/baidu/mobstat/e$1;->j:Ljava/lang/String;

    iget-object v1, v0, Lcom/baidu/mobstat/e$1;->k:Ljava/util/Map;

    move-object/from16 v16, v1

    iget-boolean v1, v0, Lcom/baidu/mobstat/e$1;->l:Z

    move/from16 v17, v1

    iget-object v1, v0, Lcom/baidu/mobstat/e$1;->m:Lorg/json/JSONObject;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/baidu/mobstat/e$1;->n:Ljava/lang/String;

    move-object/from16 v19, v1

    invoke-static/range {v2 .. v19}, Lcom/baidu/mobstat/e;->a(Lcom/baidu/mobstat/e;Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method
