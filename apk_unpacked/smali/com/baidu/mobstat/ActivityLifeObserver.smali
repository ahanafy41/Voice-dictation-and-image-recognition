.class public Lcom/baidu/mobstat/ActivityLifeObserver;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;
    }
.end annotation


# static fields
.field private static final b:Lcom/baidu/mobstat/ActivityLifeObserver;


# instance fields
.field private a:Z

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mobstat/ActivityLifeObserver;

    invoke-direct {v0}, Lcom/baidu/mobstat/ActivityLifeObserver;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/ActivityLifeObserver;->b:Lcom/baidu/mobstat/ActivityLifeObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->c:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/ActivityLifeObserver;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->c:Ljava/util/Set;

    return-object p0
.end method

.method public static instance()Lcom/baidu/mobstat/ActivityLifeObserver;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/ActivityLifeObserver;->b:Lcom/baidu/mobstat/ActivityLifeObserver;

    return-object v0
.end method


# virtual methods
.method public addObserver(Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->c:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->c:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clearObservers()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->c:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public doRegister(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    new-instance v0, Lcom/baidu/mobstat/ActivityLifeObserver$1;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/ActivityLifeObserver$1;-><init>(Lcom/baidu/mobstat/ActivityLifeObserver;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lcom/baidu/mobstat/h;->c()Lcom/baidu/mobstat/h;

    move-result-object p1

    const-string v0, "registerActivityLifecycleCallbacks encounter exception"

    invoke-virtual {p1, v0}, Lcom/baidu/mobstat/g;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public registerActivityLifeCallback(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ActivityLifeObserver;->doRegister(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->a:Z

    return-void
.end method

.method public removeObserver(Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->c:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/mobstat/ActivityLifeObserver;->c:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
