.class final Lb/a/a/a/b/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xc

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    invoke-static {v2}, Lb/a/a/a/a/b;->a([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/String;

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    invoke-static {v1}, Lb/a/a/a/a/b;->a([B)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/a/a/a/b/b;->a:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x4dt
        0x7at
        0x41t
        0x79t
        0x4dt
        0x54t
        0x49t
        0x78t
        0x4dt
        0x44t
        0x49t
        0x3dt
    .end array-data

    :array_1
    .array-data 1
        0x5at
        0x47t
        0x6ct
        0x6at
        0x64t
        0x57t
        0x52t
        0x70t
        0x59t
        0x57t
        0x49t
        0x3dt
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/a/a/a/b/b;->d:I

    const/4 v0, 0x2

    iput v0, p0, Lb/a/a/a/b/b;->e:I

    return-void
.end method

.method static a(Landroid/content/Context;)Lb/a/a/a/b/b;
    .locals 0

    invoke-static {p0}, Lb/a/a/a/b/b;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lb/a/a/a/b/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb/a/a/a/b/b;->a(Ljava/lang/String;)Lb/a/a/a/b/b;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;)Lb/a/a/a/b/b;
    .locals 0

    invoke-static {p0}, Lb/a/a/a/b/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb/a/a/a/b/b;->b(Ljava/lang/String;)Lb/a/a/a/b/b;

    move-result-object p0

    return-object p0
.end method

.method public static a(I)Z
    .locals 1

    const/16 v0, 0xe

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static b(Ljava/lang/String;)Lb/a/a/a/b/b;
    .locals 9

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    const-string p0, "ZGV2aWNlaWQ="

    invoke-static {p0}, Lb/a/a/a/b/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "dmVy"

    invoke-static {v2}, Lb/a/a/a/b/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x2

    const-string v4, "0"

    const-string v5, ""

    move-object v6, v5

    move-object v5, v4

    const/4 v4, 0x2

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v4

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    const/4 p0, 0x0

    if-ne v4, v3, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lb/a/a/a/b/e;->a(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lb/a/a/a/b/b;

    invoke-direct {v0}, Lb/a/a/a/b/b;-><init>()V

    invoke-virtual {v0, v6}, Lb/a/a/a/b/b;->d(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lb/a/a/a/b/b;->b(I)V

    invoke-virtual {v0}, Lb/a/a/a/b/b;->e()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v0, v5}, Lb/a/a/a/b/b;->e(Ljava/lang/String;)V

    :cond_6
    return-object v0

    :cond_7
    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    nop

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_8

    :try_start_4
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-static {v0}, Lb/a/a/a/b/e;->a(Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    throw p0

    :catch_3
    move-object v0, v1

    :goto_5
    if-eqz v0, :cond_9

    :try_start_5
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception p0

    invoke-static {p0}, Lb/a/a/a/b/e;->a(Ljava/lang/Throwable;)V

    :cond_9
    :goto_6
    return-object v1
.end method

.method static b(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lb/a/a/a/b/b;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static c(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "libcuid.so"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lb/a/a/a/b/b;->a:Ljava/lang/String;

    sget-object v2, Lb/a/a/a/b/b;->a:Ljava/lang/String;

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

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lb/a/a/a/a/b;->a([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method a()Z
    .locals 2

    invoke-virtual {p0}, Lb/a/a/a/b/b;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "O"

    :goto_0
    iput-object v0, p0, Lb/a/a/a/b/b;->c:Ljava/lang/String;

    return v1

    :cond_0
    invoke-virtual {p0}, Lb/a/a/a/b/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "0"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lb/a/a/a/b/b;->d:I

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/b/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/b/b;->b:Ljava/lang/String;

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lb/a/a/a/b/b;->c:Ljava/lang/String;

    invoke-static {v0}, Lb/a/a/a/b/b;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/b/b;->c:Ljava/lang/String;

    return-void
.end method

.method public e()Z
    .locals 1

    iget v0, p0, Lb/a/a/a/b/b;->d:I

    invoke-static {v0}, Lb/a/a/a/b/b;->a(I)Z

    move-result v0

    return v0
.end method
