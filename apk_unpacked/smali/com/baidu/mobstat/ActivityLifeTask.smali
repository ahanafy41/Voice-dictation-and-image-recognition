.class public Lcom/baidu/mobstat/ActivityLifeTask;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Z = false

.field private static b:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

.field private static c:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

.field private static d:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

.field private static e:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class p0, Lcom/baidu/mobstat/ActivityLifeTask;

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;-><init>(I)V

    sput-object v0, Lcom/baidu/mobstat/ActivityLifeTask;->b:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    new-instance v0, Lcom/baidu/mobstat/b$a;

    invoke-direct {v0}, Lcom/baidu/mobstat/b$a;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/ActivityLifeTask;->d:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    new-instance v0, Lcom/baidu/mobstat/d$a;

    invoke-direct {v0}, Lcom/baidu/mobstat/d$a;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/ActivityLifeTask;->c:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    new-instance v0, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/AutoTrack$MyActivityLifeCallback;-><init>(I)V

    sput-object v0, Lcom/baidu/mobstat/ActivityLifeTask;->e:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized registerActivityLifeCallback(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/baidu/mobstat/ActivityLifeTask;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/baidu/mobstat/ActivityLifeTask;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/baidu/mobstat/ActivityLifeTask;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/mobstat/ActivityLifeObserver;->instance()Lcom/baidu/mobstat/ActivityLifeObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/ActivityLifeObserver;->clearObservers()V

    invoke-static {}, Lcom/baidu/mobstat/ActivityLifeObserver;->instance()Lcom/baidu/mobstat/ActivityLifeObserver;

    move-result-object v1

    sget-object v2, Lcom/baidu/mobstat/ActivityLifeTask;->b:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/ActivityLifeObserver;->addObserver(Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;)V

    invoke-static {}, Lcom/baidu/mobstat/ActivityLifeObserver;->instance()Lcom/baidu/mobstat/ActivityLifeObserver;

    move-result-object v1

    sget-object v2, Lcom/baidu/mobstat/ActivityLifeTask;->e:Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/ActivityLifeObserver;->addObserver(Lcom/baidu/mobstat/ActivityLifeObserver$IActivityLifeCallback;)V

    invoke-static {}, Lcom/baidu/mobstat/ActivityLifeObserver;->instance()Lcom/baidu/mobstat/ActivityLifeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/baidu/mobstat/ActivityLifeObserver;->registerActivityLifeCallback(Landroid/content/Context;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/baidu/mobstat/ActivityLifeTask;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
