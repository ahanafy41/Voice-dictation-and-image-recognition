.class public Lcom/baidu/mobstat/q;
.super Lcom/baidu/mobstat/n;
.source ""


# static fields
.field private static final a:Ljava/lang/String; = "__Baidu_Stat_SDK_SendRem"

.field private static b:Lcom/baidu/mobstat/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mobstat/q;

    invoke-direct {v0}, Lcom/baidu/mobstat/q;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/q;->b:Lcom/baidu/mobstat/q;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/mobstat/n;-><init>()V

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/q;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/q;->b:Lcom/baidu/mobstat/q;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    sget-object v0, Lcom/baidu/mobstat/q;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "sendLogtype"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "onlywifi"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/n;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Landroid/content/Context;)I
    .locals 2

    const-string v0, "sendLogtype"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public b(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "timeinterval"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/n;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "device_id_1"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "setchannelwithcode"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/n;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(Landroid/content/Context;)I
    .locals 2

    const-string v0, "timeinterval"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "cuid"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const-string v0, "cuidsec_1"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "cuidsec_2"

    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "mtjtv"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/n;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "setchannelwithcodevalue"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "mtjsdkmactrick"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/n;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public d(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "onlywifi"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "device_id_1"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "mtjsdkmacsstv_1"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "setchannelwithcodevalue"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "he.ext"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "he.push"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "setchannelwithcode"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public h(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ""

    :cond_0
    const-string v0, "custom_userid"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "mtjtv"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public i(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "mtjsdkmacsstv_1"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public i(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "encrypt_device_id"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "he.ext"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "he.push"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public l(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "mtjsdkmactrick"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public m(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "custom_userid"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
