.class public Lcom/baidu/mobstat/CooperService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/baidu/mobstat/ICooperService;


# static fields
.field private static a:Lcom/baidu/mobstat/CooperService;


# instance fields
.field private b:Lcom/baidu/mobstat/HeadObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/mobstat/HeadObject;

    invoke-direct {v0}, Lcom/baidu/mobstat/HeadObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/q;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hol"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "mes"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/baidu/mobstat/q;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/q;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/baidu/mobstat/q;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    const-string v1, "BaiduMobAd_CHANNEL"

    invoke-static {p1, v1}, Lcom/baidu/mobstat/v;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_3
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    return-object p1
.end method

.method public static declared-synchronized instance()Lcom/baidu/mobstat/CooperService;
    .locals 2

    const-class v0, Lcom/baidu/mobstat/CooperService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/CooperService;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/mobstat/CooperService;

    invoke-direct {v1}, Lcom/baidu/mobstat/CooperService;-><init>()V

    sput-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/CooperService;

    :cond_0
    sget-object v1, Lcom/baidu/mobstat/CooperService;->a:Lcom/baidu/mobstat/CooperService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public checkCellLocationSetting(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "BaiduMobAd_CELL_LOCATION"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/v;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public checkGPSLocationSetting(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "BaiduMobAd_GPS_LOCATION"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/v;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public checkWifiLocationSetting(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "BaiduMobAd_WIFI_LOCATION"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/v;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public enableDeviceMac(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/q;->d(Landroid/content/Context;Z)V

    return-void
.end method

.method public getAppChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/CooperService;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v1, v0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "BaiduMobAd_STAT_ID"

    invoke-static {p1, v1}, Lcom/baidu/mobstat/v;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    return-object p1
.end method

.method public getAppVersionCode(Landroid/content/Context;)I
    .locals 3

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget v1, v0, Lcom/baidu/mobstat/HeadObject;->g:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/baidu/mobstat/v;->f(Landroid/content/Context;)I

    move-result p1

    iput p1, v0, Lcom/baidu/mobstat/HeadObject;->g:I

    :cond_0
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget p1, p1, Lcom/baidu/mobstat/HeadObject;->g:I

    return p1
.end method

.method public getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-static {p1}, Lcom/baidu/mobstat/v;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/baidu/mobstat/HeadObject;->h:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->h:Ljava/lang/String;

    return-object p1
.end method

.method public getCUID(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/q;->c(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-static {p1}, Lcom/baidu/mobstat/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    const-string p1, "\\s*|\t|\r|\n"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    return-object p1

    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    new-instance p2, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/mobstat/p;->a([B)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/baidu/mobstat/m$b;->b(I[B)[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p2

    :catch_1
    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDevicImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public getDeviceId(Landroid/telephony/TelephonyManager;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    :goto_0
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    return-object p1

    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/baidu/mobstat/q;->h(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {p0, p2}, Lcom/baidu/mobstat/CooperService;->getMacIdForTv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    iput-object p2, p1, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    const-string p2, "02:00:00:00:00:00"

    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p2, p1, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/baidu/mobstat/CooperService;->getSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method public getHeadObject()Lcom/baidu/mobstat/HeadObject;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    return-object v0
.end method

.method public getHeaderExt(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 1

    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/q;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/Config;->LOG_SEND_URL:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkedWay(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-static {p1}, Lcom/baidu/mobstat/v;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;

    return-object p1
.end method

.method public getMTJSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.9.5.4"

    return-object v0
.end method

.method public getMacAddress(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public getMacIdForTv(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    :goto_1
    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->t:Ljava/lang/String;

    return-object p1

    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/q;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    :goto_2
    iput-object v0, p1, Lcom/baidu/mobstat/HeadObject;->t:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/baidu/mobstat/v;->b(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iput-object v0, v1, Lcom/baidu/mobstat/HeadObject;->t:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/baidu/mobstat/q;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    const-string v0, ""

    goto :goto_2
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->o:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getOSSysVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->c:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getOSVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/baidu/mobstat/HeadObject;->m:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object p1, p1, Lcom/baidu/mobstat/HeadObject;->m:Ljava/lang/String;

    return-object p1
.end method

.method public getPhoneModel()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->n:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iget-object v0, v0, Lcom/baidu/mobstat/HeadObject;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getPlainDeviceIdForCar(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/baidu/mobstat/CarUUID;->optUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/CooperService;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public getPushId(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 1

    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/q;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSecretValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/baidu/mobstat/m$b;->c(I[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTagValue()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/q;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/HeadObject;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method

.method public isDeviceMacEnabled(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/q;->l(Landroid/content/Context;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public resetHeadSign()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getUUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mobstat/HeadObject;->z:Ljava/lang/String;

    return-void
.end method

.method public setAppVersionName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    iput-object p2, p1, Lcom/baidu/mobstat/HeadObject;->h:Ljava/lang/String;

    return-void
.end method

.method public setHeaderExt(Landroid/content/Context;Lcom/baidu/mobstat/ExtraInfo;)V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/baidu/mobstat/ExtraInfo;->dumpToJson()Lorg/json/JSONObject;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/HeadObject;->setHeaderExt(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mobstat/q;->f(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Set global ExtraInfo: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "Clear global ExtraInfo"

    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/h;->c()Lcom/baidu/mobstat/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setPushId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/CooperService;->getPushId(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    :try_start_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    iget-object p2, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {p2, v0}, Lcom/baidu/mobstat/HeadObject;->setPushInfo(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object p2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/baidu/mobstat/q;->g(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Set platform:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " pushId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Clear platform:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " pushId"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/baidu/mobstat/h;->c()Lcom/baidu/mobstat/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setStartType(Z)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/HeadObject;->setStartType(Z)V

    return-void
.end method

.method public setUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mobstat/q;->h(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/baidu/mobstat/CooperService;->b:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {p1, p2}, Lcom/baidu/mobstat/HeadObject;->setUserId(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Set user id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/baidu/mobstat/h;->c()Lcom/baidu/mobstat/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/g;->a(Ljava/lang/String;)V

    return-void
.end method
