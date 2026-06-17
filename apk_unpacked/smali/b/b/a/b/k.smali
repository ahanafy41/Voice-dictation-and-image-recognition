.class public Lb/b/a/b/k;
.super Lb/b/a/b/i;
.source ""


# static fields
.field private static k:Lb/b/a/b/i;

.field private static final l:[Ljava/lang/String;

.field private static final m:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lb/b/a/b/k;->l:[Ljava/lang/String;

    new-array v0, v0, [C

    sput-object v0, Lb/b/a/b/k;->m:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/b/a/b/i;-><init>()V

    sget-object v0, Lb/b/a/b/k;->l:[Ljava/lang/String;

    invoke-super {p0, v0}, Lb/b/a/b/i;->a([Ljava/lang/String;)V

    sget-object v0, Lb/b/a/b/k;->m:[C

    invoke-super {p0, v0}, Lb/b/a/b/i;->a([C)V

    return-void
.end method

.method public static f()Lb/b/a/b/i;
    .locals 1

    sget-object v0, Lb/b/a/b/k;->k:Lb/b/a/b/i;

    if-nez v0, :cond_0

    new-instance v0, Lb/b/a/b/k;

    invoke-direct {v0}, Lb/b/a/b/k;-><init>()V

    sput-object v0, Lb/b/a/b/k;->k:Lb/b/a/b/i;

    :cond_0
    sget-object v0, Lb/b/a/b/k;->k:Lb/b/a/b/i;

    return-object v0
.end method


# virtual methods
.method public a(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(CC)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(CC)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(CC)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
