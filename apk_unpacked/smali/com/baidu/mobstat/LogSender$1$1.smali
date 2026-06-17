.class Lcom/baidu/mobstat/LogSender$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/LogSender$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/LogSender$1;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/LogSender$1;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/LogSender$1$1;->a:Lcom/baidu/mobstat/LogSender$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/LogSender$1$1;->a:Lcom/baidu/mobstat/LogSender$1;

    iget-object v1, v0, Lcom/baidu/mobstat/LogSender$1;->b:Lcom/baidu/mobstat/LogSender;

    iget-object v0, v0, Lcom/baidu/mobstat/LogSender$1;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;)V

    return-void
.end method
