.class public final enum Lcom/baidu/mobstat/MtjConfig$PushPlatform;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/MtjConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PushPlatform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mobstat/MtjConfig$PushPlatform;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALIYUN:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

.field public static final enum BAIDUYUN:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

.field public static final enum GETUI:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

.field public static final enum HUAWEI:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

.field public static final enum JIGUANG:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

.field public static final enum MEIZU:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

.field public static final enum OPPO:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

.field public static final enum UMENG:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

.field public static final enum XIAOMI:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

.field public static final enum XINGE:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

.field private static final synthetic c:[Lcom/baidu/mobstat/MtjConfig$PushPlatform;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const/4 v1, 0x0

    const-string v2, "BAIDUYUN"

    const-string v3, "baiduyun"

    invoke-direct {v0, v2, v1, v3, v1}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->BAIDUYUN:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    new-instance v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const/4 v2, 0x1

    const-string v3, "JIGUANG"

    const-string v4, "jiguang"

    invoke-direct {v0, v3, v2, v4, v2}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->JIGUANG:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    new-instance v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const/4 v3, 0x2

    const-string v4, "GETUI"

    const-string v5, "getui"

    invoke-direct {v0, v4, v3, v5, v3}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->GETUI:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    new-instance v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const/4 v4, 0x3

    const-string v5, "HUAWEI"

    const-string v6, "huawei"

    invoke-direct {v0, v5, v4, v6, v4}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->HUAWEI:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    new-instance v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const/4 v5, 0x4

    const-string v6, "XIAOMI"

    const-string v7, "xiaomi"

    invoke-direct {v0, v6, v5, v7, v5}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->XIAOMI:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    new-instance v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const/4 v6, 0x5

    const-string v7, "UMENG"

    const-string v8, "umeng"

    invoke-direct {v0, v7, v6, v8, v6}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->UMENG:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    new-instance v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const/4 v7, 0x6

    const-string v8, "XINGE"

    const-string v9, "xinge"

    invoke-direct {v0, v8, v7, v9, v7}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->XINGE:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    new-instance v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const/4 v8, 0x7

    const-string v9, "ALIYUN"

    const-string v10, "aliyun"

    invoke-direct {v0, v9, v8, v10, v8}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->ALIYUN:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    new-instance v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const/16 v9, 0x8

    const-string v10, "OPPO"

    const-string v11, "oppo"

    invoke-direct {v0, v10, v9, v11, v9}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->OPPO:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    new-instance v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const/16 v10, 0x9

    const-string v11, "MEIZU"

    const-string v12, "meizu"

    invoke-direct {v0, v11, v10, v12, v10}, Lcom/baidu/mobstat/MtjConfig$PushPlatform;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->MEIZU:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    sget-object v11, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->BAIDUYUN:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    aput-object v11, v0, v1

    sget-object v1, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->JIGUANG:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->GETUI:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->HUAWEI:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->XIAOMI:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->UMENG:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->XINGE:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    aput-object v1, v0, v7

    sget-object v1, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->ALIYUN:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    aput-object v1, v0, v8

    sget-object v1, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->OPPO:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    aput-object v1, v0, v9

    sget-object v1, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->MEIZU:Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    aput-object v1, v0, v10

    sput-object v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->c:[Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->a:Ljava/lang/String;

    iput p4, p0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/MtjConfig$PushPlatform;
    .locals 1

    const-class v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mobstat/MtjConfig$PushPlatform;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->c:[Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    invoke-virtual {v0}, [Lcom/baidu/mobstat/MtjConfig$PushPlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/MtjConfig$PushPlatform;

    return-object v0
.end method


# virtual methods
.method public showName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->a:Ljava/lang/String;

    return-object v0
.end method

.method public value()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/mobstat/MtjConfig$PushPlatform;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
