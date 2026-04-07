.class public Lcom/androlua/LuaStringUtil$MatchResult;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaStringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatchResult"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/androlua/LuaStringUtil$MatchResult;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/androlua/LuaStringUtil$MatchResult;->d:I

    iput v0, p0, Lcom/androlua/LuaStringUtil$MatchResult;->e:I

    iput p1, p0, Lcom/androlua/LuaStringUtil$MatchResult;->d:I

    iput p2, p0, Lcom/androlua/LuaStringUtil$MatchResult;->e:I

    return-void
.end method

.method public constructor <init>(II[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/androlua/LuaStringUtil$MatchResult;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/androlua/LuaStringUtil$MatchResult;->d:I

    iput v0, p0, Lcom/androlua/LuaStringUtil$MatchResult;->e:I

    iput p1, p0, Lcom/androlua/LuaStringUtil$MatchResult;->d:I

    iput p2, p0, Lcom/androlua/LuaStringUtil$MatchResult;->e:I

    iput-object p3, p0, Lcom/androlua/LuaStringUtil$MatchResult;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/androlua/LuaStringUtil$MatchResult;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/androlua/LuaStringUtil$MatchResult;->d:I

    iput v0, p0, Lcom/androlua/LuaStringUtil$MatchResult;->e:I

    iput-object p1, p0, Lcom/androlua/LuaStringUtil$MatchResult;->b:Ljava/lang/String;

    iput p2, p0, Lcom/androlua/LuaStringUtil$MatchResult;->a:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/androlua/LuaStringUtil$MatchResult;->a:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/androlua/LuaStringUtil$MatchResult;->d:I

    iput v1, p0, Lcom/androlua/LuaStringUtil$MatchResult;->e:I

    iput-object p1, p0, Lcom/androlua/LuaStringUtil$MatchResult;->c:[Ljava/lang/String;

    iget-object p1, p0, Lcom/androlua/LuaStringUtil$MatchResult;->c:[Ljava/lang/String;

    array-length v1, p1

    iput v1, p0, Lcom/androlua/LuaStringUtil$MatchResult;->a:I

    iget v1, p0, Lcom/androlua/LuaStringUtil$MatchResult;->a:I

    if-lez v1, :cond_0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/androlua/LuaStringUtil$MatchResult;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public end()I
    .locals 1

    iget v0, p0, Lcom/androlua/LuaStringUtil$MatchResult;->e:I

    return v0
.end method

.method public matchs()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaStringUtil$MatchResult;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/androlua/LuaStringUtil$MatchResult;->a:I

    return v0
.end method

.method public result()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaStringUtil$MatchResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public start()I
    .locals 1

    iget v0, p0, Lcom/androlua/LuaStringUtil$MatchResult;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MatchResult{n="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/androlua/LuaStringUtil$MatchResult;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", s=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androlua/LuaStringUtil$MatchResult;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", matchs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androlua/LuaStringUtil$MatchResult;->c:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/androlua/LuaStringUtil$MatchResult;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/androlua/LuaStringUtil$MatchResult;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
