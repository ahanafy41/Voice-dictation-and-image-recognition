.class Lb/b/a/a/r$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/a/b/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Lb/b/a/b/m;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/Runnable;

.field final synthetic e:Lb/b/a/a/r;


# direct methods
.method private constructor <init>(Lb/b/a/a/r;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lb/b/a/b/m;

    invoke-direct {p1, p0}, Lb/b/a/b/m;-><init>(Lb/b/a/b/m$a;)V

    iput-object p1, p0, Lb/b/a/a/r$a;->a:Lb/b/a/b/m;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/b/a/a/r$a;->b:Z

    new-instance p1, Lb/b/a/a/q;

    invoke-direct {p1, p0}, Lb/b/a/a/q;-><init>(Lb/b/a/a/r$a;)V

    iput-object p1, p0, Lb/b/a/a/r$a;->d:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lb/b/a/a/r;Lb/b/a/a/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/b/a/a/r$a;-><init>(Lb/b/a/a/r;)V

    return-void
.end method

.method private b(II)V
    .locals 3

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v0}, Lb/b/a/a/r;->p(Lb/b/a/a/r;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    const/high16 v0, 0x20000

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    sub-int v1, p1, p2

    mul-int v1, v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    :cond_0
    if-le p1, p2, :cond_1

    const/16 v1, 0x200

    goto :goto_0

    :cond_1
    const/16 v1, 0x100

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-virtual {v1, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_2
    iget-boolean v0, p0, Lb/b/a/a/r$a;->b:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v1, v0, Lb/b/a/a/r;->l:I

    if-ge p1, v1, :cond_4

    if-le p2, v1, :cond_5

    iput v1, v0, Lb/b/a/a/r;->k:I

    goto :goto_1

    :cond_4
    iget p1, v0, Lb/b/a/a/r;->k:I

    if-ge p2, p1, :cond_6

    iput p1, v0, Lb/b/a/a/r;->l:I

    :cond_5
    iput p2, v0, Lb/b/a/a/r;->k:I

    goto :goto_2

    :cond_6
    :goto_1
    iput p2, v0, Lb/b/a/a/r;->l:I

    :goto_2
    return-void
.end method

.method private k()[C
    .locals 7

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v1, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    iget v0, v0, Lb/b/a/a/r;->j:I

    invoke-virtual {v1, v0}, Lb/b/a/b/g;->a(I)I

    move-result v0

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v1, v1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v1, v0}, Lb/b/a/b/g;->c(I)I

    move-result v0

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v1, v1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v1, v0}, Lb/b/a/b/g;->g(I)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v3, v3, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v3}, Lb/b/a/b/g;->h()Z

    move-result v3

    const/16 v4, 0x20

    if-eqz v3, :cond_2

    iget-object v3, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v3, v3, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v3}, Lb/b/a/b/g;->k()C

    move-result v3

    if-eq v3, v4, :cond_0

    const/16 v5, 0x9

    if-ne v3, v5, :cond_2

    :cond_0
    add-int v3, v0, v2

    iget-object v5, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v5, v5, Lb/b/a/a/r;->j:I

    if-lt v3, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v3, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v5, v3, Lb/b/a/a/r;->r:I

    iget-object v6, v3, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    iget v3, v3, Lb/b/a/a/r;->j:I

    sub-int/2addr v3, v0

    invoke-virtual {v6, v0, v3}, Lb/b/a/b/g;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Lb/b/a/b/b;->a(Ljava/lang/CharSequence;)I

    move-result v3

    mul-int v5, v5, v3

    add-int/2addr v2, v5

    const/16 v3, 0xa

    if-gez v2, :cond_3

    const/4 v0, 0x1

    new-array v0, v0, [C

    aput-char v3, v0, v1

    return-object v0

    :cond_3
    add-int/lit8 v5, v2, 0x1

    new-array v5, v5, [C

    aput-char v3, v5, v1

    iget-object v3, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v3, v3, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v3, v0}, Lb/b/a/b/g;->g(I)I

    :goto_2
    if-ge v1, v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    aput-char v4, v5, v1

    goto :goto_2

    :cond_4
    return-object v5
.end method

.method private l()V
    .locals 3

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v0}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result v0

    invoke-virtual {p0}, Lb/b/a/a/r$a;->j()V

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v2, v1, Lb/b/a/a/r;->j:I

    invoke-static {v1, v2}, Lb/b/a/a/r;->b(Lb/b/a/a/r;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Lb/b/a/a/r;->a(Lb/b/a/a/r;II)V

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v0}, Lb/b/a/a/r;->e(Lb/b/a/a/r;)V

    :cond_0
    invoke-virtual {p0}, Lb/b/a/a/r$a;->i()V

    return-void
