.class public Lc/a/a/a/g;
.super Lc/a/a/a/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/a/g$a;
    }
.end annotation


# static fields
.field public static final b:Lc/a/a/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/a/a/a/g;

    invoke-direct {v0}, Lc/a/a/a/g;-><init>()V

    sput-object v0, Lc/a/a/a/g;->b:Lc/a/a/a/g;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/a/a/a/a;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/String;Lb/b/a/b/h;)Lc/a/a/l;
    .locals 2

    new-instance v0, Lc/a/a/a/g$a;

    invoke-direct {v0}, Lc/a/a/a/g$a;-><init>()V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, v1, p1, p2}, Lc/a/a/a/g$a;->a(Lc/a/a/a/g$a;Ljava/io/InputStream;Ljava/lang/String;Lb/b/a/b/h;)Lc/a/a/l;

    move-result-object p0

    return-object p0
.end method
