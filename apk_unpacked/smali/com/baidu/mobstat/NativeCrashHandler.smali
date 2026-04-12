.class public final Lcom/baidu/mobstat/NativeCrashHandler;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Z = false

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "crash_analysis"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/mobstat/NativeCrashHandler;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doNativeCrash()V
    .locals 1

    sget-boolean v0, Lcom/baidu/mobstat/NativeCrashHandler;->a:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/NativeCrashHandler;->nativeException()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sput-object p0, Lcom/baidu/mobstat/NativeCrashHandler;->b:Landroid/content/Context;

    sget-boolean v0, Lcom/baidu/mobstat/NativeCrashHandler;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mobstat/NativeCrashHandler;->nativeInit(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private static native nativeException()V
.end method

.method private static native nativeInit(Ljava/lang/String;)V
.end method

.method private static native nativeProcess(Ljava/lang/String;)V
.end method

.method private static native nativeUnint()V
.end method

.method public static onCrashCallbackFromNative(Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/baidu/mobstat/ExceptionAnalysis;->getInstance()Lcom/baidu/mobstat/ExceptionAnalysis;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/NativeCrashHandler;->b:Landroid/content/Context;

    const-string v5, "NativeException"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/mobstat/ExceptionAnalysis;->saveCrashInfo(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static process(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/baidu/mobstat/NativeCrashHandler;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {p0}, Lcom/baidu/mobstat/NativeCrashHandler;->nativeProcess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static uninit()V
    .locals 1

    sget-boolean v0, Lcom/baidu/mobstat/NativeCrashHandler;->a:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/NativeCrashHandler;->nativeUnint()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