.end method


# virtual methods
.method a(I)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v0, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0}, Lb/b/a/b/g;->c()I

    move-result v0

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v2, v1, Lb/b/a/a/r;->j:I

    add-int v3, v2, p1

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_0

    iget-object p1, v1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2, v0}, Lb/b/a/b/g;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, v1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0, v2, p1}, Lb/b/a/b/g;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lb/b/a/a/r$a;->a:Lb/b/a/b/m;

    invoke-virtual {v0}, Lb/b/a/b/m;->a()V

    return-void
.end method

.method public a(C)V
    .locals 9

    iget-boolean v0, p0, Lb/b/a/a/r$a;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/b/a/a/r$a;->h()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v2}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result v2

    iget-object v3, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v3, v3, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v3, v2}, Lb/b/a/b/g;->e(I)I

    move-result v3

    const/16 v4, 0x8

    const-string v5, ""

    if-eq p1, v4, :cond_5

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v4, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    iget v0, v0, Lb/b/a/a/r;->j:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v4, p1, v0, v6, v7}, Lb/b/a/b/g;->a(CIJ)V

    invoke-virtual {p0, v1}, Lb/b/a/a/r$a;->c(Z)V

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v0}, Lb/b/a/a/r;->c(Lb/b/a/a/r;)Lb/b/a/a/v;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v4, v4, Lb/b/a/a/r;->j:I

    invoke-interface {v0, p1, v4, v1}, Lb/b/a/a/v;->b(Ljava/lang/CharSequence;II)V

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object p1, p1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1}, Lb/b/a/b/g;->j()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object p1, p1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1, v2}, Lb/b/a/b/g;->e(I)I

    move-result p1

    if-eq v3, p1, :cond_1

    :goto_1
    add-int/lit8 v2, v2, -0x1

    :cond_1
    :goto_2
    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {p1, v2}, Lb/b/a/a/r;->a(Lb/b/a/a/r;I)V

    goto/16 :goto_4

    :cond_2
    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-boolean v4, v0, Lb/b/a/a/r;->q:Z

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lb/b/a/a/r$a;->k()[C

    move-result-object v0

    iget-object v4, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v6, v4, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    iget v4, v4, Lb/b/a/a/r;->j:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    invoke-virtual {v6, v0, v4, v7, v8}, Lb/b/a/b/g;->a([CIJ)V

    iget-object v4, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v4, v4, Lb/b/a/a/r;->j:I

    array-length v0, v0

    add-int/2addr v4, v0

    invoke-virtual {p0, v4}, Lb/b/a/a/r$a;->d(I)V

    goto :goto_3

    :cond_3
    iget-object v4, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    iget v0, v0, Lb/b/a/a/r;->j:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v4, p1, v0, v6, v7}, Lb/b/a/b/g;->a(CIJ)V

    invoke-virtual {p0, v1}, Lb/b/a/a/r$a;->c(Z)V

    :goto_3
    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v0, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0}, Lb/b/a/b/g;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v0, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0, v2}, Lb/b/a/b/g;->e(I)I

    move-result v0

    if-eq v3, v0, :cond_4

    add-int/lit8 v2, v2, -0x1

    :cond_4
    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v0}, Lb/b/a/a/r;->c(Lb/b/a/a/r;)Lb/b/a/a/v;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v3, v3, Lb/b/a/a/r;->j:I

    invoke-interface {v0, p1, v3, v1}, Lb/b/a/a/v;->a(Ljava/lang/String;II)V

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    goto/16 :goto_4

    :cond_6
    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v4, v0, Lb/b/a/a/r;->j:I

    if-lez v4, :cond_a

    invoke-static {v0}, Lb/b/a/a/r;->c(Lb/b/a/a/r;)Lb/b/a/a/v;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v4, v4, Lb/b/a/a/r;->j:I

    invoke-interface {v0, p1, v4, v1}, Lb/b/a/a/v;->a(Ljava/lang/CharSequence;II)V

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v0, p1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    iget p1, p1, Lb/b/a/a/r;->j:I

    sub-int/2addr p1, v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v0, p1, v4, v5}, Lb/b/a/b/g;->a(IJ)V

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v0, p1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    iget p1, p1, Lb/b/a/a/r;->j:I

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {v0, p1}, Lb/b/a/b/g;->charAt(I)C

    move-result p1

    const v0, 0xd83d

    if-eq p1, v0, :cond_7

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v0, p1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    iget p1, p1, Lb/b/a/a/r;->j:I

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {v0, p1}, Lb/b/a/b/g;->charAt(I)C

    move-result p1

    const v0, 0xd83c

    if-ne p1, v0, :cond_8

    :cond_7
    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v0, p1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    iget p1, p1, Lb/b/a/a/r;->j:I

    add-int/lit8 p1, p1, -0x2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v0, p1, v4, v5}, Lb/b/a/b/g;->a(IJ)V

    invoke-virtual {p0, v1}, Lb/b/a/a/r$a;->b(Z)V

    :cond_8
    invoke-virtual {p0, v1}, Lb/b/a/a/r$a;->b(Z)V

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {p1}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result p1

    if-ge p1, v2, :cond_9

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {p1}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result v0

    invoke-static {p1, v0}, Lb/b/a/a/r;->a(Lb/b/a/a/r;I)V

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object p1, p1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1}, Lb/b/a/b/g;->j()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object p1, p1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1, v2}, Lb/b/a/b/g;->e(I)I

    move-result p1

    if-eq v3, p1, :cond_1

    goto/16 :goto_1

    :cond_a
    :goto_4
    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-virtual {p1, v1}, Lb/b/a/a/r;->setEdited(Z)V

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v0, p0, Lb/b/a/a/r$a;->d:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v0, p0, Lb/b/a/a/r$a;->d:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method a(II)V
    .locals 2

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v0, v0, Lb/b/a/a/r;->j:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v1, p1, Lb/b/a/a/r;->j:I

    add-int/2addr v1, p2

    iget-object p1, p1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1}, Lb/b/a/b/g;->c()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-le v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    sub-int/2addr p1, v0

    const-string p2, ""

    invoke-virtual {p0, v0, p1, p2}, Lb/b/a/a/r$a;->a(IILjava/lang/String;)V

    return-void
