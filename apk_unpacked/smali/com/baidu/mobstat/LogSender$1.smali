.class Lcom/baidu/mobstat/LogSender$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/LogSender;->onSend(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/mobstat/LogSender;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/LogSender$1;->b:Lcom/baidu/mobstat/LogSender;

    iput-object p2, p0, Lcom/baidu/mobstat/LogSender$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/mobstat/LogSender$1;->b:Lcom/baidu/mobstat/LogSender;

    invoke-static {v0}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/LogSender$1;->b:Lcom/baidu/mobstat/LogSender;

    invoke-static {v0}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/baidu/mobstat/LogSender$1;->b:Lcom/baidu/mobstat/LogSender;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;Ljava/util/Timer;)Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/LogSender$1;->b:Lcom/baidu/mobstat/LogSender;

    invoke-static {}, Lcom/baidu/mobstat/SendStrategyEnum;->values()[Lcom/baidu/mobstat/SendStrategyEnum;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobstat/LogSender$1;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/baidu/mobstat/q;->b(Landroid/content/Context;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;Lcom/baidu/mobstat/SendStrategyEnum;)Lcom/baidu/mobstat/SendStrategyEnum;

    iget-object v0, p0, Lcom/baidu/mobstat/LogSender$1;->b:Lcom/baidu/mobstat/LogSender;

    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/LogSender$1;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/q;->c(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;I)I

    iget-object v0, p0, Lcom/baidu/mobstat/LogSender$1;->b:Lcom/baidu/mobstat/LogSender;

    invoke-static {}, Lcom/baidu/mobstat/q;->a()Lcom/baidu/mobstat/q;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/LogSender$1;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/q;->d(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;Z)Z

    iget-object v0, p0, Lcom/baidu/mobstat/LogSender$1;->b:Lcom/baidu/mobstat/LogSender;

    invoke-static {v0}, Lcom/baidu/mobstat/LogSender;->b(Lcom/baidu/mobstat/LogSender;)Lcom/baidu/mobstat/SendStrategyEnum;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/LogSender$1;->b:Lcom/baidu/mobstat/LogSender;

    iget-object v1, p0, Lcom/baidu/mobstat/LogSender$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/LogSender;->setSendingLogTimer(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/LogSender$1;->b:Lcom/baidu/mobstat/LogSender;

    invoke-static {v0}, Lcom/baidu/mobstat/LogSender;->b(Lcom/baidu/mobstat/LogSender;)Lcom/baidu/mobstat/SendStrategyEnum;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/baidu/mobstat/LogSender$1;->b:Lcom/baidu/mobstat/LogSender;

    invoke-static {v0}, Lcom/baidu/mobstat/LogSender;->d(Lcom/baidu/mobstat/LogSender;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/mobstat/LogSender$1$1;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/LogSender$1$1;-><init>(Lcom/baidu/mobstat/LogSender$1;)V

    iget-object v2, p0, Lcom/baidu/mobstat/LogSender$1;->b:Lcom/baidu/mobstat/LogSender;

    invoke-static {v2}, Lcom/baidu/mobstat/LogSender;->c(Lcom/baidu/mobstat/LogSender;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
