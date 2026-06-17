.class public Lcom/baidu/mobstat/h;
.super Lcom/baidu/mobstat/g;
.source ""


# static fields
.field private static c:Lcom/baidu/mobstat/h;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mobstat/h;

    invoke-direct {v0}, Lcom/baidu/mobstat/h;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/h;->c:Lcom/baidu/mobstat/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/mobstat/g;-><init>()V

    return-void
.end method

.method public static c()Lcom/baidu/mobstat/h;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/h;->c:Lcom/baidu/mobstat/h;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "BaiduMobStat"

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/mobstat/h;->b:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mobstat/h;->b:Z

    return v0
.end method
