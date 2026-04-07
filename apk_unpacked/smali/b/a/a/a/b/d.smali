.class public final Lb/a/a/a/b/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lb/a/a/a/b/c;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/a/b/d;->b:Landroid/content/Context;

    return-void
.end method

.method private a()Lb/a/a/a/b/c;
    .locals 2

    iget-object v0, p0, Lb/a/a/a/b/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lb/a/a/a/b/c;->a(Landroid/content/Context;)Lb/a/a/a/b/c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lb/a/a/a/b/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lb/a/a/a/b/b;->a(Landroid/content/Context;)Lb/a/a/a/b/b;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/a/a/a/b/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lb/a/a/a/b/c;->b(Landroid/content/Context;)Lb/a/a/a/b/c;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lb/a/a/a/b/b;->a()Z

    invoke-static {v0}, Lb/a/a/a/b/c;->a(Lb/a/a/a/b/b;)Lb/a/a/a/b/c;

    move-result-object v0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    iget-object v1, p0, Lb/a/a/a/b/d;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lb/a/a/a/b/c;->c(Landroid/content/Context;)Z

    :cond_3
    iget-object v1, p0, Lb/a/a/a/b/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lb/a/a/a/b/b;->b(Landroid/content/Context;)Z

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lb/a/a/a/b/d;->b(Landroid/content/Context;)Lb/a/a/a/b/c;

    move-result-object p0

    invoke-virtual {p0}, Lb/a/a/a/b/c;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;)Lb/a/a/a/b/c;
    .locals 2

    sget-object v0, Lb/a/a/a/b/d;->a:Lb/a/a/a/b/c;

    if-nez v0, :cond_1

    const-class v0, Lb/a/a/a/b/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lb/a/a/a/b/d;->a:Lb/a/a/a/b/c;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    new-instance v1, Lb/a/a/a/b/d;

    invoke-direct {v1, p0}, Lb/a/a/a/b/d;-><init>(Landroid/content/Context;)V

    invoke-direct {v1}, Lb/a/a/a/b/d;->a()Lb/a/a/a/b/c;

    move-result-object p0

    sput-object p0, Lb/a/a/a/b/d;->a:Lb/a/a/a/b/c;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lb/a/a/a/b/d;->a:Lb/a/a/a/b/c;

    return-object p0
.end method
