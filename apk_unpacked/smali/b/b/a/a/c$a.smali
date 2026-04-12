.class Lb/b/a/a/c$a;
.super Landroid/widget/ArrayAdapter;
.source ""

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lb/b/a/b/h;

.field private c:Landroid/util/DisplayMetrics;

.field final synthetic d:Lb/b/a/a/c;


# direct methods
.method public constructor <init>(Lb/b/a/a/c;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lb/b/a/a/c$a;->d:Lb/b/a/a/c;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lb/b/a/b/h;

    invoke-direct {p1}, Lb/b/a/b/h;-><init>()V

    iput-object p1, p0, Lb/b/a/a/c$a;->b:Lb/b/a/b/h;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lb/b/a/a/c$a;->c:Landroid/util/DisplayMetrics;

    return-void
.end method

.method static synthetic a(Lb/b/a/a/c$a;)Lb/b/a/b/h;
    .locals 0

    iget-object p0, p0, Lb/b/a/a/c$a;->b:Lb/b/a/b/h;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lb/b/a/a/c$a;->b:Lb/b/a/b/h;

    invoke-virtual {v0}, Lb/b/a/b/h;->c()V

    return-void
.end method

.method public b()I
    .locals 3

    iget v0, p0, Lb/b/a/a/c$a;->a:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x1090003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lb/b/a/a/c$a;->a:I

    iget v0, p0, Lb/b/a/a/c$a;->a:I

    return v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lb/b/a/a/c$a;->b:Lb/b/a/b/h;

    invoke-virtual {v0}, Lb/b/a/b/h;->a()V

    return-void
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    new-instance v0, Lb/b/a/a/b;

    invoke-direct {v0, p0}, Lb/b/a/a/b;-><init>(Lb/b/a/a/c$a;)V

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p0, Lb/b/a/a/c$a;->d:Lb/b/a/a/c;

    invoke-static {p2}, Lb/b/a/a/c;->d(Lb/b/a/a/c;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setWidth(I)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p2, p0, Lb/b/a/a/c$a;->d:Lb/b/a/a/c;

    invoke-static {p2}, Lb/b/a/a/c;->e(Lb/b/a/a/c;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p1
.end method
