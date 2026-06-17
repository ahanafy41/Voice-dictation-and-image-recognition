.class Lc/a/a/a/f$i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/a/f$i$a;
    }
.end annotation


# instance fields
.field public a:Lc/a/a/n;

.field b:I

.field final c:Lc/a/a/a/f$i$a;

.field final d:Lc/a/a/a/d;

.field final e:Lc/a/a/a/d;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/a/a/a/f$i$a;

    invoke-direct {v0}, Lc/a/a/a/f$i$a;-><init>()V

    iput-object v0, p0, Lc/a/a/a/f$i;->c:Lc/a/a/a/f$i$a;

    new-instance v0, Lc/a/a/a/d;

    invoke-direct {v0}, Lc/a/a/a/d;-><init>()V

    iput-object v0, p0, Lc/a/a/a/f$i;->d:Lc/a/a/a/d;

    new-instance v0, Lc/a/a/a/d;

    invoke-direct {v0}, Lc/a/a/a/d;-><init>()V

    iput-object v0, p0, Lc/a/a/a/f$i;->e:Lc/a/a/a/d;

    return-void
.end method


# virtual methods
.method a(II)V
    .locals 2

    iget-object v0, p0, Lc/a/a/a/f$i;->e:Lc/a/a/a/d;

    const/4 v1, -0x1

    iput v1, v0, Lc/a/a/a/d;->a:I

    iget-object v0, p0, Lc/a/a/a/f$i;->d:Lc/a/a/a/d;

    iput v1, v0, Lc/a/a/a/d;->a:I

    iput p1, p0, Lc/a/a/a/f$i;->b:I

    iget-object p1, p0, Lc/a/a/a/f$i;->c:Lc/a/a/a/f$i$a;

    iput p2, p1, Lc/a/a/a/f$i$a;->e:I

    return-void
.end method

.method public a(Lc/a/a/a/f$i;)V
    .locals 3

    iget-object v0, p0, Lc/a/a/a/f$i;->e:Lc/a/a/a/d;

    iget-object v1, p1, Lc/a/a/a/f$i;->e:Lc/a/a/a/d;

    iget v1, v1, Lc/a/a/a/d;->a:I

    iput v1, v0, Lc/a/a/a/d;->a:I

    iget v0, p1, Lc/a/a/a/f$i;->b:I

    iput v0, p0, Lc/a/a/a/f$i;->b:I

    iget-object v0, p0, Lc/a/a/a/f$i;->d:Lc/a/a/a/d;

    iget-object v1, p1, Lc/a/a/a/f$i;->d:Lc/a/a/a/d;

    iget v1, v1, Lc/a/a/a/d;->a:I

    iput v1, v0, Lc/a/a/a/d;->a:I

    iget-object v0, p0, Lc/a/a/a/f$i;->c:Lc/a/a/a/f$i$a;

    iget-object v1, p1, Lc/a/a/a/f$i;->c:Lc/a/a/a/f$i$a;

    invoke-static {v1}, Lc/a/a/a/f$i$a;->a(Lc/a/a/a/f$i$a;)Lc/a/a/k;

    move-result-object v1

    invoke-static {v0, v1}, Lc/a/a/a/f$i$a;->a(Lc/a/a/a/f$i$a;Lc/a/a/k;)Lc/a/a/k;

    iget-object v0, p0, Lc/a/a/a/f$i;->c:Lc/a/a/a/f$i$a;

    iget-object v1, p1, Lc/a/a/a/f$i;->c:Lc/a/a/a/f$i$a;

    iget-short v2, v1, Lc/a/a/a/f$i$a;->a:S

    iput-short v2, v0, Lc/a/a/a/f$i$a;->a:S

    iget-short v2, v1, Lc/a/a/a/f$i$a;->b:S

    iput-short v2, v0, Lc/a/a/a/f$i$a;->b:S

    iget-short v2, v1, Lc/a/a/a/f$i$a;->c:S

    iput-short v2, v0, Lc/a/a/a/f$i$a;->c:S

    iget v1, v1, Lc/a/a/a/f$i$a;->e:I

    iput v1, v0, Lc/a/a/a/f$i$a;->e:I

    iget-object p1, p1, Lc/a/a/a/f$i;->a:Lc/a/a/n;

    iput-object p1, p0, Lc/a/a/a/f$i;->a:Lc/a/a/n;

    return-void
.end method

.method a()Z
    .locals 2

    iget-object v0, p0, Lc/a/a/a/f$i;->d:Lc/a/a/a/d;

    iget v0, v0, Lc/a/a/a/d;->a:I

    iget-object v1, p0, Lc/a/a/a/f$i;->e:Lc/a/a/a/d;

    iget v1, v1, Lc/a/a/a/d;->a:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method b()Z
    .locals 2

    iget v0, p0, Lc/a/a/a/f$i;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lc/a/a/a/f$i;->d:Lc/a/a/a/d;

    iget v0, v0, Lc/a/a/a/d;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lc/a/a/a/f$i;->e:Lc/a/a/a/d;

    iget v0, v0, Lc/a/a/a/d;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected clone()Lc/a/a/a/f$i;
    .locals 1

    new-instance v0, Lc/a/a/a/f$i;

    invoke-direct {v0}, Lc/a/a/a/f$i;-><init>()V

    invoke-virtual {v0, p0}, Lc/a/a/a/f$i;->a(Lc/a/a/a/f$i;)V

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lc/a/a/a/f$i;->clone()Lc/a/a/a/f$i;

    move-result-object v0

    return-object v0
.end method
