.class public Lcom/baidu/mobstat/Config$CrashChannel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CrashChannel"
.end annotation


# static fields
.field public static final SYS_TRACK:I = 0x0

.field public static final USER_UPLOAD_ERROR:I = 0xc

.field public static final USER_UPLOAD_EXCEPTION:I = 0xb

.field public static final USER_UPLOAD_OTHER:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