.end method

.method a(IILjava/lang/String;)V
    .locals 9

    iget-boolean v0, p0, Lb/b/a/a/r$a;->b:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v3, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    iget v0, v0, Lb/b/a/a/r;->k:I

    invoke-virtual {v3, v0}, Lb/b/a/b/g;->b(I)I

    move-result v0

    iget-object v3, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v3, v3, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v3, v0}, Lb/b/a/b/g;->e(I)I

    move-result v3

    iget-object v4, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v5, v4, Lb/b/a/a/r;->l:I

    iget v6, v4, Lb/b/a/a/r;->k:I

    sub-int/2addr v5, v6

    if-lez v5, :cond_1

    iput v6, v4, Lb/b/a/a/r;->j:I

    iget-object v4, v4, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    invoke-virtual {v4, v6, v5, v7, v8}, Lb/b/a/b/g;->a(IIJ)V

    iget-object v4, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v4}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result v4

    if-eq v0, v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v5, v4

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Lb/b/a/a/r$a;->d(Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v0}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result v0

    iget-object v3, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v4, v3, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-static {v3}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result v3

    invoke-virtual {v4, v3}, Lb/b/a/b/g;->e(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_2
    if-lez p2, :cond_5

    iget-object v4, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v4, v4, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v4, p1}, Lb/b/a/b/g;->b(I)I

    move-result v4

    if-ge v4, v0, :cond_3

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v0, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0, v4}, Lb/b/a/b/g;->e(I)I

    move-result v3

    move v0, v4

    :cond_3
    iget-object v4, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v4}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result v4

    if-eq v0, v4, :cond_4

    const/4 v5, 0x0

    :cond_4
    iget-object v4, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iput p1, v4, Lb/b/a/a/r;->j:I

    iget-object v4, v4, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v4, p1, p2, v6, v7}, Lb/b/a/b/g;->a(IIJ)V

    const/4 v4, 0x1

    :cond_5
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    iget-object v4, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v4, v4, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v4, p1}, Lb/b/a/b/g;->b(I)I

    move-result p1

    if-ge p1, v0, :cond_6

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v0, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0, p1}, Lb/b/a/b/g;->e(I)I

    move-result v3

    move v0, p1

    :cond_6
    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object p1, p1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    iget-object v6, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v6, v6, Lb/b/a/a/r;->j:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    invoke-virtual {p1, v4, v6, v7, v8}, Lb/b/a/b/g;->a([CIJ)V

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v4, p1, Lb/b/a/a/r;->j:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, p1, Lb/b/a/a/r;->j:I

    const/4 v4, 0x1

    :cond_7
    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {p1}, Lb/b/a/a/r;->c(Lb/b/a/a/r;)Lb/b/a/a/v;

    move-result-object p1

    iget-object v6, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v6, v6, Lb/b/a/a/r;->j:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, p2

    invoke-interface {p1, p3, v6, v7}, Lb/b/a/a/v;->b(Ljava/lang/CharSequence;II)V

    if-eqz v4, :cond_8

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-virtual {p1, v2}, Lb/b/a/a/r;->setEdited(Z)V

    invoke-virtual {p0}, Lb/b/a/a/r$a;->b()V

    :cond_8
    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {p1}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result p1

    invoke-virtual {p0}, Lb/b/a/a/r$a;->j()V

    iget-object p2, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {p2}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result p2

    if-eq p1, p2, :cond_9

    goto :goto_3

    :cond_9
    move v1, v5

    :goto_3
    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget p2, p1, Lb/b/a/a/r;->j:I

    invoke-static {p1, p2}, Lb/b/a/a/r;->b(Lb/b/a/a/r;I)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object p1, p1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1}, Lb/b/a/b/g;->j()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object p1, p1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1, v0}, Lb/b/a/b/g;->e(I)I

    move-result p1

    if-eq v3, p1, :cond_a

    add-int/lit8 v0, v0, -0x1

    :cond_a
    if-eqz v1, :cond_b

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object p1, p1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1}, Lb/b/a/b/g;->j()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {p1}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result p2

    iget-object p3, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {p3}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result p3

    add-int/2addr p3, v2

    invoke-static {p1, p2, p3}, Lb/b/a/a/r;->a(Lb/b/a/a/r;II)V

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {p1, v0}, Lb/b/a/a/r;->a(Lb/b/a/a/r;I)V

    :cond_c
    :goto_4
    return-void
