.class public Lcom/baidu/mobstat/SessionAnalysis;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/SessionAnalysis$a;,
        Lcom/baidu/mobstat/SessionAnalysis$Callback;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/baidu/mobstat/SessionAnalysis$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/baidu/mobstat/SessionAnalysis$a;

.field private d:Lcom/baidu/mobstat/SessionAnalysis$a;

.field private e:Z

.field private f:J

.field private g:Lcom/baidu/mobstat/Session;

.field private h:I

.field private i:I

.field private j:J

.field private k:Lcom/baidu/mobstat/LaunchInfo;

.field private l:Lcom/baidu/mobstat/LaunchInfo;

.field public mCallback:Lcom/baidu/mobstat/SessionAnalysis$Callback;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->a:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    new-instance v1, Lcom/baidu/mobstat/SessionAnalysis$a;

    invoke-direct {v1}, Lcom/baidu/mobstat/SessionAnalysis$a;-><init>()V

    iput-object v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->c:Lcom/baidu/mobstat/SessionAnalysis$a;

    new-instance v1, Lcom/baidu/mobstat/SessionAnalysis$a;

    invoke-direct {v1}, Lcom/baidu/mobstat/SessionAnalysis$a;-><init>()V

    iput-object v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->d:Lcom/baidu/mobstat/SessionAnalysis$a;

    iput-boolean v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    new-instance v3, Lcom/baidu/mobstat/Session;

    invoke-direct {v3}, Lcom/baidu/mobstat/Session;-><init>()V

    iput-object v3, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    iput v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->h:I

    iput v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->i:I

    iput-wide v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->j:J

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mobstat/SessionAnalysis$Callback;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->a:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    new-instance v1, Lcom/baidu/mobstat/SessionAnalysis$a;

    invoke-direct {v1}, Lcom/baidu/mobstat/SessionAnalysis$a;-><init>()V

    iput-object v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->c:Lcom/baidu/mobstat/SessionAnalysis$a;

    new-instance v1, Lcom/baidu/mobstat/SessionAnalysis$a;

    invoke-direct {v1}, Lcom/baidu/mobstat/SessionAnalysis$a;-><init>()V

    iput-object v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->d:Lcom/baidu/mobstat/SessionAnalysis$a;

    iput-boolean v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    new-instance v3, Lcom/baidu/mobstat/Session;

    invoke-direct {v3}, Lcom/baidu/mobstat/Session;-><init>()V

    iput-object v3, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    iput v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->h:I

    iput v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->i:I

    iput-wide v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->j:J

    iput-object p1, p0, Lcom/baidu/mobstat/SessionAnalysis;->mCallback:Lcom/baidu/mobstat/SessionAnalysis$Callback;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/baidu/mobstat/SessionAnalysis$a;
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    new-instance v1, Lcom/baidu/mobstat/SessionAnalysis$a;

    invoke-direct {v1, p1}, Lcom/baidu/mobstat/SessionAnalysis$a;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/mobstat/SessionAnalysis$a;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0}, Lcom/baidu/mobstat/Session;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0}, Lcom/baidu/mobstat/Session;->constructJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    iput v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->i:I

    invoke-static {p1}, Lcom/baidu/mobstat/v;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mobstat/Config;->LAST_SESSION_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/baidu/mobstat/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;JJII)V
    .locals 9

    move-object v7, p0

    move-wide v0, p2

    sub-long v2, p4, v0

    invoke-virtual {p0}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionTimeOut()I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x0

    cmp-long v8, v2, v4

    if-lez v8, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    return-void

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    const/4 v2, 0x2

    move/from16 v3, p7

    if-ne v2, v3, :cond_2

    iget-object v2, v7, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v2, p2, p3}, Lcom/baidu/mobstat/Session;->setEndTime(J)V

    :cond_2
    iget-object v0, v7, Lcom/baidu/mobstat/SessionAnalysis;->l:Lcom/baidu/mobstat/LaunchInfo;

    if-eqz v0, :cond_3

    move-object v1, p1

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/LaunchInfo;->getLaunchType(Landroid/content/Context;)I

    move-result v0

    move v6, v0

    goto :goto_1

    :cond_3
    move-object v1, p1

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p4

    invoke-direct/range {v0 .. v6}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;JZZI)V

    :cond_4
    iget-object v0, v7, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    iget-wide v1, v7, Lcom/baidu/mobstat/SessionAnalysis;->j:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/Session;->setTrackStartTime(J)V

    iget-object v0, v7, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    move v1, p6

    invoke-virtual {v0, p6}, Lcom/baidu/mobstat/Session;->setInvokeType(I)V

    return-void
.end method

