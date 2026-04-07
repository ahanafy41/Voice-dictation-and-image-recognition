.class public Lc/a/a/l;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:[Lc/a/a/m;

.field private static final b:[Lc/a/a/l;


# instance fields
.field public c:[Lc/a/a/k;

.field public d:[I

.field public e:[Lc/a/a/l;

.field public f:[I

.field public g:[Lc/a/a/b;

.field public h:[Lc/a/a/m;

.field public i:Lc/a/a/j;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lc/a/a/m;

    sput-object v1, Lc/a/a/l;->a:[Lc/a/a/m;

    new-array v0, v0, [Lc/a/a/l;

    sput-object v0, Lc/a/a/l;->b:[Lc/a/a/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lc/a/a/l;->b:[Lc/a/a/l;

    iput-object v0, p0, Lc/a/a/l;->e:[Lc/a/a/l;

    sget-object v0, Lc/a/a/l;->a:[Lc/a/a/m;

    iput-object v0, p0, Lc/a/a/l;->h:[Lc/a/a/m;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc/a/a/l;->i:Lc/a/a/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/a/a/l;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/a/a/l;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
