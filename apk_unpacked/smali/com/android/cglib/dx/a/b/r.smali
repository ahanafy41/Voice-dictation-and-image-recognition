.class public final Lcom/android/cglib/dx/a/b/r;
.super Lcom/android/cglib/dx/a/b/s;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/cglib/dx/a/b/s;",
        "Ljava/lang/Comparable<",
        "Lcom/android/cglib/dx/a/b/r;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/android/cglib/dx/c/c/j;


# direct methods
.method public constructor <init>(Lcom/android/cglib/dx/c/c/j;I)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/cglib/dx/a/b/s;-><init>(I)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/cglib/dx/a/b/r;->b:Lcom/android/cglib/dx/c/c/j;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "field == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lcom/android/cglib/dx/a/b/p;Lcom/android/cglib/dx/d/a;II)I
    .locals 4

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->e()Lcom/android/cglib/dx/a/b/w;

    move-result-object p1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/r;->b:Lcom/android/cglib/dx/c/c/j;

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/a/b/w;->a(Lcom/android/cglib/dx/c/c/j;)I

    move-result p1

    sub-int p3, p1, p3

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/s;->d()I

    move-result v0

    invoke-interface {p2}, Lcom/android/cglib/dx/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 p4, 0x1

    iget-object v3, p0, Lcom/android/cglib/dx/a/b/r;->b:Lcom/android/cglib/dx/c/c/j;

    invoke-virtual {v3}, Lcom/android/cglib/dx/c/c/r;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, p4

    const-string p4, "  [%x] %s"

    invoke-static {p4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, v2, p4}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    invoke-static {p3}, Lcom/android/cglib/dx/d/n;->a(I)I

    move-result p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    field_idx:    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/cglib/dx/d/i;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p4, v1}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/cglib/dx/d/n;->a(I)I

    move-result p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    access_flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/cglib/dx/c/b/a;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p4, v1}, Lcom/android/cglib/dx/d/a;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, p3}, Lcom/android/cglib/dx/d/q;->c(I)I

    invoke-interface {p2, v0}, Lcom/android/cglib/dx/d/q;->c(I)I

    return p1
.end method

.method public a(Lcom/android/cglib/dx/a/b/r;)I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/r;->b:Lcom/android/cglib/dx/c/c/j;

    iget-object p1, p1, Lcom/android/cglib/dx/a/b/r;->b:Lcom/android/cglib/dx/c/c/j;

    invoke-virtual {v0, p1}, Lcom/android/cglib/dx/c/c/a;->a(Lcom/android/cglib/dx/c/c/a;)I

    move-result p1

    return p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/r;->b:Lcom/android/cglib/dx/c/c/j;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/r;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/android/cglib/dx/a/b/p;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/cglib/dx/a/b/p;->e()Lcom/android/cglib/dx/a/b/w;

    move-result-object p1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/r;->b:Lcom/android/cglib/dx/c/c/j;

    invoke-virtual {p1, v0}, Lcom/android/cglib/dx/a/b/w;->b(Lcom/android/cglib/dx/c/c/j;)Lcom/android/cglib/dx/a/b/v;

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/cglib/dx/a/b/r;

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/b/r;->a(Lcom/android/cglib/dx/a/b/r;)I

    move-result p1

    return p1
.end method

.method public e()Lcom/android/cglib/dx/c/c/j;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/r;->b:Lcom/android/cglib/dx/c/c/j;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/cglib/dx/a/b/r;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/cglib/dx/a/b/r;

    invoke-virtual {p0, p1}, Lcom/android/cglib/dx/a/b/r;->a(Lcom/android/cglib/dx/a/b/r;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/b/r;->b:Lcom/android/cglib/dx/c/c/j;

    invoke-virtual {v0}, Lcom/android/cglib/dx/c/c/r;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-class v1, Lcom/android/cglib/dx/a/b/r;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/b/s;->d()I

    move-result v1

    invoke-static {v1}, Lcom/android/cglib/dx/d/i;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/cglib/dx/a/b/r;->b:Lcom/android/cglib/dx/c/c/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