.method private a(Landroid/content/Context;JZZI)V
    .locals 8

    iget-object p6, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {p6}, Lcom/baidu/mobstat/Session;->hasEnd()Z

    move-result p6

    const-wide/16 v0, 0x0

    if-eqz p6, :cond_0

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object p6

    iget-object v2, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {p6, v2}, Lcom/baidu/mobstat/DataCore;->putSession(Lcom/baidu/mobstat/Session;)V

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object p6

    invoke-virtual {p6, p1}, Lcom/baidu/mobstat/DataCore;->flush(Landroid/content/Context;)V

    iget-object p6, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {p6}, Lcom/baidu/mobstat/Session;->getPageSessionHead()Lorg/json/JSONObject;

    move-result-object p6

    invoke-static {p6}, Lcom/baidu/mobstat/d;->a(Lorg/json/JSONObject;)V

    iget-object p6, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {p6, v0, v1}, Lcom/baidu/mobstat/Session;->setEndTime(J)V

    :cond_0
    cmp-long p6, p2, v0

    if-lez p6, :cond_1

    const/4 p6, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p6, 0x0

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    move-wide v4, p2

    goto :goto_1

    :cond_2
    iget-object p6, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {p6}, Lcom/baidu/mobstat/Session;->getStartTime()J

    move-result-wide v0

    move-wide v4, v0

    :goto_1
    if-eqz v2, :cond_3

    iget-object p6, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {p6}, Lcom/baidu/mobstat/Session;->reset()V

    iget-object p6, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {p6, p2, p3}, Lcom/baidu/mobstat/Session;->setStartTime(J)V

    :cond_3
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    const/4 v7, 0x0

    move-object v1, p1

    move v3, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/mobstat/DataCore;->saveLogData(Landroid/content/Context;ZZJZLorg/json/JSONObject;)V

    iget-object p2, p0, Lcom/baidu/mobstat/SessionAnalysis;->mCallback:Lcom/baidu/mobstat/SessionAnalysis$Callback;

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object p3

    invoke-virtual {p3}, Lcom/baidu/mobstat/DataCore;->getLogData()Lorg/json/JSONObject;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/baidu/mobstat/SessionAnalysis$Callback;->onCallback(Lorg/json/JSONObject;)V

    :cond_4
    invoke-static {}, Lcom/baidu/mobstat/LogSender;->instance()Lcom/baidu/mobstat/LogSender;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/LogSender;->onSend(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/SessionAnalysis;->clearLastSessionCache(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Z)V
    .locals 15

    move-object v0, p0

    move-wide/from16 v1, p6

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    sub-long v8, v1, p4

    new-instance v3, Lcom/baidu/mobstat/Session$a;

    move-object v4, v3

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-wide/from16 v10, p4

    move/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    invoke-direct/range {v4 .. v14}, Lcom/baidu/mobstat/Session$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/baidu/mobstat/ExtraInfo;Z)V

    iget-object v4, v0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v4, v3}, Lcom/baidu/mobstat/Session;->addPageView(Lcom/baidu/mobstat/Session$a;)V

    iget-object v3, v0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v3, v1, v2}, Lcom/baidu/mobstat/Session;->setEndTime(J)V

    invoke-direct/range {p0 .. p1}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public autoTrackLaunchInfo(Lcom/baidu/mobstat/LaunchInfo;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/baidu/mobstat/SessionAnalysis;->k:Lcom/baidu/mobstat/LaunchInfo;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/baidu/mobstat/SessionAnalysis;->l:Lcom/baidu/mobstat/LaunchInfo;

    :goto_0
    return-void
.end method

.method public autoTrackSessionEndTime(Landroid/content/Context;J)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0, p2, p3}, Lcom/baidu/mobstat/Session;->setTrackEndTime(J)V

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;)V

    return-void
.end method

.method public autoTrackSessionStartTime(Landroid/content/Context;J)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {p1, p2, p3}, Lcom/baidu/mobstat/Session;->setTrackStartTime(J)V

    iput-wide p2, p0, Lcom/baidu/mobstat/SessionAnalysis;->j:J

    return-void
.end method

.method public clearLastSessionCache(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mobstat/v;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mobstat/Config;->LAST_SESSION_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/baidu/mobstat/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public doSendLogCheck(Landroid/content/Context;J)V
    .locals 10

    iget-wide v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    sub-long/2addr p2, v0

    invoke-virtual {p0}, Lcom/baidu/mobstat/SessionAnalysis;->getSessionTimeOut()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    const/4 v9, 0x0

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;JZZI)V

    :cond_0
    return-void
.end method

.method public getPageSessionHead()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0}, Lcom/baidu/mobstat/Session;->getPageSessionHead()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getSessionSize()I
    .locals 1

    iget v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->i:I

    return v0
.end method

