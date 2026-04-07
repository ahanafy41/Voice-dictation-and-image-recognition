.class public abstract Lc/a/a/o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/o$a;,
        Lc/a/a/o$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lc/a/a/k;
.end method

.method public abstract a(I)Lc/a/a/k;
.end method

.method public abstract b()I
.end method

.method public c()Ljava/lang/String;
    .locals 5

    new-instance v0, Lc/a/a/a;

    invoke-direct {v0}, Lc/a/a/a;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Lc/a/a/a;->a(Ljava/lang/String;)Lc/a/a/a;

    invoke-virtual {p0}, Lc/a/a/o;->b()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    if-gt v3, v1, :cond_1

    if-le v3, v2, :cond_0

    const-string v4, ","

    invoke-virtual {v0, v4}, Lc/a/a/a;->a(Ljava/lang/String;)Lc/a/a/a;

    :cond_0
    invoke-virtual {p0, v3}, Lc/a/a/o;->a(I)Lc/a/a/k;

    move-result-object v4

    invoke-virtual {v4}, Lc/a/a/k;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lc/a/a/a;->a(Ljava/lang/String;)Lc/a/a/a;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Lc/a/a/a;->a(Ljava/lang/String;)Lc/a/a/a;

    invoke-virtual {v0}, Lc/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lc/a/a/o;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
