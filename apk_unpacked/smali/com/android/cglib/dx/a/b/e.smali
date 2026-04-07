.class public final Lcom/android/cglib/dx/a/b/e;
.super Lcom/android/cglib/dx/a/b/M;
.source ""


# instance fields
.field private e:Lcom/android/cglib/dx/a/b/c;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/cglib/dx/a/b/u;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/cglib/dx/a/b/G;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/cglib/dx/a/b/N;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/cglib/dx/a/b/M;-><init>(II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cglib/dx/a/b/e;->e:Lcom/android/cglib/dx/a/b/c;

    iput-object v0, p0, Lcom/android/cglib/dx/a/b/e;->f:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/cglib/dx/a/b/e;->g:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/cglib/dx/a/b/e;->h:Ljava/util/ArrayList;

    return-void
.end method

.method private static a(Ljava/util/ArrayList;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method


# virtual methods
.method public a()Lcom/android/cglib/dx/a/b/C;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/b/C;->r:Lcom/android/cglib/dx/a/b/C;

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/b/p;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->q()Lcom/android/cglib/dx/a/b/L;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/e;->e:Lcom/android/cglib/dx/a/b/c;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/cglib/dx/a/b/L;->b(Lcom/android/cglib/dx/a/b/M;)Lcom/android/cglib/dx/a/b/M;

    move-result-object v0

    check-cast v0, Lcom/android/cglib/dx/a/b/c;

    iput-object v0, p0, Lcom/android/cglib/dx/a/b/e;->e:Lcom/android/cglib/dx/a/b/c;

    :cond_0
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/e;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/a/b/u;

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/a/b/u;->a(Lcom/android/cglib/dx/a/b/p;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/e;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/a/b/G;

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/a/b/G;->a(Lcom/android/cglib/dx/a/b/p;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/e;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/a/b/N;

    invoke-virtual {v1, p1}, Lcom/android/cglib/dx/a/b/N;->a(Lcom/android/cglib/dx/a/b/p;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public b(Lcom/android/cglib/dx/a/b/M;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/e;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/cglib/dx/a/b/e;

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/e;->e:Lcom/android/cglib/dx/a/b/c;

    iget-object p1, p1, Lcom/android/cglib/dx/a/b/e;->e:Lcom/android/cglib/dx/a/b/c;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/a/b/M;->a(Lcom/android/cglib/dx/a/b/M;)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "uninternable instance"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected b(Lcom/android/cglib/dx/a/b/Q;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/cglib/dx/a/b/e;->f:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/cglib/dx/a/b/e;->a(Ljava/util/ArrayList;)I

    move-result p1

    iget-object p2, p0, Lcom/android/cglib/dx/a/b/e;->g:Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/android/cglib/dx/a/b/e;->a(Ljava/util/ArrayList;)I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/android/cglib/dx/a/b/e;->h:Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/android/cglib/dx/a/b/e;->a(Ljava/util/ArrayList;)I

    move-result p2

    add-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x10

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/b/M;->a(I)V

    return-void
.end method

.method protected b(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;)V
    .locals 9

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->e()Z

    move-result v0

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/e;->e:Lcom/android/cglib/dx/a/b/c;

    invoke-static {v1}, Lcom/android/cglib/dx/a/b/M;->c(Lcom/android/cglib/dx/a/b/M;)I

    move-result v1

    iget-object v2, p0, Lcom/android/cglib/dx/a/b/e;->f:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/cglib/dx/a/b/e;->a(Ljava/util/ArrayList;)I

    move-result v2

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/e;->g:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/cglib/dx/a/b/e;->a(Ljava/util/ArrayList;)I

    move-result v3

    iget-object v4, p0, Lcom/android/cglib/dx/a/b/e;->h:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/cglib/dx/a/b/e;->a(Ljava/util/ArrayList;)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/M;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " annotations directory"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v5, v6}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  class_annotations_off: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/cglib/dx/d/i;->g(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-interface {p2, v7, v6}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  fields_size:           "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/cglib/dx/d/i;->g(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v7, v6}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  methods_size:          "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/cglib/dx/d/i;->g(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v7, v6}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  parameters_size:       "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/cglib/dx/d/i;->g(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v7, v6}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v1}, Lcom/android/cglib/dx/d/q;->writeInt(I)V

    invoke-interface {p2, v2}, Lcom/android/cglib/dx/d/q;->writeInt(I)V

    invoke-interface {p2, v3}, Lcom/android/cglib/dx/d/q;->writeInt(I)V

    invoke-interface {p2, v4}, Lcom/android/cglib/dx/d/q;->writeInt(I)V

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/e;->f:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz v0, :cond_1

    const-string v1, "  fields:"

    invoke-interface {p2, v5, v1}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/cglib/dx/a/b/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cglib/dx/a/b/u;

    invoke-virtual {v2, p1, p2}, Lcom/android/cglib/dx/a/b/u;->a(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;)V

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/e;->g:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz v0, :cond_3

    const-string v1, "  methods:"

    invoke-interface {p2, v5, v1}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/android/cglib/dx/a/b/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/cglib/dx/a/b/G;

    invoke-virtual {v2, p1, p2}, Lcom/android/cglib/dx/a/b/G;->a(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;)V

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_6

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/e;->h:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-eqz v0, :cond_5

    const-string v0, "  parameters:"

    invoke-interface {p2, v5, v0}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/android/cglib/dx/a/b/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/cglib/dx/a/b/N;

    invoke-virtual {v1, p1, p2}, Lcom/android/cglib/dx/a/b/N;->a(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/e;->e:Lcom/android/cglib/dx/a/b/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/e;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/e;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/e;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/e;->e:Lcom/android/cglib/dx/a/b/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/cglib/dx/a/b/c;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/e;->e:Lcom/android/cglib/dx/a/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/e;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/e;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/e;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
