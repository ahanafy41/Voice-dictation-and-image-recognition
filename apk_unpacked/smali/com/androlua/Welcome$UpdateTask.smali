.class public Lcom/androlua/Welcome$UpdateTask;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/Welcome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/Welcome$UpdateTask$FileWritingTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/zip/ZipFile;

.field private b:Ljava/lang/String;

.field final synthetic c:Lcom/androlua/Welcome;


# direct methods
.method public constructor <init>(Lcom/androlua/Welcome;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/Welcome$UpdateTask;->c:Lcom/androlua/Welcome;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/androlua/Welcome$UpdateTask;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/androlua/Welcome$UpdateTask;->b:Ljava/lang/String;

    return-object p0
.end method

.method private a(JJ)V
    .locals 0

    invoke-static {}, Lcom/luajava/LuaStateFactory;->newLuaState()Lcom/luajava/LuaState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luajava/LuaState;->openLibs()V

    :try_start_0
    iget-object p2, p0, Lcom/androlua/Welcome$UpdateTask;->c:Lcom/androlua/Welcome;

    const-string p3, "update.lua"

    invoke-static {p2, p3}, Lcom/androlua/LuaUtil;->readAsset(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p2

    const-string p3, "update"

    invoke-virtual {p1, p2, p3}, Lcom/luajava/LuaState;->LloadBuffer([BLjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2}, Lcom/luajava/LuaState;->pcall(III)I

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "onUpdate"

    invoke-virtual {p1, p3}, Lcom/luajava/LuaState;->getFunction(Ljava/lang/String;)Lcom/luajava/LuaFunction;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    iget-object p4, p0, Lcom/androlua/Welcome$UpdateTask;->c:Lcom/androlua/Welcome;

    invoke-static {p4}, Lcom/androlua/Welcome;->c(Lcom/androlua/Welcome;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, p2

    const/4 p2, 0x1

    iget-object p4, p0, Lcom/androlua/Welcome$UpdateTask;->c:Lcom/androlua/Welcome;

    invoke-static {p4}, Lcom/androlua/Welcome;->d(Lcom/androlua/Welcome;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, p2

    invoke-virtual {p1, p3}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    :try_start_1
    const-string p1, "assets"

    iget-object p2, p0, Lcom/androlua/Welcome$UpdateTask;->c:Lcom/androlua/Welcome;

    invoke-static {p2}, Lcom/androlua/Welcome;->e(Lcom/androlua/Welcome;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/androlua/Welcome$UpdateTask;->unApk(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "lua"

    iget-object p2, p0, Lcom/androlua/Welcome$UpdateTask;->c:Lcom/androlua/Welcome;

    invoke-static {p2}, Lcom/androlua/Welcome;->f(Lcom/androlua/Welcome;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/androlua/Welcome$UpdateTask;->unApk(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/androlua/Welcome$UpdateTask;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/androlua/Welcome$UpdateTask;)Ljava/util/zip/ZipFile;
    .locals 0

    iget-object p0, p0, Lcom/androlua/Welcome$UpdateTask;->a:Ljava/util/zip/ZipFile;

    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object p1, p0, Lcom/androlua/Welcome$UpdateTask;->c:Lcom/androlua/Welcome;

    invoke-static {p1}, Lcom/androlua/Welcome;->a(Lcom/androlua/Welcome;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/androlua/Welcome$UpdateTask;->c:Lcom/androlua/Welcome;

    invoke-static {p1}, Lcom/androlua/Welcome;->b(Lcom/androlua/Welcome;)J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/androlua/Welcome$UpdateTask;->a(JJ)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/androlua/Welcome$UpdateTask;->c:Lcom/androlua/Welcome;

    invoke-virtual {p1}, Lcom/androlua/Welcome;->startActivity()V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/androlua/Welcome$UpdateTask;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/androlua/Welcome$UpdateTask;->a(Ljava/lang/String;)V

    return-void
.end method

.method public unApk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput-object p2, p0, Lcom/androlua/Welcome$UpdateTask;->b:Ljava/lang/String;

    new-instance v4, Ljava/util/zip/ZipFile;

    iget-object v5, p0, Lcom/androlua/Welcome$UpdateTask;->c:Lcom/androlua/Welcome;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/androlua/Welcome$UpdateTask;->a:Ljava/util/zip/ZipFile;

    iget-object v4, p0, Lcom/androlua/Welcome$UpdateTask;->a:Ljava/util/zip/ZipFile;

    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v8, 0x1

    :cond_5
    if-eqz v8, :cond_6

    goto :goto_1

    :cond_6
    new-instance v6, Lcom/androlua/Welcome$UpdateTask$FileWritingTask;

    invoke-direct {v6, p0, v4, v5}, Lcom/androlua/Welcome$UpdateTask$FileWritingTask;-><init>(Lcom/androlua/Welcome$UpdateTask;Ljava/util/zip/ZipEntry;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_7
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const-wide p1, 0x7fffffffffffffffL

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p1, p2, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/androlua/Welcome$UpdateTask;->a:Ljava/util/zip/ZipFile;

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "WelcomeMTUnzip: ExecutorService was interrupted."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method
