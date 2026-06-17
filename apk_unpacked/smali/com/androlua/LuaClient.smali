.class public Lcom/androlua/LuaClient;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/androlua/LuaGcable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/LuaClient$OnErrorListener;,
        Lcom/androlua/LuaClient$OnReadLineListener;,
        Lcom/androlua/LuaClient$SocketThread;
    }
.end annotation


# instance fields
.field private a:Lcom/androlua/LuaClient$OnReadLineListener;

.field private b:Lcom/androlua/LuaClient$OnErrorListener;

.field private c:Ljava/net/Socket;

.field private d:Ljava/io/BufferedReader;

.field private e:Ljava/io/BufferedWriter;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/androlua/LuaContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, p0}, Lcom/androlua/LuaContext;->regGc(Lcom/androlua/LuaGcable;)V

    return-void
.end method

.method static synthetic a(Lcom/androlua/LuaClient;)Ljava/io/BufferedReader;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaClient;->d:Ljava/io/BufferedReader;

    return-object p0
.end method

.method static synthetic b(Lcom/androlua/LuaClient;)Lcom/androlua/LuaClient$OnReadLineListener;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaClient;->a:Lcom/androlua/LuaClient$OnReadLineListener;

    return-object p0
.end method

.method static synthetic c(Lcom/androlua/LuaClient;)Lcom/androlua/LuaClient$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaClient;->b:Lcom/androlua/LuaClient$OnErrorListener;

    return-object p0
.end method

.method static synthetic d(Lcom/androlua/LuaClient;)Ljava/io/BufferedWriter;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaClient;->e:Ljava/io/BufferedWriter;

    return-object p0
.end method


# virtual methods
.method public flush()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaClient;->e:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/androlua/LuaClient;->b:Lcom/androlua/LuaClient$OnErrorListener;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v2, v0}, Lcom/androlua/LuaClient$OnErrorListener;->onErrorLine(Lcom/androlua/LuaClient;Lcom/androlua/LuaClient$SocketThread;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public gc()V
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/LuaClient;->stop()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/LuaClient;->f:Z

    return-void
.end method

.method public isGc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/androlua/LuaClient;->f:Z

    return v0
.end method

.method public newLine()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaClient;->e:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v0, p0, Lcom/androlua/LuaClient;->e:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/androlua/LuaClient;->b:Lcom/androlua/LuaClient$OnErrorListener;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v2, v0}, Lcom/androlua/LuaClient$OnErrorListener;->onErrorLine(Lcom/androlua/LuaClient;Lcom/androlua/LuaClient$SocketThread;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setOnReadLineListener(Lcom/androlua/LuaClient$OnReadLineListener;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaClient;->a:Lcom/androlua/LuaClient$OnReadLineListener;

    return-void
.end method

.method public start(Ljava/lang/String;I)Z
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaClient;->c:Ljava/net/Socket;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/androlua/LuaClient;->c:Ljava/net/Socket;

    iget-object p1, p0, Lcom/androlua/LuaClient;->c:Ljava/net/Socket;

    const p2, 0x36ee80

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance p1, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    iget-object v0, p0, Lcom/androlua/LuaClient;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Lcom/androlua/LuaClient;->d:Ljava/io/BufferedReader;

    new-instance p1, Ljava/io/BufferedWriter;

    new-instance p2, Ljava/io/OutputStreamWriter;

    iget-object v0, p0, Lcom/androlua/LuaClient;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object p1, p0, Lcom/androlua/LuaClient;->e:Ljava/io/BufferedWriter;

    new-instance p1, Lcom/androlua/LuaClient$SocketThread;

    iget-object p2, p0, Lcom/androlua/LuaClient;->c:Ljava/net/Socket;

    invoke-direct {p1, p0, p2}, Lcom/androlua/LuaClient$SocketThread;-><init>(Lcom/androlua/LuaClient;Ljava/net/Socket;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    iget-object p2, p0, Lcom/androlua/LuaClient;->b:Lcom/androlua/LuaClient$OnErrorListener;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, v0, p1}, Lcom/androlua/LuaClient$OnErrorListener;->onErrorLine(Lcom/androlua/LuaClient;Lcom/androlua/LuaClient$SocketThread;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public stop()Z
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaClient;->c:Ljava/net/Socket;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, p0, Lcom/androlua/LuaClient;->b:Lcom/androlua/LuaClient$OnErrorListener;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p0, v3, v0}, Lcom/androlua/LuaClient$OnErrorListener;->onErrorLine(Lcom/androlua/LuaClient;Lcom/androlua/LuaClient$SocketThread;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public write(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaClient;->e:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/androlua/LuaClient;->b:Lcom/androlua/LuaClient$OnErrorListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lcom/androlua/LuaClient$OnErrorListener;->onErrorLine(Lcom/androlua/LuaClient;Lcom/androlua/LuaClient$SocketThread;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