.end method

.method public a(IIZZ)V
    .locals 3

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v1, v1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v1}, Lb/b/a/b/g;->c()I

    move-result v1

    sub-int/2addr v1, v0

    if-gt p2, v1, :cond_0

    if-ltz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Invalid range to select"

    invoke-static {v1, v2}, Lb/b/a/b/v;->a(ZLjava/lang/String;)V

    iget-boolean v1, p0, Lb/b/a/a/r$a;->b:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v0}, Lb/b/a/a/r;->h(Lb/b/a/a/r;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v1}, Lb/b/a/a/r;->e(Lb/b/a/a/r;)V

    if-eqz p4, :cond_2

    invoke-virtual {p0, v0}, Lb/b/a/a/r$a;->d(Z)V

    goto :goto_1

    :cond_2
    iput-boolean v0, p0, Lb/b/a/a/r$a;->b:Z

    :goto_1
    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iput p1, v0, Lb/b/a/a/r;->k:I

    iget p1, v0, Lb/b/a/a/r;->k:I

    add-int/2addr p1, p2

    iput p1, v0, Lb/b/a/a/r;->l:I

    iget p1, v0, Lb/b/a/a/r;->l:I

    iput p1, v0, Lb/b/a/a/r;->j:I

    invoke-virtual {p0}, Lb/b/a/a/r$a;->i()V

    invoke-virtual {p0}, Lb/b/a/a/r$a;->j()V

    if-eqz p4, :cond_3

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {p1}, Lb/b/a/a/r;->g(Lb/b/a/a/r;)Lb/b/a/a/u;

    move-result-object p1

    invoke-virtual {p0}, Lb/b/a/a/r$a;->c()Z

    move-result p2

    iget-object p4, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v0, p4, Lb/b/a/a/r;->k:I

    iget p4, p4, Lb/b/a/a/r;->l:I

    invoke-interface {p1, p2, v0, p4}, Lb/b/a/a/u;->a(ZII)V

    :cond_3
    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget p2, p1, Lb/b/a/a/r;->l:I

    invoke-static {p1, p2}, Lb/b/a/a/r;->b(Lb/b/a/a/r;I)Z

    move-result p1

    if-eqz p3, :cond_4

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget p2, p1, Lb/b/a/a/r;->k:I

    invoke-static {p1, p2}, Lb/b/a/a/r;->b(Lb/b/a/a/r;I)Z

    move-result p1

    :cond_4
    if-nez p1, :cond_5

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {p1}, Lb/b/a/a/r;->h(Lb/b/a/a/r;)V

    :cond_5
    return-void
.end method

