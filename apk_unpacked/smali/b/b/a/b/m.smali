.class public Lb/b/a/b/m;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/b/m$b;,
        Lb/b/a/b/m$a;
    }
.end annotation


# static fields
.field private static a:Lb/b/a/b/i;

.field private static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field c:Lb/b/a/b/m$a;

.field private d:Lb/b/a/b/g;

.field private e:Lb/b/a/b/m$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lb/b/a/b/k;->f()Lb/b/a/b/i;

    move-result-object v0

    sput-object v0, Lb/b/a/b/m;->a:Lb/b/a/b/i;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lb/b/a/b/m;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lb/b/a/b/m$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/a/b/m;->c:Lb/b/a/b/m$a;

    iput-object v0, p0, Lb/b/a/b/m;->e:Lb/b/a/b/m$b;

    iput-object p1, p0, Lb/b/a/b/m;->c:Lb/b/a/b/m$a;

    return-void
.end method

.method static synthetic a(Lb/b/a/b/m;)Lb/b/a/b/g;
    .locals 0

    iget-object p0, p0, Lb/b/a/b/m;->d:Lb/b/a/b/g;

    return-object p0
.end method

.method static synthetic a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    sput-object p0, Lb/b/a/b/m;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static declared-synchronized a(Lb/b/a/b/i;)V
    .locals 1

    const-class v0, Lb/b/a/b/m;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lb/b/a/b/m;->a:Lb/b/a/b/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c()Lb/b/a/b/i;
    .locals 2

    const-class v0, Lb/b/a/b/m;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lb/b/a/b/m;->a:Lb/b/a/b/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static d()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    sget-object v0, Lb/b/a/b/m;->b:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lb/b/a/b/m;->e:Lb/b/a/b/m$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/a/b/m$b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/a/b/m;->e:Lb/b/a/b/m$b;

    :cond_0
    return-void
.end method

.method public declared-synchronized a(Lb/b/a/b/g;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lb/b/a/b/m;->d:Lb/b/a/b/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/b/a/b/q;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/b/m;->c:Lb/b/a/b/m$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lb/b/a/b/m$a;->a(Ljava/util/List;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/a/b/m;->e:Lb/b/a/b/m$b;

    return-void
.end method

.method public declared-synchronized b()Lb/b/a/b/g;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/b/a/b/m;->d:Lb/b/a/b/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lb/b/a/b/g;)V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lc/a/a/a/f;->h:Ljava/lang/String;

    invoke-static {}, Lb/b/a/b/m;->c()Lb/b/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/b/i;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lb/b/a/b/g;

    invoke-direct {v0, p1}, Lb/b/a/b/g;-><init>(Lb/b/a/b/g;)V

    invoke-virtual {p0, v0}, Lb/b/a/b/m;->a(Lb/b/a/b/g;)V

    invoke-virtual {p0}, Lb/b/a/b/m;->a()V

    :try_start_0
    new-instance p1, Lb/b/a/b/m$b;

    invoke-direct {p1, p0, p0}, Lb/b/a/b/m$b;-><init>(Lb/b/a/b/m;Lb/b/a/b/m;)V

    iput-object p1, p0, Lb/b/a/b/m;->e:Lb/b/a/b/m$b;

    iget-object p1, p0, Lb/b/a/b/m;->e:Lb/b/a/b/m$b;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
