.class final Lc/a/a/k$a;
.super Lc/a/a/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field static O:Lc/a/a/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/a/a/k$a;

    invoke-direct {v0}, Lc/a/a/k$a;-><init>()V

    sput-object v0, Lc/a/a/k$a;->O:Lc/a/a/k$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/a/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/k;->b:Lc/a/a/k;

    return-object v0
.end method

.method public a(I)Lc/a/a/k;
    .locals 0

    sget-object p1, Lc/a/a/k;->b:Lc/a/a/k;

    return-object p1
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "none"

    return-object v0
.end method