.method public a(Landroid/text/ClipboardManager;)V
    .locals 3

    iget-boolean v0, p0, Lb/b/a/a/r$a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v1, v0, Lb/b/a/a/r;->k:I

    iget v2, v0, Lb/b/a/a/r;->l:I

    if-ge v1, v2, :cond_0

    iget-object v0, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    sub-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Lb/b/a/b/g;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v0, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0}, Lb/b/a/b/g;->b()V

    invoke-virtual {p0}, Lb/b/a/a/r$a;->h()V

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v0}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result v0

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v1, v1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v1, v0}, Lb/b/a/b/g;->e(I)I

    move-result v1

    iget-object v2, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v2, v2, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iget-object v4, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v4, v4, Lb/b/a/a/r;->j:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lb/b/a/b/g;->a([CIJ)V

    iget-object v2, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v2, v2, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v2}, Lb/b/a/b/g;->d()V

    iget-object v2, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v3, v2, Lb/b/a/a/r;->j:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v3, p1

    iput v3, v2, Lb/b/a/a/r;->j:I

    invoke-virtual {p0}, Lb/b/a/a/r$a;->j()V

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lb/b/a/a/r;->setEdited(Z)V

    invoke-virtual {p0}, Lb/b/a/a/r$a;->b()V

    invoke-virtual {p0}, Lb/b/a/a/r$a;->i()V

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v2, p1, Lb/b/a/a/r;->j:I

    invoke-static {p1, v2}, Lb/b/a/a/r;->b(Lb/b/a/a/r;I)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object p1, p1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1}, Lb/b/a/b/g;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object p1, p1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1, v0}, Lb/b/a/b/g;->e(I)I

    move-result p1

    if-eq v1, p1, :cond_1

    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v1}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v0, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0}, Lb/b/a/b/g;->j()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, p1, v1}, Lb/b/a/a/r;->a(Lb/b/a/a/r;II)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v0, p1}, Lb/b/a/a/r;->a(Lb/b/a/a/r;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/b/a/b/q;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    new-instance v1, Lb/b/a/a/p;

    invoke-direct {v1, p0, p1}, Lb/b/a/a/p;-><init>(Lb/b/a/a/r$a;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Z)V
    .locals 3

    iget-boolean v0, p0, Lb/b/a/a/r$a;->b:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v1, v0, Lb/b/a/a/r;->j:I

    iget v2, v0, Lb/b/a/a/r;->k:I

    if-eq v1, v2, :cond_0

    iput v2, v0, Lb/b/a/a/r;->j:I

    :goto_0
    invoke-direct {p0}, Lb/b/a/a/r$a;->l()V

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v0, p1, Lb/b/a/a/r;->j:I

    iget v1, p1, Lb/b/a/a/r;->l:I

    if-eq v0, v1, :cond_1

    iput v1, p1, Lb/b/a/a/r;->j:I

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method b(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v0, v0, Lb/b/a/a/r;->j:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v1, p1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    iget p1, p1, Lb/b/a/a/r;->j:I

    sub-int/2addr p1, v0

    invoke-virtual {v1, v0, p1}, Lb/b/a/b/g;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 2

    const/4 v0, -0x1

    sput v0, Lc/a/a/a/f;->j:I

    iget-object v0, p0, Lb/b/a/a/r$a;->a:Lb/b/a/b/m;

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v1, v1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0, v1}, Lb/b/a/b/m;->b(Lb/b/a/b/g;)V

    return-void
.end method

.method b(IILjava/lang/String;)V
    .locals 9

    iget-boolean v0, p0, Lb/b/a/a/r$a;->b:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v3, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    iget v0, v0, Lb/b/a/a/r;->k:I

    invoke-virtual {v3, v0}, Lb/b/a/b/g;->b(I)I

    move-result v0

    iget-object v3, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v3, v3, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v3, v0}, Lb/b/a/b/g;->e(I)I

    move-result v3

    iget-object v4, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v5, v4, Lb/b/a/a/r;->l:I

    iget v6, v4, Lb/b/a/a/r;->k:I

    sub-int/2addr v5, v6

    if-lez v5, :cond_1

    iput v6, v4, Lb/b/a/a/r;->j:I

    iget-object v4, v4, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    invoke-virtual {v4, v6, v5, v7, v8}, Lb/b/a/b/g;->a(IIJ)V

    iget-object v4, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v4}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result v4

    if-eq v0, v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v5, v4

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Lb/b/a/a/r$a;->d(Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v0}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result v0

    iget-object v3, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v4, v3, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-static {v3}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result v3

    invoke-virtual {v4, v3}, Lb/b/a/b/g;->e(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_2
    if-lez p2, :cond_5

    iget-object v4, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v4, v4, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v4, p1}, Lb/b/a/b/g;->b(I)I

    move-result v4

    if-ge v4, v0, :cond_3

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v0, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0, v4}, Lb/b/a/b/g;->e(I)I

    move-result v3

    move v0, v4

    :cond_3
    iget-object v4, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v4}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result v4

    if-eq v0, v4, :cond_4

    const/4 v5, 0x0

    :cond_4
    iget-object v4, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iput p1, v4, Lb/b/a/a/r;->j:I

    iget-object v4, v4, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v4, p1, p2, v6, v7}, Lb/b/a/b/g;->a(IIJ)V

    const/4 v4, 0x1

    :cond_5
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_7

    iget-object p2, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object p2, p2, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p2, p1}, Lb/b/a/b/g;->b(I)I

    move-result p1

    if-ge p1, v0, :cond_6

    iget-object p2, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object p2, p2, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p2, p1}, Lb/b/a/b/g;->e(I)I

    move-result v3

    move v0, p1

    :cond_6
    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object p1, p1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    iget-object v4, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v4, v4, Lb/b/a/a/r;->j:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {p1, p2, v4, v6, v7}, Lb/b/a/b/g;->a([CIJ)V

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget p2, p1, Lb/b/a/a/r;->j:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p1, Lb/b/a/a/r;->j:I

    const/4 v4, 0x1

    :cond_7
    if-eqz v4, :cond_8

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-virtual {p1, v2}, Lb/b/a/a/r;->setEdited(Z)V

    invoke-virtual {p0}, Lb/b/a/a/r$a;->b()V

    :cond_8
    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {p1}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result p1

    invoke-virtual {p0}, Lb/b/a/a/r$a;->j()V

    iget-object p2, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {p2}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result p2

    if-eq p1, p2, :cond_9

    goto :goto_3

    :cond_9
    move v1, v5

    :goto_3
    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget p2, p1, Lb/b/a/a/r;->j:I

    invoke-static {p1, p2}, Lb/b/a/a/r;->b(Lb/b/a/a/r;I)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object p1, p1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1}, Lb/b/a/b/g;->j()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object p1, p1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1, v0}, Lb/b/a/b/g;->e(I)I

    move-result p1

    if-eq v3, p1, :cond_a

    add-int/lit8 v0, v0, -0x1

    :cond_a
    if-eqz v1, :cond_b

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object p1, p1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1}, Lb/b/a/b/g;->j()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {p1}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result p2

    iget-object p3, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {p3}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result p3

    add-int/2addr p3, v2

    invoke-static {p1, p2, p3}, Lb/b/a/a/r;->a(Lb/b/a/a/r;II)V

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {p1, v0}, Lb/b/a/a/r;->a(Lb/b/a/a/r;I)V

    :cond_c
    :goto_4
    return-void
