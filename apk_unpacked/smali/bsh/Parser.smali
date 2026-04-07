.class public Lbsh/Parser;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lbsh/ParserTreeConstants;
.implements Lbsh/ParserConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/Parser$LookaheadSuccess;
    }
.end annotation


# instance fields
.field protected a:Lbsh/JJTParserState;

.field b:Z

.field c:Lbsh/JavaCharStream;

.field private d:I

.field private e:Lbsh/Token;

.field private f:Lbsh/Token;

.field private g:I

.field private h:Z

.field private final i:Lbsh/Parser$LookaheadSuccess;

.field public jj_nt:Lbsh/Token;

.field public lookingAhead:Z

.field public token:Lbsh/Token;

.field public token_source:Lbsh/ParserTokenManager;


# direct methods
.method public constructor <init>(Lbsh/ParserTokenManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbsh/JJTParserState;

    invoke-direct {v0}, Lbsh/JJTParserState;-><init>()V

    iput-object v0, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsh/Parser;->b:Z

    iput-boolean v0, p0, Lbsh/Parser;->lookingAhead:Z

    new-instance v0, Lbsh/Parser$LookaheadSuccess;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbsh/Parser$LookaheadSuccess;-><init>(Lbsh/Parser$1;)V

    iput-object v0, p0, Lbsh/Parser;->i:Lbsh/Parser$LookaheadSuccess;

    iput-object p1, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    new-instance p1, Lbsh/Token;

    invoke-direct {p1}, Lbsh/Token;-><init>()V

    iput-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    const/4 p1, -0x1

    iput p1, p0, Lbsh/Parser;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbsh/JJTParserState;

    invoke-direct {v0}, Lbsh/JJTParserState;-><init>()V

    iput-object v0, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsh/Parser;->b:Z

    iput-boolean v0, p0, Lbsh/Parser;->lookingAhead:Z

    new-instance v0, Lbsh/Parser$LookaheadSuccess;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbsh/Parser$LookaheadSuccess;-><init>(Lbsh/Parser$1;)V

    iput-object v0, p0, Lbsh/Parser;->i:Lbsh/Parser$LookaheadSuccess;

    new-instance v0, Lbsh/JavaCharStream;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, v1}, Lbsh/JavaCharStream;-><init>(Ljava/io/InputStream;II)V

    iput-object v0, p0, Lbsh/Parser;->c:Lbsh/JavaCharStream;

    new-instance p1, Lbsh/ParserTokenManager;

    iget-object v0, p0, Lbsh/Parser;->c:Lbsh/JavaCharStream;

    invoke-direct {p1, v0}, Lbsh/ParserTokenManager;-><init>(Lbsh/JavaCharStream;)V

    iput-object p1, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    new-instance p1, Lbsh/Token;

    invoke-direct {p1}, Lbsh/Token;-><init>()V

    iput-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    const/4 p1, -0x1

    iput p1, p0, Lbsh/Parser;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbsh/JJTParserState;

    invoke-direct {v0}, Lbsh/JJTParserState;-><init>()V

    iput-object v0, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsh/Parser;->b:Z

    iput-boolean v0, p0, Lbsh/Parser;->lookingAhead:Z

    new-instance v0, Lbsh/Parser$LookaheadSuccess;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbsh/Parser$LookaheadSuccess;-><init>(Lbsh/Parser$1;)V

    iput-object v0, p0, Lbsh/Parser;->i:Lbsh/Parser$LookaheadSuccess;

    new-instance v0, Lbsh/JavaCharStream;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, v1}, Lbsh/JavaCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v0, p0, Lbsh/Parser;->c:Lbsh/JavaCharStream;

    new-instance p1, Lbsh/ParserTokenManager;

    iget-object v0, p0, Lbsh/Parser;->c:Lbsh/JavaCharStream;

    invoke-direct {p1, v0}, Lbsh/ParserTokenManager;-><init>(Lbsh/JavaCharStream;)V

    iput-object p1, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    new-instance p1, Lbsh/Token;

    invoke-direct {p1}, Lbsh/Token;-><init>()V

    iput-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    const/4 p1, -0x1

    iput p1, p0, Lbsh/Parser;->d:I

    return-void
.end method

