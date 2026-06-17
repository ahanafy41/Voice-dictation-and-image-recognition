.class public Lcom/baidu/mobstat/l;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lorg/json/JSONObject;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 33

    move-object/from16 v6, p0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "h3"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v3, "p2"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v4, "l"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    const-string v5, "point"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v1, 0x1

    goto :goto_2

    :catch_0
    move-object v4, v0

    goto :goto_1

    :catch_1
    move-object v3, v0

    goto :goto_0

    :catch_2
    move-object v2, v0

    move-object v3, v2

    :goto_0
    move-object v4, v3

    :catch_3
    :goto_1
    const/4 v1, 0x0

    :goto_2
    move-object/from16 v23, v0

    move-object/from16 v21, v2

    move-object/from16 v22, v4

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/"

    move-object/from16 v24, v0

    goto :goto_3

    :cond_1
    move-object/from16 v24, v3

    :goto_3
    invoke-static/range {p2 .. p3}, Lcom/baidu/mobstat/k;->a(Landroid/app/Activity;Landroid/view/View;)Lorg/json/JSONArray;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v25}, Lcom/baidu/mobstat/k;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v21 .. v21}, Lcom/baidu/mobstat/k;->b(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Lcom/baidu/mobstat/k;->d(Landroid/view/View;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {p3 .. p3}, Lcom/baidu/mobstat/k;->e(Landroid/view/View;)Ljava/util/Map;

    move-result-object v28

    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    const-string v30, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    iget-object v1, v6, Lcom/baidu/mobstat/l;->d:Lorg/json/JSONObject;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v3, v24

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v7

    const/4 v11, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/16 v20, 0x1

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v10, v22

    move-object/from16 v14, v25

    move-object/from16 v15, v21

    move-object/from16 v16, v26

    move-object/from16 v17, v24

    move-object/from16 v18, v27

    move-object/from16 v19, v28

    invoke-virtual/range {v7 .. v20}, Lcom/baidu/mobstat/BDStatCore;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_4

    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/i;->c()Lcom/baidu/mobstat/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/i;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, v6, Lcom/baidu/mobstat/l;->e:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/baidu/mobstat/i;->c()Lcom/baidu/mobstat/i;

    move-result-object v0

    const-string v1, "setEventToNative: not circle event, will not take effect"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/g;->a(Ljava/lang/String;)V

    :cond_3
    :goto_4
    invoke-static {}, Lcom/baidu/mobstat/e;->a()Lcom/baidu/mobstat/e;

    move-result-object v7

    const/4 v11, 0x1

    const/16 v20, 0x1

    const-string v0, ""

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    move-object/from16 v10, v22

    move-wide/from16 v12, v31

    move-object/from16 v14, v26

    move-object/from16 v15, v25

    move-object/from16 v16, v24

    move-object/from16 v17, v21

    move-object/from16 v18, v27

    move-object/from16 v19, v28

    move-object/from16 v21, v23

    move-object/from16 v22, v0

    invoke-virtual/range {v7 .. v22}, Lcom/baidu/mobstat/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/Map;ZLorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :try_start_0
    const-string v2, "meta"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "matchAll"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    return v1

    :catch_0
    :cond_2
    :try_start_1
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x0

    :goto_0
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "page"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "layout"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "url"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "webLayout"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_1
    const/4 v2, 0x0

    :catch_2
    :cond_4
    return v2

    :cond_5
    :goto_1
    return v0
.end method


# virtual methods
.method public setEventToNative(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/baidu/mobstat/i;->c()Lcom/baidu/mobstat/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/i;->b()Z

    move-result v0

    const-string v1, "setEventToNative: "

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/mobstat/l;->e:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/mobstat/i;->c()Lcom/baidu/mobstat/i;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/mobstat/g;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/j;->c()Lcom/baidu/mobstat/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/j;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/mobstat/j;->c()Lcom/baidu/mobstat/j;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/g;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/l;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/baidu/mobstat/l;->b:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    if-nez v1, :cond_5

    return-void

    :cond_5
    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/mobstat/l;->a(Ljava/lang/String;Landroid/app/Activity;Landroid/webkit/WebView;)V

    return-void
.end method

.method public setViewportTreeToNative(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/baidu/mobstat/i;->c()Lcom/baidu/mobstat/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/mobstat/i;->c()Lcom/baidu/mobstat/i;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setViewportTreeToNative "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/g;->a(Ljava/lang/String;)V

    :cond_0
    sput-object p1, Lcom/baidu/mobstat/l;->a:Ljava/lang/String;

    return-void
.end method
