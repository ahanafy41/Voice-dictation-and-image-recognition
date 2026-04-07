.class public Lcom/baidu/mobstat/Session;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/Session$a;
    }
.end annotation


# instance fields
.field private volatile a:J

.field private volatile b:J

.field private volatile c:J

.field private volatile d:J

.field private volatile e:J

.field private volatile f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mobstat/Session$a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile h:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/mobstat/Session;->a:J

    iput-wide v0, p0, Lcom/baidu/mobstat/Session;->b:J

    iput-wide v0, p0, Lcom/baidu/mobstat/Session;->c:J

    iput-wide v0, p0, Lcom/baidu/mobstat/Session;->d:J

    iput-wide v0, p0, Lcom/baidu/mobstat/Session;->e:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mobstat/Session;->f:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/Session;->g:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/Session;->h:Lorg/json/JSONObject;

    return-void
.end method

.method private a(Ljava/util/List;Lcom/baidu/mobstat/Session$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mobstat/Session$a;",
            ">;",
            "Lcom/baidu/mobstat/Session$a;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/Session$a;

    invoke-static {v0}, Lcom/baidu/mobstat/Session$a;->b(Lcom/baidu/mobstat/Session$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p2}, Lcom/baidu/mobstat/Session$a;->b(Lcom/baidu/mobstat/Session$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/baidu/mobstat/Session$a;->b(Lcom/baidu/mobstat/Session$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/baidu/mobstat/Session$a;->b(Lcom/baidu/mobstat/Session$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcom/baidu/mobstat/Session$a;->c(Lcom/baidu/mobstat/Session$a;)Z

    move-result v1

    invoke-static {p2}, Lcom/baidu/mobstat/Session$a;->c(Lcom/baidu/mobstat/Session$a;)Z

    move-result v2

    if-ne v1, v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/baidu/mobstat/Session$a;->c(Lcom/baidu/mobstat/Session$a;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0, p2}, Lcom/baidu/mobstat/Session$a;->a(Lcom/baidu/mobstat/Session$a;)V

    :cond_5
    return-void

    :cond_6
    :goto_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_7
    :goto_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getPVJson(Lcom/baidu/mobstat/Session$a;J)Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "n"

    invoke-virtual {p0}, Lcom/baidu/mobstat/Session$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "d"

    invoke-virtual {p0}, Lcom/baidu/mobstat/Session$a;->c()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/baidu/mobstat/Session$a;->d()J

    move-result-wide v1

    sub-long/2addr v1, p1

    const-string p1, "ps"

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-gez p2, :cond_0

    move-wide v1, v3

    :cond_0
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "t"

    invoke-virtual {p0}, Lcom/baidu/mobstat/Session$a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "at"

    invoke-virtual {p0}, Lcom/baidu/mobstat/Session$a;->f()Z

    move-result p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/baidu/mobstat/Session$a;->e()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "ext"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string p1, "h5"

    invoke-static {p0}, Lcom/baidu/mobstat/Session$a;->d(Lcom/baidu/mobstat/Session$a;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public addPageView(Lcom/baidu/mobstat/Session$a;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/Session;->g:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/baidu/mobstat/Session;->a(Ljava/util/List;Lcom/baidu/mobstat/Session$a;)V

    return-void
.end method

.method public addPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/baidu/mobstat/ExtraInfo;Z)V
    .locals 13

    move-object v0, p0

    new-instance v12, Lcom/baidu/mobstat/Session$a;

    move-object v1, v12

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/baidu/mobstat/Session$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLcom/baidu/mobstat/ExtraInfo;Z)V

    iget-object v1, v0, Lcom/baidu/mobstat/Session;->g:Ljava/util/List;

    invoke-direct {p0, v1, v12}, Lcom/baidu/mobstat/Session;->a(Ljava/util/List;Lcom/baidu/mobstat/Session$a;)V

    return-void
.end method

.method public constructJSONObject()Lorg/json/JSONObject;
    .locals 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "s"

    iget-wide v2, p0, Lcom/baidu/mobstat/Session;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "e"

    iget-wide v2, p0, Lcom/baidu/mobstat/Session;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "i"

    iget-wide v2, p0, Lcom/baidu/mobstat/Session;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "c"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "s2"

    iget-wide v2, p0, Lcom/baidu/mobstat/Session;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iget-wide v2, p0, Lcom/baidu/mobstat/Session;->a:J

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/baidu/mobstat/Session;->c:J

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "e2"

    iget-wide v2, p0, Lcom/baidu/mobstat/Session;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    iget-wide v2, p0, Lcom/baidu/mobstat/Session;->b:J

    goto :goto_1

    :cond_1
    iget-wide v2, p0, Lcom/baidu/mobstat/Session;->d:J

    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "pc"

    iget v2, p0, Lcom/baidu/mobstat/Session;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/baidu/mobstat/Session;->h:Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/mobstat/Session;->h:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "launch"

    iget-object v2, p0, Lcom/baidu/mobstat/Session;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lcom/baidu/mobstat/Session;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/baidu/mobstat/Session;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mobstat/Session$a;

    iget-wide v4, p0, Lcom/baidu/mobstat/Session;->a:J

    invoke-static {v3, v4, v5}, Lcom/baidu/mobstat/Session;->getPVJson(Lcom/baidu/mobstat/Session$a;J)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const-string v2, "p"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public getPageSessionHead()Lorg/json/JSONObject;
    .locals 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "s"

    iget-wide v2, p0, Lcom/baidu/mobstat/Session;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "e"

    iget-wide v2, p0, Lcom/baidu/mobstat/Session;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "i"

    iget-wide v2, p0, Lcom/baidu/mobstat/Session;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "c"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "s2"

    iget-wide v2, p0, Lcom/baidu/mobstat/Session;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iget-wide v2, p0, Lcom/baidu/mobstat/Session;->a:J

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/baidu/mobstat/Session;->c:J

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "e2"

    iget-wide v2, p0, Lcom/baidu/mobstat/Session;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    iget-wide v2, p0, Lcom/baidu/mobstat/Session;->b:J

    goto :goto_1

    :cond_1
    iget-wide v2, p0, Lcom/baidu/mobstat/Session;->d:J

    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "pc"

    iget v2, p0, Lcom/baidu/mobstat/Session;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->a:J

    return-wide v0
.end method

.method public hasEnd()Z
    .locals 5

    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->b:J

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

.method public hasStart()Z
    .locals 5

    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->a:J

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

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/mobstat/Session;->a:J

    iput-wide v0, p0, Lcom/baidu/mobstat/Session;->b:J

    iput-wide v0, p0, Lcom/baidu/mobstat/Session;->c:J

    iput-wide v0, p0, Lcom/baidu/mobstat/Session;->d:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mobstat/Session;->f:I

    iget-object v0, p0, Lcom/baidu/mobstat/Session;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/mobstat/Session;->b:J

    return-void
.end method

.method public setInvokeType(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mobstat/Session;->f:I

    return-void
.end method

.method public setLaunchInfo(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/Session;->h:Lorg/json/JSONObject;

    return-void
.end method

.method public setStartTime(J)V
    .locals 5

    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Lcom/baidu/mobstat/Session;->a:J

    iput-wide p1, p0, Lcom/baidu/mobstat/Session;->e:J

    return-void
.end method

.method public setTrackEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/mobstat/Session;->d:J

    return-void
.end method

.method public setTrackStartTime(J)V
    .locals 5

    iget-wide v0, p0, Lcom/baidu/mobstat/Session;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Lcom/baidu/mobstat/Session;->c:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/mobstat/Session;->constructJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
