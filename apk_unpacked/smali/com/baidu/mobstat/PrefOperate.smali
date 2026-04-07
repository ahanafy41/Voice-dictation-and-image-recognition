.class public Lcom/baidu/mobstat/PrefOperate;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/CooperService;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static loadMetaDataConfig(Landroid/content/Context;)V
    .locals 6

    const-string v0, "true"

    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "BaiduMobAd_EXCEPTION_LOG"

    invoke-static {p0, v3}, Lcom/baidu/mobstat/v;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/baidu/mobstat/ExceptionAnalysis;->getInstance()Lcom/baidu/mobstat/ExceptionAnalysis;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/baidu/mobstat/ExceptionAnalysis;->openExceptionAnalysis(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/16 v3, 0x18

    :try_start_1
    const-string v4, "BaiduMobAd_SEND_STRATEGY"

    invoke-static {p0, v4}, Lcom/baidu/mobstat/v;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/baidu/mobstat/SendStrategyEnum;->APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object v4

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v4, p0, v5}, Lcom/baidu/mobstat/q;->a(Landroid/content/Context;I)V

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v4, p0, v5}, Lcom/baidu/mobstat/q;->a(Landroid/content/Context;I)V

    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object v4

    invoke-virtual {v4, p0, v3}, Lcom/baidu/mobstat/q;->b(Landroid/content/Context;I)V

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    :cond_3
    :goto_1
    :try_start_2
    const-string v4, "BaiduMobAd_TIME_INTERVAL"

    invoke-static {p0, v4}, Lcom/baidu/mobstat/v;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v5, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v1, v5, :cond_4

    if-lez v4, :cond_4

    if-gt v4, v3, :cond_4

    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object v1

    invoke-virtual {v1, p0, v4}, Lcom/baidu/mobstat/q;->b(Landroid/content/Context;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_4
    :try_start_3
    const-string v1, "BaiduMobAd_ONLY_WIFI"

    invoke-static {p0, v1}, Lcom/baidu/mobstat/v;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/baidu/mobstat/q;->a(Landroid/content/Context;Z)V

    goto :goto_2

    :cond_5
    const-string v0, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/baidu/mobstat/q;->a(Landroid/content/Context;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_6
    :goto_2
    return-void
.end method

.method public static setAppChannel(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/h;->c()Lcom/baidu/mobstat/h;

    move-result-object v1

    const-string v2, "[WARNING] The channel you have set is empty"

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/g;->c(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/HeadObject;

    move-result-object v1

    iput-object p1, v1, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/baidu/mobstat/q;->d(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v1}, Lcom/baidu/mobstat/q;->b(Landroid/content/Context;Z)V

    :cond_2
    if-nez p2, :cond_3

    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/baidu/mobstat/q;->d(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/baidu/mobstat/q;->b(Landroid/content/Context;Z)V

    :cond_3
    return-void
.end method

.method public static setAppChannel(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/h;->c()Lcom/baidu/mobstat/h;

    move-result-object v0

    const-string v1, "[WARNING] The channel you have set is empty"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/g;->c(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/HeadObject;

    move-result-object v0

    iput-object p0, v0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    return-void
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/HeadObject;

    move-result-object v0

    iput-object p0, v0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    return-void
.end method
