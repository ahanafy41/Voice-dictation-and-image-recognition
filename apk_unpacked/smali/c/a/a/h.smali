.class public Lc/a/a/h;
.super Lc/a/a/k;
.source ""


# static fields
.field static final M:Lc/a/a/h;

.field public static N:Lc/a/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/a/a/h;

    invoke-direct {v0}, Lc/a/a/h;-><init>()V

    sput-object v0, Lc/a/a/h;->M:Lc/a/a/h;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/a/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "nil"

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lc/a/a/h;

    return p1
.end method

.method public g()Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/h;->N:Lc/a/a/k;

    return-object v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    const-string v0, "nil"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "nil"

    return-object v0
.end method
