.class Lc/a/a/a/f$g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field a:I

.field final b:Lc/a/a/a/f$f;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/a/a/a/f$f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/a/a/a/f$f;-><init>(Lc/a/a/a/e;)V

    iput-object v0, p0, Lc/a/a/a/f$g;->b:Lc/a/a/a/f$f;

    return-void
.end method

.method synthetic constructor <init>(Lc/a/a/a/e;)V
    .locals 0

    invoke-direct {p0}, Lc/a/a/a/f$g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/a/a/a/f$g;)V
    .locals 2

    iget v0, p1, Lc/a/a/a/f$g;->a:I

    iput v0, p0, Lc/a/a/a/f$g;->a:I

    iget-object v0, p0, Lc/a/a/a/f$g;->b:Lc/a/a/a/f$f;

    iget-object p1, p1, Lc/a/a/a/f$g;->b:Lc/a/a/a/f$f;

    iget-object v1, p1, Lc/a/a/a/f$f;->a:Lc/a/a/k;

    iput-object v1, v0, Lc/a/a/a/f$f;->a:Lc/a/a/k;

    iget-object p1, p1, Lc/a/a/a/f$f;->b:Lc/a/a/j;

    iput-object p1, v0, Lc/a/a/a/f$f;->b:Lc/a/a/j;

    return-void
.end method
