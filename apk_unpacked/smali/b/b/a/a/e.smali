.class public Lb/b/a/a/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected a:Lb/b/a/a/r;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/ActionMode;


# direct methods
.method public constructor <init>(Lb/b/a/a/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/a/a/e;->a:Lb/b/a/a/r;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lb/b/a/a/e;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lb/b/a/a/e;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lb/b/a/a/e;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lb/b/a/a/e;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lb/b/a/a/e;->c:Landroid/view/ActionMode;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, Lb/b/a/a/e;->d()V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-virtual {p0}, Lb/b/a/a/e;->c()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lb/b/a/a/e;->c:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/a/a/e;->a:Lb/b/a/a/r;

    new-instance v1, Lb/b/a/a/d;

    invoke-direct {v1, p0}, Lb/b/a/a/d;-><init>(Lb/b/a/a/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lb/b/a/a/e;->c:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/a/a/e;->c:Landroid/view/ActionMode;

    :cond_0
    return-void
.end method
