.class public final Lcom/android/cglib/dx/c/c/e;
.super Lcom/android/cglib/dx/c/c/n;
.source ""


# static fields
.field public static final b:Lcom/android/cglib/dx/c/c/e;

.field public static final c:Lcom/android/cglib/dx/c/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/cglib/dx/c/c/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/c/c/e;-><init>(Z)V

    sput-object v0, Lcom/android/cglib/dx/c/c/e;->b:Lcom/android/cglib/dx/c/c/e;

    new-instance v0, Lcom/android/cglib/dx/c/c/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/cglib/dx/c/c/e;-><init>(Z)V

    sput-object v0, Lcom/android/cglib/dx/c/c/e;->c:Lcom/android/cglib/dx/c/c/e;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/cglib/dx/c/c/n;-><init>(I)V

    return-void
.end method

.method public static a(Z)Lcom/android/cglib/dx/c/c/e;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/cglib/dx/c/c/e;->c:Lcom/android/cglib/dx/c/c/e;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/cglib/dx/c/c/e;->b:Lcom/android/cglib/dx/c/c/e;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "boolean"

    return-object v0
.end method

.method public getType()Lcom/android/cglib/dx/c/d/c;
    .locals 1

    sget-object v0, Lcom/android/cglib/dx/c/d/c;->b:Lcom/android/cglib/dx/c/d/c;

    return-object v0
.end method

.method public h()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/n;->f()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/c/c/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "boolean{true}"

    goto :goto_0

    :cond_0
    const-string v0, "boolean{false}"

    :goto_0
    return-object v0
.end method
