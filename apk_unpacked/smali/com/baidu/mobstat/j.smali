.class public Lcom/baidu/mobstat/j;
.super Lcom/baidu/mobstat/g;
.source ""


# static fields
.field private static b:Lcom/baidu/mobstat/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mobstat/j;

    invoke-direct {v0}, Lcom/baidu/mobstat/j;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/j;->b:Lcom/baidu/mobstat/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/mobstat/g;-><init>()V

    return-void
.end method

.method public static c()Lcom/baidu/mobstat/j;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/j;->b:Lcom/baidu/mobstat/j;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "mtj.fulltrace"

    return-object v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