.method private final A()Z
    .locals 1

    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final A(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->id()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final Aa()Z
    .locals 2

    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->za()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final Ab()Z
    .locals 3

    const/16 v0, 0x4a

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Yc()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v0, 0x4b

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final Ac()Z
    .locals 3

    invoke-direct {p0}, Lbsh/Parser;->Db()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lbsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->va()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    :cond_3
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->wa()Z

    move-result v2

    if-eqz v2, :cond_4

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    :cond_4
    invoke-direct {p0}, Lbsh/Parser;->Ab()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private final B()Z
    .locals 1

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final B(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jd()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final Ba()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->Ea()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Xa()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private final Bb()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->fc()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->gc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Bc()Z
    .locals 3

    invoke-direct {p0}, Lbsh/Parser;->Db()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->B()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->Fb()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->xa()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    :cond_3
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->ya()Z

    move-result v2

    if-eqz v2, :cond_4

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private final C()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->Eb()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final C(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->kd()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final Ca()Z
    .locals 2

    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->ub()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final Cb()Z
    .locals 2

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->Hb()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final Cc()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->Db()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->ub()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->za()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Aa()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private final D()Z
    .locals 2

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final D(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->ld()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final Da()Z
    .locals 2

    const/16 v0, 0x51

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->tb()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final Db()Z
    .locals 2

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->hc()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private final Dc()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->ed()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final E()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->N()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->O()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->P()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Q()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->R()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->S()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final E(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->md()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final Ea()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->Oa()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->fb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private final Eb()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->ic()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Ec()Z
    .locals 2

    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->rb()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final F(I)Lbsh/Token;
    .locals 3

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v1, v0, Lbsh/Token;->next:Lbsh/Token;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    invoke-virtual {v1}, Lbsh/ParserTokenManager;->getNextToken()Lbsh/Token;

    move-result-object v1

    iput-object v1, v0, Lbsh/Token;->next:Lbsh/Token;

    :goto_0
    iput-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    const/4 v1, -0x1

    iput v1, p0, Lbsh/Parser;->d:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget v2, v1, Lbsh/Token;->kind:I

    if-ne v2, p1, :cond_1

    return-object v1

    :cond_1
    iput-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->generateParseException()Lbsh/ParseException;

    move-result-object p1

    throw p1
.end method

.method private final F()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Sc()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Fa()Z
    .locals 3

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x54

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x55

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x52

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x53

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x5b

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x5c

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x5d

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v0, 0x5e

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->ta()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final Fb()Z
    .locals 3

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->kc()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    :cond_1
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final Fc()Z
    .locals 1

    const/16 v0, 0x44

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final G()Z
    .locals 2

    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->Bb()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final G(I)Z
    .locals 3

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget v1, p0, Lbsh/Parser;->g:I

    sub-int/2addr v1, v2

    iput v1, p0, Lbsh/Parser;->g:I

    iget-object v1, v0, Lbsh/Token;->next:Lbsh/Token;

    if-nez v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    invoke-virtual {v1}, Lbsh/ParserTokenManager;->getNextToken()Lbsh/Token;

    move-result-object v1

    iput-object v1, v0, Lbsh/Token;->next:Lbsh/Token;

    :cond_0
    iput-object v1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->f:Lbsh/Token;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lbsh/Token;->next:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    :goto_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    iget v1, v0, Lbsh/Token;->kind:I

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    iget p1, p0, Lbsh/Parser;->g:I

    if-nez p1, :cond_4

    iget-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    if-eq v0, p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lbsh/Parser;->i:Lbsh/Parser$LookaheadSuccess;

    throw p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method private final Ga()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->Qa()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->dd()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private final Gb()Z
    .locals 2

    const/16 v0, 0x36

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->lc()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final Gc()Z
    .locals 3

    const/16 v0, 0x4a

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->ma()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    :cond_1
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v2, 0x4f

    invoke-direct {p0, v2}, Lbsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    :cond_2
    const/16 v0, 0x4b

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private final H()Z
    .locals 2

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->V()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final Ha()Z
    .locals 2

    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->Hb()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final Hb()Z
    .locals 4

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Xc()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->mc()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->nc()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->oc()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->pc()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->qc()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->rc()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lbsh/Parser;->lookingAhead:Z

    invoke-virtual {p0}, Lbsh/Parser;->a()Z

    move-result v3

    iput-boolean v3, p0, Lbsh/Parser;->h:Z

    iput-boolean v2, p0, Lbsh/Parser;->lookingAhead:Z

    iget-boolean v3, p0, Lbsh/Parser;->h:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->sc()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->tc()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->uc()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->vc()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->wc()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->xc()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->yc()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->zc()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method private final Hc()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final I()Z
    .locals 2

    const/16 v0, 0x4a

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->Bb()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x4b

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final Ia()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->Ra()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Ib()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->Ac()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Ic()Z
    .locals 2

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->Bb()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final J()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->Bb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->W()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private final Ja()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->Bb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Jb()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->Bc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Jc()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->qb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final K()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->ia()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private final Ka()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->Sa()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Kb()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->Bc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Kc()Z
    .locals 2

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->yb()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final L()Z
    .locals 1

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final La()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->Bb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Lb()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->Cc()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final Lc()Z
    .locals 2

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->rb()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final M()Z
    .locals 2

    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->ub()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-direct {p0}, Lbsh/Parser;->Bb()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-direct {p0}, Lbsh/Parser;->Hb()Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method private final Ma()Z
    .locals 2

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-direct {p0}, Lbsh/Parser;->Ab()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private final Mb()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->Dc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Mc()Z
    .locals 3

    invoke-direct {p0}, Lbsh/Parser;->vb()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lbsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final N()Z
    .locals 1

    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Na()Z
    .locals 2

    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->Ab()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final Nb()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->Ec()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Nc()Z
    .locals 2

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->yb()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final O()Z
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Oa()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Ta()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Ua()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Va()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Wa()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Ob()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->Fc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Oc()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->zb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final P()Z
    .locals 1

    const/16 v0, 0x42

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Pa()Z
    .locals 3

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x70

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x71

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x72

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x73

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x74

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v0, 0x75

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->Ba()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final Pb()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->Gc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Pc()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->ub()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final Q()Z
    .locals 1

    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Qa()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Ya()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Za()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Qb()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->Bb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Qc()Z
    .locals 2

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final R()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Ra()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->_a()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->ab()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Rb()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->yb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Rc()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->Ab()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final S()Z
    .locals 1

    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Sa()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->bb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Sb()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->rb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Sc()Z
    .locals 2

    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->yb()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->Z()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final T()Z
    .locals 1

    const/16 v0, 0x39

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Ta()Z
    .locals 3

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x66

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v0, 0x67

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->Oa()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final Tb()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Hc()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Ic()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Tc()Z
    .locals 2

    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->Bb()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final U()Z
    .locals 3

    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->rb()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->aa()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->ba()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final Ua()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->cb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Ub()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Uc()Z
    .locals 2

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final V()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->ec()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Va()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->db()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Vb()Z
    .locals 2

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->rb()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private final Vc()Z
    .locals 2

    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final W()Z
    .locals 2

    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->Bb()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final Wa()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->eb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Wb()Z
    .locals 4

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->rb()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v3, 0x57

    invoke-direct {p0, v3}, Lbsh/Parser;->G(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-object v1, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v3, 0x56

    invoke-direct {p0, v3}, Lbsh/Parser;->G(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-object v1, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object v1, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object v1, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object v1, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private final Wc()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->Tc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Tc()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    :cond_1
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Vc()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private final X()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->ca()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->la()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private final Xa()Z
    .locals 3

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x66

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v0, 0x67

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->Ea()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final Xb()Z
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Xc()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->Cb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Y()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->da()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->ea()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Ya()Z
    .locals 2

    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->Bb()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final Yb()Z
    .locals 1

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Yc()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->qb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Z()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Wc()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->ga()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Za()Z
    .locals 2

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final Zb()Z
    .locals 1

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final Zc()Z
    .locals 3

    invoke-direct {p0}, Lbsh/Parser;->Db()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lbsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final _a()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->Cc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final _b()Z
    .locals 1

    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final _c()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->Db()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->Eb()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private final a(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->Jc()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final aa()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final ab()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->bb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final ac()Z
    .locals 1

    const/16 v0, 0x24

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final ad()Z
    .locals 3

    invoke-direct {p0}, Lbsh/Parser;->Db()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->Fb()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Gb()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    :cond_3
    const/16 v0, 0x4a

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private final b()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final b(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->Kc()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final ba()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->ec()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Rc()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final bb()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->gb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private final bc()Z
    .locals 1

    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final bd()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->Db()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->ub()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final c()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->zb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final c(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->Lc()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final ca()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->ha()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->oa()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private final cb()Z
    .locals 2

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->vb()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final cc()Z
    .locals 1

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final cd()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->Hb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final d()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->ub()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final d(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->Mc()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final da()Z
    .locals 1

    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final db()Z
    .locals 2

    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->vb()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final dc()Z
    .locals 1

    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final dd()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->qb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final e()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->rb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final e(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->Nc()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final ea()Z
    .locals 1

    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final eb()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->hb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->ib()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final ec()Z
    .locals 3

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    :cond_1
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final ed()Z
    .locals 3

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x30

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    :cond_0
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->rb()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->sb()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    :cond_3
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private final f()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Qc()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final f(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->Oc()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final fa()Z
    .locals 2

    const/16 v0, 0x58

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->Bb()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-direct {p0}, Lbsh/Parser;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private final fb()Z
    .locals 3

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x68

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x69

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v0, 0x6f

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->Oa()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final fc()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final fd()Z
    .locals 2

    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-direct {p0}, Lbsh/Parser;->Bb()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    invoke-direct {p0}, Lbsh/Parser;->Hb()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private final g()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final g(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->Pc()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final ga()Z
    .locals 3

    invoke-direct {p0}, Lbsh/Parser;->ja()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->ja()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Gc()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final gb()Z
    .locals 2

    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final gc()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final gd()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->Db()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->ub()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final h()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final h(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->Qc()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final ha()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->ka()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->qa()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private final hb()Z
    .locals 3

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x57

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v0, 0x56

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->Oa()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final hc()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x2b

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x2c

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x2d

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x33

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x27

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x34

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x3a

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x30

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v0, 0x31

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final hd()Z
    .locals 2

    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->tb()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final i()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->vb()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->wb()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->Bb()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final i(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->Rc()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final ia()Z
    .locals 3

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x60

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v0, 0x61

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->X()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final ib()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->kb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final ic()Z
    .locals 1

    const/16 v0, 0x39

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final id()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->ub()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final j()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->fa()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final j(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->Sc()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final ja()Z
    .locals 2

    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jb()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->lb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jc()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->ub()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jd()Z
    .locals 2

    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final k()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->id()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final k(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->Tc()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final ka()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->na()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->sa()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private final kb()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->mb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->nb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final kc()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private final kd()Z
    .locals 2

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final l()Z
    .locals 2

    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final l(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->Uc()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final la()Z
    .locals 3

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x62

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v0, 0x63

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->ca()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final lb()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->ob()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->pb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final lc()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->rb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private final ld()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->vb()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->wb()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final m()Z
    .locals 2

    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->rb()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final m(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->Vc()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final ma()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->tb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->hd()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/4 v0, 0x0

    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const-string v2, "-p"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_1

    return-void

    :cond_1
    new-instance v3, Ljava/io/FileReader;

    aget-object v4, p0, v0

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v4, Lbsh/Parser;

    invoke-direct {v4, v3}, Lbsh/Parser;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v4, v2}, Lbsh/Parser;->setRetainComments(Z)V

    :cond_2
    :goto_1
    invoke-virtual {v4}, Lbsh/Parser;->Line()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Lbsh/Parser;->popNode()Lbsh/SimpleNode;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private final mb()Z
    .locals 2

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->ub()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-direct {p0}, Lbsh/Parser;->Oa()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private final mc()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->Ab()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final md()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->xb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final n()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->Bb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final n(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->Wc()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final na()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->pa()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->ua()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private final nb()Z
    .locals 2

    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->ub()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-direct {p0}, Lbsh/Parser;->eb()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private final nc()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final nd()I
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v1, v0, Lbsh/Token;->next:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_nt:Lbsh/Token;

    if-nez v1, :cond_0

    iget-object v1, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    invoke-virtual {v1}, Lbsh/ParserTokenManager;->getNextToken()Lbsh/Token;

    move-result-object v1

    iput-object v1, v0, Lbsh/Token;->next:Lbsh/Token;

    iget v0, v1, Lbsh/Token;->kind:I

    :goto_0
    iput v0, p0, Lbsh/Parser;->d:I

    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_nt:Lbsh/Token;

    iget v0, v0, Lbsh/Token;->kind:I

    goto :goto_0
.end method

.method private final o()Z
    .locals 3

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->Bb()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/16 v0, 0x4a

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Ga()Z

    move-result v2

    if-eqz v2, :cond_4

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v0, 0x4b

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private final o(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->Xc()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final oa()Z
    .locals 3

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x6c

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v0, 0x6d

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->ha()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final ob()Z
    .locals 3

    invoke-direct {p0}, Lbsh/Parser;->vb()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lbsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final oc()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final p()Z
    .locals 2

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->Bb()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-direct {p0}, Lbsh/Parser;->Hb()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Ha()Z

    move-result v1

    if-eqz v1, :cond_5

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private final p(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->Yc()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final pa()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->ra()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Ca()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final pb()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->vb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final pc()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final q()Z
    .locals 2

    const/16 v0, 0x3b

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->Bb()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-direct {p0}, Lbsh/Parser;->Hb()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private final q(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->Zc()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final qa()Z
    .locals 2

    const/16 v0, 0x6e

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->ka()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final qb()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Ib()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Jb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Kb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Lb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->cd()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Mb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Nb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Ob()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final qc()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final r()Z
    .locals 2

    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->Hb()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x3b

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-direct {p0}, Lbsh/Parser;->Bb()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private final r(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->_c()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final ra()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->ta()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Fa()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private final rb()Z
    .locals 2

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->kd()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private final rc()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final s()Z
    .locals 4

    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Ia()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    :cond_2
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Ja()Z

    move-result v3

    if-eqz v3, :cond_4

    iput-object v2, p0, Lbsh/Parser;->e:Lbsh/Token;

    :cond_4
    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Ka()Z

    move-result v2

    if-eqz v2, :cond_6

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    :cond_6
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    invoke-direct {p0}, Lbsh/Parser;->Hb()Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private final s(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->ad()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final sa()Z
    .locals 3

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x6a

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v0, 0x6b

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->na()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final sb()Z
    .locals 2

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final sc()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final t()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->fd()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final t(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->bd()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final ta()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->Ba()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Pa()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private final tb()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Pb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Qb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final tc()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final u()Z
    .locals 3

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v2, 0x45

    invoke-direct {p0, v2}, Lbsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    :cond_1
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final u(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->cd()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final ua()Z
    .locals 3

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x5a

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v0, 0x5f

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->pa()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final ub()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Rb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Sb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->jd()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private final uc()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final v()Z
    .locals 3

    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v2, 0x45

    invoke-direct {p0, v2}, Lbsh/Parser;->G(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    :cond_1
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final v(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->dd()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final va()Z
    .locals 2

    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->rb()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final vb()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->Tb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Ub()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private final vc()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final w()Z
    .locals 3

    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->La()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    :cond_1
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final w(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->ed()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final wa()Z
    .locals 2

    const/16 v0, 0x21

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->lc()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final wb()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x51

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x78

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x79

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x7f

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x76

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x77

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x7a

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x7e

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x7c

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x81

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x82

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x83

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v1, 0x84

    invoke-direct {p0, v1}, Lbsh/Parser;->G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    const/16 v0, 0x85

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final wc()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final x()Z
    .locals 2

    const/16 v0, 0x33

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->Bb()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-direct {p0}, Lbsh/Parser;->Ab()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private final x(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->fd()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final xa()Z
    .locals 2

    const/16 v0, 0x36

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->lc()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final xb()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Kc()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Vb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Wb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final xc()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final y()Z
    .locals 2

    const/16 v0, 0x35

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->Bb()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final y(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->gd()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final ya()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->Ab()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final yb()Z
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Xb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Yb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Zb()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->_b()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->ac()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->bc()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->cc()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->dc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final yc()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final z()Z
    .locals 2

    const/16 v0, 0x38

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->Ab()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Ma()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Na()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final z(I)Z
    .locals 1

    iput p1, p0, Lbsh/Parser;->g:I

    iget-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->e:Lbsh/Token;

    iput-object p1, p0, Lbsh/Parser;->f:Lbsh/Token;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->hd()Z

    move-result v0
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v0

    :catch_0
    return p1
.end method

.method private final za()Z
    .locals 2

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    invoke-direct {p0}, Lbsh/Parser;->Da()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final zb()Z
    .locals 2

    invoke-direct {p0}, Lbsh/Parser;->rb()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->ec()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final zc()Z
    .locals 1

    invoke-direct {p0}, Lbsh/Parser;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final AdditiveExpression()V
    .locals 5

    invoke-virtual {p0}, Lbsh/Parser;->MultiplicativeExpression()V

    :goto_0
    iget v0, p0, Lbsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_0
    const/16 v2, 0x67

    const/16 v3, 0x66

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lbsh/Parser;->d:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_2
    if-eq v0, v3, :cond_4

    if-ne v0, v2, :cond_3

    invoke-direct {p0, v2}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_4
    invoke-direct {p0, v3}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lbsh/Parser;->MultiplicativeExpression()V

    new-instance v1, Lbsh/BSHBinaryExpression;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v2, 0x1

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v1}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v1, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v1, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_5
    throw v0

    return-void
.end method

.method public final AllocationExpression()V
    .locals 6

    new-instance v0, Lbsh/BSHAllocationExpression;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lbsh/BSHAllocationExpression;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lbsh/Parser;->j(I)Z

    move-result v3

    const/16 v4, 0x28

    if-eqz v3, :cond_0

    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->PrimitiveType()V

    :goto_0
    invoke-virtual {p0}, Lbsh/Parser;->ArrayDimensions()V

    goto :goto_3

    :cond_0
    iget v3, p0, Lbsh/Parser;->d:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v3

    goto :goto_1

    :cond_1
    iget v3, p0, Lbsh/Parser;->d:I

    :goto_1
    if-ne v3, v4, :cond_6

    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    iget v3, p0, Lbsh/Parser;->d:I

    if-ne v3, v5, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v3

    goto :goto_2

    :cond_2
    iget v3, p0, Lbsh/Parser;->d:I

    :goto_2
    const/16 v4, 0x48

    if-eq v3, v4, :cond_4

    const/16 v1, 0x4c

    if-ne v3, v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v1, Lbsh/ParseException;

    invoke-direct {v1}, Lbsh/ParseException;-><init>()V

    throw v1

    :cond_4
    invoke-virtual {p0}, Lbsh/Parser;->Arguments()V

    invoke-direct {p0, v1}, Lbsh/Parser;->i(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lbsh/Parser;->Block()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_3
    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    return-void

    :cond_6
    :try_start_1
    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v1, Lbsh/ParseException;

    invoke-direct {v1}, Lbsh/ParseException;-><init>()V

    throw v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    const/4 v3, 0x1

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    :try_start_3
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_8

    instance-of v4, v1, Lbsh/ParseException;

    if-eqz v4, :cond_7

    check-cast v1, Lbsh/ParseException;

    throw v1

    :cond_7
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_8
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :goto_4
    if-eqz v3, :cond_9

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_9
    throw v1

    return-void
.end method

.method public final AmbiguousName()V
    .locals 7

    new-instance v0, Lbsh/BSHAmbiguousName;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lbsh/BSHAmbiguousName;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/16 v1, 0x45

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    iget-object v3, v3, Lbsh/Token;->image:Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lbsh/Parser;->C(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x50

    invoke-direct {p0, v3}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v3, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v3

    move-object v1, v3

    const/4 v3, 0x0

    goto :goto_1

    :catchall_1
    move-exception v1

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_1

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_1
    throw v1

    return-void
.end method

.method public final AndExpression()V
    .locals 5

    invoke-virtual {p0}, Lbsh/Parser;->EqualityExpression()V

    :goto_0
    iget v0, p0, Lbsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_0
    const/16 v2, 0x6b

    const/16 v3, 0x6a

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lbsh/Parser;->d:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_2
    if-eq v0, v3, :cond_4

    if-ne v0, v2, :cond_3

    invoke-direct {p0, v2}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_4
    invoke-direct {p0, v3}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lbsh/Parser;->EqualityExpression()V

    new-instance v1, Lbsh/BSHBinaryExpression;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v2, 0x1

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v1}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v1, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v1, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_5
    throw v0

    return-void
.end method

.method public final ArgumentList()V
    .locals 2

    :goto_0
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    iget v0, p0, Lbsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_0
    const/16 v1, 0x4f

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    goto :goto_0
.end method

.method public final Arguments()V
    .locals 5

    new-instance v0, Lbsh/BSHArguments;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lbsh/BSHArguments;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/16 v1, 0x48

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget v1, p0, Lbsh/Parser;->d:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lbsh/Parser;->d:I

    :goto_0
    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->ArgumentList()V

    :goto_1
    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    return-void

    :catchall_0
    move-exception v1

    const/4 v3, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    :try_start_2
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_2

    instance-of v4, v1, Lbsh/ParseException;

    if-eqz v4, :cond_1

    check-cast v1, Lbsh/ParseException;

    throw v1

    :cond_1
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_2
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    :goto_2
    if-eqz v3, :cond_3

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_3
    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ArrayDimensions()V
    .locals 6

    new-instance v0, Lbsh/BSHArrayDimensions;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lbsh/BSHArrayDimensions;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lbsh/Parser;->n(I)Z

    move-result v3

    const/16 v4, 0x4d

    const/16 v5, 0x4c

    if-eqz v3, :cond_1

    :goto_0
    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {v0}, Lbsh/BSHArrayDimensions;->addDefinedDimension()V

    invoke-direct {p0, v1}, Lbsh/Parser;->k(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    invoke-direct {p0, v1}, Lbsh/Parser;->m(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {v0}, Lbsh/BSHArrayDimensions;->addUndefinedDimension()V

    goto :goto_1

    :cond_1
    iget v1, p0, Lbsh/Parser;->d:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v1

    goto :goto_2

    :cond_2
    iget v1, p0, Lbsh/Parser;->d:I

    :goto_2
    if-ne v1, v5, :cond_6

    :cond_3
    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {v0}, Lbsh/BSHArrayDimensions;->addUndefinedDimension()V

    iget v1, p0, Lbsh/Parser;->d:I

    if-ne v1, v3, :cond_4

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v1

    goto :goto_3

    :cond_4
    iget v1, p0, Lbsh/Parser;->d:I

    :goto_3
    if-eq v1, v5, :cond_3

    invoke-virtual {p0}, Lbsh/Parser;->ArrayInitializer()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    return-void

    :cond_6
    :try_start_1
    invoke-direct {p0, v3}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v1, Lbsh/ParseException;

    invoke-direct {v1}, Lbsh/ParseException;-><init>()V

    throw v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    const/4 v3, 0x1

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    :try_start_3
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_8

    instance-of v4, v1, Lbsh/ParseException;

    if-eqz v4, :cond_7

    check-cast v1, Lbsh/ParseException;

    throw v1

    :cond_7
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_8
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :goto_4
    if-eqz v3, :cond_9

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_9
    throw v1

    return-void
.end method

.method public final ArrayInitializer()V
    .locals 5

    new-instance v0, Lbsh/BSHArrayInitializer;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lbsh/BSHArrayInitializer;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/16 v1, 0x4a

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget v1, p0, Lbsh/Parser;->d:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lbsh/Parser;->d:I

    :goto_0
    const/16 v4, 0x4f

    sparse-switch v1, :sswitch_data_0

    goto :goto_2

    :goto_1
    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->VariableInitializer()V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lbsh/Parser;->z(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    goto :goto_1

    :cond_1
    :goto_2
    iget v1, p0, Lbsh/Parser;->d:I

    if-ne v1, v3, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v1

    goto :goto_3

    :cond_2
    iget v1, p0, Lbsh/Parser;->d:I

    :goto_3
    if-eq v1, v4, :cond_3

    goto :goto_4

    :cond_3
    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    :goto_4
    const/16 v1, 0x4b

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    return-void

    :catchall_0
    move-exception v1

    const/4 v3, 0x1

    goto :goto_5

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    :try_start_2
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_5

    instance-of v4, v1, Lbsh/ParseException;

    if-eqz v4, :cond_4

    check-cast v1, Lbsh/ParseException;

    throw v1

    :cond_4
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_5
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    :goto_5
    if-eqz v3, :cond_6

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_6
    throw v1

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
        0x4a -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public final Assignment()V
    .locals 5

    new-instance v0, Lbsh/BSHAssignment;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lbsh/BSHAssignment;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lbsh/Parser;->PrimaryExpression()V

    invoke-virtual {p0}, Lbsh/Parser;->AssignmentOperator()I

    move-result v2

    iput v2, v0, Lbsh/BSHAssignment;->operator:I

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v1}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    return-void

    :catchall_0
    move-exception v2

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    :try_start_2
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_1

    instance-of v4, v2, Lbsh/ParseException;

    if-eqz v4, :cond_0

    check-cast v2, Lbsh/ParseException;

    throw v2

    :cond_0
    check-cast v2, Ljava/lang/Error;

    throw v2

    :cond_1
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    :goto_0
    if-eqz v3, :cond_2

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v1}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_2
    throw v2
.end method

.method public final AssignmentOperator()I
    .locals 3

    iget v0, p0, Lbsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_0
    const/16 v2, 0x51

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7c

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :pswitch_0
    const/16 v0, 0x85

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x84

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x83

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x82

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x81

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x80

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x7f

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x7e

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x7a

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x79

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x78

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x77

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x76

    :goto_0
    invoke-direct {p0, v0}, Lbsh/Parser;->F(I)Lbsh/Token;

    goto :goto_1

    :cond_1
    invoke-direct {p0, v2}, Lbsh/Parser;->F(I)Lbsh/Token;

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v0

    iget v0, v0, Lbsh/Token;->kind:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x76
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final Block()V
    .locals 5

    new-instance v0, Lbsh/BSHBlock;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lbsh/BSHBlock;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/16 v1, 0x4a

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    :goto_0
    invoke-direct {p0, v2}, Lbsh/Parser;->p(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lbsh/Parser;->BlockStatement()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x4b

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    return-void

    :catchall_0
    move-exception v1

    const/4 v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    :try_start_2
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_2

    instance-of v4, v1, Lbsh/ParseException;

    if-eqz v4, :cond_1

    check-cast v1, Lbsh/ParseException;

    throw v1

    :cond_1
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_2
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    :goto_1
    if-eqz v3, :cond_3

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_3
    throw v1

    return-void
.end method

.method public final BlockStatement()V
    .locals 3

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lbsh/Parser;->q(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lbsh/Parser;->ClassDeclaration()V

    goto :goto_1

    :cond_0
    invoke-direct {p0, v0}, Lbsh/Parser;->r(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {p0}, Lbsh/Parser;->MethodDeclaration()V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0}, Lbsh/Parser;->s(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lbsh/Parser;->t(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lbsh/Parser;->TypedVariableDeclaration()V

    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->F(I)Lbsh/Token;

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->u(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lbsh/Parser;->Statement()V

    goto :goto_1

    :cond_4
    iget v0, p0, Lbsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_5
    const/16 v2, 0x22

    if-eq v0, v2, :cond_8

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_7

    const/16 v2, 0x30

    if-eq v0, v2, :cond_8

    const/16 v2, 0x44

    if-ne v0, v2, :cond_6

    invoke-virtual {p0}, Lbsh/Parser;->FormalComment()V

    goto :goto_1

    :cond_6
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_7
    invoke-virtual {p0}, Lbsh/Parser;->PackageDeclaration()V

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lbsh/Parser;->ImportDeclaration()V

    :goto_1
    return-void
.end method

.method public final BooleanLiteral()Z
    .locals 3

    iget v0, p0, Lbsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_0
    const/16 v2, 0x1a

    if-eq v0, v2, :cond_2

    const/16 v2, 0x37

    if-ne v0, v2, :cond_1

    invoke-direct {p0, v2}, Lbsh/Parser;->F(I)Lbsh/Token;

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_2
    invoke-direct {p0, v2}, Lbsh/Parser;->F(I)Lbsh/Token;

    const/4 v0, 0x0

    return v0
.end method

.method public final BreakStatement()V
    .locals 5

    new-instance v0, Lbsh/BSHReturnStatement;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, Lbsh/BSHReturnStatement;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/16 v1, 0xc

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget v3, p0, Lbsh/Parser;->d:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v3

    goto :goto_0

    :cond_0
    iget v3, p0, Lbsh/Parser;->d:I

    :goto_0
    const/16 v4, 0x45

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    :goto_1
    const/16 v3, 0x4e

    invoke-direct {p0, v3}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    iput v1, v0, Lbsh/BSHReturnStatement;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v1

    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_2

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_2
    throw v1
.end method

.method public final CastExpression()V
    .locals 6

    new-instance v0, Lbsh/BSHCastExpression;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lbsh/BSHCastExpression;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const v1, 0x7fffffff

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lbsh/Parser;->e(I)Z

    move-result v1

    const/16 v3, 0x49

    const/16 v4, 0x48

    if-eqz v1, :cond_0

    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    invoke-direct {p0, v3}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpression()V

    goto :goto_1

    :cond_0
    iget v1, p0, Lbsh/Parser;->d:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lbsh/Parser;->d:I

    :goto_0
    if-ne v1, v4, :cond_2

    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    invoke-direct {p0, v3}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpressionNotPlusMinus()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    return-void

    :cond_2
    :try_start_1
    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v1, Lbsh/ParseException;

    invoke-direct {v1}, Lbsh/ParseException;-><init>()V

    throw v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    const/4 v3, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    :try_start_3
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_4

    instance-of v4, v1, Lbsh/ParseException;

    if-eqz v4, :cond_3

    check-cast v1, Lbsh/ParseException;

    throw v1

    :cond_3
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_4
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :goto_2
    if-eqz v3, :cond_5

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_5
    throw v1
.end method

.method public final CastLookahead()V
    .locals 4

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbsh/Parser;->b(I)Z

    move-result v0

    const/16 v1, 0x48

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->PrimitiveType()V

    goto/16 :goto_1

    :cond_0
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lbsh/Parser;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->F(I)Lbsh/Token;

    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lbsh/Parser;->F(I)Lbsh/Token;

    goto :goto_1

    :cond_1
    iget v0, p0, Lbsh/Parser;->d:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_2
    if-ne v0, v1, :cond_8

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget v0, p0, Lbsh/Parser;->d:I

    if-ne v0, v2, :cond_3

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_3
    const/16 v3, 0x1a

    if-eq v0, v3, :cond_7

    const/16 v3, 0x37

    if-eq v0, v3, :cond_7

    const/16 v3, 0x39

    if-eq v0, v3, :cond_7

    const/16 v3, 0x3c

    if-eq v0, v3, :cond_7

    const/16 v3, 0x40

    if-eq v0, v3, :cond_7

    const/16 v3, 0x45

    if-eq v0, v3, :cond_6

    if-eq v0, v1, :cond_5

    const/16 v1, 0x28

    if-eq v0, v1, :cond_5

    const/16 v1, 0x29

    if-eq v0, v1, :cond_7

    const/16 v1, 0x42

    if-eq v0, v1, :cond_7

    const/16 v1, 0x43

    if-eq v0, v1, :cond_7

    const/16 v1, 0x56

    if-eq v0, v1, :cond_5

    const/16 v1, 0x57

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, v2}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_5
    :goto_0
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    goto :goto_1

    :cond_6
    invoke-direct {p0, v3}, Lbsh/Parser;->F(I)Lbsh/Token;

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lbsh/Parser;->Literal()V

    :goto_1
    return-void

    :cond_8
    invoke-direct {p0, v2}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0
.end method

.method public final ClassDeclaration()V
    .locals 8

    new-instance v0, Lbsh/BSHClassDeclaration;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbsh/BSHClassDeclaration;-><init>(I)V

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v2}, Lbsh/Parser;->Modifiers(IZ)Lbsh/Modifiers;

    move-result-object v3

    iget v4, p0, Lbsh/Parser;->d:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v4

    goto :goto_0

    :cond_0
    iget v4, p0, Lbsh/Parser;->d:I

    :goto_0
    const/16 v6, 0xd

    if-eq v4, v6, :cond_2

    const/16 v6, 0x25

    if-ne v4, v6, :cond_1

    invoke-direct {p0, v6}, Lbsh/Parser;->F(I)Lbsh/Token;

    iput-boolean v1, v0, Lbsh/BSHClassDeclaration;->k:Z

    goto :goto_1

    :cond_1
    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v3, Lbsh/ParseException;

    invoke-direct {v3}, Lbsh/ParseException;-><init>()V

    throw v3

    :cond_2
    invoke-direct {p0, v6}, Lbsh/Parser;->F(I)Lbsh/Token;

    :goto_1
    const/16 v4, 0x45

    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v4

    iget v6, p0, Lbsh/Parser;->d:I

    if-ne v6, v5, :cond_3

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v6

    goto :goto_2

    :cond_3
    iget v6, p0, Lbsh/Parser;->d:I

    :goto_2
    const/16 v7, 0x19

    if-eq v6, v7, :cond_4

    goto :goto_3

    :cond_4
    invoke-direct {p0, v7}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    iput-boolean v1, v0, Lbsh/BSHClassDeclaration;->j:Z

    :goto_3
    iget v6, p0, Lbsh/Parser;->d:I

    if-ne v6, v5, :cond_5

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v5

    goto :goto_4

    :cond_5
    iget v5, p0, Lbsh/Parser;->d:I

    :goto_4
    const/16 v6, 0x21

    if-eq v5, v6, :cond_6

    goto :goto_5

    :cond_6
    invoke-direct {p0, v6}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->NameList()I

    move-result v5

    iput v5, v0, Lbsh/BSHClassDeclaration;->i:I

    :goto_5
    invoke-virtual {p0}, Lbsh/Parser;->Block()V

    iget-object v5, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v5, v0, v1}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    iput-object v3, v0, Lbsh/BSHClassDeclaration;->h:Lbsh/Modifiers;

    iget-object v3, v4, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v3, v0, Lbsh/BSHClassDeclaration;->g:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v3

    move-object v2, v3

    const/4 v4, 0x0

    goto :goto_8

    :catch_0
    move-exception v3

    const/4 v4, 0x0

    goto :goto_6

    :catchall_1
    move-exception v2

    const/4 v4, 0x1

    goto :goto_8

    :catch_1
    move-exception v3

    const/4 v4, 0x1

    :goto_6
    if-eqz v4, :cond_7

    :try_start_2
    iget-object v5, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v5, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V

    goto :goto_7

    :cond_7
    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2}, Lbsh/JJTParserState;->b()Lbsh/Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move v2, v4

    :goto_7
    :try_start_3
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-nez v4, :cond_9

    instance-of v4, v3, Lbsh/ParseException;

    if-eqz v4, :cond_8

    check-cast v3, Lbsh/ParseException;

    throw v3

    :cond_8
    check-cast v3, Ljava/lang/Error;

    throw v3

    :cond_9
    check-cast v3, Ljava/lang/RuntimeException;

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v3

    move v4, v2

    move-object v2, v3

    goto :goto_8

    :catchall_3
    move-exception v2

    :goto_8
    if-eqz v4, :cond_a

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v1}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_a
    throw v2
.end method

.method public final ConditionalAndExpression()V
    .locals 5

    invoke-virtual {p0}, Lbsh/Parser;->InclusiveOrExpression()V

    :goto_0
    iget v0, p0, Lbsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_0
    const/16 v2, 0x63

    const/16 v3, 0x62

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lbsh/Parser;->d:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_2
    if-eq v0, v3, :cond_4

    if-ne v0, v2, :cond_3

    invoke-direct {p0, v2}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_4
    invoke-direct {p0, v3}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lbsh/Parser;->InclusiveOrExpression()V

    new-instance v1, Lbsh/BSHBinaryExpression;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v2, 0x1

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v1}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v1, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v1, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_5
    throw v0

    return-void
.end method

.method public final ConditionalExpression()V
    .locals 5

    invoke-virtual {p0}, Lbsh/Parser;->ConditionalOrExpression()V

    iget v0, p0, Lbsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_0
    const/16 v1, 0x58

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v0, Lbsh/BSHTernaryExpression;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lbsh/BSHTernaryExpression;-><init>(I)V

    const/4 v1, 0x1

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p0}, Lbsh/Parser;->ConditionalExpression()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    iget-object v4, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V

    const/4 v1, 0x0

    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-nez v4, :cond_3

    instance-of v4, v3, Lbsh/ParseException;

    if-eqz v4, :cond_2

    check-cast v3, Lbsh/ParseException;

    throw v3

    :cond_2
    check-cast v3, Ljava/lang/Error;

    throw v3

    :cond_3
    check-cast v3, Ljava/lang/RuntimeException;

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v1, :cond_4

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_4
    throw v3
.end method

.method public final ConditionalOrExpression()V
    .locals 5

    invoke-virtual {p0}, Lbsh/Parser;->ConditionalAndExpression()V

    :goto_0
    iget v0, p0, Lbsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_0
    const/16 v2, 0x61

    const/16 v3, 0x60

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lbsh/Parser;->d:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_2
    if-eq v0, v3, :cond_4

    if-ne v0, v2, :cond_3

    invoke-direct {p0, v2}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_4
    invoke-direct {p0, v3}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lbsh/Parser;->ConditionalAndExpression()V

    new-instance v1, Lbsh/BSHBinaryExpression;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v2, 0x1

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v1}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v1, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v1, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_5
    throw v0

    return-void
.end method

.method public final ContinueStatement()V
    .locals 5

    new-instance v0, Lbsh/BSHReturnStatement;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, Lbsh/BSHReturnStatement;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/16 v1, 0x13

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget v3, p0, Lbsh/Parser;->d:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v3

    goto :goto_0

    :cond_0
    iget v3, p0, Lbsh/Parser;->d:I

    :goto_0
    const/16 v4, 0x45

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    :goto_1
    const/16 v3, 0x4e

    invoke-direct {p0, v3}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    iput v1, v0, Lbsh/BSHReturnStatement;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v1

    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_2

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_2
    throw v1
.end method

.method public final DoStatement()V
    .locals 6

    new-instance v0, Lbsh/BSHWhileStatement;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lbsh/BSHWhileStatement;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/16 v1, 0x15

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Statement()V

    const/16 v1, 0x3b

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    iput-boolean v3, v0, Lbsh/BSHWhileStatement;->isDoStatement:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catch_0
    move-exception v1

    const/4 v4, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    const/4 v2, 0x1

    goto :goto_2

    :catch_1
    move-exception v1

    const/4 v4, 0x1

    :goto_0
    if-eqz v4, :cond_0

    :try_start_2
    iget-object v5, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v5, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2}, Lbsh/JJTParserState;->b()Lbsh/Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v2, v4

    :goto_1
    :try_start_3
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_2

    instance-of v4, v1, Lbsh/ParseException;

    if-eqz v4, :cond_1

    check-cast v1, Lbsh/ParseException;

    throw v1

    :cond_1
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_2
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :catchall_2
    move-exception v1

    move v2, v4

    :goto_2
    if-eqz v2, :cond_3

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_3
    throw v1
.end method

.method public final EmptyStatement()V
    .locals 1

    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->F(I)Lbsh/Token;

    return-void
.end method

.method public final EnhancedForStatement()V
    .locals 10

    new-instance v0, Lbsh/BSHEnhancedForStatement;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lbsh/BSHEnhancedForStatement;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lbsh/Parser;->x(I)Z

    move-result v1

    const/16 v4, 0x49

    const/16 v5, 0x59

    const/16 v6, 0x45

    const/16 v7, 0x48

    const/16 v8, 0x1e

    if-eqz v1, :cond_0

    invoke-direct {p0, v8}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-direct {p0, v7}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-direct {p0, v6}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v1

    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Statement()V

    iget-object v4, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    iget-object v1, v1, Lbsh/Token;->image:Ljava/lang/String;

    :goto_0
    iput-object v1, v0, Lbsh/BSHEnhancedForStatement;->g:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v1

    const/4 v4, 0x0

    goto :goto_3

    :cond_0
    :try_start_2
    iget v1, p0, Lbsh/Parser;->d:I

    const/4 v9, -0x1

    if-ne v1, v9, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v1

    goto :goto_1

    :cond_1
    iget v1, p0, Lbsh/Parser;->d:I

    :goto_1
    if-ne v1, v8, :cond_2

    invoke-direct {p0, v8}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-direct {p0, v7}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    invoke-direct {p0, v6}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v1

    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Statement()V

    iget-object v4, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    iget-object v1, v1, Lbsh/Token;->image:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :goto_2
    return-void

    :cond_2
    :try_start_4
    invoke-direct {p0, v9}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v1, Lbsh/ParseException;

    invoke-direct {v1}, Lbsh/ParseException;-><init>()V

    throw v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    const/4 v2, 0x1

    goto :goto_5

    :catch_1
    move-exception v1

    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_3

    :try_start_5
    iget-object v5, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v5, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V

    goto :goto_4

    :cond_3
    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2}, Lbsh/JJTParserState;->b()Lbsh/Node;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move v2, v4

    :goto_4
    :try_start_6
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_5

    instance-of v4, v1, Lbsh/ParseException;

    if-eqz v4, :cond_4

    check-cast v1, Lbsh/ParseException;

    throw v1

    :cond_4
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_5
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_5

    :catchall_2
    move-exception v1

    move v2, v4

    :goto_5
    if-eqz v2, :cond_6

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_6
    throw v1

    return-void
.end method

.method public final EqualityExpression()V
    .locals 5

    invoke-virtual {p0}, Lbsh/Parser;->InstanceOfExpression()V

    :goto_0
    iget v0, p0, Lbsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_0
    const/16 v2, 0x5f

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lbsh/Parser;->d:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_2
    if-eq v0, v3, :cond_4

    if-ne v0, v2, :cond_3

    invoke-direct {p0, v2}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_4
    invoke-direct {p0, v3}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lbsh/Parser;->InstanceOfExpression()V

    new-instance v1, Lbsh/BSHBinaryExpression;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v2, 0x1

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v1}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v1, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v1, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_5
    throw v0

    return-void
.end method

.method public final ExclusiveOrExpression()V
    .locals 5

    invoke-virtual {p0}, Lbsh/Parser;->AndExpression()V

    :goto_0
    iget v0, p0, Lbsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_0
    const/16 v1, 0x6e

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v0

    invoke-virtual {p0}, Lbsh/Parser;->AndExpression()V

    new-instance v1, Lbsh/BSHBinaryExpression;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v2, 0x1

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v1}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v1, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v1, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_2
    throw v0

    return-void
.end method

.method public final Expression()V
    .locals 2

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lbsh/Parser;->D(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbsh/Parser;->Assignment()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lbsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_1
    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->ConditionalExpression()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ForInit()V
    .locals 2

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lbsh/Parser;->y(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbsh/Parser;->TypedVariableDeclaration()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lbsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_1
    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->StatementExpressionList()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ForStatement()V
    .locals 5

    new-instance v0, Lbsh/BSHForStatement;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Lbsh/BSHForStatement;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/16 v1, 0x1e

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget v1, p0, Lbsh/Parser;->d:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lbsh/Parser;->d:I

    :goto_0
    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->ForInit()V

    iput-boolean v2, v0, Lbsh/BSHForStatement;->hasForInit:Z

    :goto_1
    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget v4, p0, Lbsh/Parser;->d:I

    if-ne v4, v3, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v4

    goto :goto_2

    :cond_1
    iget v4, p0, Lbsh/Parser;->d:I

    :goto_2
    sparse-switch v4, :sswitch_data_1

    goto :goto_3

    :sswitch_1
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    iput-boolean v2, v0, Lbsh/BSHForStatement;->hasExpression:Z

    :goto_3
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget v1, p0, Lbsh/Parser;->d:I

    if-ne v1, v3, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v1

    goto :goto_4

    :cond_2
    iget v1, p0, Lbsh/Parser;->d:I

    :goto_4
    sparse-switch v1, :sswitch_data_2

    goto :goto_5

    :sswitch_2
    invoke-virtual {p0}, Lbsh/Parser;->ForUpdate()V

    iput-boolean v2, v0, Lbsh/BSHForStatement;->hasForUpdate:Z

    :goto_5
    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Statement()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    return-void

    :catchall_0
    move-exception v1

    const/4 v3, 0x1

    goto :goto_6

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    :try_start_2
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_4

    instance-of v4, v1, Lbsh/ParseException;

    if-eqz v4, :cond_3

    check-cast v1, Lbsh/ParseException;

    throw v1

    :cond_3
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_4
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    :goto_6
    if-eqz v3, :cond_5

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_5
    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x2f -> :sswitch_0
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3a -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xb -> :sswitch_1
        0xe -> :sswitch_1
        0x11 -> :sswitch_1
        0x16 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1d -> :sswitch_1
        0x24 -> :sswitch_1
        0x26 -> :sswitch_1
        0x28 -> :sswitch_1
        0x29 -> :sswitch_1
        0x2f -> :sswitch_1
        0x37 -> :sswitch_1
        0x39 -> :sswitch_1
        0x3c -> :sswitch_1
        0x40 -> :sswitch_1
        0x42 -> :sswitch_1
        0x43 -> :sswitch_1
        0x45 -> :sswitch_1
        0x48 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
        0x67 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0xb -> :sswitch_2
        0xe -> :sswitch_2
        0x11 -> :sswitch_2
        0x16 -> :sswitch_2
        0x1a -> :sswitch_2
        0x1d -> :sswitch_2
        0x24 -> :sswitch_2
        0x26 -> :sswitch_2
        0x28 -> :sswitch_2
        0x29 -> :sswitch_2
        0x2f -> :sswitch_2
        0x37 -> :sswitch_2
        0x39 -> :sswitch_2
        0x3c -> :sswitch_2
        0x40 -> :sswitch_2
        0x42 -> :sswitch_2
        0x43 -> :sswitch_2
        0x45 -> :sswitch_2
        0x48 -> :sswitch_2
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0x67 -> :sswitch_2
    .end sparse-switch
.end method

.method public final ForUpdate()V
    .locals 0

    invoke-virtual {p0}, Lbsh/Parser;->StatementExpressionList()V

    return-void
.end method

.method public final FormalComment()V
    .locals 5

    new-instance v0, Lbsh/BSHFormalComment;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lbsh/BSHFormalComment;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/16 v1, 0x44

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v1

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    iget-boolean v4, p0, Lbsh/Parser;->b:Z

    invoke-virtual {v3, v0, v4}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    iget-object v1, v1, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v1, v0, Lbsh/BSHFormalComment;->text:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    iget-boolean v3, p0, Lbsh/Parser;->b:Z

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_0
    throw v1
.end method

.method public final FormalParameter()V
    .locals 6

    new-instance v0, Lbsh/BSHFormalParameter;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lbsh/BSHFormalParameter;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lbsh/Parser;->A(I)Z

    move-result v1

    const/16 v4, 0x45

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v1

    iget-object v4, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    iget-object v1, v1, Lbsh/Token;->image:Ljava/lang/String;

    :goto_0
    iput-object v1, v0, Lbsh/BSHFormalParameter;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v1

    const/4 v4, 0x0

    goto :goto_3

    :cond_0
    :try_start_2
    iget v1, p0, Lbsh/Parser;->d:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v1

    goto :goto_1

    :cond_1
    iget v1, p0, Lbsh/Parser;->d:I

    :goto_1
    if-ne v1, v4, :cond_2

    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v1

    iget-object v4, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    iget-object v1, v1, Lbsh/Token;->image:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :goto_2
    return-void

    :cond_2
    :try_start_4
    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v1, Lbsh/ParseException;

    invoke-direct {v1}, Lbsh/ParseException;-><init>()V

    throw v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    const/4 v2, 0x1

    goto :goto_5

    :catch_1
    move-exception v1

    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_3

    :try_start_5
    iget-object v5, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v5, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V

    goto :goto_4

    :cond_3
    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2}, Lbsh/JJTParserState;->b()Lbsh/Node;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move v2, v4

    :goto_4
    :try_start_6
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_5

    instance-of v4, v1, Lbsh/ParseException;

    if-eqz v4, :cond_4

    check-cast v1, Lbsh/ParseException;

    throw v1

    :cond_4
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_5
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_5

    :catchall_2
    move-exception v1

    move v2, v4

    :goto_5
    if-eqz v2, :cond_6

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_6
    throw v1

    return-void
.end method

.method public final FormalParameters()V
    .locals 5

    new-instance v0, Lbsh/BSHFormalParameters;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lbsh/BSHFormalParameters;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/16 v1, 0x48

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget v1, p0, Lbsh/Parser;->d:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lbsh/Parser;->d:I

    :goto_0
    const/16 v4, 0xb

    if-eq v1, v4, :cond_1

    const/16 v4, 0xe

    if-eq v1, v4, :cond_1

    const/16 v4, 0x11

    if-eq v1, v4, :cond_1

    const/16 v4, 0x16

    if-eq v1, v4, :cond_1

    const/16 v4, 0x1d

    if-eq v1, v4, :cond_1

    const/16 v4, 0x24

    if-eq v1, v4, :cond_1

    const/16 v4, 0x26

    if-eq v1, v4, :cond_1

    const/16 v4, 0x2f

    if-eq v1, v4, :cond_1

    const/16 v4, 0x45

    if-eq v1, v4, :cond_1

    goto :goto_3

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lbsh/Parser;->FormalParameter()V

    iget v1, p0, Lbsh/Parser;->d:I

    if-ne v1, v3, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v1

    goto :goto_2

    :cond_2
    iget v1, p0, Lbsh/Parser;->d:I

    :goto_2
    const/16 v4, 0x4f

    if-eq v1, v4, :cond_3

    :goto_3
    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    return-void

    :cond_3
    :try_start_1
    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    const/4 v3, 0x1

    goto :goto_4

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    :try_start_3
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_5

    instance-of v4, v1, Lbsh/ParseException;

    if-eqz v4, :cond_4

    check-cast v1, Lbsh/ParseException;

    throw v1

    :cond_4
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_5
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :goto_4
    if-eqz v3, :cond_6

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_6
    throw v1

    return-void
.end method

.method public final IfStatement()V
    .locals 5

    new-instance v0, Lbsh/BSHIfStatement;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lbsh/BSHIfStatement;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/16 v1, 0x20

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Statement()V

    iget v1, p0, Lbsh/Parser;->d:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lbsh/Parser;->d:I

    :goto_0
    const/16 v3, 0x17

    if-eq v1, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v3}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Statement()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    return-void

    :catchall_0
    move-exception v1

    const/4 v3, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    :try_start_2
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_3

    instance-of v4, v1, Lbsh/ParseException;

    if-eqz v4, :cond_2

    check-cast v1, Lbsh/ParseException;

    throw v1

    :cond_2
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_3
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    :goto_2
    if-eqz v3, :cond_4

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_4
    throw v1
.end method

.method public final ImportDeclaration()V
    .locals 10

    new-instance v0, Lbsh/BSHImportDeclaration;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lbsh/BSHImportDeclaration;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lbsh/Parser;->w(I)Z

    move-result v1

    const/16 v4, 0x4e

    const/16 v5, 0x68

    const/16 v6, 0x22

    const/4 v7, -0x1

    if-eqz v1, :cond_5

    iget v1, p0, Lbsh/Parser;->d:I

    if-ne v1, v7, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lbsh/Parser;->d:I

    :goto_0
    const/16 v8, 0x30

    const/4 v9, 0x0

    if-eq v1, v8, :cond_1

    move-object v1, v9

    goto :goto_1

    :cond_1
    invoke-direct {p0, v8}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v1

    :goto_1
    invoke-direct {p0, v6}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    iget v6, p0, Lbsh/Parser;->d:I

    if-ne v6, v7, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v6

    goto :goto_2

    :cond_2
    iget v6, p0, Lbsh/Parser;->d:I

    :goto_2
    const/16 v7, 0x50

    if-eq v6, v7, :cond_3

    goto :goto_3

    :cond_3
    invoke-direct {p0, v7}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v9

    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;

    :goto_3
    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget-object v4, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    if-eqz v1, :cond_4

    iput-boolean v3, v0, Lbsh/BSHImportDeclaration;->staticImport:Z

    :cond_4
    if-eqz v9, :cond_7

    iput-boolean v3, v0, Lbsh/BSHImportDeclaration;->importPackage:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :cond_5
    :try_start_2
    iget v1, p0, Lbsh/Parser;->d:I

    if-ne v1, v7, :cond_6

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v1

    goto :goto_4

    :cond_6
    iget v1, p0, Lbsh/Parser;->d:I

    :goto_4
    if-ne v1, v6, :cond_8

    invoke-direct {p0, v6}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    iput-boolean v3, v0, Lbsh/BSHImportDeclaration;->superImport:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_7
    :goto_5
    return-void

    :catch_0
    move-exception v1

    const/4 v4, 0x0

    goto :goto_6

    :cond_8
    :try_start_4
    invoke-direct {p0, v7}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v1, Lbsh/ParseException;

    invoke-direct {v1}, Lbsh/ParseException;-><init>()V

    throw v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    const/4 v2, 0x1

    goto :goto_8

    :catch_1
    move-exception v1

    const/4 v4, 0x1

    :goto_6
    if-eqz v4, :cond_9

    :try_start_5
    iget-object v5, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v5, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V

    goto :goto_7

    :cond_9
    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2}, Lbsh/JJTParserState;->b()Lbsh/Node;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move v2, v4

    :goto_7
    :try_start_6
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_b

    instance-of v4, v1, Lbsh/ParseException;

    if-eqz v4, :cond_a

    check-cast v1, Lbsh/ParseException;

    throw v1

    :cond_a
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_b
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_8

    :catchall_2
    move-exception v1

    move v2, v4

    :goto_8
    if-eqz v2, :cond_c

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_c
    throw v1
.end method

.method public final InclusiveOrExpression()V
    .locals 5

    invoke-virtual {p0}, Lbsh/Parser;->ExclusiveOrExpression()V

    :goto_0
    iget v0, p0, Lbsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_0
    const/16 v2, 0x6d

    const/16 v3, 0x6c

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lbsh/Parser;->d:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_2
    if-eq v0, v3, :cond_4

    if-ne v0, v2, :cond_3

    invoke-direct {p0, v2}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_4
    invoke-direct {p0, v3}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lbsh/Parser;->ExclusiveOrExpression()V

    new-instance v1, Lbsh/BSHBinaryExpression;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v2, 0x1

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v1}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v1, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v1, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_5
    throw v0

    return-void
.end method

.method public final InstanceOfExpression()V
    .locals 5

    invoke-virtual {p0}, Lbsh/Parser;->RelationalExpression()V

    iget v0, p0, Lbsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_0
    const/16 v1, 0x23

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v0

    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    new-instance v1, Lbsh/BSHBinaryExpression;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v2, 0x1

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v1}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v1, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v1, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_2
    throw v0
.end method

.method public final LabeledStatement()V
    .locals 1

    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->F(I)Lbsh/Token;

    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Statement()V

    return-void
.end method

.method public final Line()Z
    .locals 4

    iget v0, p0, Lbsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-direct {p0, v3}, Lbsh/Parser;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbsh/Parser;->BlockStatement()V

    return v2

    :cond_1
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_2
    invoke-direct {p0, v2}, Lbsh/Parser;->F(I)Lbsh/Token;

    const-string v0, "End of File!"

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    return v3
.end method

.method public final Literal()V
    .locals 7

    new-instance v0, Lbsh/BSHLiteral;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lbsh/BSHLiteral;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget v3, p0, Lbsh/Parser;->d:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v3

    goto :goto_0

    :cond_0
    iget v3, p0, Lbsh/Parser;->d:I

    :goto_0
    const/16 v5, 0x1a

    if-eq v3, v5, :cond_d

    const/16 v5, 0x29

    if-eq v3, v5, :cond_c

    const/16 v5, 0x37

    if-eq v3, v5, :cond_d

    const/16 v5, 0x39

    if-eq v3, v5, :cond_b

    const/16 v5, 0x3c

    if-eq v3, v5, :cond_8

    const/16 v5, 0x40

    if-eq v3, v5, :cond_3

    const/16 v5, 0x42

    if-eq v3, v5, :cond_2

    const/16 v5, 0x43

    if-ne v3, v5, :cond_1

    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v3

    iget-object v4, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v4, v3, Lbsh/Token;->image:Ljava/lang/String;

    iget-object v5, v3, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbsh/BSHLiteral;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_5

    :catch_0
    :try_start_3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error parsing string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v3, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lbsh/Parser;->a(Ljava/lang/String;)Lbsh/ParseException;

    move-result-object v3

    throw v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :try_start_4
    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v3, Lbsh/ParseException;

    invoke-direct {v3}, Lbsh/ParseException;-><init>()V

    throw v3

    :cond_2
    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v3

    iget-object v4, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v4, v3, Lbsh/Token;->image:Ljava/lang/String;

    iget-object v5, v3, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbsh/BSHLiteral;->charSetup(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_5

    :catch_1
    :try_start_7
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error parsing character: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v3, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lbsh/Parser;->a(Ljava/lang/String;)Lbsh/ParseException;

    move-result-object v3

    throw v3
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_3
    :try_start_8
    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v3

    iget-object v4, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    iget-object v3, v3, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x66

    if-eq v4, v5, :cond_7

    const/16 v5, 0x46

    if-ne v4, v5, :cond_4

    goto :goto_2

    :cond_4
    const/16 v5, 0x64

    if-eq v4, v5, :cond_5

    const/16 v5, 0x44

    if-ne v4, v5, :cond_6

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_6
    new-instance v4, Lbsh/Primitive;

    new-instance v5, Ljava/lang/Double;

    invoke-direct {v5, v3}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lbsh/Primitive;-><init>(D)V

    :goto_1
    iput-object v4, v0, Lbsh/BSHLiteral;->value:Ljava/lang/Object;

    goto/16 :goto_5

    :cond_7
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lbsh/Primitive;

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {v4, v3}, Lbsh/Primitive;-><init>(F)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    :cond_8
    :try_start_a
    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v3

    iget-object v4, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    iget-object v3, v3, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const/16 v5, 0x6c

    if-eq v4, v5, :cond_a

    const/16 v5, 0x4c

    if-ne v4, v5, :cond_9

    goto :goto_3

    :cond_9
    :try_start_c
    new-instance v4, Lbsh/Primitive;

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Lbsh/Primitive;-><init>(I)V

    iput-object v4, v0, Lbsh/BSHLiteral;->value:Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_5

    :catch_2
    :try_start_d
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Error or number too big for integer type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lbsh/Parser;->a(Ljava/lang/String;)Lbsh/ParseException;

    move-result-object v3

    throw v3

    :cond_a
    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lbsh/Primitive;

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v3}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lbsh/Primitive;-><init>(J)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_1

    :cond_b
    :try_start_e
    invoke-virtual {p0}, Lbsh/Parser;->VoidLiteral()V

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    sget-object v3, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    :goto_4
    iput-object v3, v0, Lbsh/BSHLiteral;->value:Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_5

    :cond_c
    :try_start_10
    invoke-virtual {p0}, Lbsh/Parser;->NullLiteral()V

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    sget-object v3, Lbsh/Primitive;->NULL:Lbsh/Primitive;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_4

    :cond_d
    :try_start_12
    invoke-virtual {p0}, Lbsh/Parser;->BooleanLiteral()Z

    move-result v3

    iget-object v4, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    new-instance v4, Lbsh/Primitive;

    invoke-direct {v4, v3}, Lbsh/Primitive;-><init>(Z)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_1

    :goto_5
    return-void

    :catch_3
    move-exception v3

    const/4 v4, 0x0

    goto :goto_6

    :catchall_0
    move-exception v1

    move-object v3, v1

    const/4 v1, 0x1

    goto :goto_8

    :catch_4
    move-exception v3

    const/4 v4, 0x1

    :goto_6
    if-eqz v4, :cond_e

    :try_start_14
    iget-object v5, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v5, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V

    goto :goto_7

    :cond_e
    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1}, Lbsh/JJTParserState;->b()Lbsh/Node;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    move v1, v4

    :goto_7
    :try_start_15
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-nez v4, :cond_10

    instance-of v4, v3, Lbsh/ParseException;

    if-eqz v4, :cond_f

    check-cast v3, Lbsh/ParseException;

    throw v3

    :cond_f
    check-cast v3, Ljava/lang/Error;

    throw v3

    :cond_10
    check-cast v3, Ljava/lang/RuntimeException;

    throw v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :catchall_1
    move-exception v3

    goto :goto_8

    :catchall_2
    move-exception v1

    move-object v3, v1

    move v1, v4

    :goto_8
    if-eqz v1, :cond_11

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_11
    throw v3

    return-void
.end method

.method public final MethodDeclaration()V
    .locals 7

    new-instance v0, Lbsh/BSHMethodDeclaration;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lbsh/BSHMethodDeclaration;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2, v1}, Lbsh/Parser;->Modifiers(IZ)Lbsh/Modifiers;

    move-result-object v3

    iput-object v3, v0, Lbsh/BSHMethodDeclaration;->modifiers:Lbsh/Modifiers;

    const v3, 0x7fffffff

    invoke-direct {p0, v3}, Lbsh/Parser;->l(I)Z

    move-result v3

    const/16 v4, 0x45

    const/4 v5, -0x1

    if-eqz v3, :cond_0

    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v3

    iget-object v3, v3, Lbsh/Token;->image:Ljava/lang/String;

    :goto_0
    iput-object v3, v0, Lbsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    goto :goto_3

    :cond_0
    iget v3, p0, Lbsh/Parser;->d:I

    if-ne v3, v5, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v3

    goto :goto_1

    :cond_1
    iget v3, p0, Lbsh/Parser;->d:I

    :goto_1
    const/16 v6, 0xb

    if-eq v3, v6, :cond_3

    const/16 v6, 0xe

    if-eq v3, v6, :cond_3

    const/16 v6, 0x11

    if-eq v3, v6, :cond_3

    const/16 v6, 0x16

    if-eq v3, v6, :cond_3

    const/16 v6, 0x1d

    if-eq v3, v6, :cond_3

    const/16 v6, 0x24

    if-eq v3, v6, :cond_3

    const/16 v6, 0x26

    if-eq v3, v6, :cond_3

    const/16 v6, 0x2f

    if-eq v3, v6, :cond_3

    const/16 v6, 0x39

    if-eq v3, v6, :cond_3

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v3, Lbsh/ParseException;

    invoke-direct {v3}, Lbsh/ParseException;-><init>()V

    throw v3

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lbsh/Parser;->ReturnType()V

    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v3

    iget-object v3, v3, Lbsh/Token;->image:Ljava/lang/String;

    goto :goto_0

    :goto_3
    invoke-virtual {p0}, Lbsh/Parser;->FormalParameters()V

    iget v3, p0, Lbsh/Parser;->d:I

    if-ne v3, v5, :cond_4

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v3

    goto :goto_4

    :cond_4
    iget v3, p0, Lbsh/Parser;->d:I

    :goto_4
    const/16 v4, 0x36

    if-eq v3, v4, :cond_5

    goto :goto_5

    :cond_5
    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->NameList()I

    move-result v3

    iput v3, v0, Lbsh/BSHMethodDeclaration;->f:I

    :goto_5
    iget v3, p0, Lbsh/Parser;->d:I

    if-ne v3, v5, :cond_6

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v3

    goto :goto_6

    :cond_6
    iget v3, p0, Lbsh/Parser;->d:I

    :goto_6
    const/16 v4, 0x4a

    if-eq v3, v4, :cond_8

    const/16 v4, 0x4e

    if-ne v3, v4, :cond_7

    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    goto :goto_7

    :cond_7
    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v3, Lbsh/ParseException;

    invoke-direct {v3}, Lbsh/ParseException;-><init>()V

    throw v3

    :cond_8
    invoke-virtual {p0}, Lbsh/Parser;->Block()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_7
    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    return-void

    :catchall_0
    move-exception v1

    const/4 v3, 0x1

    goto :goto_8

    :catch_0
    move-exception v3

    :try_start_1
    iget-object v4, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-nez v4, :cond_a

    instance-of v4, v3, Lbsh/ParseException;

    if-eqz v4, :cond_9

    check-cast v3, Lbsh/ParseException;

    throw v3

    :cond_9
    check-cast v3, Ljava/lang/Error;

    throw v3

    :cond_a
    check-cast v3, Ljava/lang/RuntimeException;

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v3

    move-object v1, v3

    const/4 v3, 0x0

    :goto_8
    if-eqz v3, :cond_b

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_b
    throw v1

    return-void
.end method

.method public final MethodInvocation()V
    .locals 5

    new-instance v0, Lbsh/BSHMethodInvocation;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lbsh/BSHMethodInvocation;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    invoke-virtual {p0}, Lbsh/Parser;->Arguments()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v1}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    return-void

    :catchall_0
    move-exception v2

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    :try_start_2
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_1

    instance-of v4, v2, Lbsh/ParseException;

    if-eqz v4, :cond_0

    check-cast v2, Lbsh/ParseException;

    throw v2

    :cond_0
    check-cast v2, Ljava/lang/Error;

    throw v2

    :cond_1
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    :goto_0
    if-eqz v3, :cond_2

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v1}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_2
    throw v2
.end method

.method public final Modifiers(IZ)Lbsh/Modifiers;
    .locals 11

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget v1, p0, Lbsh/Parser;->d:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v1

    :cond_1
    const/16 v3, 0x34

    const/16 v4, 0x33

    const/16 v5, 0x31

    const/16 v6, 0x30

    const/16 v7, 0x3a

    const/16 v8, 0x27

    const/16 v9, 0x1b

    const/16 v10, 0xa

    if-eq v1, v10, :cond_2

    if-eq v1, v9, :cond_2

    if-eq v1, v8, :cond_2

    if-eq v1, v7, :cond_2

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_2

    packed-switch v1, :pswitch_data_0

    return-object v0

    :cond_2
    :pswitch_0
    iget v1, p0, Lbsh/Parser;->d:I

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v1

    :cond_3
    if-eq v1, v10, :cond_b

    if-eq v1, v9, :cond_a

    if-eq v1, v8, :cond_9

    if-eq v1, v7, :cond_8

    if-eq v1, v6, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_4

    packed-switch v1, :pswitch_data_1

    invoke-direct {p0, v2}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance p1, Lbsh/ParseException;

    invoke-direct {p1}, Lbsh/ParseException;-><init>()V

    throw p1

    :pswitch_1
    const/16 v1, 0x2d

    goto :goto_1

    :pswitch_2
    const/16 v1, 0x2c

    goto :goto_1

    :pswitch_3
    const/16 v1, 0x2b

    :goto_1
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    goto :goto_2

    :cond_4
    invoke-direct {p0, v3}, Lbsh/Parser;->F(I)Lbsh/Token;

    goto :goto_2

    :cond_5
    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    goto :goto_2

    :cond_6
    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;

    goto :goto_2

    :cond_7
    invoke-direct {p0, v6}, Lbsh/Parser;->F(I)Lbsh/Token;

    goto :goto_2

    :cond_8
    invoke-direct {p0, v7}, Lbsh/Parser;->F(I)Lbsh/Token;

    goto :goto_2

    :cond_9
    invoke-direct {p0, v8}, Lbsh/Parser;->F(I)Lbsh/Token;

    goto :goto_2

    :cond_a
    invoke-direct {p0, v9}, Lbsh/Parser;->F(I)Lbsh/Token;

    goto :goto_2

    :cond_b
    invoke-direct {p0, v10}, Lbsh/Parser;->F(I)Lbsh/Token;

    :goto_2
    if-nez p2, :cond_0

    if-nez v0, :cond_c

    :try_start_0
    new-instance v0, Lbsh/Modifiers;

    invoke-direct {v0}, Lbsh/Modifiers;-><init>()V

    :cond_c
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v1

    iget-object v1, v1, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lbsh/Modifiers;->addModifier(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbsh/Parser;->a(Ljava/lang/String;)Lbsh/ParseException;

    move-result-object p1

    throw p1

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2b
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final MultiplicativeExpression()V
    .locals 5

    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpression()V

    :goto_0
    iget v0, p0, Lbsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_0
    const/16 v2, 0x6f

    const/16 v3, 0x69

    const/16 v4, 0x68

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lbsh/Parser;->d:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_2
    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    if-ne v0, v2, :cond_3

    invoke-direct {p0, v2}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_4
    invoke-direct {p0, v3}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpression()V

    new-instance v1, Lbsh/BSHBinaryExpression;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v2, 0x1

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v1}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v1, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_6

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v1, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_6
    throw v0

    return-void
.end method

.method public final NameList()I
    .locals 3

    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lbsh/Parser;->d:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v1

    :cond_0
    const/16 v2, 0x4f

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    invoke-direct {p0, v2}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final NullLiteral()V
    .locals 1

    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lbsh/Parser;->F(I)Lbsh/Token;

    return-void
.end method

.method public final PackageDeclaration()V
    .locals 5

    new-instance v0, Lbsh/BSHPackageDeclaration;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lbsh/BSHPackageDeclaration;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/16 v1, 0x2a

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    return-void

    :catchall_0
    move-exception v1

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    :try_start_2
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_1

    instance-of v4, v1, Lbsh/ParseException;

    if-eqz v4, :cond_0

    check-cast v1, Lbsh/ParseException;

    throw v1

    :cond_0
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_1
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    :goto_0
    if-eqz v3, :cond_2

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_2
    throw v1
.end method

.method public final PostfixExpression()V
    .locals 4

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lbsh/Parser;->d(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lbsh/Parser;->PrimaryExpression()V

    iget v0, p0, Lbsh/Parser;->d:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_0
    const/16 v2, 0x64

    if-eq v0, v2, :cond_2

    const/16 v2, 0x65

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v0

    new-instance v1, Lbsh/BSHUnaryExpression;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lbsh/BSHUnaryExpression;-><init>(I)V

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v1}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v1, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v1, Lbsh/BSHUnaryExpression;->kind:I

    iput-boolean v2, v1, Lbsh/BSHUnaryExpression;->postfix:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_3

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v1, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_3
    throw v0

    :cond_4
    iget v0, p0, Lbsh/Parser;->d:I

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_5
    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->PrimaryExpression()V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
    .end sparse-switch
.end method

.method public final PreDecrementExpression()V
    .locals 4

    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v0

    invoke-virtual {p0}, Lbsh/Parser;->PrimaryExpression()V

    new-instance v1, Lbsh/BSHUnaryExpression;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lbsh/BSHUnaryExpression;-><init>(I)V

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v1}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v1, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v1, Lbsh/BSHUnaryExpression;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_0

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v1, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_0
    throw v0
.end method

.method public final PreIncrementExpression()V
    .locals 4

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v0

    invoke-virtual {p0}, Lbsh/Parser;->PrimaryExpression()V

    new-instance v1, Lbsh/BSHUnaryExpression;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lbsh/BSHUnaryExpression;-><init>(I)V

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v1}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v1, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v1, Lbsh/BSHUnaryExpression;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_0

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v1, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_0
    throw v0
.end method

.method public final PrimaryExpression()V
    .locals 5

    new-instance v0, Lbsh/BSHPrimaryExpression;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lbsh/BSHPrimaryExpression;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lbsh/Parser;->PrimaryPrefix()V

    :goto_0
    iget v2, p0, Lbsh/Parser;->d:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v2

    goto :goto_1

    :cond_0
    iget v2, p0, Lbsh/Parser;->d:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    const/16 v3, 0x4a

    if-eq v2, v3, :cond_1

    const/16 v3, 0x4c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x50

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v1}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lbsh/Parser;->PrimarySuffix()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    const/4 v3, 0x1

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    :try_start_3
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_3

    instance-of v4, v2, Lbsh/ParseException;

    if-eqz v4, :cond_2

    check-cast v2, Lbsh/ParseException;

    throw v2

    :cond_2
    check-cast v2, Ljava/lang/Error;

    throw v2

    :cond_3
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :goto_2
    if-eqz v3, :cond_4

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v1}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_4
    throw v2

    return-void
.end method

.method public final PrimaryPrefix()V
    .locals 3

    iget v0, p0, Lbsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_0
    const/16 v2, 0x1a

    if-eq v0, v2, :cond_7

    const/16 v2, 0x37

    if-eq v0, v2, :cond_7

    const/16 v2, 0x39

    if-eq v0, v2, :cond_7

    const/16 v2, 0x3c

    if-eq v0, v2, :cond_7

    const/16 v2, 0x40

    if-eq v0, v2, :cond_7

    const/16 v2, 0x48

    if-eq v0, v2, :cond_6

    const/16 v2, 0x28

    if-eq v0, v2, :cond_5

    const/16 v2, 0x29

    if-eq v0, v2, :cond_7

    const/16 v2, 0x42

    if-eq v0, v2, :cond_7

    const/16 v2, 0x43

    if-eq v0, v2, :cond_7

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lbsh/Parser;->f(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lbsh/Parser;->MethodInvocation()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lbsh/Parser;->g(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lbsh/Parser;->d:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_3
    const/16 v2, 0x45

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_5
    invoke-virtual {p0}, Lbsh/Parser;->AllocationExpression()V

    goto :goto_0

    :cond_6
    invoke-direct {p0, v2}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->F(I)Lbsh/Token;

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lbsh/Parser;->Literal()V

    :goto_0
    return-void
.end method

.method public final PrimarySuffix()V
    .locals 8

    new-instance v0, Lbsh/BSHPrimarySuffix;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lbsh/BSHPrimarySuffix;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lbsh/Parser;->h(I)Z

    move-result v4

    const/16 v5, 0x50

    if-eqz v4, :cond_0

    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;

    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    iput v2, v0, Lbsh/BSHPrimarySuffix;->operation:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_3

    :catch_0
    move-exception v1

    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_0
    :try_start_2
    iget v4, p0, Lbsh/Parser;->d:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v4

    goto :goto_0

    :cond_1
    iget v4, p0, Lbsh/Parser;->d:I

    :goto_0
    const/16 v7, 0x4a

    if-eq v4, v7, :cond_6

    const/16 v7, 0x4c

    if-eq v4, v7, :cond_5

    if-ne v4, v5, :cond_4

    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;

    const/16 v4, 0x45

    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v4

    iget v5, p0, Lbsh/Parser;->d:I

    if-ne v5, v6, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v5

    goto :goto_1

    :cond_2
    iget v5, p0, Lbsh/Parser;->d:I

    :goto_1
    const/16 v6, 0x48

    if-eq v5, v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lbsh/Parser;->Arguments()V

    :goto_2
    iget-object v5, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v5, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    iput v1, v0, Lbsh/BSHPrimarySuffix;->operation:I

    iget-object v1, v4, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v1, v0, Lbsh/BSHPrimarySuffix;->field:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :cond_4
    :try_start_4
    invoke-direct {p0, v6}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v1, Lbsh/ParseException;

    invoke-direct {v1}, Lbsh/ParseException;-><init>()V

    throw v1

    :cond_5
    invoke-direct {p0, v7}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v1, 0x4d

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    iput v3, v0, Lbsh/BSHPrimarySuffix;->operation:I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :cond_6
    :try_start_6
    invoke-direct {p0, v7}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v1, 0x4b

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    const/4 v1, 0x3

    iput v1, v0, Lbsh/BSHPrimarySuffix;->operation:I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_3
    return-void

    :catchall_0
    move-exception v1

    const/4 v2, 0x1

    goto :goto_6

    :catch_1
    move-exception v1

    const/4 v4, 0x1

    :goto_4
    if-eqz v4, :cond_7

    :try_start_8
    iget-object v5, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v5, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V

    goto :goto_5

    :cond_7
    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2}, Lbsh/JJTParserState;->b()Lbsh/Node;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move v2, v4

    :goto_5
    :try_start_9
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_9

    instance-of v4, v1, Lbsh/ParseException;

    if-eqz v4, :cond_8

    check-cast v1, Lbsh/ParseException;

    throw v1

    :cond_8
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_9
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_6

    :catchall_2
    move-exception v1

    move v2, v4

    :goto_6
    if-eqz v2, :cond_a

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_a
    throw v1
.end method

.method public final PrimitiveType()V
    .locals 6

    new-instance v0, Lbsh/BSHPrimitiveType;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lbsh/BSHPrimitiveType;-><init>(I)V

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget v4, p0, Lbsh/Parser;->d:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v4

    goto :goto_0

    :cond_0
    iget v4, p0, Lbsh/Parser;->d:I

    :goto_0
    if-eq v4, v1, :cond_8

    const/16 v1, 0xe

    if-eq v4, v1, :cond_7

    const/16 v1, 0x11

    if-eq v4, v1, :cond_6

    const/16 v1, 0x16

    if-eq v4, v1, :cond_5

    const/16 v1, 0x1d

    if-eq v4, v1, :cond_4

    const/16 v1, 0x24

    if-eq v4, v1, :cond_3

    const/16 v1, 0x26

    if-eq v4, v1, :cond_2

    const/16 v1, 0x2f

    if-ne v4, v1, :cond_1

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    :goto_1
    iput-object v1, v0, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_1
    :try_start_2
    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v1, Lbsh/ParseException;

    invoke-direct {v1}, Lbsh/ParseException;-><init>()V

    throw v1

    :cond_2
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_3
    :try_start_4
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :cond_4
    :try_start_6
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :cond_5
    :try_start_8
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    :cond_6
    :try_start_a
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1

    :cond_7
    :try_start_c
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_1

    :cond_8
    :try_start_e
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    :catchall_0
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v1

    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_9

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_9
    throw v1

    return-void
.end method

.method public ReInit(Lbsh/ParserTokenManager;)V
    .locals 0

    iput-object p1, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    new-instance p1, Lbsh/Token;

    invoke-direct {p1}, Lbsh/Token;-><init>()V

    iput-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    const/4 p1, -0x1

    iput p1, p0, Lbsh/Parser;->d:I

    iget-object p1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {p1}, Lbsh/JJTParserState;->c()V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->c:Lbsh/JavaCharStream;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lbsh/JavaCharStream;->ReInit(Ljava/io/InputStream;II)V

    iget-object p1, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    iget-object v0, p0, Lbsh/Parser;->c:Lbsh/JavaCharStream;

    invoke-virtual {p1, v0}, Lbsh/ParserTokenManager;->ReInit(Lbsh/JavaCharStream;)V

    new-instance p1, Lbsh/Token;

    invoke-direct {p1}, Lbsh/Token;-><init>()V

    iput-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    const/4 p1, -0x1

    iput p1, p0, Lbsh/Parser;->d:I

    iget-object p1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {p1}, Lbsh/JJTParserState;->c()V

    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->c:Lbsh/JavaCharStream;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lbsh/JavaCharStream;->ReInit(Ljava/io/Reader;II)V

    iget-object p1, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    iget-object v0, p0, Lbsh/Parser;->c:Lbsh/JavaCharStream;

    invoke-virtual {p1, v0}, Lbsh/ParserTokenManager;->ReInit(Lbsh/JavaCharStream;)V

    new-instance p1, Lbsh/Token;

    invoke-direct {p1}, Lbsh/Token;-><init>()V

    iput-object p1, p0, Lbsh/Parser;->token:Lbsh/Token;

    const/4 p1, -0x1

    iput p1, p0, Lbsh/Parser;->d:I

    iget-object p1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {p1}, Lbsh/JJTParserState;->c()V

    return-void
.end method

.method public final RelationalExpression()V
    .locals 5

    invoke-virtual {p0}, Lbsh/Parser;->ShiftExpression()V

    :goto_0
    iget v0, p0, Lbsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    return-void

    :pswitch_0
    iget v0, p0, Lbsh/Parser;->d:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_1
    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :pswitch_1
    const/16 v0, 0x5e

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x5d

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x5c

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x5b

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x55

    goto :goto_1

    :pswitch_6
    const/16 v0, 0x54

    goto :goto_1

    :pswitch_7
    const/16 v0, 0x53

    goto :goto_1

    :pswitch_8
    const/16 v0, 0x52

    :goto_1
    invoke-direct {p0, v0}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v0

    invoke-virtual {p0}, Lbsh/Parser;->ShiftExpression()V

    new-instance v1, Lbsh/BSHBinaryExpression;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v2, 0x1

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v1}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v1, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v1, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_2
    throw v0

    return-void

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x52
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5b
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final ReturnStatement()V
    .locals 6

    new-instance v0, Lbsh/BSHReturnStatement;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, Lbsh/BSHReturnStatement;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v1, 0x0

    const/16 v2, 0x2e

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget v4, p0, Lbsh/Parser;->d:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v4

    goto :goto_0

    :cond_0
    iget v4, p0, Lbsh/Parser;->d:I

    :goto_0
    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    :goto_1
    const/16 v4, 0x4e

    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget-object v4, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    iput v2, v0, Lbsh/BSHReturnStatement;->kind:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v2

    move-object v1, v2

    const/4 v4, 0x0

    goto :goto_4

    :catch_0
    move-exception v2

    const/4 v4, 0x0

    goto :goto_2

    :catchall_1
    move-exception v1

    const/4 v4, 0x1

    goto :goto_4

    :catch_1
    move-exception v2

    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_1

    :try_start_2
    iget-object v5, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v5, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1}, Lbsh/JJTParserState;->b()Lbsh/Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move v1, v4

    :goto_3
    :try_start_3
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_3

    instance-of v4, v2, Lbsh/ParseException;

    if-eqz v4, :cond_2

    check-cast v2, Lbsh/ParseException;

    throw v2

    :cond_2
    check-cast v2, Ljava/lang/Error;

    throw v2

    :cond_3
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v2

    move v4, v1

    move-object v1, v2

    goto :goto_4

    :catchall_3
    move-exception v1

    :goto_4
    if-eqz v4, :cond_4

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_4
    throw v1

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ReturnType()V
    .locals 6

    new-instance v0, Lbsh/BSHReturnType;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lbsh/BSHReturnType;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget v3, p0, Lbsh/Parser;->d:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v3

    goto :goto_0

    :cond_0
    iget v3, p0, Lbsh/Parser;->d:I

    :goto_0
    const/16 v5, 0xb

    if-eq v3, v5, :cond_3

    const/16 v5, 0xe

    if-eq v3, v5, :cond_3

    const/16 v5, 0x11

    if-eq v3, v5, :cond_3

    const/16 v5, 0x16

    if-eq v3, v5, :cond_3

    const/16 v5, 0x1d

    if-eq v3, v5, :cond_3

    const/16 v5, 0x24

    if-eq v3, v5, :cond_3

    const/16 v5, 0x26

    if-eq v3, v5, :cond_3

    const/16 v5, 0x2f

    if-eq v3, v5, :cond_3

    const/16 v5, 0x39

    if-eq v3, v5, :cond_2

    const/16 v5, 0x45

    if-ne v3, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v3, Lbsh/ParseException;

    invoke-direct {v3}, Lbsh/ParseException;-><init>()V

    throw v3

    :cond_2
    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    iput-boolean v2, v0, Lbsh/BSHReturnType;->isVoid:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    move-object v1, v3

    const/4 v4, 0x0

    goto :goto_5

    :catch_0
    move-exception v3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lbsh/Parser;->Type()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_4

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_4
    return-void

    :catchall_1
    move-exception v1

    const/4 v4, 0x1

    goto :goto_5

    :catch_1
    move-exception v3

    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_5

    :try_start_3
    iget-object v5, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v5, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1}, Lbsh/JJTParserState;->b()Lbsh/Node;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move v1, v4

    :goto_4
    :try_start_4
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-nez v4, :cond_7

    instance-of v4, v3, Lbsh/ParseException;

    if-eqz v4, :cond_6

    check-cast v3, Lbsh/ParseException;

    throw v3

    :cond_6
    check-cast v3, Ljava/lang/Error;

    throw v3

    :cond_7
    check-cast v3, Ljava/lang/RuntimeException;

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v3

    move v4, v1

    move-object v1, v3

    goto :goto_5

    :catchall_3
    move-exception v1

    :goto_5
    if-eqz v4, :cond_8

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_8
    throw v1
.end method

.method public final ShiftExpression()V
    .locals 5

    invoke-virtual {p0}, Lbsh/Parser;->AdditiveExpression()V

    :goto_0
    iget v0, p0, Lbsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget v0, p0, Lbsh/Parser;->d:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_1
    packed-switch v0, :pswitch_data_1

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :pswitch_1
    const/16 v0, 0x75

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x74

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x73

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x72

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x71

    goto :goto_1

    :pswitch_6
    const/16 v0, 0x70

    :goto_1
    invoke-direct {p0, v0}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v0

    invoke-virtual {p0}, Lbsh/Parser;->AdditiveExpression()V

    new-instance v1, Lbsh/BSHBinaryExpression;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lbsh/BSHBinaryExpression;-><init>(I)V

    const/4 v2, 0x1

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v1}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v1, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v1, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_2
    throw v0

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x70
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final Statement()V
    .locals 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbsh/Parser;->o(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbsh/Parser;->LabeledStatement()V

    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lbsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_1
    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0}, Lbsh/Parser;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lbsh/Parser;->ForStatement()V

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->EmptyStatement()V

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lbsh/Parser;->Block()V

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lbsh/Parser;->WhileStatement()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lbsh/Parser;->SwitchStatement()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lbsh/Parser;->IfStatement()V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lbsh/Parser;->DoStatement()V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lbsh/Parser;->StatementExpression()V

    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->F(I)Lbsh/Token;

    goto :goto_0

    :cond_2
    iget v0, p0, Lbsh/Parser;->d:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_3
    const/16 v2, 0xc

    if-eq v0, v2, :cond_a

    const/16 v2, 0x13

    if-eq v0, v2, :cond_9

    const/16 v2, 0x1e

    if-eq v0, v2, :cond_8

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_7

    const/16 v2, 0x33

    if-eq v0, v2, :cond_6

    const/16 v2, 0x35

    if-eq v0, v2, :cond_5

    const/16 v2, 0x38

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lbsh/Parser;->TryStatement()V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_5
    invoke-virtual {p0}, Lbsh/Parser;->ThrowStatement()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lbsh/Parser;->SynchronizedStatement()V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lbsh/Parser;->ReturnStatement()V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lbsh/Parser;->EnhancedForStatement()V

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lbsh/Parser;->ContinueStatement()V

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Lbsh/Parser;->BreakStatement()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_6
        0xe -> :sswitch_6
        0x11 -> :sswitch_6
        0x15 -> :sswitch_5
        0x16 -> :sswitch_6
        0x1a -> :sswitch_6
        0x1d -> :sswitch_6
        0x20 -> :sswitch_4
        0x24 -> :sswitch_6
        0x26 -> :sswitch_6
        0x28 -> :sswitch_6
        0x29 -> :sswitch_6
        0x2f -> :sswitch_6
        0x32 -> :sswitch_3
        0x37 -> :sswitch_6
        0x39 -> :sswitch_6
        0x3b -> :sswitch_2
        0x3c -> :sswitch_6
        0x40 -> :sswitch_6
        0x42 -> :sswitch_6
        0x43 -> :sswitch_6
        0x45 -> :sswitch_6
        0x48 -> :sswitch_6
        0x4a -> :sswitch_1
        0x4e -> :sswitch_0
        0x56 -> :sswitch_6
        0x57 -> :sswitch_6
        0x64 -> :sswitch_6
        0x65 -> :sswitch_6
        0x66 -> :sswitch_6
        0x67 -> :sswitch_6
    .end sparse-switch
.end method

.method public final StatementExpression()V
    .locals 0

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    return-void
.end method

.method public final StatementExpressionList()V
    .locals 5

    new-instance v0, Lbsh/BSHStatementExpressionList;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Lbsh/BSHStatementExpressionList;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lbsh/Parser;->StatementExpression()V

    :goto_0
    iget v2, p0, Lbsh/Parser;->d:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v2

    goto :goto_1

    :cond_0
    iget v2, p0, Lbsh/Parser;->d:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    const/16 v3, 0x4f

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v1}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0, v3}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->StatementExpression()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    const/4 v3, 0x1

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    :try_start_3
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_3

    instance-of v4, v2, Lbsh/ParseException;

    if-eqz v4, :cond_2

    check-cast v2, Lbsh/ParseException;

    throw v2

    :cond_2
    check-cast v2, Ljava/lang/Error;

    throw v2

    :cond_3
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :goto_2
    if-eqz v3, :cond_4

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v1}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_4
    throw v2

    return-void
.end method

.method public final SwitchLabel()V
    .locals 7

    new-instance v0, Lbsh/BSHSwitchLabel;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lbsh/BSHSwitchLabel;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget v3, p0, Lbsh/Parser;->d:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v3

    goto :goto_0

    :cond_0
    iget v3, p0, Lbsh/Parser;->d:I

    :goto_0
    const/16 v5, 0x59

    const/16 v6, 0xf

    if-eq v3, v6, :cond_2

    const/16 v6, 0x14

    if-ne v3, v6, :cond_1

    invoke-direct {p0, v6}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    iput-boolean v2, v0, Lbsh/BSHSwitchLabel;->g:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    move-object v1, v3

    const/4 v4, 0x0

    goto :goto_4

    :catch_0
    move-exception v3

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    :try_start_2
    invoke-direct {p0, v4}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v3, Lbsh/ParseException;

    invoke-direct {v3}, Lbsh/ParseException;-><init>()V

    throw v3

    :cond_2
    invoke-direct {p0, v6}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_3
    return-void

    :catchall_1
    move-exception v1

    const/4 v4, 0x1

    goto :goto_4

    :catch_1
    move-exception v3

    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_4

    :try_start_3
    iget-object v5, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v5, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1}, Lbsh/JJTParserState;->b()Lbsh/Node;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move v1, v4

    :goto_3
    :try_start_4
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-nez v4, :cond_6

    instance-of v4, v3, Lbsh/ParseException;

    if-eqz v4, :cond_5

    check-cast v3, Lbsh/ParseException;

    throw v3

    :cond_5
    check-cast v3, Ljava/lang/Error;

    throw v3

    :cond_6
    check-cast v3, Ljava/lang/RuntimeException;

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v3

    move v4, v1

    move-object v1, v3

    goto :goto_4

    :catchall_3
    move-exception v1

    :goto_4
    if-eqz v4, :cond_7

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_7
    throw v1
.end method

.method public final SwitchStatement()V
    .locals 5

    new-instance v0, Lbsh/BSHSwitchStatement;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lbsh/BSHSwitchStatement;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/16 v1, 0x32

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    const/16 v1, 0x4a

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    :cond_0
    iget v1, p0, Lbsh/Parser;->d:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lbsh/Parser;->d:I

    :goto_0
    const/16 v3, 0xf

    if-eq v1, v3, :cond_2

    const/16 v3, 0x14

    if-eq v1, v3, :cond_2

    const/16 v1, 0x4b

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lbsh/Parser;->SwitchLabel()V

    :goto_1
    invoke-direct {p0, v2}, Lbsh/Parser;->v(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lbsh/Parser;->BlockStatement()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    const/4 v3, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    :try_start_3
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_4

    instance-of v4, v1, Lbsh/ParseException;

    if-eqz v4, :cond_3

    check-cast v1, Lbsh/ParseException;

    throw v1

    :cond_3
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_4
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :goto_2
    if-eqz v3, :cond_5

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_5
    throw v1

    return-void
.end method

.method public final SynchronizedStatement()V
    .locals 6

    new-instance v0, Lbsh/BSHBlock;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lbsh/BSHBlock;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/16 v1, 0x33

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Block()V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    iput-boolean v3, v0, Lbsh/BSHBlock;->isSynchronized:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catch_0
    move-exception v1

    const/4 v4, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    const/4 v2, 0x1

    goto :goto_2

    :catch_1
    move-exception v1

    const/4 v4, 0x1

    :goto_0
    if-eqz v4, :cond_0

    :try_start_2
    iget-object v5, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v5, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2}, Lbsh/JJTParserState;->b()Lbsh/Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v2, v4

    :goto_1
    :try_start_3
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_2

    instance-of v4, v1, Lbsh/ParseException;

    if-eqz v4, :cond_1

    check-cast v1, Lbsh/ParseException;

    throw v1

    :cond_1
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_2
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :catchall_2
    move-exception v1

    move v2, v4

    :goto_2
    if-eqz v2, :cond_3

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_3
    throw v1
.end method

.method public final ThrowStatement()V
    .locals 5

    new-instance v0, Lbsh/BSHThrowStatement;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Lbsh/BSHThrowStatement;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/16 v1, 0x35

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    return-void

    :catchall_0
    move-exception v1

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    :try_start_2
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_1

    instance-of v4, v1, Lbsh/ParseException;

    if-eqz v4, :cond_0

    check-cast v1, Lbsh/ParseException;

    throw v1

    :cond_0
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_1
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    :goto_0
    if-eqz v3, :cond_2

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_2
    throw v1
.end method

.method public final TryStatement()V
    .locals 7

    new-instance v0, Lbsh/BSHTryStatement;

    const/16 v1, 0x25

    invoke-direct {v0, v1}, Lbsh/BSHTryStatement;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/16 v1, 0x38

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Block()V

    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Lbsh/Parser;->d:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v4

    goto :goto_1

    :cond_0
    iget v4, p0, Lbsh/Parser;->d:I

    :goto_1
    const/16 v6, 0x10

    if-eq v4, v6, :cond_4

    iget v4, p0, Lbsh/Parser;->d:I

    if-ne v4, v5, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v4

    goto :goto_2

    :cond_1
    iget v4, p0, Lbsh/Parser;->d:I

    :goto_2
    const/16 v5, 0x1c

    if-eq v4, v5, :cond_2

    goto :goto_3

    :cond_2
    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Block()V

    const/4 v1, 0x1

    :goto_3
    iget-object v4, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lbsh/Parser;->generateParseException()Lbsh/ParseException;

    move-result-object v1

    throw v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    move-exception v1

    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    :try_start_2
    invoke-direct {p0, v6}, Lbsh/Parser;->F(I)Lbsh/Token;

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->FormalParameter()V

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Block()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    const/4 v2, 0x1

    goto :goto_6

    :catch_1
    move-exception v1

    const/4 v4, 0x1

    :goto_4
    if-eqz v4, :cond_5

    :try_start_3
    iget-object v5, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v5, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2}, Lbsh/JJTParserState;->b()Lbsh/Node;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v2, v4

    :goto_5
    :try_start_4
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_7

    instance-of v4, v1, Lbsh/ParseException;

    if-eqz v4, :cond_6

    check-cast v1, Lbsh/ParseException;

    throw v1

    :cond_6
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_7
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_6

    :catchall_2
    move-exception v1

    move v2, v4

    :goto_6
    if-eqz v2, :cond_8

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_8
    throw v1

    return-void
.end method

.method public final Type()V
    .locals 5

    new-instance v0, Lbsh/BSHType;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lbsh/BSHType;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v1, 0x1

    :try_start_0
    iget v2, p0, Lbsh/Parser;->d:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v2

    goto :goto_0

    :cond_0
    iget v2, p0, Lbsh/Parser;->d:I

    :goto_0
    const/16 v4, 0xb

    if-eq v2, v4, :cond_2

    const/16 v4, 0xe

    if-eq v2, v4, :cond_2

    const/16 v4, 0x11

    if-eq v2, v4, :cond_2

    const/16 v4, 0x16

    if-eq v2, v4, :cond_2

    const/16 v4, 0x1d

    if-eq v2, v4, :cond_2

    const/16 v4, 0x24

    if-eq v2, v4, :cond_2

    const/16 v4, 0x26

    if-eq v2, v4, :cond_2

    const/16 v4, 0x2f

    if-eq v2, v4, :cond_2

    const/16 v4, 0x45

    if-ne v2, v4, :cond_1

    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v3}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v2, Lbsh/ParseException;

    invoke-direct {v2}, Lbsh/ParseException;-><init>()V

    throw v2

    :cond_2
    invoke-virtual {p0}, Lbsh/Parser;->PrimitiveType()V

    :goto_1
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lbsh/Parser;->B(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x4c

    invoke-direct {p0, v2}, Lbsh/Parser;->F(I)Lbsh/Token;

    const/16 v2, 0x4d

    invoke-direct {p0, v2}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {v0}, Lbsh/BSHType;->addArrayDimension()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v1}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    return-void

    :catchall_0
    move-exception v2

    const/4 v3, 0x1

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    :try_start_2
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_5

    instance-of v4, v2, Lbsh/ParseException;

    if-eqz v4, :cond_4

    check-cast v2, Lbsh/ParseException;

    throw v2

    :cond_4
    check-cast v2, Ljava/lang/Error;

    throw v2

    :cond_5
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    :goto_2
    if-eqz v3, :cond_6

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v1}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_6
    throw v2

    return-void
.end method

.method public final TypedVariableDeclaration()V
    .locals 6

    new-instance v0, Lbsh/BSHTypedVariableDeclaration;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Lbsh/BSHTypedVariableDeclaration;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lbsh/Parser;->Modifiers(IZ)Lbsh/Modifiers;

    move-result-object v1

    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    :goto_0
    invoke-virtual {p0}, Lbsh/Parser;->VariableDeclarator()V

    iget v4, p0, Lbsh/Parser;->d:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v4

    goto :goto_1

    :cond_0
    iget v4, p0, Lbsh/Parser;->d:I

    :goto_1
    const/16 v5, 0x4f

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    iput-object v1, v0, Lbsh/BSHTypedVariableDeclaration;->modifiers:Lbsh/Modifiers;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catch_0
    move-exception v1

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    :try_start_2
    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const/4 v2, 0x1

    goto :goto_4

    :catch_1
    move-exception v1

    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_2

    :try_start_3
    iget-object v5, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v5, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2}, Lbsh/JJTParserState;->b()Lbsh/Node;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v2, v4

    :goto_3
    :try_start_4
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_4

    instance-of v4, v1, Lbsh/ParseException;

    if-eqz v4, :cond_3

    check-cast v1, Lbsh/ParseException;

    throw v1

    :cond_3
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_4
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_4

    :catchall_2
    move-exception v1

    move v2, v4

    :goto_4
    if-eqz v2, :cond_5

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_5
    throw v1

    return-void
.end method

.method public final UnaryExpression()V
    .locals 4

    iget v0, p0, Lbsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_0
    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :sswitch_0
    iget v0, p0, Lbsh/Parser;->d:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_1
    const/16 v2, 0x66

    if-eq v0, v2, :cond_3

    const/16 v2, 0x67

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_3
    :goto_0
    invoke-direct {p0, v2}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v0

    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpression()V

    new-instance v1, Lbsh/BSHUnaryExpression;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lbsh/BSHUnaryExpression;-><init>(I)V

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v1}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v1, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v1, Lbsh/BSHUnaryExpression;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_4

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v1, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_4
    throw v0

    :sswitch_1
    invoke-virtual {p0}, Lbsh/Parser;->PreDecrementExpression()V

    goto :goto_2

    :sswitch_2
    invoke-virtual {p0}, Lbsh/Parser;->PreIncrementExpression()V

    goto :goto_2

    :sswitch_3
    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpressionNotPlusMinus()V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_3
        0xe -> :sswitch_3
        0x11 -> :sswitch_3
        0x16 -> :sswitch_3
        0x1a -> :sswitch_3
        0x1d -> :sswitch_3
        0x24 -> :sswitch_3
        0x26 -> :sswitch_3
        0x28 -> :sswitch_3
        0x29 -> :sswitch_3
        0x2f -> :sswitch_3
        0x37 -> :sswitch_3
        0x39 -> :sswitch_3
        0x3c -> :sswitch_3
        0x40 -> :sswitch_3
        0x42 -> :sswitch_3
        0x43 -> :sswitch_3
        0x45 -> :sswitch_3
        0x48 -> :sswitch_3
        0x56 -> :sswitch_3
        0x57 -> :sswitch_3
        0x64 -> :sswitch_2
        0x65 -> :sswitch_1
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public final UnaryExpressionNotPlusMinus()V
    .locals 4

    iget v0, p0, Lbsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_0
    const/16 v2, 0x57

    const/16 v3, 0x56

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_3

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lbsh/Parser;->E(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbsh/Parser;->CastExpression()V

    goto :goto_1

    :cond_1
    iget v0, p0, Lbsh/Parser;->d:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_2
    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->PostfixExpression()V

    goto :goto_1

    :cond_3
    iget v0, p0, Lbsh/Parser;->d:I

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_4
    if-eq v0, v3, :cond_6

    if-ne v0, v2, :cond_5

    invoke-direct {p0, v2}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :cond_6
    invoke-direct {p0, v3}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpression()V

    new-instance v1, Lbsh/BSHUnaryExpression;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lbsh/BSHUnaryExpression;-><init>(I)V

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v1}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v1, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, v1, Lbsh/BSHUnaryExpression;->kind:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_7

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v1, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;I)V

    invoke-virtual {p0, v1}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_7
    throw v0

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
    .end sparse-switch
.end method

.method public final VariableDeclarator()V
    .locals 6

    new-instance v0, Lbsh/BSHVariableDeclarator;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lbsh/BSHVariableDeclarator;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/16 v1, 0x45

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    move-result-object v1

    iget v4, p0, Lbsh/Parser;->d:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v4

    goto :goto_0

    :cond_0
    iget v4, p0, Lbsh/Parser;->d:I

    :goto_0
    const/16 v5, 0x51

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v5}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->VariableInitializer()V

    :goto_1
    iget-object v4, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    iget-object v1, v1, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v1, v0, Lbsh/BSHVariableDeclarator;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catch_0
    move-exception v1

    const/4 v4, 0x0

    goto :goto_2

    :catchall_0
    move-exception v1

    const/4 v2, 0x1

    goto :goto_4

    :catch_1
    move-exception v1

    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_2

    :try_start_2
    iget-object v5, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v5, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2}, Lbsh/JJTParserState;->b()Lbsh/Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v2, v4

    :goto_3
    :try_start_3
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_4

    instance-of v4, v1, Lbsh/ParseException;

    if-eqz v4, :cond_3

    check-cast v1, Lbsh/ParseException;

    throw v1

    :cond_3
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_4
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_4

    :catchall_2
    move-exception v1

    move v2, v4

    :goto_4
    if-eqz v2, :cond_5

    iget-object v2, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_5
    throw v1
