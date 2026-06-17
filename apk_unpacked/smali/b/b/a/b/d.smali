.class public Lb/b/a/b/d;
.super Lb/b/a/b/c;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lb/b/a/b/c;-><init>()V

    sget-object v0, Lb/b/a/b/c$a;->a:Lb/b/a/b/c$a;

    const v1, -0x2f2d2d

    invoke-virtual {p0, v0, v1}, Lb/b/a/b/c;->a(Lb/b/a/b/c$a;I)V

    sget-object v0, Lb/b/a/b/c$a;->b:Lb/b/a/b/c$a;

    const v1, -0xfbfbfc

    invoke-virtual {p0, v0, v1}, Lb/b/a/b/c;->a(Lb/b/a/b/c$a;I)V

    sget-object v0, Lb/b/a/b/c$a;->i:Lb/b/a/b/c$a;

    const v1, -0x9f9fa0

    invoke-virtual {p0, v0, v1}, Lb/b/a/b/c;->a(Lb/b/a/b/c$a;I)V

    return-void
.end method
