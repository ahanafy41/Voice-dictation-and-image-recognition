.class public abstract enum Lcom/android/cglib/dx/Comparison;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/cglib/dx/Comparison;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/cglib/dx/Comparison;

.field public static final enum EQ:Lcom/android/cglib/dx/Comparison;

.field public static final enum GE:Lcom/android/cglib/dx/Comparison;

.field public static final enum GT:Lcom/android/cglib/dx/Comparison;

.field public static final enum LE:Lcom/android/cglib/dx/Comparison;

.field public static final enum LT:Lcom/android/cglib/dx/Comparison;

.field public static final enum NE:Lcom/android/cglib/dx/Comparison;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/cglib/dx/Comparison$1;

    const/4 v1, 0x0

    const-string v2, "LT"

    invoke-direct {v0, v2, v1}, Lcom/android/cglib/dx/Comparison$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/Comparison;->LT:Lcom/android/cglib/dx/Comparison;

    new-instance v0, Lcom/android/cglib/dx/Comparison$2;

    const/4 v2, 0x1

    const-string v3, "LE"

    invoke-direct {v0, v3, v2}, Lcom/android/cglib/dx/Comparison$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/Comparison;->LE:Lcom/android/cglib/dx/Comparison;

    new-instance v0, Lcom/android/cglib/dx/Comparison$3;

    const/4 v3, 0x2

    const-string v4, "EQ"

    invoke-direct {v0, v4, v3}, Lcom/android/cglib/dx/Comparison$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/Comparison;->EQ:Lcom/android/cglib/dx/Comparison;

    new-instance v0, Lcom/android/cglib/dx/Comparison$4;

    const/4 v4, 0x3

    const-string v5, "GE"

    invoke-direct {v0, v5, v4}, Lcom/android/cglib/dx/Comparison$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/Comparison;->GE:Lcom/android/cglib/dx/Comparison;

    new-instance v0, Lcom/android/cglib/dx/Comparison$5;

    const/4 v5, 0x4

    const-string v6, "GT"

    invoke-direct {v0, v6, v5}, Lcom/android/cglib/dx/Comparison$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/Comparison;->GT:Lcom/android/cglib/dx/Comparison;

    new-instance v0, Lcom/android/cglib/dx/Comparison$6;

    const/4 v6, 0x5

    const-string v7, "NE"

    invoke-direct {v0, v7, v6}, Lcom/android/cglib/dx/Comparison$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/Comparison;->NE:Lcom/android/cglib/dx/Comparison;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/cglib/dx/Comparison;

    sget-object v7, Lcom/android/cglib/dx/Comparison;->LT:Lcom/android/cglib/dx/Comparison;

    aput-object v7, v0, v1

    sget-object v1, Lcom/android/cglib/dx/Comparison;->LE:Lcom/android/cglib/dx/Comparison;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/cglib/dx/Comparison;->EQ:Lcom/android/cglib/dx/Comparison;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/cglib/dx/Comparison;->GE:Lcom/android/cglib/dx/Comparison;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/cglib/dx/Comparison;->GT:Lcom/android/cglib/dx/Comparison;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/cglib/dx/Comparison;->NE:Lcom/android/cglib/dx/Comparison;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/cglib/dx/Comparison;->$VALUES:[Lcom/android/cglib/dx/Comparison;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/cglib/dx/Comparison$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/cglib/dx/Comparison;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/cglib/dx/Comparison;
    .locals 1

    const-class v0, Lcom/android/cglib/dx/Comparison;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/cglib/dx/Comparison;

    return-object p0
.end method

.method public static values()[Lcom/android/cglib/dx/Comparison;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/Comparison;->$VALUES:[Lcom/android/cglib/dx/Comparison;

    invoke-virtual {v0}, [Lcom/android/cglib/dx/Comparison;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/cglib/dx/Comparison;

    return-object v0
.end method


# virtual methods
.method abstract rop(Lcom/android/cglib/dx/c/d/e;)Lcom/android/cglib/dx/c/b/q;
.end method
