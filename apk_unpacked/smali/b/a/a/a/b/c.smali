.class final Lb/a/a/a/b/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [[B

    const/16 v2, 0xc

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    invoke-static {v1}, Lb/a/a/a/b/c;->a([[B)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lb/a/a/a/b/c;->a:Ljava/lang/String;

    new-array v0, v0, [[B

    new-array v1, v2, [B

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v2, [B

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    invoke-static {v0}, Lb/a/a/a/b/c;->a([[B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/a/a/a/b/c;->b:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x51t
        0x48t
        0x74t
        0x4ft
        0x4bt
        0x48t
        0x45t
        0x34t
        0x4ct
        0x33t
        0x67t
        0x3dt
    .end array-data

    :array_1
    .array-data 1
        0x52t
        0x33t
        0x68t
        0x5at
        0x53t
        0x7at
        0x41t
        0x69t
        0x65t
        0x31t
        0x6bt
        0x3dt
    .end array-data

    :array_2
    .array-data 1
        0x4ct
        0x43t
        0x4dt
        0x35t
        0x4dt
        0x46t
        0x5at
        0x49t
        0x51t
        0x6bt
        0x6bt
        0x3dt
    .end array-data

    :array_3
    .array-data 1
        0x5at
        0x69t
        0x6ct
        0x79t
        0x4ft
        0x44t
        0x64t
        0x51t
        0x56t
        0x79t
        0x59t
        0x3dt
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lb/a/a/a/b/c;->e:I

    return-void
.end method

.method static a(Landroid/content/Context;)Lb/a/a/a/b/c;
    .locals 1

    invoke-static {p0}, Lb/a/a/a/b/c;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lb/a/a/a/b/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb/a/a/a/b/c;->a(Ljava/lang/String;)Lb/a/a/a/b/c;

    move-result-object p0

    return-object p0
.end method

.method static a(Lb/a/a/a/b/b;)Lb/a/a/a/b/c;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Lb/a/a/a/b/c;

    invoke-direct {v0}, Lb/a/a/a/b/c;-><init>()V

    invoke-virtual {p0}, Lb/a/a/a/b/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/a/b/c;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, Lb/a/a/a/b/b;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lb/a/a/a/b/c;->i(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "arg non-nullable is expected"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Ljava/lang/String;)Lb/a/a/a/b/c;
    .locals 0

    invoke-static {p0}, Lb/a/a/a/b/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb/a/a/a/b/c;->b(Ljava/lang/String;)Lb/a/a/a/b/c;

    move-result-object p0

    return-object p0
.end method

.method private static varargs a([[B)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    new-instance v4, Ljava/lang/String;

    invoke-static {v3}, Lb/a/a/a/a/b;->a([B)[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "XL5g0WZAHpIaKspIHIHYg5k"

    invoke-static {p0, v0}, Lb/a/a/a/b/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lb/a/a/a/b/e;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lb/a/a/a/b/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lb/a/a/a/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method static b(Landroid/content/Context;)Lb/a/a/a/b/c;
    .locals 0

    invoke-static {p0}, Lb/a/a/a/b/c;->d(Landroid/content/Context;)Lb/a/a/a/b/c;

    move-result-object p0

    return-object p0
.end method

.method static b(Ljava/lang/String;)Lb/a/a/a/b/c;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "ZmxhZw=="

    invoke-static {p0}, Lb/a/a/a/b/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "0"

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "ZGV2aWNlaWQ="

    invoke-static {v2}, Lb/a/a/a/b/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "c2Rr"

    invoke-static {v3}, Lb/a/a/a/b/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lb/a/a/a/b/c;

    invoke-direct {v3}, Lb/a/a/a/b/c;-><init>()V

    invoke-virtual {v3, v2}, Lb/a/a/a/b/c;->h(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lb/a/a/a/b/c;->i(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lb/a/a/a/b/c;->a(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    invoke-static {p0}, Lb/a/a/a/b/e;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-object v1
.end method

.method private b()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ZGV2aWNlaWQ="

    invoke-static {v1}, Lb/a/a/a/b/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/a/b/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ZmxhZw=="

    invoke-static {v1}, Lb/a/a/a/b/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/a/b/c;->d:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "0"

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lb/a/a/a/b/c;->d:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "dmVy"

    invoke-static {v1}, Lb/a/a/a/b/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lb/a/a/a/b/c;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "c2Rr"

    invoke-static {v1}, Lb/a/a/a/b/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lb/a/a/a/b/c;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lb/a/a/a/b/e;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lb/a/a/a/b/c;->a:Ljava/lang/String;

    sget-object v2, Lb/a/a/a/b/c;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lb/a/a/a/a/b;->a([B)[B

    move-result-object p0

    invoke-static {v1, v2, p0}, Lb/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lb/a/a/a/b/e;->a(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method private static d(Landroid/content/Context;)Lb/a/a/a/b/c;
    .locals 5

    new-instance v0, Lb/a/a/a/b/c;

    invoke-direct {v0}, Lb/a/a/a/b/c;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-ge v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0}, Lb/a/a/a/b/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_2

    invoke-static {p0}, Lb/a/a/a/b/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lb/a/a/a/b/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.baidu"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, v2}, Lb/a/a/a/a/c;->a([BZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lb/a/a/a/b/c;->h(Ljava/lang/String;)V

    const-string p0, "0"

    invoke-virtual {v0, p0}, Lb/a/a/a/b/c;->i(Ljava/lang/String;)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, p0}, Lb/a/a/a/b/c;->a(I)V

    return-object v0
.end method

.method static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lb/a/a/a/b/c;->b:Ljava/lang/String;

    sget-object v2, Lb/a/a/a/b/c;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lb/a/a/a/a/b;->a([B)[B

    move-result-object p0

    invoke-static {v1, v2, p0}, Lb/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lb/a/a/a/b/e;->a(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method private static e(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "libcuid_v3.so"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    sget-object v0, Lb/a/a/a/b/c;->a:Ljava/lang/String;

    sget-object v1, Lb/a/a/a/b/c;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v0, v1, p0}, Lb/a/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    const-string v0, "utf-8"

    invoke-static {p0, v0}, Lb/a/a/a/a/b;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    invoke-static {p0}, Lb/a/a/a/b/e;->a(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "XL5g0WZAHpIaKspIHIHYg5k"

    invoke-static {p0, v0}, Lb/a/a/a/b/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb/a/a/a/b/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    sget-object v0, Lb/a/a/a/b/c;->b:Ljava/lang/String;

    sget-object v1, Lb/a/a/a/b/c;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v0, v1, p0}, Lb/a/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p0

    const-string v0, "utf-8"

    invoke-static {p0, v0}, Lb/a/a/a/a/b;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    invoke-static {p0}, Lb/a/a/a/b/e;->a(Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lb/a/a/a/a/b;->a([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private g(Landroid/content/Context;)Z
    .locals 4

    invoke-direct {p0}, Lb/a/a/a/b/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/a/b/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "libcuid_v3.so"

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lb/a/a/a/b/e;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_2
    invoke-static {p1}, Lb/a/a/a/b/e;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    invoke-static {p1}, Lb/a/a/a/b/e;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return v1

    :goto_2
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-static {v0}, Lb/a/a/a/b/e;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lb/a/a/a/b/c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    iput-object v0, p0, Lb/a/a/a/b/c;->d:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/a/a/a/b/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/a/a/b/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lb/a/a/a/b/c;->f:I

    return-void
.end method

.method c(Landroid/content/Context;)Z
    .locals 0

    invoke-direct {p0, p1}, Lb/a/a/a/b/c;->g(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/b/c;->c:Ljava/lang/String;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/b/c;->d:Ljava/lang/String;

    return-void
.end method
