.class public final Lcom/android/cglib/dx/a/b/aa;
.super Lcom/android/cglib/dx/a/b/M;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/cglib/dx/a/b/M;",
        ">",
        "Lcom/android/cglib/dx/a/b/M;"
    }
.end annotation


# instance fields
.field private final e:Lcom/android/cglib/dx/a/b/C;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/a/b/C;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/cglib/dx/a/b/C;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/android/cglib/dx/a/b/aa;->a(Ljava/util/List;)I

    move-result v0

    invoke-static {p2}, Lcom/android/cglib/dx/a/b/aa;->b(Ljava/util/List;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/cglib/dx/a/b/M;-><init>(II)V

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/android/cglib/dx/a/b/aa;->f:Ljava/util/List;

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/aa;->e:Lcom/android/cglib/dx/a/b/C;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "itemType == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/cglib/dx/a/b/M;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/cglib/dx/a/b/M;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/M;->e()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "items == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "items.size() == 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/cglib/dx/a/b/M;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cglib/dx/a/b/M;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/cglib/dx/a/b/M;->c()I

    move-result v0

    mul-int v1, v1, v0

    invoke-static {p0}, Lcom/android/cglib/dx/a/b/aa;->a(Ljava/util/List;)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method private i()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/M;->e()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Lcom/android/cglib/dx/a/b/C;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/aa;->e:Lcom/android/cglib/dx/a/b/C;

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/b/p;)V
    .locals 2

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/aa;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/a/b/M;

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/a/b/B;->a(Lcom/android/cglib/dx/a/b/p;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected b(Lcom/android/cglib/dx/a/b/Q;I)V
    .locals 7

    invoke-direct {p0}, Lcom/android/cglib/dx/a/b/aa;->i()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/aa;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    move v3, p2

    const/4 p2, -0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/cglib/dx/a/b/M;

    invoke-virtual {v4}, Lcom/android/cglib/dx/a/b/M;->c()I

    move-result v5

    if-eqz v2, :cond_0

    invoke-virtual {v4}, Lcom/android/cglib/dx/a/b/M;->e()I

    move-result p2

    const/4 v1, 0x0

    move v1, v5

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    if-ne v5, v1, :cond_2

    invoke-virtual {v4}, Lcom/android/cglib/dx/a/b/M;->e()I

    move-result v6

    if-ne v6, p2, :cond_1

    :goto_1
    invoke-virtual {v4, p1, v3}, Lcom/android/cglib/dx/a/b/M;->a(Lcom/android/cglib/dx/a/b/Q;I)I

    move-result v3

    add-int/2addr v3, v5

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "item alignment mismatch"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "item size mismatch"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method protected b(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;)V
    .locals 4

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/aa;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/M;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/B;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/cglib/dx/d/i;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v0}, Lcom/android/cglib/dx/d/q;->writeInt(I)V

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/aa;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/a/b/M;

    invoke-virtual {v1, p1, p2}, Lcom/android/cglib/dx/a/b/M;->a(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/aa;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cglib/dx/a/b/M;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v3}, Lcom/android/cglib/dx/a/b/M;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/aa;->f:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-class v1, Lcom/android/cglib/dx/a/b/aa;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/aa;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