.end method

.method public final VariableInitializer()V
    .locals 2

    iget v0, p0, Lbsh/Parser;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->nd()I

    move-result v0

    :cond_0
    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->ArrayInitializer()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_1
        0xe -> :sswitch_1
        0x11 -> :sswitch_1
        0x16 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1d -> :sswitch_1
        0x24 -> :sswitch_1
        0x26 -> :sswitch_1
        0x28 -> :sswitch_1
        0x29 -> :sswitch_1
        0x2f -> :sswitch_1
        0x37 -> :sswitch_1
        0x39 -> :sswitch_1
        0x3c -> :sswitch_1
        0x40 -> :sswitch_1
        0x42 -> :sswitch_1
        0x43 -> :sswitch_1
        0x45 -> :sswitch_1
        0x48 -> :sswitch_1
        0x4a -> :sswitch_0
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
        0x67 -> :sswitch_1
    .end sparse-switch
.end method

.method public final VoidLiteral()V
    .locals 1

    const/16 v0, 0x39

    invoke-direct {p0, v0}, Lbsh/Parser;->F(I)Lbsh/Token;

    return-void
.end method

.method public final WhileStatement()V
    .locals 5

    new-instance v0, Lbsh/BSHWhileStatement;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lbsh/BSHWhileStatement;-><init>(I)V

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0}, Lbsh/JJTParserState;->b(Lbsh/Node;)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->b(Lbsh/Node;)V

    const/16 v1, 0x3b

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->F(I)Lbsh/Token;

    invoke-virtual {p0}, Lbsh/Parser;->Statement()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    return-void

    :catchall_0
    move-exception v1

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0}, Lbsh/JJTParserState;->a(Lbsh/Node;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    :try_start_2
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_1

    instance-of v4, v1, Lbsh/ParseException;

    if-eqz v4, :cond_0

    check-cast v1, Lbsh/ParseException;

    throw v1

    :cond_0
    check-cast v1, Ljava/lang/Error;

    throw v1

    :cond_1
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    :goto_0
    if-eqz v3, :cond_2

    iget-object v3, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->a(Lbsh/Node;Z)V

    invoke-virtual {p0, v0}, Lbsh/Parser;->a(Lbsh/Node;)V

    :cond_2
    throw v1
.end method

.method a(Ljava/lang/String;)Lbsh/ParseException;
    .locals 5

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget v1, v0, Lbsh/Token;->beginLine:I

    iget v2, v0, Lbsh/Token;->beginColumn:I

    iget v3, v0, Lbsh/Token;->kind:I

    if-nez v3, :cond_0

    sget-object v0, Lbsh/ParserConstants;->tokenImage:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    :goto_0
    new-instance v0, Lbsh/ParseException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Parse error at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", column "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lbsh/ParseException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method a(Lbsh/Node;)V
    .locals 1

    check-cast p1, Lbsh/SimpleNode;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v0

    iput-object v0, p1, Lbsh/SimpleNode;->e:Lbsh/Token;

    return-void
.end method

.method a(Ljava/io/Reader;)V
    .locals 0

    invoke-virtual {p0, p1}, Lbsh/Parser;->ReInit(Ljava/io/Reader;)V

    return-void
.end method

.method a()Z
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v1

    iget v1, v1, Lbsh/Token;->kind:I

    const/4 v2, 0x0

    const/16 v3, 0x1e

    if-eq v1, v3, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x3

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v3

    iget v3, v3, Lbsh/Token;->kind:I

    const/16 v4, 0x48

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    :goto_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v1

    iget v1, v1, Lbsh/Token;->kind:I

    if-eqz v1, :cond_4

    const/16 v4, 0x4e

    if-eq v1, v4, :cond_3

    const/16 v4, 0x59

    if-eq v1, v4, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    return v0

    :cond_4
    return v2
.end method

.method b(Lbsh/Node;)V
    .locals 1

    check-cast p1, Lbsh/SimpleNode;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v0

    iput-object v0, p1, Lbsh/SimpleNode;->d:Lbsh/Token;

    return-void
.end method

.method b(Ljava/io/Reader;)V
    .locals 3

    iget-object v0, p0, Lbsh/Parser;->c:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->getEndLine()I

    move-result v1

    iget-object v2, p0, Lbsh/Parser;->c:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->getEndColumn()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lbsh/JavaCharStream;->ReInit(Ljava/io/Reader;II)V

    return-void
.end method

.method public final disable_tracing()V
    .locals 0

    return-void
.end method

.method public final enable_tracing()V
    .locals 0

    return-void
.end method

.method public generateParseException()Lbsh/ParseException;
    .locals 6

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v0, v0, Lbsh/Token;->next:Lbsh/Token;

    iget v1, v0, Lbsh/Token;->beginLine:I

    iget v2, v0, Lbsh/Token;->beginColumn:I

    iget v3, v0, Lbsh/Token;->kind:I

    if-nez v3, :cond_0

    sget-object v0, Lbsh/ParserConstants;->tokenImage:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lbsh/Token;->image:Ljava/lang/String;

    :goto_0
    new-instance v3, Lbsh/ParseException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Parse error at line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", column "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ".  Encountered: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lbsh/ParseException;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method public final getNextToken()Lbsh/Token;
    .locals 2

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v1, v0, Lbsh/Token;->next:Lbsh/Token;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    invoke-virtual {v1}, Lbsh/ParserTokenManager;->getNextToken()Lbsh/Token;

    move-result-object v1

    iput-object v1, v0, Lbsh/Token;->next:Lbsh/Token;

    :goto_0
    iput-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    const/4 v0, -0x1

    iput v0, p0, Lbsh/Parser;->d:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    return-object v0
.end method

.method public final getToken(I)Lbsh/Token;
    .locals 3

    iget-boolean v0, p0, Lbsh/Parser;->lookingAhead:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/Parser;->e:Lbsh/Token;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-lt v1, p1, :cond_1

    return-object v0

    :cond_1
    iget-object v2, v0, Lbsh/Token;->next:Lbsh/Token;

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    invoke-virtual {v2}, Lbsh/ParserTokenManager;->getNextToken()Lbsh/Token;

    move-result-object v2

    iput-object v2, v0, Lbsh/Token;->next:Lbsh/Token;

    :goto_2
    move-object v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public popNode()Lbsh/SimpleNode;
    .locals 1

    iget-object v0, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v0}, Lbsh/JJTParserState;->a()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lbsh/Parser;->a:Lbsh/JJTParserState;

    invoke-virtual {v0}, Lbsh/JJTParserState;->b()Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setRetainComments(Z)V
    .locals 0

    iput-boolean p1, p0, Lbsh/Parser;->b:Z

    return-void
.end method
