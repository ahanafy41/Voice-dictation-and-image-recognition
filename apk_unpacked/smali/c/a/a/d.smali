.class public final Lc/a/a/d;
.super Lc/a/a/k;
.source ""


# static fields
.field static final M:Lc/a/a/d;

.field static final N:Lc/a/a/d;

.field public static O:Lc/a/a/k;


# instance fields
.field public final P:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/a/a/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lc/a/a/d;-><init>(Z)V

    sput-object v0, Lc/a/a/d;->M:Lc/a/a/d;

    new-instance v0, Lc/a/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/a/a/d;-><init>(Z)V

    sput-object v0, Lc/a/a/d;->N:Lc/a/a/d;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lc/a/a/k;-><init>()V

    iput-boolean p1, p0, Lc/a/a/d;->P:Z

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lc/a/a/d;->P:Z

    if-eqz v0, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    return-object v0
.end method

.method public g()Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/d;->O:Lc/a/a/k;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    const-string v0, "boolean"

    return-object v0
.end method
