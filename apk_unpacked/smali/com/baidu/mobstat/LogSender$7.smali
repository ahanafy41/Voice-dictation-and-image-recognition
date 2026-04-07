.class Lcom/baidu/mobstat/LogSender$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/LogSender;->sendEmptyLogData(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/mobstat/LogSender;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/LogSender$7;->c:Lcom/baidu/mobstat/LogSender;

    iput-object p2, p0, Lcom/baidu/mobstat/LogSender$7;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mobstat/LogSender$7;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/baidu/mobstat/DataCore;->instance()Lcom/baidu/mobstat/DataCore;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/LogSender$7;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mobstat/LogSender$7;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/DataCore;->constructLogWithEmptyBody(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mobstat/LogSender$7;->c:Lcom/baidu/mobstat/LogSender;

    iget-object v2, p0, Lcom/baidu/mobstat/LogSender$7;->a:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/baidu/mobstat/LogSender;->c(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
