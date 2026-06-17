.class public Lcom/baidu/mobstat/i;
.super Lcom/baidu/mobstat/g;
.source ""


# static fields
.field private static b:Lcom/baidu/mobstat/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mobstat/i;

    invoke-direct {v0}, Lcom/baidu/mobstat/i;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/i;->b:Lcom/baidu/mobstat/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/mobstat/g;-><init>()V

    return-void
.end method

.method public static c()Lcom/baidu/mobstat/i;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/i;->b:Lcom/baidu/mobstat/i;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "mtj.autotrace"

    return-object v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