.method public getSessionStartTime()J
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0}, Lcom/baidu/mobstat/Session;->getStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSessionTimeOut()I
    .locals 1

    iget v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->h:I

    if-gtz v0, :cond_0

    const/16 v0, 0x7530

    iput v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->h:I

    :cond_0
    iget v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->h:I

    return v0
.end method

.method public isSessionStart()Z
    .locals 5

    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->g:Lcom/baidu/mobstat/Session;

    invoke-virtual {v0}, Lcom/baidu/mobstat/Session;->getStartTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPageEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/mobstat/ExtraInfo;Z)V
    .locals 16

    move-object/from16 v14, p0

    move-object/from16 v15, p2

    const/4 v0, 0x0

    iput-boolean v0, v14, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {v14, v15}, Lcom/baidu/mobstat/SessionAnalysis;->a(Ljava/lang/String;)Lcom/baidu/mobstat/SessionAnalysis$a;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v1, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/baidu/mobstat/h;->c()Lcom/baidu/mobstat/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WARNING] \u9057\u6f0fStatService.onPageStart(), \u8bf7\u68c0\u67e5\u90bb\u8fd1\u9875\u9762\u57cb\u70b9: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/g;->c(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v2, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->a:Ljava/lang/String;

    iget-wide v4, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->b:J

    const/4 v11, 0x0

    const-string v9, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-wide/from16 v6, p5

    move-object/from16 v8, p3

    move-object/from16 v10, p4

    move-object/from16 v12, p7

    move/from16 v13, p8

    invoke-direct/range {v0 .. v13}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Z)V

    invoke-direct {v14, v15}, Lcom/baidu/mobstat/SessionAnalysis;->b(Ljava/lang/String;)V

    move-wide/from16 v0, p5

    iput-wide v0, v14, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    return-void
.end method

.method public onPageEndAct(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLcom/baidu/mobstat/ExtraInfo;)V
    .locals 17

    move-object/from16 v14, p0

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    if-eqz p7, :cond_0

    iget-object v0, v14, Lcom/baidu/mobstat/SessionAnalysis;->d:Lcom/baidu/mobstat/SessionAnalysis$a;

    goto :goto_0

    :cond_0
    iget-object v0, v14, Lcom/baidu/mobstat/SessionAnalysis;->c:Lcom/baidu/mobstat/SessionAnalysis$a;

    :goto_0
    move-object v13, v0

    iget-boolean v0, v13, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    if-nez v0, :cond_2

    if-nez p7, :cond_1

    invoke-static {}, Lcom/baidu/mobstat/h;->c()Lcom/baidu/mobstat/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WARNING] \u9057\u6f0fStatService.onResume(Activity), \u8bf7\u68c0\u67e5\u90bb\u8fd1\u9875\u9762\u57cb\u70b9: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p2

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/g;->c(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    move-object/from16 v10, p2

    iget-object v2, v13, Lcom/baidu/mobstat/SessionAnalysis$a;->a:Ljava/lang/String;

    iget-wide v4, v13, Lcom/baidu/mobstat/SessionAnalysis$a;->b:J

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-wide/from16 v6, p5

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v11, p7

    move-object/from16 v12, p8

    move-object v15, v13

    move/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Z)V

    const/4 v0, 0x0

    iput-boolean v0, v15, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    move-wide/from16 v0, p5

    iput-wide v0, v14, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    return-void
.end method

.method public onPageEndFrag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 16

    move-object/from16 v14, p0

    move-object/from16 v15, p2

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {v14, v15}, Lcom/baidu/mobstat/SessionAnalysis;->a(Ljava/lang/String;)Lcom/baidu/mobstat/SessionAnalysis$a;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v1, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/baidu/mobstat/h;->c()Lcom/baidu/mobstat/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WARNING] \u9057\u6f0fStatService.onResume(Fragment), \u8bf7\u68c0\u67e5\u90bb\u8fd1\u9875\u9762\u57cb\u70b9: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/g;->c(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v2, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->a:Ljava/lang/String;

    iget-wide v4, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->b:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-wide/from16 v6, p5

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v13}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/baidu/mobstat/ExtraInfo;Z)V

    invoke-direct {v14, v15}, Lcom/baidu/mobstat/SessionAnalysis;->b(Ljava/lang/String;)V

    move-wide/from16 v0, p5

    iput-wide v0, v14, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    return-void
.end method

