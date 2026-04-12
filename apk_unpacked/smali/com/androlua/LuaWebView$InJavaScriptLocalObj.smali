.class final Lcom/androlua/LuaWebView$InJavaScriptLocalObj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InJavaScriptLocalObj"
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaWebView;


# direct methods
.method constructor <init>(Lcom/androlua/LuaWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWebView$InJavaScriptLocalObj;->a:Lcom/androlua/LuaWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "luaj"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaWebView$InJavaScriptLocalObj;->a:Lcom/androlua/LuaWebView;

    invoke-static {v0, p1}, Lcom/androlua/LuaWebView;->a(Lcom/androlua/LuaWebView;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
