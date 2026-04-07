.class Lb/b/a/a/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/a/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/a/a/r;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/b/a/a/r;


# direct methods
.method constructor <init>(Lb/b/a/a/r;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/a/m;->a:Lb/b/a/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;II)V
    .locals 0

    iget-object p1, p0, Lb/b/a/a/m;->a:Lb/b/a/a/r;

    invoke-static {p1}, Lb/b/a/a/r;->p(Lb/b/a/a/r;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    iget-object p2, p0, Lb/b/a/a/m;->a:Lb/b/a/a/r;

    iget-object p2, p2, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lb/b/a/a/m;->a:Lb/b/a/a/r;

    invoke-virtual {p2, p1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    iget-object p1, p0, Lb/b/a/a/m;->a:Lb/b/a/a/r;

    iget-object p1, p1, Lb/b/a/a/r;->t:Lb/b/a/a/c;

    invoke-virtual {p1}, Lb/b/a/a/c;->b()V

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 0

    iget-object p1, p0, Lb/b/a/a/m;->a:Lb/b/a/a/r;

    invoke-static {p1}, Lb/b/a/a/r;->p(Lb/b/a/a/r;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    iget-object p2, p0, Lb/b/a/a/m;->a:Lb/b/a/a/r;

    invoke-virtual {p2, p1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    iget-object p1, p0, Lb/b/a/a/m;->a:Lb/b/a/a/r;

    iget-object p1, p1, Lb/b/a/a/r;->t:Lb/b/a/a/c;

    invoke-virtual {p1}, Lb/b/a/a/c;->b()V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;II)V
    .locals 1

    iget-object p1, p0, Lb/b/a/a/m;->a:Lb/b/a/a/r;

    invoke-static {p1}, Lb/b/a/a/r;->p(Lb/b/a/a/r;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    iget-object p2, p0, Lb/b/a/a/m;->a:Lb/b/a/a/r;

    invoke-virtual {p2, p1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    iget-object p1, p0, Lb/b/a/a/m;->a:Lb/b/a/a/r;

    iget-boolean p2, p1, Lb/b/a/a/r;->u:Z

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget p1, p1, Lb/b/a/a/r;->j:I

    :goto_0
    if-ltz p1, :cond_3

    iget-object p2, p0, Lb/b/a/a/m;->a:Lb/b/a/a/r;

    iget-object p2, p2, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    add-int/lit8 p3, p1, -0x1

    invoke-virtual {p2, p3}, Lb/b/a/b/g;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p3

    if-nez p3, :cond_2

    const/16 p3, 0x5f

    if-eq p2, p3, :cond_2

    const/16 p3, 0x2e

    if-eq p2, p3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p2, p0, Lb/b/a/a/m;->a:Lb/b/a/a/r;

    iget p3, p2, Lb/b/a/a/r;->j:I

    sub-int v0, p3, p1

    if-lez v0, :cond_4

    iget-object v0, p2, Lb/b/a/a/r;->t:Lb/b/a/a/c;

    iget-object p2, p2, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    sub-int/2addr p3, p1

    invoke-virtual {p2, p1, p3}, Lb/b/a/b/g;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/b/a/a/c;->a(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    iget-object p1, p2, Lb/b/a/a/r;->t:Lb/b/a/a/c;

    invoke-virtual {p1}, Lb/b/a/a/c;->b()V

    :goto_2
    return-void
.end method
