.class Lb/b/a/a/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/a/a/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/b/a/a/c;


# direct methods
.method constructor <init>(Lb/b/a/a/c;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/a/a;->a:Lb/b/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    const/4 p3, 0x0

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object p2, p0, Lb/b/a/a/a;->a:Lb/b/a/a/c;

    invoke-static {p2}, Lb/b/a/a/c;->a(Lb/b/a/a/c;)Lb/b/a/a/r;

    move-result-object p2

    iget-object p3, p0, Lb/b/a/a/a;->a:Lb/b/a/a/c;

    invoke-static {p3}, Lb/b/a/a/c;->a(Lb/b/a/a/c;)Lb/b/a/a/r;

    move-result-object p3

    invoke-virtual {p3}, Lb/b/a/a/r;->getCaretPosition()I

    move-result p3

    iget-object p4, p0, Lb/b/a/a/a;->a:Lb/b/a/a/c;

    invoke-static {p4}, Lb/b/a/a/c;->b(Lb/b/a/a/c;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    sub-int/2addr p3, p4

    iget-object p4, p0, Lb/b/a/a/a;->a:Lb/b/a/a/c;

    invoke-static {p4}, Lb/b/a/a/c;->b(Lb/b/a/a/c;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-virtual {p2, p3, p4, p1}, Lb/b/a/a/r;->replaceText(IILjava/lang/String;)V

    iget-object p1, p0, Lb/b/a/a/a;->a:Lb/b/a/a/c;

    invoke-static {p1}, Lb/b/a/a/c;->c(Lb/b/a/a/c;)Lb/b/a/a/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/a/a/c$a;->a()V

    iget-object p1, p0, Lb/b/a/a/a;->a:Lb/b/a/a/c;

    invoke-virtual {p1}, Lb/b/a/a/c;->b()V

    return-void
.end method
