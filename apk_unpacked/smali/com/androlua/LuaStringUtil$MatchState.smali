.class public Lcom/androlua/LuaStringUtil$MatchState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaStringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatchState"
.end annotation


# instance fields
.field a:[C

.field b:I

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field e:I

.field f:[I

.field g:[I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/androlua/LuaStringUtil$MatchState;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaStringUtil$MatchState;->a:[C

    iput-object p2, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/androlua/LuaStringUtil$MatchState;->e:I

    const/16 p1, 0x20

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/androlua/LuaStringUtil$MatchState;->f:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/androlua/LuaStringUtil$MatchState;->g:[I

    const/16 p1, 0xc8

    iput p1, p0, Lcom/androlua/LuaStringUtil$MatchState;->b:I

    return-void
.end method

.method private a(Lcom/androlua/LuaStringUtil$Buffer;Ljava/lang/String;II)V
    .locals 7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_1
    invoke-virtual {p1, v3}, Lcom/androlua/LuaStringUtil$Buffer;->append(C)Lcom/androlua/LuaStringUtil$Buffer;

    goto :goto_5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_4

    if-eq v3, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid use of \'%\' in replacement string: after \'%\' must be \'0\'-\'9\' or \'%\', but found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v2, v0, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "symbol \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, "\' with code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, " at pos "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    const-string v5, "end of string"

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/androlua/LuaStringUtil$MatchState;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/16 v4, 0x30

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/androlua/LuaStringUtil$MatchState;->c:Ljava/lang/String;

    invoke-virtual {v3, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, -0x31

    invoke-direct {p0, v3, p3, p4}, Lcom/androlua/LuaStringUtil$MatchState;->f(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {p1, v3}, Lcom/androlua/LuaStringUtil$Buffer;->append(Ljava/lang/String;)Lcom/androlua/LuaStringUtil$Buffer;

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private b()I
    .locals 3

    iget v0, p0, Lcom/androlua/LuaStringUtil$MatchState;->e:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/androlua/LuaStringUtil$MatchState;->g:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const-string v0, "invalid pattern capture"

    invoke-direct {p0, v0}, Lcom/androlua/LuaStringUtil$MatchState;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private b(I)I
    .locals 2

    add-int/lit8 p1, p1, -0x31

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/androlua/LuaStringUtil$MatchState;->e:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaStringUtil$MatchState;->g:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid capture index %"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/androlua/LuaStringUtil$MatchState;->a(Ljava/lang/String;)V

    :cond_1
    return p1
.end method

.method static d(II)Z
    .locals 5

    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v1, 0xff

    if-le p0, v1, :cond_0

    move v1, p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/androlua/LuaStringUtil;->a()[B

    move-result-object v1

    aget-byte v1, v1, p0

    :goto_0
    const/16 v2, 0x61

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_20

    const/16 v2, 0x6c

    if-eq v0, v2, :cond_1f

    const/16 v2, 0x70

    if-eq v0, v2, :cond_1e

    const/16 v2, 0x73

    if-eq v0, v2, :cond_1d

    const/16 v2, 0x75

    if-eq v0, v2, :cond_1c

    const/16 v2, 0x7a

    if-eq v0, v2, :cond_1b

    const/16 v2, 0x67

    if-eq v0, v2, :cond_1a

    const/16 v2, 0x68

    if-eq v0, v2, :cond_7

    const/16 v2, 0x77

    if-eq v0, v2, :cond_6

    const/16 v2, 0x78

    if-eq v0, v2, :cond_5

    packed-switch v0, :pswitch_data_0

    if-ne p1, p0, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    :pswitch_0
    invoke-static {}, Lcom/androlua/LuaStringUtil;->b()[I

    move-result-object p1

    invoke-static {p1, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    const/4 p1, -0x1

    if-le p0, p1, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3

    :pswitch_1
    and-int/lit8 p0, v1, 0x8

    if-eqz p0, :cond_4

    :cond_3
    :goto_1
    const/4 p0, 0x1

    goto/16 :goto_2

    :cond_4
    const/4 p0, 0x0

    goto/16 :goto_2

    :pswitch_2
    and-int/lit8 p0, v1, 0x40

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_5
    and-int/lit8 p0, v1, -0x80

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_6
    and-int/lit8 p0, v1, 0x9

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_7
    const/16 v1, 0x4e00

    if-lt p0, v1, :cond_8

    const v1, 0x9fa5

    if-le p0, v1, :cond_3

    :cond_8
    const v1, 0x9fa6

    if-lt p0, v1, :cond_9

    const v1, 0x9fef

    if-le p0, v1, :cond_3

    :cond_9
    const/16 v1, 0x3400

    if-lt p0, v1, :cond_a

    const/16 v1, 0x4db5

    if-le p0, v1, :cond_3

    :cond_a
    const/high16 v1, 0x20000

    if-lt p0, v1, :cond_b

    const v1, 0x2a6d6

    if-le p0, v1, :cond_3

    :cond_b
    const v1, 0x2a700

    if-lt p0, v1, :cond_c

    const v1, 0x2b734

    if-le p0, v1, :cond_3

    :cond_c
    const v1, 0x2b740

    if-lt p0, v1, :cond_d

    const v1, 0x2b81d

    if-le p0, v1, :cond_3

    :cond_d
    const v1, 0x2b820

    if-lt p0, v1, :cond_e

    const v1, 0x2cea1

    if-le p0, v1, :cond_3

    :cond_e
    const v1, 0x2ceb0

    if-lt p0, v1, :cond_f

    const v1, 0x2ebe0

    if-le p0, v1, :cond_3

    :cond_f
    const/high16 v1, 0x30000

    if-lt p0, v1, :cond_10

    const v1, 0x3134a

    if-le p0, v1, :cond_3

    :cond_10
    const/16 v1, 0x2f00

    if-lt p0, v1, :cond_11

    const/16 v1, 0x2fd5

    if-le p0, v1, :cond_3

    :cond_11
    const/16 v1, 0x2e80

    if-lt p0, v1, :cond_12

    const/16 v1, 0x2ef3

    if-le p0, v1, :cond_3

    :cond_12
    const v1, 0xf900

    if-lt p0, v1, :cond_13

    const v1, 0xfad9

    if-le p0, v1, :cond_3

    :cond_13
    const v1, 0x2f800

    if-lt p0, v1, :cond_14

    const v1, 0x2fa1d

    if-le p0, v1, :cond_3

    :cond_14
    const v1, 0xe400

    if-lt p0, v1, :cond_15

    const v1, 0xe5e8

    if-le p0, v1, :cond_3

    :cond_15
    const/16 v1, 0x31c0

    if-lt p0, v1, :cond_16

    const/16 v1, 0x31e3

    if-le p0, v1, :cond_3

    :cond_16
    const/16 v1, 0x2ff0

    if-lt p0, v1, :cond_17

    const/16 v1, 0x2ffb

    if-le p0, v1, :cond_3

    :cond_17
    const/16 v1, 0x3105

    if-lt p0, v1, :cond_18

    const/16 v1, 0x312f

    if-le p0, v1, :cond_3

    :cond_18
    const/16 v1, 0x31a0

    if-lt p0, v1, :cond_19

    const/16 v1, 0x31ba

    if-le p0, v1, :cond_3

    :cond_19
    const/16 v1, 0x3007

    if-ne p0, v1, :cond_4

    goto/16 :goto_1

    :cond_1a
    and-int/lit8 p0, v1, 0x19

    if-eqz p0, :cond_4

    goto/16 :goto_1

    :cond_1b
    if-nez p0, :cond_4

    goto/16 :goto_1

    :cond_1c
    and-int/lit8 p0, v1, 0x4

    if-eqz p0, :cond_4

    goto/16 :goto_1

    :cond_1d
    and-int/lit8 p0, v1, 0x20

    if-eqz p0, :cond_4

    goto/16 :goto_1

    :cond_1e
    and-int/lit8 p0, v1, 0x10

    if-eqz p0, :cond_4

    goto/16 :goto_1

    :cond_1f
    and-int/lit8 p0, v1, 0x2

    if-eqz p0, :cond_4

    goto/16 :goto_1

    :cond_20
    and-int/lit8 p0, v1, 0x1

    if-eqz p0, :cond_4

    goto/16 :goto_1

    :goto_2
    if-ne v0, p1, :cond_21

    goto :goto_3

    :cond_21
    if-nez p0, :cond_22

    const/4 p0, 0x1

    goto :goto_3

    :cond_22
    const/4 p0, 0x0

    :goto_3
    return p0

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static equals([CI[CII)Z
    .locals 3

    array-length v0, p0

    add-int v1, p1, p4

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    array-length v0, p2

    add-int v1, p3, p4

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_2

    add-int/lit8 v0, p1, 0x1

    aget-char p1, p0, p1

    add-int/lit8 v1, p3, 0x1

    aget-char p3, p2, p3

    if-eq p1, p3, :cond_1

    return v2

    :cond_1
    move p1, v0

    move p3, v1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v2
.end method

.method private f(III)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/androlua/LuaStringUtil$MatchState;->e:I

    if-lt p1, v0, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/androlua/LuaStringUtil$MatchState;->c:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid capture index %"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p0, Lcom/androlua/LuaStringUtil$MatchState;->g:[I

    aget p2, p2, p1

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    const-string p1, "unfinished capture"

    return-object p1

    :cond_2
    const/4 p3, -0x2

    if-ne p2, p3, :cond_3

    iget-object p2, p0, Lcom/androlua/LuaStringUtil$MatchState;->f:[I

    aget p1, p2, p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p3, p0, Lcom/androlua/LuaStringUtil$MatchState;->f:[I

    aget p1, p3, p1

    iget-object p3, p0, Lcom/androlua/LuaStringUtil$MatchState;->c:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {p3, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method a(I)I
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x25

    if-eq p1, v0, :cond_4

    const/16 v2, 0x5b

    if-eq p1, v2, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eq v1, p1, :cond_1

    iget-object p1, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v2, 0x5e

    if-ne p1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    iget-object p1, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne v1, p1, :cond_2

    const-string p1, "malformed pattern (missing \']\')"

    invoke-direct {p0, p1}, Lcom/androlua/LuaStringUtil$MatchState;->a(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v2, p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    move v1, v2

    iget-object p1, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eq v1, p1, :cond_1

    iget-object p1, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v2, 0x5d

    if-ne p1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_4
    iget-object p1, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne v1, p1, :cond_5

    const-string p1, "malformed pattern (ends with \'%\')"

    invoke-direct {p0, p1}, Lcom/androlua/LuaStringUtil$MatchState;->a(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method a(II)I
    .locals 3

    invoke-direct {p0}, Lcom/androlua/LuaStringUtil$MatchState;->b()I

    move-result v0

    iget-object v1, p0, Lcom/androlua/LuaStringUtil$MatchState;->g:[I

    iget-object v2, p0, Lcom/androlua/LuaStringUtil$MatchState;->f:[I

    aget v2, v2, v0

    sub-int v2, p1, v2

    aput v2, v1, v0

    invoke-virtual {p0, p1, p2}, Lcom/androlua/LuaStringUtil$MatchState;->b(II)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    iget-object v1, p0, Lcom/androlua/LuaStringUtil$MatchState;->g:[I

    aput p2, v1, v0

    :cond_0
    return p1
.end method

.method a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/androlua/LuaStringUtil$MatchState;->e:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/androlua/LuaStringUtil$MatchState;->b:I

    return-void
.end method

.method a(III)Z
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x5e

    if-ne v0, v3, :cond_0

    const/4 p2, 0x0

    move p2, v1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    add-int/2addr p2, v2

    if-ge p2, p3, :cond_5

    iget-object v1, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x25

    if-ne v1, v3, :cond_2

    add-int/lit8 p2, p2, 0x1

    iget-object v1, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {p1, v1}, Lcom/androlua/LuaStringUtil$MatchState;->d(II)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_2
    iget-object v1, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_4

    add-int/lit8 v1, p2, 0x2

    if-ge v1, p3, :cond_4

    iget-object p2, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-gt p2, p1, :cond_3

    iget-object p2, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-gt p1, p2, :cond_3

    return v0

    :cond_3
    move p2, v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_1

    return v0

    :cond_5
    xor-int/lit8 p1, v0, 0x1

    return p1
.end method

.method a(ZII)[Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/androlua/LuaStringUtil$MatchState;->e:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/androlua/LuaStringUtil$MatchState;->e:I

    :goto_0
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    if-eq p1, v1, :cond_2

    new-array v1, p1, [Ljava/lang/String;

    :goto_1
    if-ge v0, p1, :cond_1

    invoke-direct {p0, v0, p2, p3}, Lcom/androlua/LuaStringUtil$MatchState;->f(III)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    new-array p1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, p2, p3}, Lcom/androlua/LuaStringUtil$MatchState;->f(III)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public add_value(Lcom/androlua/LuaStringUtil$Buffer;IILjava/lang/Object;)V
    .locals 1

    instance-of v0, p4, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p4, Ljava/util/Map;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p3}, Lcom/androlua/LuaStringUtil$MatchState;->f(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    goto :goto_0

    :cond_0
    instance-of v0, p4, Lcom/androlua/LuaStringUtil$MatchFunc;

    if-eqz v0, :cond_3

    check-cast p4, Lcom/androlua/LuaStringUtil$MatchFunc;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, p3}, Lcom/androlua/LuaStringUtil$MatchState;->a(ZII)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/androlua/LuaStringUtil$MatchFunc;->invoke([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :goto_0
    invoke-direct {p0, p4}, Lcom/androlua/LuaStringUtil$MatchState;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p4, p0, Lcom/androlua/LuaStringUtil$MatchState;->c:Ljava/lang/String;

    invoke-virtual {p4, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :cond_1
    instance-of p2, p4, Ljava/lang/String;

    if-nez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid replacement value (a "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/androlua/LuaStringUtil$MatchState;->a(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/androlua/LuaStringUtil$Buffer;->append(Ljava/lang/String;)Lcom/androlua/LuaStringUtil$Buffer;

    return-void

    :cond_3
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1, p4, p2, p3}, Lcom/androlua/LuaStringUtil$MatchState;->a(Lcom/androlua/LuaStringUtil$Buffer;Ljava/lang/String;II)V

    return-void
.end method

.method b(II)I
    .locals 6

    iget v0, p0, Lcom/androlua/LuaStringUtil$MatchState;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/androlua/LuaStringUtil$MatchState;->b:I

    if-nez v0, :cond_0

    const-string v0, "pattern too complex"

    invoke-direct {p0, v0}, Lcom/androlua/LuaStringUtil$MatchState;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, v1, :cond_1

    :goto_1
    iget p2, p0, Lcom/androlua/LuaStringUtil$MatchState;->b:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/androlua/LuaStringUtil$MatchState;->b:I

    return p1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x24

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v2, :cond_10

    const/16 v2, 0x25

    if-eq v1, v2, :cond_5

    const/16 v2, 0x28

    const/16 v5, 0x29

    if-eq v1, v2, :cond_3

    if-eq v1, v5, :cond_2

    goto/16 :goto_5

    :cond_2
    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/androlua/LuaStringUtil$MatchState;->a(II)I

    move-result p1

    goto :goto_1

    :cond_3
    add-int/2addr p2, v0

    iget-object v1, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_4

    iget-object v1, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_4

    add-int/2addr p2, v0

    const/4 v1, -0x2

    invoke-virtual {p0, p1, p2, v1}, Lcom/androlua/LuaStringUtil$MatchState;->e(III)I

    move-result p1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1, p2, v4}, Lcom/androlua/LuaStringUtil$MatchState;->e(III)I

    move-result p1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, p2, 0x1

    iget-object v2, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_6

    const-string v2, "malformed pattern (ends with \'%\')"

    invoke-direct {p0, v2}, Lcom/androlua/LuaStringUtil$MatchState;->a(Ljava/lang/String;)V

    :cond_6
    iget-object v2, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x62

    if-eq v2, v5, :cond_e

    const/16 v5, 0x66

    if-eq v2, v5, :cond_9

    iget-object v2, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-char v2, v1

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p0, p1, v1}, Lcom/androlua/LuaStringUtil$MatchState;->c(II)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v4, :cond_8

    :cond_7
    :goto_2
    iget p1, p0, Lcom/androlua/LuaStringUtil$MatchState;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/androlua/LuaStringUtil$MatchState;->b:I

    return v4

    :cond_8
    add-int/lit8 p2, p2, 0x2

    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/androlua/LuaStringUtil$MatchState;->b(II)I

    move-result p1

    goto :goto_1

    :cond_9
    add-int/lit8 p2, p2, 0x2

    iget-object v1, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq p2, v1, :cond_a

    iget-object v1, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_b

    :cond_a
    const-string v1, "missing \'[\' after \'%f\' in pattern"

    invoke-direct {p0, v1}, Lcom/androlua/LuaStringUtil$MatchState;->a(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0, p2}, Lcom/androlua/LuaStringUtil$MatchState;->a(I)I

    move-result v1

    if-nez p1, :cond_c

    const/4 v2, 0x0

    goto :goto_3

    :cond_c
    iget-object v2, p0, Lcom/androlua/LuaStringUtil$MatchState;->c:Ljava/lang/String;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_3
    iget-object v5, p0, Lcom/androlua/LuaStringUtil$MatchState;->c:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne p1, v5, :cond_d

    goto :goto_4

    :cond_d
    iget-object v3, p0, Lcom/androlua/LuaStringUtil$MatchState;->c:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_4
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v2, p2, v5}, Lcom/androlua/LuaStringUtil$MatchState;->a(III)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, v3, p2, v5}, Lcom/androlua/LuaStringUtil$MatchState;->a(III)Z

    move-result p2

    if-nez p2, :cond_16

    goto :goto_2

    :cond_e
    add-int/lit8 v1, p2, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/androlua/LuaStringUtil$MatchState;->e(II)I

    move-result p1

    if-ne p1, v4, :cond_f

    goto :goto_2

    :cond_f
    add-int/lit8 p2, p2, 0x4

    goto/16 :goto_0

    :cond_10
    add-int/lit8 v1, p2, 0x1

    iget-object v2, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_12

    iget-object p2, p0, Lcom/androlua/LuaStringUtil$MatchState;->c:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p1, p2, :cond_11

    goto/16 :goto_1

    :cond_11
    const/4 p1, -0x1

    goto/16 :goto_1

    :cond_12
    :goto_5
    invoke-virtual {p0, p2}, Lcom/androlua/LuaStringUtil$MatchState;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/androlua/LuaStringUtil$MatchState;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_13

    iget-object v2, p0, Lcom/androlua/LuaStringUtil$MatchState;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2, p2, v1}, Lcom/androlua/LuaStringUtil$MatchState;->d(III)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_6

    :cond_13
    const/4 v2, 0x0

    :goto_6
    iget-object v5, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_14

    iget-object v3, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :cond_14
    const/16 v5, 0x2a

    if-eq v3, v5, :cond_1b

    const/16 v5, 0x2b

    if-eq v3, v5, :cond_1a

    const/16 v5, 0x2d

    if-eq v3, v5, :cond_19

    const/16 p2, 0x3f

    if-eq v3, p2, :cond_17

    if-nez v2, :cond_15

    goto/16 :goto_2

    :cond_15
    add-int/lit8 p1, p1, 0x1

    :cond_16
    move p2, v1

    goto/16 :goto_0

    :cond_17
    if-eqz v2, :cond_18

    add-int/lit8 p2, p1, 0x1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, p2, v2}, Lcom/androlua/LuaStringUtil$MatchState;->b(II)I

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq p2, v4, :cond_18

    iget p1, p0, Lcom/androlua/LuaStringUtil$MatchState;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/androlua/LuaStringUtil$MatchState;->b:I

    return p2

    :cond_18
    add-int/lit8 p2, v1, 0x1

    goto/16 :goto_0

    :cond_19
    :try_start_3
    invoke-virtual {p0, p1, p2, v1}, Lcom/androlua/LuaStringUtil$MatchState;->c(III)I

    move-result p1

    goto/16 :goto_1

    :cond_1a
    if-eqz v2, :cond_7

    add-int/2addr p1, v0

    invoke-virtual {p0, p1, p2, v1}, Lcom/androlua/LuaStringUtil$MatchState;->b(III)I

    move-result v4

    goto/16 :goto_2

    :cond_1b
    invoke-virtual {p0, p1, p2, v1}, Lcom/androlua/LuaStringUtil$MatchState;->b(III)I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    iget p2, p0, Lcom/androlua/LuaStringUtil$MatchState;->b:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/androlua/LuaStringUtil$MatchState;->b:I

    throw p1

    return-void
.end method

.method b(III)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    add-int v1, p1, v0

    iget-object v2, p0, Lcom/androlua/LuaStringUtil$MatchState;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/androlua/LuaStringUtil$MatchState;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/androlua/LuaStringUtil$MatchState;->d(III)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/4 p2, -0x1

    if-ltz v0, :cond_2

    add-int v1, p1, v0

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/androlua/LuaStringUtil$MatchState;->b(II)I

    move-result v1

    if-eq v1, p2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return p2
.end method

.method c(II)I
    .locals 3

    invoke-direct {p0, p2}, Lcom/androlua/LuaStringUtil$MatchState;->b(I)I

    move-result p2

    iget-object v0, p0, Lcom/androlua/LuaStringUtil$MatchState;->g:[I

    aget v0, v0, p2

    iget-object v1, p0, Lcom/androlua/LuaStringUtil$MatchState;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/androlua/LuaStringUtil$MatchState;->a:[C

    iget-object v2, p0, Lcom/androlua/LuaStringUtil$MatchState;->f:[I

    aget p2, v2, p2

    invoke-static {v1, p2, v1, p1, v0}, Lcom/androlua/LuaStringUtil$MatchState;->equals([CI[CII)Z

    move-result p2

    if-eqz p2, :cond_0

    add-int/2addr p1, v0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method c(III)I
    .locals 2

    :goto_0
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaStringUtil$MatchState;->b(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaStringUtil$MatchState;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaStringUtil$MatchState;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/androlua/LuaStringUtil$MatchState;->d(III)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method d(III)Z
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x25

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_1

    iget-object p3, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    sub-int/2addr p3, v2

    invoke-virtual {p0, p1, p2, p3}, Lcom/androlua/LuaStringUtil$MatchState;->a(III)Z

    move-result p1

    return p1

    :cond_2
    return v2

    :cond_3
    iget-object p3, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    add-int/2addr p2, v2

    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p1, p2}, Lcom/androlua/LuaStringUtil$MatchState;->d(II)Z

    move-result p1

    return p1
.end method

.method e(II)I
    .locals 6

    iget-object v0, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p2, v0, :cond_0

    add-int/lit8 v1, p2, 0x1

    if-ne v1, v0, :cond_1

    :cond_0
    const-string v0, "malformed pattern (missing arguments to \'%b\')"

    invoke-direct {p0, v0}, Lcom/androlua/LuaStringUtil$MatchState;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/androlua/LuaStringUtil$MatchState;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    if-lt p1, v0, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/androlua/LuaStringUtil$MatchState;->c:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_3

    return v1

    :cond_3
    iget-object v3, p0, Lcom/androlua/LuaStringUtil$MatchState;->d:Ljava/lang/String;

    const/4 v4, 0x1

    add-int/2addr p2, v4

    invoke-virtual {v3, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/4 v3, 0x1

    :cond_4
    :goto_0
    add-int/2addr p1, v4

    if-ge p1, v0, :cond_6

    iget-object v5, p0, Lcom/androlua/LuaStringUtil$MatchState;->c:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p2, :cond_5

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_4

    add-int/2addr p1, v4

    return p1

    :cond_5
    iget-object v5, p0, Lcom/androlua/LuaStringUtil$MatchState;->c:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v2, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return v1
.end method

.method e(III)I
    .locals 2

    iget v0, p0, Lcom/androlua/LuaStringUtil$MatchState;->e:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    const-string v1, "too many captures"

    invoke-direct {p0, v1}, Lcom/androlua/LuaStringUtil$MatchState;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/androlua/LuaStringUtil$MatchState;->f:[I

    aput p1, v1, v0

    iget-object v1, p0, Lcom/androlua/LuaStringUtil$MatchState;->g:[I

    aput p3, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/androlua/LuaStringUtil$MatchState;->e:I

    invoke-virtual {p0, p1, p2}, Lcom/androlua/LuaStringUtil$MatchState;->b(II)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    iget p2, p0, Lcom/androlua/LuaStringUtil$MatchState;->e:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/androlua/LuaStringUtil$MatchState;->e:I

    :cond_1
    return p1
.end method
