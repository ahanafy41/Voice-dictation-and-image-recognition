.class Lcom/androlua/LuaServer$ServerThread;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerThread"
.end annotation


# instance fields
.field private final a:Ljava/net/ServerSocket;

.field final synthetic b:Lcom/androlua/LuaServer;


# direct methods
.method public constructor <init>(Lcom/androlua/LuaServer;Ljava/net/ServerSocket;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaServer$ServerThread;->b:Lcom/androlua/LuaServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/androlua/LuaServer$ServerThread;->a:Ljava/net/ServerSocket;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaServer$ServerThread;->b:Lcom/androlua/LuaServer;

    invoke-static {v0}, Lcom/androlua/LuaServer;->a(Lcom/androlua/LuaServer;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    new-instance v1, Lcom/androlua/LuaServer$SocketThread;

    iget-object v2, p0, Lcom/androlua/LuaServer$ServerThread;->b:Lcom/androlua/LuaServer;

    invoke-direct {v1, v2, v0}, Lcom/androlua/LuaServer$SocketThread;-><init>(Lcom/androlua/LuaServer;Ljava/net/Socket;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
