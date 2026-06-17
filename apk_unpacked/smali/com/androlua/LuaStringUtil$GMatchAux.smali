.class public Lcom/androlua/LuaStringUtil$GMatchAux;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaStringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GMatchAux"
.end annotation


# instance fields
.field private final a:I

.field private final b:Lcom/androlua/LuaStringUtil$MatchState;

.field private final c:Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/androlua/LuaStringUtil$GMatchAux;->a:I

    new-instance v0, Lcom/androlua/LuaStringUtil$MatchState;

    invoke-direct {v0, p1, p2}, Lcom/androlua/LuaStringUtil$MatchState;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androlua/LuaStringUtil$GMatchAux;->b:Lcom/androlua/LuaStringUtil$MatchState;

    const/4 p1, 0x0

    iput p1, p0, Lcom/androlua/LuaStringUtil$GMatchAux;->d:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/androlua/LuaStringUtil$GMatchAux;->e:I

    iput-boolean p3, p0, Lcom/androlua/LuaStringUtil$GMatchAux;->c:Z

    return-void
.end method


# virtual methods
.method public invoke()Lcom/androlua/LuaStringUtil$MatchResult;
    .locals 6

    :goto_0
    iget v0, p0, Lcom/androlua/LuaStringUtil$GMatchAux;->d:I

    iget v1, p0, Lcom/androlua/LuaStringUtil$GMatchAux;->a:I

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/androlua/LuaStringUtil$GMatchAux;->b:Lcom/androlua/LuaStringUtil$MatchState;

    invoke-virtual {v0}, Lcom/androlua/LuaStringUtil$MatchState;->a()V

    iget-object v0, p0, Lcom/androlua/LuaStringUtil$GMatchAux;->b:Lcom/androlua/LuaStringUtil$MatchState;

    iget v1, p0, Lcom/androlua/LuaStringUtil$GMatchAux;->d:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/androlua/LuaStringUtil$MatchState;->b(II)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    iget v3, p0, Lcom/androlua/LuaStringUtil$GMatchAux;->e:I

    if-eq v0, v3, :cond_1

    iget v3, p0, Lcom/androlua/LuaStringUtil$GMatchAux;->d:I

    iput v0, p0, Lcom/androlua/LuaStringUtil$GMatchAux;->d:I

    iput v0, p0, Lcom/androlua/LuaStringUtil$GMatchAux;->e:I

    iget-boolean v4, p0, Lcom/androlua/LuaStringUtil$GMatchAux;->c:Z

    if-eqz v4, :cond_0

    new-instance v1, Lcom/androlua/LuaStringUtil$MatchResult;

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lcom/androlua/LuaStringUtil$GMatchAux;->b:Lcom/androlua/LuaStringUtil$MatchState;

    invoke-virtual {v5, v2, v3, v0}, Lcom/androlua/LuaStringUtil$MatchState;->a(ZII)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v0, v2}, Lcom/androlua/LuaStringUtil$MatchResult;-><init>(II[Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v2, Lcom/androlua/LuaStringUtil$MatchResult;

    iget-object v4, p0, Lcom/androlua/LuaStringUtil$GMatchAux;->b:Lcom/androlua/LuaStringUtil$MatchState;

    invoke-virtual {v4, v1, v3, v0}, Lcom/androlua/LuaStringUtil$MatchState;->a(ZII)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/androlua/LuaStringUtil$MatchResult;-><init>([Ljava/lang/String;)V

    return-object v2

    :cond_1
    iget v0, p0, Lcom/androlua/LuaStringUtil$GMatchAux;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/androlua/LuaStringUtil$GMatchAux;->d:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
