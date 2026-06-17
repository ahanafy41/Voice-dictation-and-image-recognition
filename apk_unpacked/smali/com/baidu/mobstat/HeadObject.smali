.class public Lcom/baidu/mobstat/HeadObject;
.super Ljava/lang/Object;
.source ""


# instance fields
.field A:Lorg/json/JSONObject;

.field B:Lorg/json/JSONObject;

.field C:Ljava/lang/String;

.field D:I

.field a:Z

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:I

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:I

.field k:I

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Ljava/lang/String;

.field w:Ljava/lang/String;

.field x:Ljava/lang/String;

.field y:Ljava/lang/String;

.field z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/HeadObject;->a:Z

    const-string v0, "0"

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/baidu/mobstat/HeadObject;->g:I

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/mobstat/HeadObject;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/o;->e(Landroid/content/Context;Ljava/lang/String;)Z

    const-string v0, "android.permission.INTERNET"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/o;->e(Landroid/content/Context;Ljava/lang/String;)Z

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/o;->e(Landroid/content/Context;Ljava/lang/String;)Z

    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-static {p1, v0}, Lcom/baidu/mobstat/o;->e(Landroid/content/Context;Ljava/lang/String;)Z

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getOSVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->b:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getOSSysVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->c:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getPhoneModel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->n:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->o:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getUUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->z:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/CooperService;->getHeaderExt(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->A:Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/CooperService;->getPushId(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->B:Lorg/json/JSONObject;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/baidu/mobstat/CooperService;->getDeviceId(Landroid/telephony/TelephonyManager;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/q;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    goto :goto_0

    :cond_1
    const-string v1, "0"

    :goto_0
    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/baidu/mobstat/v;->m(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "2"

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->d:Ljava/lang/String;

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-18"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/CooperService;->isDeviceMacEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/baidu/mobstat/CooperService;->getMacAddress(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->s:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    const/4 v1, 0x1

    :try_start_3
    invoke-static {v1, p1}, Lcom/baidu/mobstat/v;->e(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/mobstat/HeadObject;->u:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    :try_start_4
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/baidu/mobstat/CooperService;->getCUID(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/CooperService;->getOperator(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->m:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_2
    :try_start_6
    invoke-static {p1}, Lcom/baidu/mobstat/v;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/HeadObject;->j:I

    invoke-static {p1}, Lcom/baidu/mobstat/v;->d(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/HeadObject;->k:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/baidu/mobstat/HeadObject;->j:I

    iget v2, p0, Lcom/baidu/mobstat/HeadObject;->k:I

    xor-int/2addr v0, v2

    iput v0, p0, Lcom/baidu/mobstat/HeadObject;->j:I

    iget v0, p0, Lcom/baidu/mobstat/HeadObject;->j:I

    iget v2, p0, Lcom/baidu/mobstat/HeadObject;->k:I

    xor-int/2addr v0, v2

    iput v0, p0, Lcom/baidu/mobstat/HeadObject;->k:I

    iget v0, p0, Lcom/baidu/mobstat/HeadObject;->j:I

    iget v2, p0, Lcom/baidu/mobstat/HeadObject;->k:I

    xor-int/2addr v0, v2

    iput v0, p0, Lcom/baidu/mobstat/HeadObject;->j:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_3
    :cond_3
    :try_start_7
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getAppChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getAppVersionCode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/HeadObject;->g:I

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->h:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_4
    :try_start_9
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getLinkedWay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catch_5
    :try_start_a
    invoke-static {}, Lcom/baidu/mobstat/v;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->w:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->x:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->y:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/HeadObject;->C:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/mobstat/HeadObject;->a:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/HeadObject;->a(Landroid/content/Context;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/HeadObject;->updateHeader(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setHeaderExt(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/HeadObject;->A:Lorg/json/JSONObject;

    return-void
.end method

.method public setPushInfo(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/HeadObject;->B:Lorg/json/JSONObject;

    return-void
.end method

.method public setStartType(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/baidu/mobstat/HeadObject;->D:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/HeadObject;->C:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized updateHeader(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "o"

    const-string v1, "Android"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "st"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "s"

    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->b:Ljava/lang/String;

    :goto_0
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sv"

    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->c:Ljava/lang/String;

    :goto_1
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "k"

    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, ""

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    :goto_2
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pt"

    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->d:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, "0"

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->d:Ljava/lang/String;

    :goto_3
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "i"

    const-string v2, ""

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "v"

    const-string v2, "3.9.5.4"

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sc"

    const/16 v2, 0x12

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "a"

    iget v2, p0, Lcom/baidu/mobstat/HeadObject;->g:I

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "n"

    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->h:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v2, ""

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->h:Ljava/lang/String;

    :goto_4
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "d"

    const-string v2, ""

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mc"

    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->s:Ljava/lang/String;

    if-nez v2, :cond_5

    const-string v2, ""

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->s:Ljava/lang/String;

    :goto_5
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "bm"

    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->u:Ljava/lang/String;

    if-nez v2, :cond_6

    const-string v2, ""

    goto :goto_6

    :cond_6
    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->u:Ljava/lang/String;

    :goto_6
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "dd"

    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    if-nez v2, :cond_7

    const-string v2, ""

    goto :goto_7

    :cond_7
    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    :goto_7
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ii"

    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    if-nez v2, :cond_8

    const-string v2, ""

    goto :goto_8

    :cond_8
    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    :goto_8
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "tg"

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "w"

    iget v3, p0, Lcom/baidu/mobstat/HeadObject;->j:I

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "h"

    iget v3, p0, Lcom/baidu/mobstat/HeadObject;->k:I

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "dn"

    iget-object v3, p0, Lcom/baidu/mobstat/HeadObject;->v:Ljava/lang/String;

    if-nez v3, :cond_9

    const-string v3, ""

    goto :goto_9

    :cond_9
    iget-object v3, p0, Lcom/baidu/mobstat/HeadObject;->v:Ljava/lang/String;

    :goto_9
    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "c"

    iget-object v3, p0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    if-nez v3, :cond_a

    const-string v3, ""

    goto :goto_a

    :cond_a
    iget-object v3, p0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    :goto_a
    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "op"

    iget-object v3, p0, Lcom/baidu/mobstat/HeadObject;->m:Ljava/lang/String;

    if-nez v3, :cond_b

    const-string v3, ""

    goto :goto_b

    :cond_b
    iget-object v3, p0, Lcom/baidu/mobstat/HeadObject;->m:Ljava/lang/String;

    :goto_b
    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "m"

    iget-object v3, p0, Lcom/baidu/mobstat/HeadObject;->n:Ljava/lang/String;

    if-nez v3, :cond_c

    const-string v3, ""

    goto :goto_c

    :cond_c
    iget-object v3, p0, Lcom/baidu/mobstat/HeadObject;->n:Ljava/lang/String;

    :goto_c
    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ma"

    iget-object v3, p0, Lcom/baidu/mobstat/HeadObject;->o:Ljava/lang/String;

    if-nez v3, :cond_d

    const-string v3, ""

    goto :goto_d

    :cond_d
    iget-object v3, p0, Lcom/baidu/mobstat/HeadObject;->o:Ljava/lang/String;

    :goto_d
    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cl"

    iget-object v3, p0, Lcom/baidu/mobstat/HeadObject;->p:Ljava/lang/String;

    if-nez v3, :cond_e

    const-string v3, ""

    goto :goto_e

    :cond_e
    iget-object v3, p0, Lcom/baidu/mobstat/HeadObject;->p:Ljava/lang/String;

    :goto_e
    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "gl"

    iget-object v3, p0, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;

    if-nez v3, :cond_f

    const-string v3, ""

    goto :goto_f

    :cond_f
    iget-object v3, p0, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;

    :goto_f
    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "l"

    iget-object v3, p0, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;

    if-nez v3, :cond_10

    const-string v3, ""

    goto :goto_10

    :cond_10
    iget-object v3, p0, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;

    :goto_10
    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "pn"

    invoke-static {v2, p1}, Lcom/baidu/mobstat/v;->f(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "rom"

    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->w:Ljava/lang/String;

    if-nez v2, :cond_11

    const-string v2, ""

    goto :goto_11

    :cond_11
    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->w:Ljava/lang/String;

    :goto_11
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "bo"

    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->x:Ljava/lang/String;

    if-nez v2, :cond_12

    const-string v2, ""

    goto :goto_12

    :cond_12
    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->x:Ljava/lang/String;

    :goto_12
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "bd"

    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->y:Ljava/lang/String;

    if-nez v2, :cond_13

    const-string v2, ""

    goto :goto_13

    :cond_13
    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->y:Ljava/lang/String;

    :goto_13
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "td"

    invoke-static {p1}, Lcom/baidu/mobstat/v;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "tv"

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-nez v2, :cond_14

    goto :goto_14

    :cond_14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    :cond_15
    :goto_14
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "at"

    const-string v1, "0"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/baidu/mobstat/v;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pl"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p1}, Lcom/baidu/mobstat/v;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :cond_16
    const-string p1, "scl"

    if-nez v1, :cond_17

    const-string v1, ""

    :cond_17
    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "sign"

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->z:Ljava/lang/String;

    if-nez v0, :cond_18

    const-string v0, ""

    goto :goto_15

    :cond_18
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->z:Ljava/lang/String;

    :goto_15
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/baidu/mobstat/HeadObject;->A:Lorg/json/JSONObject;

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/baidu/mobstat/HeadObject;->A:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-eqz p1, :cond_19

    const-string p1, "ext"

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->A:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_16

    :cond_19
    const-string p1, "ext"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :goto_16
    iget-object p1, p0, Lcom/baidu/mobstat/HeadObject;->B:Lorg/json/JSONObject;

    if-nez p1, :cond_1a

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/baidu/mobstat/HeadObject;->B:Lorg/json/JSONObject;

    :cond_1a
    const-string p1, "push"

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->B:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uid"

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->C:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "startType"

    iget v0, p0, Lcom/baidu/mobstat/HeadObject;->D:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_17

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_0
    :goto_17
    monitor-exit p0

    return-void
.end method
