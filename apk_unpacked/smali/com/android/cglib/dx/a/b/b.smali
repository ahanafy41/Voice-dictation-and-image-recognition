.class public final Lcom/android/cglib/dx/a/b/b;
.super Lcom/android/cglib/dx/a/b/M;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cglib/dx/a/b/b$a;
    }
.end annotation


# static fields
.field private static final e:Lcom/android/cglib/dx/a/b/b$a;


# instance fields
.field private final f:Lcom/android/cglib/dx/c/a/a;

.field private g:Lcom/android/cglib/dx/a/b/W;

.field private h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/cglib/dx/a/b/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/a/b/b$a;-><init>(Lcom/android/cglib/dx/a/b/a;)V

    sput-object v0, Lcom/android/cglib/dx/a/b/b;->e:Lcom/android/cglib/dx/a/b/b$a;

    return-void
.end method

.method static synthetic a(Lcom/android/cglib/dx/a/b/b;)Lcom/android/cglib/dx/a/b/W;
    .locals 0

    iget-object p0, p0, Lcom/android/cglib/dx/a/b/b;->g:Lcom/android/cglib/dx/a/b/W;

    return-object p0
.end method

.method public static a([Lcom/android/cglib/dx/a/b/b;)V
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/b/b;->e:Lcom/android/cglib/dx/a/b/b$a;

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/android/cglib/dx/a/b/C;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/b/C;->p:Lcom/android/cglib/dx/a/b/C;

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/b/p;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->o()Lcom/android/cglib/dx/a/b/X;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/b;->f:Lcom/android/cglib/dx/c/a/a;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/a/a;->getType()Lcom/android/cglib/dx/c/c/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/a/b/X;->b(Lcom/android/cglib/dx/c/c/w;)Lcom/android/cglib/dx/a/b/W;

    move-result-object v0

    iput-object v0, p0, Lcom/android/cglib/dx/a/b/b;->g:Lcom/android/cglib/dx/a/b/W;

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/b;->f:Lcom/android/cglib/dx/c/a/a;

    invoke-static {p1, v0}, Lcom/android/cglib/dx/a/b/ba;->a(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/c/a/a;)V

    return-void
.end method

.method public a(Lcom/android/cglib/dx/d/a;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/b;->f:Lcom/android/cglib/dx/c/a/a;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/a/a;->j()Lcom/android/cglib/dx/c/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/b;->f:Lcom/android/cglib/dx/c/a/a;

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/a/a;->getType()Lcom/android/cglib/dx/c/c/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/c/w;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/b;->f:Lcom/android/cglib/dx/c/a/a;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/a/a;->i()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cglib/dx/c/a/d;

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/a/d;->a()Lcom/android/cglib/dx/c/c/v;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/cglib/dx/c/a/d;->b()Lcom/android/cglib/dx/c/c/a;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/c/v;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/cglib/dx/a/b/ba;->a(Lcom/android/cglib/dx/c/c/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected b(Lcom/android/cglib/dx/a/b/M;)I
    .locals 1

    check-cast p1, Lcom/android/cglib/dx/a/b/b;

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/b;->f:Lcom/android/cglib/dx/c/a/a;

    iget-object p1, p1, Lcom/android/cglib/dx/a/b/b;->f:Lcom/android/cglib/dx/c/a/a;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/a/a;->a(Lcom/android/cglib/dx/c/a/a;)I

    move-result p1

    return p1
.end method

.method protected b(Lcom/android/cglib/dx/a/b/Q;I)V
    .locals 2

    new-instance p2, Lcom/android/cglib/dx/d/d;

    invoke-direct {p2}, Lcom/android/cglib/dx/d/d;-><init>()V

    new-instance v0, Lcom/android/cglib/dx/a/b/ba;

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/Q;->b()Lcom/android/cglib/dx/a/b/p;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/android/cglib/dx/a/b/ba;-><init>(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;)V

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/b;->f:Lcom/android/cglib/dx/c/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/cglib/dx/a/b/ba;->a(Lcom/android/cglib/dx/c/a/a;Z)V

    invoke-virtual {p2}, Lcom/android/cglib/dx/d/d;->h()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/b;->h:[B

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/b;->h:[B

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/b/M;->a(I)V

    return-void
.end method

.method protected b(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;)V
    .locals 6

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->e()Z

    move-result v0

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/b;->f:Lcom/android/cglib/dx/c/a/a;

    invoke-virtual {v1}, Lcom/android/cglib/dx/c/a/a;->j()Lcom/android/cglib/dx/c/a/b;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/M;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " annotation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v2, v4}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  visibility: VISBILITY_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_0
    sget-object v4, Lcom/android/cglib/dx/a/b/a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v4, v1

    if-eq v1, v3, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "shouldn\'t happen"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-interface {p2, v3}, Lcom/android/cglib/dx/d/q;->writeByte(I)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-interface {p2, v2}, Lcom/android/cglib/dx/d/q;->writeByte(I)V

    :goto_1
    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/cglib/dx/a/b/ba;

    invoke-direct {v0, p1, p2}, Lcom/android/cglib/dx/a/b/ba;-><init>(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;)V

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/b;->f:Lcom/android/cglib/dx/c/a/a;

    invoke-virtual {v0, p1, v3}, Lcom/android/cglib/dx/a/b/ba;->a(Lcom/android/cglib/dx/c/a/a;Z)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/cglib/dx/a/b/b;->h:[B

    invoke-interface {p2, p1}, Lcom/android/cglib/dx/d/q;->write([B)V

    :goto_2
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/b;->f:Lcom/android/cglib/dx/c/a/a;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/a/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/b;->f:Lcom/android/cglib/dx/c/a/a;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/a/a;->hashCode()I

    move-result v0

    return v0
.end method
