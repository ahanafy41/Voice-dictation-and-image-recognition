.class public final Lcom/baidu/mobstat/s;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/s$a;
    }
.end annotation


# direct methods
.method static synthetic a(Ljava/security/MessageDigest;[B)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/baidu/mobstat/s;->b(Ljava/security/MessageDigest;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    const/16 v4, 0xa

    if-lt v2, v4, :cond_0

    add-int/lit8 v2, v2, 0x61

    sub-int/2addr v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x30

    :goto_1
    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-lt v3, v4, :cond_1

    add-int/lit8 v3, v3, 0x61

    sub-int/2addr v3, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x30

    :goto_2
    int-to-char v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/security/MessageDigest;[B)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mobstat/s;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