.method public onPageStart(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p4, p5, v0}, Lcom/baidu/mobstat/SessionAnalysis;->onSessionStart(Landroid/content/Context;JZ)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/baidu/mobstat/SessionAnalysis;->a(Ljava/lang/String;)Lcom/baidu/mobstat/SessionAnalysis$a;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v1, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/baidu/mobstat/h;->c()Lcom/baidu/mobstat/h;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WARNING] \u9057\u6f0fStatService.onPageEnd(), \u8bf7\u68c0\u67e5\u90bb\u8fd1\u9875\u9762\u57cb\u70b9: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/baidu/mobstat/g;->c(Ljava/lang/String;)V

    :cond_2
    iget-boolean p2, p0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    const/4 v1, 0x1

    if-nez p2, :cond_3

    iget-wide v4, p0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    const/4 v9, 0x3

    move-object v2, p0

    move-object v3, p1

    move-wide v6, p4

    move v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;JJII)V

    iput-boolean v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    :cond_3
    iput-boolean v1, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    iput-wide p4, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->b:J

    return-void
.end method

.method public onPageStartAct(Landroid/content/Context;Ljava/lang/String;JZ)V
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/baidu/mobstat/SessionAnalysis;->onSessionStart(Landroid/content/Context;JZ)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p5, :cond_1

    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->d:Lcom/baidu/mobstat/SessionAnalysis$a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->c:Lcom/baidu/mobstat/SessionAnalysis$a;

    :goto_0
    iget-boolean v1, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    if-eqz v1, :cond_2

    if-nez p5, :cond_2

    invoke-static {}, Lcom/baidu/mobstat/h;->c()Lcom/baidu/mobstat/h;

    move-result-object p5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WARNING] \u9057\u6f0fStatService.onPause(Activity), \u8bf7\u68c0\u67e5\u90bb\u8fd1\u9875\u9762\u57cb\u70b9: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/baidu/mobstat/g;->c(Ljava/lang/String;)V

    :cond_2
    iget-boolean p5, p0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    const/4 v1, 0x1

    if-nez p5, :cond_3

    iget-wide v4, p0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v2, p0

    move-object v3, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v9}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;JJII)V

    iput-boolean v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->e:Z

    :cond_3
    iput-boolean v1, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    iput-object p2, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->a:Ljava/lang/String;

    iput-wide p3, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->b:J

    return-void
.end method

.method public onPageStartFrag(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, p4, v0}, Lcom/baidu/mobstat/SessionAnalysis;->onSessionStart(Landroid/content/Context;JZ)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/baidu/mobstat/SessionAnalysis;->a(Ljava/lang/String;)Lcom/baidu/mobstat/SessionAnalysis$a;

    move-result-object v0

    iget-boolean v1, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/baidu/mobstat/h;->c()Lcom/baidu/mobstat/h;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WARNING] \u9057\u6f0fStatService.onPause(Fragment), \u8bf7\u68c0\u67e5\u90bb\u8fd1\u9875\u9762\u57cb\u70b9: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/g;->c(Ljava/lang/String;)V

    :cond_1
    iget-wide v5, p0, Lcom/baidu/mobstat/SessionAnalysis;->f:J

    const/4 v9, 0x2

    const/4 v10, 0x2

    move-object v3, p0

    move-object v4, p1

    move-wide v7, p3

    invoke-direct/range {v3 .. v10}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;JJII)V

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->c:Z

    iput-object p2, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->a:Ljava/lang/String;

    iput-wide p3, v0, Lcom/baidu/mobstat/SessionAnalysis$a;->b:J

    return-void
.end method

.method public onSessionStart(Landroid/content/Context;JZ)V
    .locals 8

    iget-boolean v0, p0, Lcom/baidu/mobstat/SessionAnalysis;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/DataCore;->init(Landroid/content/Context;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/mobstat/SessionAnalysis;->k:Lcom/baidu/mobstat/LaunchInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/LaunchInfo;->getLaunchType(Landroid/content/Context;)I

    move-result v0

    move v7, v0

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/baidu/mobstat/SessionAnalysis;->a(Landroid/content/Context;JZZI)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/mobstat/SessionAnalysis;->a:Z

    return-void
.end method

.method public setSessionTimeOut(I)V
    .locals 2

    const/16 v0, 0x258

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    const/16 p1, 0x1e

    invoke-static {}, Lcom/baidu/mobstat/h;->c()Lcom/baidu/mobstat/h;

    move-result-object v0

    const-string v1, "[WARNING] SessionTimeout should be between 1 and 600. Default value[30] is used"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/g;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    invoke-static {}, Lcom/baidu/mobstat/h;->c()Lcom/baidu/mobstat/h;

    move-result-object p1

    const-string v1, "[WARNING] SessionTimeout should be between 1 and 600. Default value[600] is used"

    invoke-virtual {p1, v1}, Lcom/baidu/mobstat/g;->b(Ljava/lang/String;)V

    const/16 p1, 0x258

    :cond_1
    :goto_0
    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/baidu/mobstat/SessionAnalysis;->h:I

    return-void
.end method
