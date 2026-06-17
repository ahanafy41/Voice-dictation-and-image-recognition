.class Lcom/baidu/mobstat/LogSender$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/LogSender;->a(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/baidu/mobstat/LogSender$5;->b:Lcom/baidu/mobstat/LogSender;

    iput-object p2, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "__track_send_data_"

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/baidu/mobstat/LogSender$5;->b:Lcom/baidu/mobstat/LogSender;

    iget-object v3, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    sget-object v4, Lcom/baidu/mobstat/Config;->PREFIX_SEND_DATA:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/baidu/mobstat/LogSender$5;->b:Lcom/baidu/mobstat/LogSender;

    iget-object v3, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    invoke-static {v2, v3, v0}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/baidu/mobstat/o;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v5, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/baidu/mobstat/o;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    iget-object v7, p0, Lcom/baidu/mobstat/LogSender$5;->b:Lcom/baidu/mobstat/LogSender;

    iget-object v8, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    invoke-static {v7, v8, v5, v6}, Lcom/baidu/mobstat/LogSender;->a(Lcom/baidu/mobstat/LogSender;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v3, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/baidu/mobstat/o;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/baidu/mobstat/LogSender$5;->a:Landroid/content/Context;

    invoke-static {v6, v4, v5}, Lcom/baidu/mobstat/LogSender;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    :catch_0
    :cond_3
    return-void
.end method