.end method

.method public b(Landroid/text/ClipboardManager;)V
    .locals 0

    invoke-virtual {p0, p1}, Lb/b/a/a/r$a;->a(Landroid/text/ClipboardManager;)V

    invoke-virtual {p0}, Lb/b/a/a/r$a;->h()V

    return-void
.end method

.method public b(Z)V
    .locals 3

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v1, v0, Lb/b/a/a/r;->j:I

    if-lez v1, :cond_1

    invoke-static {v0}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result v0

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v2, v1, Lb/b/a/a/r;->j:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lb/b/a/a/r;->j:I

    invoke-virtual {p0}, Lb/b/a/a/r$a;->j()V

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v1, v1, Lb/b/a/a/r;->j:I

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2, v1}, Lb/b/a/a/r$a;->b(II)V

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v2, v1, Lb/b/a/a/r;->j:I

    invoke-static {v1, v2}, Lb/b/a/a/r;->b(Lb/b/a/a/r;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v1}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lb/b/a/a/r;->a(Lb/b/a/a/r;II)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lb/b/a/a/r$a;->i()V

    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 3

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-virtual {v0}, Lb/b/a/a/r;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v0}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result v0

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v2, v1, Lb/b/a/a/r;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lb/b/a/a/r;->j:I

    invoke-virtual {p0}, Lb/b/a/a/r$a;->j()V

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v1, v1, Lb/b/a/a/r;->j:I

    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2, v1}, Lb/b/a/a/r$a;->b(II)V

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v2, v1, Lb/b/a/a/r;->j:I

    invoke-static {v1, v2}, Lb/b/a/a/r;->b(Lb/b/a/a/r;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v1}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v0, v2}, Lb/b/a/a/r;->a(Lb/b/a/a/r;II)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lb/b/a/a/r$a;->i()V

    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lb/b/a/a/r$a;->b:Z

    return v0
.end method

