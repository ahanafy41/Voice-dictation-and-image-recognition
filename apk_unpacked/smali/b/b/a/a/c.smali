.class public Lb/b/a/a/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/a/c$a;
    }
.end annotation


# static fields
.field private static a:Lb/b/a/b/i;


# instance fields
.field private final b:Landroid/util/DisplayMetrics;

.field private c:Lb/b/a/a/r;

.field private d:Landroid/content/Context;

.field private e:Landroid/widget/ListPopupWindow;

.field private f:Lb/b/a/a/c$a;

.field private g:Landroid/widget/Filter;

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/CharSequence;

.field private l:I

.field private m:Landroid/graphics/drawable/GradientDrawable;

.field private n:I

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lb/b/a/b/k;->f()Lb/b/a/b/i;

    move-result-object v0

    sput-object v0, Lb/b/a/a/c;->a:Lb/b/a/b/i;

    return-void
.end method

.method public constructor <init>(Lb/b/a/a/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/a/a/c;->c:Lb/b/a/a/r;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lb/b/a/a/c;->d:Landroid/content/Context;

    iget-object p1, p0, Lb/b/a/a/c;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lb/b/a/a/c;->b:Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Lb/b/a/a/c;->d()V

    return-void
.end method

.method private a(F)I
    .locals 2

    iget-object v0, p0, Lb/b/a/a/c;->b:Landroid/util/DisplayMetrics;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    if-gtz v0, :cond_0

    float-to-int p1, p1

    return p1

    :cond_0
    return v0
.end method

.method static synthetic a(Lb/b/a/a/c;)Lb/b/a/a/r;
    .locals 0

    iget-object p0, p0, Lb/b/a/a/c;->c:Lb/b/a/a/r;

    return-object p0
.end method

.method static synthetic a()Lb/b/a/b/i;
    .locals 1

    sget-object v0, Lb/b/a/a/c;->a:Lb/b/a/b/i;

    return-object v0
.end method

.method static synthetic a(Lb/b/a/a/c;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lb/b/a/a/c;->k:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic a(Lb/b/a/a/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lb/b/a/a/c;->d(I)V

    return-void
.end method

.method static synthetic b(Lb/b/a/a/c;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lb/b/a/a/c;->k:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic b(Lb/b/a/a/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lb/b/a/a/c;->e(I)V

    return-void
.end method

.method static synthetic c(Lb/b/a/a/c;)Lb/b/a/a/c$a;
    .locals 0

    iget-object p0, p0, Lb/b/a/a/c;->f:Lb/b/a/a/c$a;

    return-object p0
.end method

.method static synthetic c(Lb/b/a/a/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lb/b/a/a/c;->f(I)V

    return-void
.end method

.method static synthetic d(Lb/b/a/a/c;)I
    .locals 0

    iget p0, p0, Lb/b/a/a/c;->p:I

    return p0
.end method

.method private d()V
    .locals 4

    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lb/b/a/a/c;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    iget-object v0, p0, Lb/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lb/b/a/a/c;->c:Lb/b/a/a/r;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    new-instance v0, Lb/b/a/a/c$a;

    iget-object v1, p0, Lb/b/a/a/c;->d:Landroid/content/Context;

    const v2, 0x1090003

    invoke-direct {v0, p0, v1, v2}, Lb/b/a/a/c$a;-><init>(Lb/b/a/a/c;Landroid/content/Context;I)V

    iput-object v0, p0, Lb/b/a/a/c;->f:Lb/b/a/a/c$a;

    iget-object v0, p0, Lb/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lb/b/a/a/c;->f:Lb/b/a/a/c$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lb/b/a/a/c;->f:Lb/b/a/a/c$a;

    invoke-virtual {v0}, Lb/b/a/a/c$a;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Lb/b/a/a/c;->g:Landroid/widget/Filter;

    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lb/b/a/a/c;->d(I)V

    iget-object v0, p0, Lb/b/a/a/c;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const v1, 0xff00ff

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lb/b/a/a/c;->m:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lb/b/a/a/c;->m:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lb/b/a/a/c;->m:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-direct {p0, v2}, Lb/b/a/a/c;->a(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lb/b/a/a/c;->m:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v2}, Lb/b/a/a/c;->a(F)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p0, v1}, Lb/b/a/a/c;->b(I)V

    iget-object v0, p0, Lb/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lb/b/a/a/c;->m:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lb/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    new-instance v1, Lb/b/a/a/a;

    invoke-direct {v1, p0}, Lb/b/a/a/a;-><init>(Lb/b/a/a/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :array_0
    .array-data 4
        0x1010031
        0x1010036
    .end array-data
.end method

.method private d(I)V
    .locals 1

    iget v0, p0, Lb/b/a/a/c;->i:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lb/b/a/a/c;->i:I

    iget-object v0, p0, Lb/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lb/b/a/a/c;)I
    .locals 0

    iget p0, p0, Lb/b/a/a/c;->n:I

    return p0
.end method

.method private e(I)V
    .locals 1

    iget-object v0, p0, Lb/b/a/a/c;->c:Lb/b/a/a/r;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Lb/b/a/a/c;->j:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lb/b/a/a/c;->j:I

    iget-object v0, p0, Lb/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    :cond_0
    return-void
.end method

.method private f(I)V
    .locals 3

    iget-object v0, p0, Lb/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    rsub-int/lit8 v0, v0, 0x0

    if-le p1, v0, :cond_0

    iget-object v2, p0, Lb/b/a/a/c;->c:Lb/b/a/a/r;

    sub-int/2addr p1, v0

    invoke-virtual {v2, v1, p1}, Landroid/view/View;->scrollBy(II)V

    move p1, v0

    :cond_0
    iget v0, p0, Lb/b/a/a/c;->h:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lb/b/a/a/c;->h:I

    iget-object v0, p0, Lb/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iput p1, p0, Lb/b/a/a/c;->l:I

    iget-object v0, p0, Lb/b/a/a/c;->m:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p1, p0, Lb/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    iget-object v0, p0, Lb/b/a/a/c;->m:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public declared-synchronized a(Lb/b/a/b/i;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    sput-object p1, Lb/b/a/a/c;->a:Lb/b/a/b/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lb/b/a/a/c;->f:Lb/b/a/a/c$a;

    invoke-virtual {v0}, Lb/b/a/a/c$a;->c()V

    iget-object v0, p0, Lb/b/a/a/c;->g:Landroid/widget/Filter;

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lb/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    iput p1, p0, Lb/b/a/a/c;->n:I

    iget-object v0, p0, Lb/b/a/a/c;->m:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Lb/b/a/a/c;->a(F)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object p1, p0, Lb/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    iget-object v0, p0, Lb/b/a/a/c;->m:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lb/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    iget-object v0, p0, Lb/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    iget-object v1, p0, Lb/b/a/a/c;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 2

    iget-object v0, p0, Lb/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    iget-object v0, p0, Lb/b/a/a/c;->e:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iput p1, p0, Lb/b/a/a/c;->p:I

    return-void
.end method
