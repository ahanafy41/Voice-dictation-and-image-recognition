.class public Lcom/baidu/mobstat/Config$AppLaunchType;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppLaunchType"
.end annotation


# static fields
.field public static final AppCall:I = 0x1

.field public static final DirectCall:I = 0x0

.field public static final PushCall:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