.method public c(I)Z
    .locals 3

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v1, v0, Lb/b/a/a/r;->k:I

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    :cond_0
    if-gt v1, p1, :cond_1

    iget v0, v0, Lb/b/a/a/r;->l:I

    if-ge p1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public d(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v0, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0}, Lb/b/a/b/g;->c()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v0, v0, Lb/b/a/a/r;->j:I

    invoke-direct {p0, v0, p1}, Lb/b/a/a/r$a;->b(II)V

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iput p1, v0, Lb/b/a/a/r;->j:I

    invoke-direct {p0}, Lb/b/a/a/r$a;->l()V

    return-void

    :cond_1
    :goto_0
    const-string p1, "Invalid caret position"

    invoke-static {p1}, Lb/b/a/b/v;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d(Z)V
    .locals 3

    iget-boolean v0, p0, Lb/b/a/a/r$a;->b:Z

    xor-int/2addr v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v1, v0, Lb/b/a/a/r;->j:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    const/4 v1, -0x1

    :goto_0
    iput v1, v0, Lb/b/a/a/r;->k:I

    iput v1, v0, Lb/b/a/a/r;->l:I

    iput-boolean p1, p0, Lb/b/a/a/r$a;->b:Z

    iput-boolean p1, p0, Lb/b/a/a/r$a;->c:Z

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v0}, Lb/b/a/a/r;->g(Lb/b/a/a/r;)Lb/b/a/a/u;

    move-result-object v0

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-virtual {v1}, Lb/b/a/a/r;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-virtual {v2}, Lb/b/a/a/r;->getSelectionEnd()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lb/b/a/a/u;->a(ZII)V

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lb/b/a/a/r$a;->c:Z

    return v0
.end method

.method public e()V
    .locals 8

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-virtual {v0}, Lb/b/a/a/r;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v1, v0, Lb/b/a/a/r;->j:I

    invoke-static {v0}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-virtual {v3, v1}, Lb/b/a/a/r;->d(I)I

    move-result v3

    iget-object v4, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v4, v4, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v4, v0}, Lb/b/a/b/g;->f(I)I

    move-result v4

    iget-object v5, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v5, v5, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v5, v2}, Lb/b/a/b/g;->f(I)I

    move-result v5

    if-ge v3, v5, :cond_0

    iget-object v3, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v5, v3, Lb/b/a/a/r;->j:I

    add-int/2addr v5, v4

    iput v5, v3, Lb/b/a/a/r;->j:I

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v7, v6, Lb/b/a/a/r;->j:I

    sub-int/2addr v4, v3

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v7, v4

    iput v7, v6, Lb/b/a/a/r;->j:I

    :goto_0
    iget-object v3, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v3}, Lb/b/a/a/r;->k(Lb/b/a/a/r;)I

    iget-object v3, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v3, v3, Lb/b/a/a/r;->j:I

    invoke-direct {p0, v1, v3}, Lb/b/a/a/r$a;->b(II)V

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v3, v1, Lb/b/a/a/r;->j:I

    invoke-static {v1, v3}, Lb/b/a/a/r;->b(Lb/b/a/a/r;I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    add-int/lit8 v3, v2, 0x1

    invoke-static {v1, v0, v3}, Lb/b/a/a/r;->a(Lb/b/a/a/r;II)V

    :cond_1
    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v0}, Lb/b/a/a/r;->d(Lb/b/a/a/r;)Lb/b/a/b/r;

    move-result-object v0

    invoke-interface {v0, v2}, Lb/b/a/b/r;->a(I)V

    invoke-virtual {p0}, Lb/b/a/a/r$a;->i()V

    :cond_2
    return-void
.end method

.method public f()V
    .locals 6

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-virtual {v0}, Lb/b/a/a/r;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v1, v0, Lb/b/a/a/r;->j:I

    invoke-static {v0}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-virtual {v3, v1}, Lb/b/a/a/r;->d(I)I

    move-result v3

    iget-object v4, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v4, v4, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v4, v2}, Lb/b/a/b/g;->f(I)I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v5, v3, Lb/b/a/a/r;->j:I

    sub-int/2addr v5, v4

    iput v5, v3, Lb/b/a/a/r;->j:I

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v5, v4, Lb/b/a/a/r;->j:I

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v5, v3

    iput v5, v4, Lb/b/a/a/r;->j:I

    :goto_0
    iget-object v3, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v3}, Lb/b/a/a/r;->l(Lb/b/a/a/r;)I

    iget-object v3, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v3, v3, Lb/b/a/a/r;->j:I

    invoke-direct {p0, v1, v3}, Lb/b/a/a/r$a;->b(II)V

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v3, v1, Lb/b/a/a/r;->j:I

    invoke-static {v1, v3}, Lb/b/a/a/r;->b(Lb/b/a/a/r;I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lb/b/a/a/r;->a(Lb/b/a/a/r;II)V

    :cond_1
    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v0}, Lb/b/a/a/r;->d(Lb/b/a/a/r;)Lb/b/a/b/r;

    move-result-object v0

    invoke-interface {v0, v2}, Lb/b/a/b/r;->a(I)V

    invoke-virtual {p0}, Lb/b/a/a/r$a;->i()V

    :cond_2
    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    return-void
