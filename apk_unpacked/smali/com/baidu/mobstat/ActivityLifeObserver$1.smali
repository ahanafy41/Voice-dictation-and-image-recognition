.class Lcom/baidu/mobstat/ActivityLifeObserver$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/ActivityLifeObserver;->doRegister(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/ActivityLifeObserver;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/ActivityLifeObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v1}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    invoke-interface {v2, p1, p2}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v1}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    invoke-interface {v2, p1}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityDestroyed(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v1}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    invoke-interface {v2, p1}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityPaused(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v1}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    invoke-interface {v2, p1}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityResumed(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v1}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    invoke-interface {v2, p1, p2}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v1}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    invoke-interface {v2, p1}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityStarted(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/mobstat/ActivityLifeObserver$1;->a:Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-static {v1}, Lcom/baidu/mobstat/ActivityLifeObserver;->a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    invoke-interface {v2, p1}, Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;->onActivityStopped(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    return-void
.end method
