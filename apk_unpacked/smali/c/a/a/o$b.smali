.class final Lc/a/a/o$b;
.super Lc/a/a/o;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Lc/a/a/k;

.field private final b:Lc/a/a/o;


# direct methods
.method constructor <init>(Lc/a/a/k;Lc/a/a/o;)V
    .locals 0

    invoke-direct {p0}, Lc/a/a/o;-><init>()V

    iput-object p1, p0, Lc/a/a/o$b;->a:Lc/a/a/k;

    iput-object p2, p0, Lc/a/a/o$b;->b:Lc/a/a/o;

    return-void
.end method


# virtual methods
.method public a()Lc/a/a/k;
    .locals 1

    iget-object v0, p0, Lc/a/a/o$b;->a:Lc/a/a/k;

    return-object v0
.end method

.method public a(I)Lc/a/a/k;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lc/a/a/o$b;->a:Lc/a/a/k;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lc/a/a/o$b;->b:Lc/a/a/o;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lc/a/a/o;->a(I)Lc/a/a/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lc/a/a/o$b;->b:Lc/a/a/o;

    invoke-virtual {v0}, Lc/a/a/o;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
