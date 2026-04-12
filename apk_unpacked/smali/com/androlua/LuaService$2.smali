.class Lcom/androlua/LuaService$2;
.super Lcom/luajava/JavaFunction;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaService;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/androlua/LuaService;


# direct methods
.method constructor <init>(Lcom/androlua/LuaService;Lcom/luajava/LuaState;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaService$2;->b:Lcom/androlua/LuaService;

    invoke-direct {p0, p2}, Lcom/luajava/JavaFunction;-><init>(Lcom/luajava/LuaState;)V

    return-void
.end method


# virtual methods
.method public execute()I
    .locals 8

    iget-object v0, p0, Lcom/luajava/JavaFunction;->a:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getTop()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaService$2;->b:Lcom/androlua/LuaService;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/androlua/LuaService;->sendMsg(Ljava/lang/String;)V

    return v2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/luajava/JavaFunction;->a:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getTop()I

    move-result v0

    const/4 v3, 0x1

    if-gt v1, v0, :cond_9

    iget-object v0, p0, Lcom/luajava/JavaFunction;->a:Lcom/luajava/LuaState;

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->type(I)I

    move-result v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/luajava/JavaFunction;->a:Lcom/luajava/LuaState;

    invoke-virtual {v5, v0}, Lcom/luajava/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0xfdb020b

    if-eq v6, v7, :cond_2

    const v7, 0x3db6c28

    if-eq v6, v7, :cond_1

    goto :goto_1

    :cond_1
    const-string v6, "boolean"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const-string v6, "userdata"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x0

    :cond_3
    :goto_1
    if-eqz v5, :cond_6

    if-eq v5, v3, :cond_4

    iget-object v3, p0, Lcom/luajava/JavaFunction;->a:Lcom/luajava/LuaState;

    invoke-virtual {v3, v1}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/luajava/JavaFunction;->a:Lcom/luajava/LuaState;

    invoke-virtual {v3, v1}, Lcom/luajava/LuaState;->toBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "true"

    goto :goto_2

    :cond_5
    const-string v3, "false"

    :goto_2
    move-object v4, v3

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/luajava/JavaFunction;->a:Lcom/luajava/LuaState;

    invoke-virtual {v3, v1}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_7
    :goto_3
    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    move-object v0, v4

    :goto_4
    iget-object v3, p0, Lcom/androlua/LuaService$2;->b:Lcom/androlua/LuaService;

    invoke-static {v3}, Lcom/androlua/LuaService;->a(Lcom/androlua/LuaService;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/androlua/LuaService$2;->b:Lcom/androlua/LuaService;

    invoke-static {v3}, Lcom/androlua/LuaService;->a(Lcom/androlua/LuaService;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/androlua/LuaService$2;->b:Lcom/androlua/LuaService;

    invoke-static {v0}, Lcom/androlua/LuaService;->a(Lcom/androlua/LuaService;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/androlua/LuaService$2;->b:Lcom/androlua/LuaService;

    invoke-static {v0}, Lcom/androlua/LuaService;->a(Lcom/androlua/LuaService;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/androlua/LuaService$2;->b:Lcom/androlua/LuaService;

    invoke-static {v4}, Lcom/androlua/LuaService;->a(Lcom/androlua/LuaService;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androlua/LuaService;->sendMsg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaService$2;->b:Lcom/androlua/LuaService;

    invoke-static {v0}, Lcom/androlua/LuaService;->a(Lcom/androlua/LuaService;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    return v2
.end method
