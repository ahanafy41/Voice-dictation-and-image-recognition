.class public final enum Lcom/android/cglib/dx/a/a/p$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cglib/dx/a/a/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/cglib/dx/a/a/p$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/android/cglib/dx/a/a/p$a;

.field public static final enum b:Lcom/android/cglib/dx/a/a/p$a;

.field public static final enum c:Lcom/android/cglib/dx/a/a/p$a;

.field public static final enum d:Lcom/android/cglib/dx/a/a/p$a;

.field public static final enum e:Lcom/android/cglib/dx/a/a/p$a;

.field public static final enum f:Lcom/android/cglib/dx/a/a/p$a;

.field private static final synthetic g:[Lcom/android/cglib/dx/a/a/p$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/cglib/dx/a/a/p$a;

    const/4 v1, 0x0

    const-string v2, "START"

    invoke-direct {v0, v2, v1}, Lcom/android/cglib/dx/a/a/p$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/a/a/p$a;->a:Lcom/android/cglib/dx/a/a/p$a;

    new-instance v0, Lcom/android/cglib/dx/a/a/p$a;

    const/4 v2, 0x1

    const-string v3, "END_SIMPLY"

    invoke-direct {v0, v3, v2}, Lcom/android/cglib/dx/a/a/p$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/a/a/p$a;->b:Lcom/android/cglib/dx/a/a/p$a;

    new-instance v0, Lcom/android/cglib/dx/a/a/p$a;

    const/4 v3, 0x2

    const-string v4, "END_REPLACED"

    invoke-direct {v0, v4, v3}, Lcom/android/cglib/dx/a/a/p$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/a/a/p$a;->c:Lcom/android/cglib/dx/a/a/p$a;

    new-instance v0, Lcom/android/cglib/dx/a/a/p$a;

    const/4 v4, 0x3

    const-string v5, "END_MOVED"

    invoke-direct {v0, v5, v4}, Lcom/android/cglib/dx/a/a/p$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/a/a/p$a;->d:Lcom/android/cglib/dx/a/a/p$a;

    new-instance v0, Lcom/android/cglib/dx/a/a/p$a;

    const/4 v5, 0x4

    const-string v6, "END_CLOBBERED_BY_PREV"

    invoke-direct {v0, v6, v5}, Lcom/android/cglib/dx/a/a/p$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/a/a/p$a;->e:Lcom/android/cglib/dx/a/a/p$a;

    new-instance v0, Lcom/android/cglib/dx/a/a/p$a;

    const/4 v6, 0x5

    const-string v7, "END_CLOBBERED_BY_NEXT"

    invoke-direct {v0, v7, v6}, Lcom/android/cglib/dx/a/a/p$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cglib/dx/a/a/p$a;->f:Lcom/android/cglib/dx/a/a/p$a;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/cglib/dx/a/a/p$a;

    sget-object v7, Lcom/android/cglib/dx/a/a/p$a;->a:Lcom/android/cglib/dx/a/a/p$a;

    aput-object v7, v0, v1

    sget-object v1, Lcom/android/cglib/dx/a/a/p$a;->b:Lcom/android/cglib/dx/a/a/p$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/cglib/dx/a/a/p$a;->c:Lcom/android/cglib/dx/a/a/p$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/cglib/dx/a/a/p$a;->d:Lcom/android/cglib/dx/a/a/p$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/cglib/dx/a/a/p$a;->e:Lcom/android/cglib/dx/a/a/p$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/cglib/dx/a/a/p$a;->f:Lcom/android/cglib/dx/a/a/p$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/cglib/dx/a/a/p$a;->g:[Lcom/android/cglib/dx/a/a/p$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/cglib/dx/a/a/p$a;
    .locals 1

    const-class v0, Lcom/android/cglib/dx/a/a/p$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/cglib/dx/a/a/p$a;

    return-object p0
.end method

.method public static values()[Lcom/android/cglib/dx/a/a/p$a;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/a/a/p$a;->g:[Lcom/android/cglib/dx/a/a/p$a;

    invoke-virtual {v0}, [Lcom/android/cglib/dx/a/a/p$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/cglib/dx/a/a/p$a;

    return-object v0
.end method