.end method

.method public h()V
    .locals 10

    iget-boolean v0, p0, Lb/b/a/a/r$a;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v1, v0, Lb/b/a/a/r;->l:I

    iget v2, v0, Lb/b/a/a/r;->k:I

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-lez v1, :cond_4

    iget-object v0, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0, v2}, Lb/b/a/b/g;->b(I)I

    move-result v0

    iget-object v2, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v2, v2, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v2, v0}, Lb/b/a/b/g;->e(I)I

    move-result v2

    iget-object v4, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v5, v4, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    iget v4, v4, Lb/b/a/a/r;->l:I

    invoke-virtual {v5, v4}, Lb/b/a/b/g;->b(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v0, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget-object v6, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v6}, Lb/b/a/a/r;->c(Lb/b/a/a/r;)Lb/b/a/a/v;

    move-result-object v6

    iget-object v7, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v7, v7, Lb/b/a/a/r;->j:I

    const-string v8, ""

    invoke-interface {v6, v8, v7, v1}, Lb/b/a/a/v;->a(Ljava/lang/CharSequence;II)V

    iget-object v6, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v7, v6, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    iget v6, v6, Lb/b/a/a/r;->k:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-virtual {v7, v6, v1, v8, v9}, Lb/b/a/b/g;->a(IIJ)V

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v6, v1, Lb/b/a/a/r;->k:I

    iput v6, v1, Lb/b/a/a/r;->j:I

    invoke-virtual {p0}, Lb/b/a/a/r$a;->j()V

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-virtual {v1, v5}, Lb/b/a/a/r;->setEdited(Z)V

    invoke-virtual {p0}, Lb/b/a/a/r$a;->b()V

    invoke-virtual {p0, v3}, Lb/b/a/a/r$a;->d(Z)V

    invoke-virtual {p0}, Lb/b/a/a/r$a;->i()V

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget v3, v1, Lb/b/a/a/r;->j:I

    invoke-static {v1, v3}, Lb/b/a/a/r;->b(Lb/b/a/a/r;I)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v1, v1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v1}, Lb/b/a/b/g;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v1, v1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v1, v0}, Lb/b/a/b/g;->e(I)I

    move-result v1

    if-eq v2, v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    if-eqz v4, :cond_3

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v1, v1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v1}, Lb/b/a/b/g;->j()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Lb/b/a/a/r;->a(Lb/b/a/a/r;II)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v1, v0}, Lb/b/a/a/r;->a(Lb/b/a/a/r;I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v3}, Lb/b/a/a/r$a;->d(Z)V

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v0}, Lb/b/a/a/r;->e(Lb/b/a/a/r;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v0}, Lb/b/a/a/r;->f(Lb/b/a/a/r;)Lb/b/a/a/r$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v0}, Lb/b/a/a/r;->f(Lb/b/a/a/r;)Lb/b/a/a/r$b;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/a/r$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v0}, Lb/b/a/a/r;->f(Lb/b/a/a/r;)Lb/b/a/a/r$b;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/a/r$b;->b()V

    :cond_0
    return-void
.end method

.method j()V
    .locals 2

    iget-object v0, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    iget-object v1, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    iget v0, v0, Lb/b/a/a/r;->j:I

    invoke-virtual {v1, v0}, Lb/b/a/b/g;->b(I)I

    move-result v0

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v1}, Lb/b/a/a/r;->j(Lb/b/a/a/r;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v1, v0}, Lb/b/a/a/r;->c(Lb/b/a/a/r;I)I

    iget-object v1, p0, Lb/b/a/a/r$a;->e:Lb/b/a/a/r;

    invoke-static {v1}, Lb/b/a/a/r;->d(Lb/b/a/a/r;)Lb/b/a/b/r;

    move-result-object v1

    invoke-interface {v1, v0}, Lb/b/a/b/r;->a(I)V

    :cond_0
    return-void
.end method
