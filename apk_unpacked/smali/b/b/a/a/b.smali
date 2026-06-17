.class Lb/b/a/a/b;
.super Landroid/widget/Filter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/a/a/c$a;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/b/a/a/c$a;


# direct methods
.method constructor <init>(Lb/b/a/a/c$a;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/a/b;->a:Lb/b/a/a/c$a;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 2

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {v0, v1, p2, p1, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v2, v1, v2

    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lb/b/a/a/b;->a:Lb/b/a/a/c$a;

    iget-object v4, v4, Lb/b/a/a/c$a;->d:Lb/b/a/a/c;

    const-string v5, ""

    invoke-static {v4, v5}, Lb/b/a/a/c;->a(Lb/b/a/a/c;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lb/b/a/a/b;->a:Lb/b/a/a/c$a;

    iget-object v4, v4, Lb/b/a/a/c$a;->d:Lb/b/a/a/c;

    invoke-static {v4, v2}, Lb/b/a/a/c;->a(Lb/b/a/a/c;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    :goto_0
    iget-object v4, p0, Lb/b/a/a/b;->a:Lb/b/a/a/c$a;

    iget-object v4, v4, Lb/b/a/a/c$a;->d:Lb/b/a/a/c;

    invoke-static {v4}, Lb/b/a/a/c;->a(Lb/b/a/a/c;)Lb/b/a/a/r;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/a/a/r;->getCaretPosition()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    array-length v5, v1

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-ne v5, v6, :cond_3

    aget-object v1, v1, v8

    invoke-static {}, Lb/b/a/a/c;->a()Lb/b/a/b/i;

    move-result-object v3

    invoke-virtual {v3, v1}, Lb/b/a/b/i;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lb/b/a/a/c;->a()Lb/b/a/b/i;

    move-result-object v3

    invoke-virtual {v3, v1}, Lb/b/a/b/i;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-ge v8, v3, :cond_b

    aget-object v4, v1, v8

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lb/b/a/a/b;->a:Lb/b/a/a/c$a;

    iget-object v5, v5, Lb/b/a/a/c$a;->d:Lb/b/a/a/c;

    invoke-static {v5}, Lb/b/a/a/c;->a(Lb/b/a/a/c;)Lb/b/a/a/r;

    move-result-object v5

    invoke-virtual {v5}, Lb/b/a/a/r;->getColorScheme()Lb/b/a/b/c;

    move-result-object v5

    invoke-virtual {v5, v7}, Lb/b/a/b/c;->a(I)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lb/b/a/a/b;->a(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v1, v2, v4}, Lb/b/a/b/o;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_3

    :cond_3
    array-length v1, v1

    if-ne v1, v3, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x2e

    if-ne v1, v5, :cond_5

    invoke-static {}, Lb/b/a/a/c;->a()Lb/b/a/b/i;

    move-result-object v1

    invoke-virtual {v1, v2}, Lb/b/a/b/i;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lb/b/a/a/c;->a()Lb/b/a/b/i;

    move-result-object v1

    invoke-virtual {v1, v2}, Lb/b/a/b/i;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v8, v2, :cond_b

    aget-object v3, v1, v8

    iget-object v4, p0, Lb/b/a/a/b;->a:Lb/b/a/a/c$a;

    iget-object v4, v4, Lb/b/a/a/c$a;->d:Lb/b/a/a/c;

    invoke-static {v4}, Lb/b/a/a/c;->a(Lb/b/a/a/c;)Lb/b/a/a/r;

    move-result-object v4

    invoke-virtual {v4}, Lb/b/a/a/r;->getColorScheme()Lb/b/a/b/c;

    move-result-object v4

    invoke-virtual {v4, v7}, Lb/b/a/b/c;->a(I)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lb/b/a/a/b;->a(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v2, v4}, Lb/b/a/b/o;->a(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_7

    :cond_5
    iget-object v1, p0, Lb/b/a/a/b;->a:Lb/b/a/a/c$a;

    iget-object v1, v1, Lb/b/a/a/c$a;->d:Lb/b/a/a/c;

    invoke-static {v1}, Lb/b/a/a/c;->a(Lb/b/a/a/c;)Lb/b/a/a/r;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/a/a/r;->getColorScheme()Lb/b/a/b/c;

    move-result-object v1

    invoke-static {v2, v4, v1}, Lb/b/a/b/o;->a(Ljava/lang/String;ILb/b/a/b/c;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lb/b/a/b/o;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lb/b/a/a/b;->a:Lb/b/a/a/c$a;

    iget-object v5, v5, Lb/b/a/a/c$a;->d:Lb/b/a/a/c;

    invoke-static {v5}, Lb/b/a/a/c;->a(Lb/b/a/a/c;)Lb/b/a/a/r;

    move-result-object v5

    invoke-virtual {v5}, Lb/b/a/a/r;->getColorScheme()Lb/b/a/b/c;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lb/b/a/b/c;->a(I)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lb/b/a/a/b;->a(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-static {}, Lb/b/a/a/c;->a()Lb/b/a/b/i;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/a/b/i;->b()[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_9

    aget-object v6, v1, v5

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p0, Lb/b/a/a/b;->a:Lb/b/a/a/c$a;

    iget-object v9, v9, Lb/b/a/a/c$a;->d:Lb/b/a/a/c;

    invoke-static {v9}, Lb/b/a/a/c;->a(Lb/b/a/a/c;)Lb/b/a/a/r;

    move-result-object v9

    invoke-virtual {v9}, Lb/b/a/a/r;->getColorScheme()Lb/b/a/b/c;

    move-result-object v9

    invoke-virtual {v9, v3}, Lb/b/a/b/c;->a(I)I

    move-result v9

    invoke-direct {p0, v6, v9}, Lb/b/a/a/b;->a(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    invoke-static {}, Lb/b/a/a/c;->a()Lb/b/a/b/i;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/a/b/i;->c()[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    :goto_6
    if-ge v8, v3, :cond_b

    aget-object v4, v1, v8

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lb/b/a/a/b;->a:Lb/b/a/a/c$a;

    iget-object v5, v5, Lb/b/a/a/c$a;->d:Lb/b/a/a/c;

    invoke-static {v5}, Lb/b/a/a/c;->a(Lb/b/a/a/c;)Lb/b/a/a/r;

    move-result-object v5

    invoke-virtual {v5}, Lb/b/a/a/r;->getColorScheme()Lb/b/a/b/c;

    move-result-object v5

    invoke-virtual {v5, v7}, Lb/b/a/b/c;->a(I)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lb/b/a/a/b;->a(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    invoke-static {p1}, Lb/b/a/b/p;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    iput-object v0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p1, Landroid/widget/Filter$FilterResults;->count:I

    return-object p1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3

    if-eqz p2, :cond_0

    iget p1, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lb/b/a/a/b;->a:Lb/b/a/a/c$a;

    invoke-static {p1}, Lb/b/a/a/c$a;->a(Lb/b/a/a/c$a;)Lb/b/a/b/h;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/a/b/h;->b()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lb/b/a/a/b;->a:Lb/b/a/a/c$a;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object p1, p0, Lb/b/a/a/b;->a:Lb/b/a/a/c$a;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iget-object p1, p0, Lb/b/a/a/b;->a:Lb/b/a/a/c$a;

    iget-object p1, p1, Lb/b/a/a/c$a;->d:Lb/b/a/a/c;

    invoke-static {p1}, Lb/b/a/a/c;->a(Lb/b/a/a/c;)Lb/b/a/a/r;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/a/a/r;->getCaretY()I

    move-result p1

    iget-object v0, p0, Lb/b/a/a/b;->a:Lb/b/a/a/c$a;

    iget-object v0, v0, Lb/b/a/a/c$a;->d:Lb/b/a/a/c;

    invoke-static {v0}, Lb/b/a/a/c;->a(Lb/b/a/a/c;)Lb/b/a/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/a/r;->d()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    iget-object v0, p0, Lb/b/a/a/b;->a:Lb/b/a/a/c$a;

    iget-object v0, v0, Lb/b/a/a/c$a;->d:Lb/b/a/a/c;

    invoke-static {v0}, Lb/b/a/a/c;->a(Lb/b/a/a/c;)Lb/b/a/a/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lb/b/a/a/b;->a:Lb/b/a/a/c$a;

    iget-object v1, v0, Lb/b/a/a/c$a;->d:Lb/b/a/a/c;

    invoke-virtual {v0}, Lb/b/a/a/c$a;->b()I

    move-result v0

    const/4 v2, 0x3

    iget p2, p2, Landroid/widget/Filter$FilterResults;->count:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    mul-int v0, v0, p2

    invoke-static {v1, v0}, Lb/b/a/a/c;->a(Lb/b/a/a/c;I)V

    iget-object p2, p0, Lb/b/a/a/b;->a:Lb/b/a/a/c$a;

    iget-object p2, p2, Lb/b/a/a/c$a;->d:Lb/b/a/a/c;

    invoke-static {p2}, Lb/b/a/a/c;->a(Lb/b/a/a/c;)Lb/b/a/a/r;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/a/r;->getCaretX()I

    move-result v0

    iget-object v1, p0, Lb/b/a/a/b;->a:Lb/b/a/a/c$a;

    iget-object v1, v1, Lb/b/a/a/c$a;->d:Lb/b/a/a/c;

    invoke-static {v1}, Lb/b/a/a/c;->a(Lb/b/a/a/c;)Lb/b/a/a/r;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Lb/b/a/a/c;->b(Lb/b/a/a/c;I)V

    iget-object p2, p0, Lb/b/a/a/b;->a:Lb/b/a/a/c$a;

    iget-object p2, p2, Lb/b/a/a/c$a;->d:Lb/b/a/a/c;

    invoke-static {p2}, Lb/b/a/a/c;->a(Lb/b/a/a/c;)Lb/b/a/a/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p2, p1}, Lb/b/a/a/c;->c(Lb/b/a/a/c;I)V

    iget-object p1, p0, Lb/b/a/a/b;->a:Lb/b/a/a/c$a;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lb/b/a/a/b;->a:Lb/b/a/a/c$a;

    iget-object p1, p1, Lb/b/a/a/c$a;->d:Lb/b/a/a/c;

    invoke-virtual {p1}, Lb/b/a/a/c;->c()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lb/b/a/a/b;->a:Lb/b/a/a/c$a;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetInvalidated()V

    :goto_0
    return-void
.end method
