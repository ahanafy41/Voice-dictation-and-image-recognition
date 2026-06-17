.class public Lc/a/a/n;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lc/a/a/n;

.field public static final b:Lc/a/a/n;

.field public static final c:Lc/a/a/n;

.field public static final d:Lc/a/a/n;

.field public static final e:Lc/a/a/n;

.field public static final f:Lc/a/a/n;


# instance fields
.field public g:I

.field public h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/a/a/n;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lc/a/a/n;-><init>(I)V

    sput-object v0, Lc/a/a/n;->a:Lc/a/a/n;

    new-instance v0, Lc/a/a/n;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lc/a/a/n;-><init>(I)V

    sput-object v0, Lc/a/a/n;->b:Lc/a/a/n;

    new-instance v0, Lc/a/a/n;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lc/a/a/n;-><init>(I)V

    sput-object v0, Lc/a/a/n;->c:Lc/a/a/n;

    new-instance v0, Lc/a/a/n;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lc/a/a/n;-><init>(I)V

    sput-object v0, Lc/a/a/n;->d:Lc/a/a/n;

    new-instance v0, Lc/a/a/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lc/a/a/n;-><init>(I)V

    sput-object v0, Lc/a/a/n;->e:Lc/a/a/n;

    new-instance v0, Lc/a/a/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/a/a/n;-><init>(I)V

    sput-object v0, Lc/a/a/n;->f:Lc/a/a/n;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lc/a/a/n;->g:I

    const-string v0, ""

    iput-object v0, p0, Lc/a/a/n;->h:Ljava/lang/String;

    sget-object v0, Lc/a/a/k;->a:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    if-lez p1, :cond_0

    aget-object v0, v0, p1

    iput-object v0, p0, Lc/a/a/n;->h:Ljava/lang/String;

    :cond_0
    iput p1, p0, Lc/a/a/n;->g:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lc/a/a/n;->g:I

    const-string v1, ""

    iput-object v1, p0, Lc/a/a/n;->h:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "function"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "table"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "boolean"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "string"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_4
    const-string v1, "number"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    goto :goto_2

    :cond_1
    iput v5, p0, Lc/a/a/n;->g:I

    goto :goto_2

    :cond_2
    const/4 v0, 0x6

    goto :goto_1

    :cond_3
    const/4 v0, 0x5

    :goto_1
    iput v0, p0, Lc/a/a/n;->g:I

    goto :goto_2

    :cond_4
    iput v4, p0, Lc/a/a/n;->g:I

    goto :goto_2

    :cond_5
    iput v3, p0, Lc/a/a/n;->g:I

    :goto_2
    iput-object p1, p0, Lc/a/a/n;->h:Ljava/lang/String;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3da724b7 -> :sswitch_4
        -0x352a9fef -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x6903bce -> :sswitch_1
        0x524f73d8 -> :sswitch_0
    .end sparse-switch
.end method
