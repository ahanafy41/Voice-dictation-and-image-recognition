.class final Lcom/androlua/LuaStringUtil$Buffer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaStringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Buffer"
.end annotation


# static fields
.field private static final a:[C


# instance fields
.field private b:[C

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [C

    sput-object v0, Lcom/androlua/LuaStringUtil$Buffer;->a:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/androlua/LuaStringUtil$Buffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [C

    iput-object p1, p0, Lcom/androlua/LuaStringUtil$Buffer;->b:[C

    const/4 p1, 0x0

    iput p1, p0, Lcom/androlua/LuaStringUtil$Buffer;->c:I

    iput p1, p0, Lcom/androlua/LuaStringUtil$Buffer;->d:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/androlua/LuaStringUtil$Buffer;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/androlua/LuaStringUtil$Buffer;->a:[C

    iput-object v0, p0, Lcom/androlua/LuaStringUtil$Buffer;->b:[C

    const/4 v0, 0x0

    iput v0, p0, Lcom/androlua/LuaStringUtil$Buffer;->d:I

    iput v0, p0, Lcom/androlua/LuaStringUtil$Buffer;->c:I

    iput-object p1, p0, Lcom/androlua/LuaStringUtil$Buffer;->e:Ljava/lang/String;

    return-void
.end method

.method private final a(II)V
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaStringUtil$Buffer;->b:[C

    array-length v1, v0

    if-eq p1, v1, :cond_0

    new-array p1, p1, [C

    iget v1, p0, Lcom/androlua/LuaStringUtil$Buffer;->d:I

    iget v2, p0, Lcom/androlua/LuaStringUtil$Buffer;->c:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/androlua/LuaStringUtil$Buffer;->b:[C

    iput p2, p0, Lcom/androlua/LuaStringUtil$Buffer;->d:I

    :cond_0
    return-void
.end method

.method public static encodeToUtf8([CI[CI)I
    .locals 4

    const/4 v0, 0x0

    move v1, p3

    :goto_0
    if-ge v0, p1, :cond_0

    aget-char v2, p0, v0

    add-int/lit8 v3, v1, 0x1

    aput-char v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_0

    :cond_0
    sub-int/2addr v1, p3

    return v1
.end method


# virtual methods
.method public final append(B)Lcom/androlua/LuaStringUtil$Buffer;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/androlua/LuaStringUtil$Buffer;->makeroom(II)V

    iget-object v0, p0, Lcom/androlua/LuaStringUtil$Buffer;->b:[C

    iget v1, p0, Lcom/androlua/LuaStringUtil$Buffer;->d:I

    iget v2, p0, Lcom/androlua/LuaStringUtil$Buffer;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/androlua/LuaStringUtil$Buffer;->c:I

    add-int/2addr v1, v2

    int-to-char p1, p1

    aput-char p1, v0, v1

    return-object p0
.end method

.method public final append(C)Lcom/androlua/LuaStringUtil$Buffer;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/androlua/LuaStringUtil$Buffer;->makeroom(II)V

    iget-object v1, p0, Lcom/androlua/LuaStringUtil$Buffer;->b:[C

    iget v2, p0, Lcom/androlua/LuaStringUtil$Buffer;->d:I

    iget v3, p0, Lcom/androlua/LuaStringUtil$Buffer;->c:I

    add-int/2addr v2, v3

    aput-char p1, v1, v2

    add-int/2addr v3, v0

    iput v3, p0, Lcom/androlua/LuaStringUtil$Buffer;->c:I

    return-object p0
.end method

.method public final append(Ljava/lang/Object;)Lcom/androlua/LuaStringUtil$Buffer;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaStringUtil$Buffer;->append(Ljava/lang/String;)Lcom/androlua/LuaStringUtil$Buffer;

    return-object p0
.end method

.method public final append(Ljava/lang/String;)Lcom/androlua/LuaStringUtil$Buffer;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/androlua/LuaStringUtil$Buffer;->makeroom(II)V

    array-length v1, v0

    iget-object v2, p0, Lcom/androlua/LuaStringUtil$Buffer;->b:[C

    iget v3, p0, Lcom/androlua/LuaStringUtil$Buffer;->d:I

    iget v4, p0, Lcom/androlua/LuaStringUtil$Buffer;->c:I

    add-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/androlua/LuaStringUtil$Buffer;->encodeToUtf8([CI[CI)I

    iget v0, p0, Lcom/androlua/LuaStringUtil$Buffer;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/androlua/LuaStringUtil$Buffer;->c:I

    return-object p0
.end method

.method public concatTo(Ljava/lang/Number;)Lcom/androlua/LuaStringUtil$Buffer;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaStringUtil$Buffer;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaStringUtil$Buffer;->setvalue(Ljava/lang/String;)Lcom/androlua/LuaStringUtil$Buffer;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaStringUtil$Buffer;->prepend(Ljava/lang/String;)Lcom/androlua/LuaStringUtil$Buffer;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public concatTo(Ljava/lang/Object;)Lcom/androlua/LuaStringUtil$Buffer;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaStringUtil$Buffer;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaStringUtil$Buffer;->setvalue(Ljava/lang/String;)Lcom/androlua/LuaStringUtil$Buffer;

    move-result-object p1

    return-object p1
.end method

.method public concatTo(Ljava/lang/String;)Lcom/androlua/LuaStringUtil$Buffer;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaStringUtil$Buffer;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaStringUtil$Buffer;->setvalue(Ljava/lang/String;)Lcom/androlua/LuaStringUtil$Buffer;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/androlua/LuaStringUtil$Buffer;->prepend(Ljava/lang/String;)Lcom/androlua/LuaStringUtil$Buffer;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final makeroom(II)V
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaStringUtil$Buffer;->e:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/androlua/LuaStringUtil$Buffer;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/androlua/LuaStringUtil$Buffer;->c:I

    iput p1, p0, Lcom/androlua/LuaStringUtil$Buffer;->d:I

    iget v2, p0, Lcom/androlua/LuaStringUtil$Buffer;->c:I

    add-int/2addr p1, v2

    add-int/2addr p1, p2

    new-array p1, p1, [C

    iput-object p1, p0, Lcom/androlua/LuaStringUtil$Buffer;->b:[C

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iget-object p2, p0, Lcom/androlua/LuaStringUtil$Buffer;->b:[C

    iget v0, p0, Lcom/androlua/LuaStringUtil$Buffer;->d:I

    iget v2, p0, Lcom/androlua/LuaStringUtil$Buffer;->c:I

    invoke-static {p1, v1, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_0
    iget v0, p0, Lcom/androlua/LuaStringUtil$Buffer;->d:I

    iget v2, p0, Lcom/androlua/LuaStringUtil$Buffer;->c:I

    add-int/2addr v2, v0

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/androlua/LuaStringUtil$Buffer;->b:[C

    array-length v3, v3

    if-gt v2, v3, :cond_1

    if-ge v0, p1, :cond_5

    :cond_1
    iget v0, p0, Lcom/androlua/LuaStringUtil$Buffer;->c:I

    add-int v2, p1, v0

    add-int/2addr v2, p2

    const/16 v3, 0x20

    if-ge v2, v3, :cond_2

    const/16 v2, 0x20

    goto :goto_0

    :cond_2
    mul-int/lit8 v3, v0, 0x2

    if-ge v2, v3, :cond_3

    mul-int/lit8 v2, v0, 0x2

    :cond_3
    :goto_0
    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/androlua/LuaStringUtil$Buffer;->c:I

    sub-int p1, v2, p1

    sub-int v1, p1, p2

    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/androlua/LuaStringUtil$Buffer;->a(II)V

    :cond_5
    :goto_2
    return-void
.end method

.method public prepend(Ljava/lang/String;)Lcom/androlua/LuaStringUtil$Buffer;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/androlua/LuaStringUtil$Buffer;->makeroom(II)V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iget-object v2, p0, Lcom/androlua/LuaStringUtil$Buffer;->b:[C

    iget v3, p0, Lcom/androlua/LuaStringUtil$Buffer;->d:I

    sub-int/2addr v3, v0

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/androlua/LuaStringUtil$Buffer;->d:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/androlua/LuaStringUtil$Buffer;->d:I

    iget p1, p0, Lcom/androlua/LuaStringUtil$Buffer;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/androlua/LuaStringUtil$Buffer;->c:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/androlua/LuaStringUtil$Buffer;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setvalue(Ljava/lang/String;)Lcom/androlua/LuaStringUtil$Buffer;
    .locals 1

    sget-object v0, Lcom/androlua/LuaStringUtil$Buffer;->a:[C

    iput-object v0, p0, Lcom/androlua/LuaStringUtil$Buffer;->b:[C

    const/4 v0, 0x0

    iput v0, p0, Lcom/androlua/LuaStringUtil$Buffer;->c:I

    iput v0, p0, Lcom/androlua/LuaStringUtil$Buffer;->d:I

    iput-object p1, p0, Lcom/androlua/LuaStringUtil$Buffer;->e:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/LuaStringUtil$Buffer;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tojstring()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/LuaStringUtil$Buffer;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tostring()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/androlua/LuaStringUtil$Buffer;->c:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/androlua/LuaStringUtil$Buffer;->a(II)V

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/androlua/LuaStringUtil$Buffer;->b:[C

    iget v2, p0, Lcom/androlua/LuaStringUtil$Buffer;->d:I

    iget v3, p0, Lcom/androlua/LuaStringUtil$Buffer;->c:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaStringUtil$Buffer;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/androlua/LuaStringUtil$Buffer;->tostring()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
