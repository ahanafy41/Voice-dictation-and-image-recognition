.class public Lcom/baidu/mobstat/Config$TraceType;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TraceType"
.end annotation


# static fields
.field public static final AUTO_TRACE:I = 0x1

.field public static final CODE_TRACE:I = 0x0

.field public static final EDIT_TRACE:I = 0x2

.field public static final FULL_TRACE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
