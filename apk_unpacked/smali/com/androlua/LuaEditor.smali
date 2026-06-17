.class public Lcom/androlua/LuaEditor;
.super Lb/b/a/a/r;
.source ""


# instance fields
.field private ka:Z

.field private la:Landroid/content/Context;

.field private ma:Ljava/lang/String;

.field private na:Ljava/lang/String;

.field private oa:Ljava/lang/String;

.field private pa:I

.field private qa:Lb/b/a/b/n;

.field private ra:I

.field private sa:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    invoke-direct {p0, p1}, Lb/b/a/a/r;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    const-string v1, "fonts"

    invoke-virtual {v0, v1}, Lcom/androlua/LuaApplication;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaEditor;->na:Ljava/lang/String;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    const-string v1, "android.jar"

    invoke-virtual {v0, v1}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaEditor;->oa:Ljava/lang/String;

    iput-object p1, p0, Lcom/androlua/LuaEditor;->la:Landroid/content/Context;

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lb/b/a/a/r;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/androlua/LuaEditor;->na:Ljava/lang/String;

    const-string v2, "default.ttf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/b/a/a/r;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/androlua/LuaEditor;->na:Ljava/lang/String;

    const-string v2, "bold.ttf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/b/a/a/r;->setBoldTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/androlua/LuaEditor;->na:Ljava/lang/String;

    const-string v2, "italic.ttf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/b/a/a/r;->setItalicTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget v1, Lb/b/a/a/r;->c:I

    int-to-float v1, v1

    const/4 v2, 0x2

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lb/b/a/a/r;->setTextSize(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/b/a/a/r;->setShowLineNumbers(Z)V

    invoke-virtual {p0, v0}, Lb/b/a/a/r;->setHighlightCurrentRow(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/androlua/LuaEditor;->setWordWrap(Z)V

    invoke-virtual {p0, v2}, Lb/b/a/a/r;->setAutoIndentWidth(I)V

    invoke-static {}, Lb/b/a/b/j;->f()Lb/b/a/b/i;

    move-result-object v3

    invoke-static {v3}, Lb/b/a/b/m;->a(Lb/b/a/b/i;)V

    invoke-virtual {p0}, Lb/b/a/a/r;->isAccessibilityEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Lb/b/a/a/x;

    invoke-direct {v3, p0}, Lb/b/a/a/x;-><init>(Lb/b/a/a/r;)V

    goto :goto_0

    :cond_3
    new-instance v3, Lb/b/a/a/y;

    invoke-direct {v3, p0}, Lb/b/a/a/y;-><init>(Lb/b/a/a/r;)V

    :goto_0
    invoke-virtual {p0, v3}, Lb/b/a/a/r;->setNavigationMethod(Lb/b/a/a/w;)V

    iget-object v3, p0, Lcom/androlua/LuaEditor;->la:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    const v4, 0xff00ff

    invoke-virtual {v3, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->setTextColor(I)V

    invoke-virtual {p0, v1}, Lcom/androlua/LuaEditor;->setTextHighlightColor(I)V

    invoke-static {p1}, Lb/b/a/b/p;->a(Landroid/content/Context;)V

    return-void

    :array_0
    .array-data 4
        0x1010031
        0x1010036
        0x1010099
    .end array-data
.end method

.method static synthetic a(Lcom/androlua/LuaEditor;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaEditor;->la:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/androlua/LuaEditor;)Lb/b/a/b/g;
    .locals 0

    iget-object p0, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    return-object p0
.end method

.method static synthetic c(Lcom/androlua/LuaEditor;)Lb/b/a/b/g;
    .locals 0

    iget-object p0, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    return-object p0
.end method


# virtual methods
.method public addNames([Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lb/b/a/b/m;->c()Lb/b/a/b/i;

    move-result-object v0

    check-cast v0, Lb/b/a/b/j;

    invoke-virtual {v0}, Lb/b/a/b/i;->c()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    array-length v3, p1

    invoke-static {p1, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, v2}, Lb/b/a/b/i;->b([Ljava/lang/String;)V

    invoke-static {v0}, Lb/b/a/b/m;->a(Lb/b/a/b/i;)V

    invoke-virtual {p0}, Lb/b/a/a/r;->respan()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public addPackage(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lb/b/a/b/m;->c()Lb/b/a/b/i;

    move-result-object v0

    check-cast v0, Lb/b/a/b/j;

    invoke-virtual {v0, p1, p2}, Lb/b/a/b/i;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v0}, Lb/b/a/b/m;->a(Lb/b/a/b/i;)V

    invoke-virtual {p0}, Lb/b/a/a/r;->respan()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public findNext(Ljava/lang/String;)Z
    .locals 9

    iget-object v0, p0, Lcom/androlua/LuaEditor;->sa:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/androlua/LuaEditor;->sa:Ljava/lang/String;

    iput v1, p0, Lcom/androlua/LuaEditor;->ra:I

    :cond_0
    new-instance p1, Lb/b/a/b/n;

    invoke-direct {p1}, Lb/b/a/b/n;-><init>()V

    iput-object p1, p0, Lcom/androlua/LuaEditor;->qa:Lb/b/a/b/n;

    iget-object v4, p0, Lcom/androlua/LuaEditor;->sa:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lb/b/a/a/r;->selectText(Z)V

    return v1

    :cond_1
    iget-object v2, p0, Lcom/androlua/LuaEditor;->qa:Lb/b/a/b/n;

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getText()Lb/b/a/b/g;

    move-result-object v3

    iget v5, p0, Lcom/androlua/LuaEditor;->ra:I

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getText()Lb/b/a/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/a/b/g;->length()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lb/b/a/b/n;->a(Lb/b/a/b/g;Ljava/lang/String;IIZZ)I

    move-result p1

    iput p1, p0, Lcom/androlua/LuaEditor;->ra:I

    iget p1, p0, Lcom/androlua/LuaEditor;->ra:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, v1}, Lb/b/a/a/r;->selectText(Z)V

    iget-object p1, p0, Lcom/androlua/LuaEditor;->la:Landroid/content/Context;

    const-string v0, "\u672a\u627e\u5230"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iput v1, p0, Lcom/androlua/LuaEditor;->ra:I

    return v1

    :cond_2
    iget-object v0, p0, Lcom/androlua/LuaEditor;->sa:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lb/b/a/a/r;->setSelection(II)V

    iget p1, p0, Lcom/androlua/LuaEditor;->ra:I

    iget-object v0, p0, Lcom/androlua/LuaEditor;->sa:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/androlua/LuaEditor;->ra:I

    iget p1, p0, Lcom/androlua/LuaEditor;->ra:I

    invoke-virtual {p0, p1}, Lb/b/a/a/r;->moveCaret(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaEditor;->ma:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p0}, Lb/b/a/a/r;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Lb/b/a/a/r;->getSelectionEnd()I

    move-result v2

    invoke-virtual {p0}, Lb/b/a/a/r;->getSelectionStart()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lb/b/a/b/g;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Lb/b/a/b/g;
    .locals 1

    invoke-virtual {p0}, Lb/b/a/a/r;->createDocumentProvider()Lb/b/a/b/g;

    move-result-object v0

    return-object v0
.end method

.method public gotoLine()V
    .locals 0

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->startGotoMode()V

    return-void
.end method

.method public gotoLine(I)V
    .locals 1

    iget-object v0, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0}, Lb/b/a/b/g;->f()I

    move-result v0

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1}, Lb/b/a/b/g;->f()I

    move-result p1

    :cond_0
    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getText()Lb/b/a/b/g;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lb/b/a/b/g;->c(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaEditor;->setSelection(I)V

    return-void
.end method

.method public insert(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/b/a/a/r;->selectText(Z)V

    invoke-virtual {p0, p1}, Lb/b/a/a/r;->moveCaret(I)V

    invoke-virtual {p0, p2}, Lb/b/a/a/r;->paste(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, -0x7001

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x1d

    const/4 v1, 0x1

    if-eq p1, v0, :cond_6

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_5

    const/16 v0, 0x23

    if-eq p1, v0, :cond_4

    const/16 v0, 0x28

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x32

    if-eq p1, v0, :cond_1

    const/16 v0, 0x34

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lb/b/a/a/r;->cut()V

    return v1

    :cond_1
    invoke-virtual {p0}, Lb/b/a/a/r;->paste()V

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->search()V

    return v1

    :cond_3
    invoke-virtual {p0}, Lb/b/a/a/r;->format()V

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->gotoLine()V

    return v1

    :cond_5
    invoke-virtual {p0}, Lb/b/a/a/r;->copy()V

    return v1

    :cond_6
    invoke-virtual {p0}, Lb/b/a/a/r;->selectAll()V

    return v1

    :cond_7
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lb/b/a/a/r;->onLayout(ZIIII)V

    iget p1, p0, Lcom/androlua/LuaEditor;->pa:I

    if-eqz p1, :cond_0

    if-lez p4, :cond_0

    invoke-virtual {p0, p1}, Lb/b/a/a/r;->moveCaret(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/androlua/LuaEditor;->pa:I

    :cond_0
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/androlua/LuaEditor;->ma:Ljava/lang/String;

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/androlua/LuaEditor;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/16 v0, 0x100

    const/16 v1, 0x10

    const/4 v2, 0x4

    const-string v3, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p1, v0, :cond_d

    const/16 v0, 0x200

    if-eq p1, v0, :cond_8

    const/16 v0, 0x4000

    if-eq p1, v0, :cond_7

    const v0, 0x8000

    if-eq p1, v0, :cond_6

    const/high16 v0, 0x10000

    if-eq p1, v0, :cond_5

    const/high16 v0, 0x20000

    if-eq p1, v0, :cond_2

    const/high16 v0, 0x200000

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Lb/b/a/a/r;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, v4}, Lb/b/a/a/r;->selectText(Z)V

    if-nez p2, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    const-string p1, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1, v5}, Lcom/androlua/LuaEditor;->setText(Ljava/lang/CharSequence;Z)V

    return v5

    :cond_2
    if-nez p2, :cond_3

    return v5

    :cond_3
    const-string p1, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {p2, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1, v0}, Lb/b/a/a/r;->setSelectionRange(II)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/androlua/LuaEditor;->setSelection(I)V

    :goto_1
    return v5

    :cond_5
    invoke-virtual {p0}, Lb/b/a/a/r;->cut()V

    return v5

    :cond_6
    invoke-virtual {p0}, Lb/b/a/a/r;->paste()V

    return v5

    :cond_7
    invoke-virtual {p0}, Lb/b/a/a/r;->copy()V

    return v5

    :cond_8
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v5, :cond_b

    if-eq p1, v2, :cond_a

    if-eq p1, v1, :cond_9

    goto :goto_2

    :cond_9
    return v4

    :cond_a
    invoke-virtual {p0}, Lb/b/a/a/r;->moveCaretUp()V

    :goto_2
    return v5

    :cond_b
    invoke-virtual {p0}, Lb/b/a/a/r;->getCaretPosition()I

    move-result p1

    if-gtz p1, :cond_c

    return v4

    :cond_c
    invoke-virtual {p0}, Lb/b/a/a/r;->moveCaretLeft()V

    return v5

    :cond_d
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v5, :cond_10

    if-eq p1, v2, :cond_f

    if-eq p1, v1, :cond_e

    goto :goto_3

    :cond_e
    return v4

    :cond_f
    invoke-virtual {p0}, Lb/b/a/a/r;->moveCaretDown()V

    goto :goto_3

    :cond_10
    invoke-virtual {p0}, Lb/b/a/a/r;->getCaretPosition()I

    move-result p1

    invoke-virtual {p0}, Lb/b/a/a/r;->getLength()I

    move-result p2

    sub-int/2addr p2, v5

    if-lt p1, p2, :cond_11

    return v4

    :cond_11
    invoke-virtual {p0}, Lb/b/a/a/r;->moveCaretRight()V

    :goto_3
    return v5
.end method

.method public redo()V
    .locals 2

    invoke-virtual {p0}, Lb/b/a/a/r;->createDocumentProvider()Lb/b/a/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/b/g;->l()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lb/b/a/a/r;->setEdited(Z)V

    invoke-virtual {p0}, Lb/b/a/a/r;->respan()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lb/b/a/a/r;->selectText(Z)V

    invoke-virtual {p0, v0}, Lb/b/a/a/r;->moveCaret(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lb/b/a/b/m;->c()Lb/b/a/b/i;

    move-result-object v0

    check-cast v0, Lb/b/a/b/j;

    invoke-virtual {v0, p1}, Lb/b/a/b/i;->g(Ljava/lang/String;)V

    invoke-static {v0}, Lb/b/a/b/m;->a(Lb/b/a/b/i;)V

    invoke-virtual {p0}, Lb/b/a/a/r;->respan()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public save()Z
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaEditor;->ma:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/androlua/LuaEditor;->save(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public save(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->getText()Lb/b/a/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/a/b/g;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    return v0
.end method

.method public search()V
    .locals 0

    invoke-virtual {p0}, Lcom/androlua/LuaEditor;->startFindMode()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    invoke-virtual {p0}, Lb/b/a/a/r;->getColorScheme()Lb/b/a/b/c;

    move-result-object v0

    sget-object v1, Lb/b/a/b/c$a;->b:Lb/b/a/b/c$a;

    invoke-virtual {v0, v1, p1}, Lb/b/a/b/c;->a(Lb/b/a/b/c$a;I)V

    return-void
.end method

.method public setBasewordColor(I)V
    .locals 2

    invoke-virtual {p0}, Lb/b/a/a/r;->getColorScheme()Lb/b/a/b/c;

    move-result-object v0

    sget-object v1, Lb/b/a/b/c$a;->l:Lb/b/a/b/c$a;

    invoke-virtual {v0, v1, p1}, Lb/b/a/b/c;->a(Lb/b/a/b/c$a;I)V

    return-void
.end method

.method public setCommentColor(I)V
    .locals 2

    invoke-virtual {p0}, Lb/b/a/a/r;->getColorScheme()Lb/b/a/b/c;

    move-result-object v0

    sget-object v1, Lb/b/a/b/c$a;->j:Lb/b/a/b/c$a;

    invoke-virtual {v0, v1, p1}, Lb/b/a/b/c;->a(Lb/b/a/b/c$a;I)V

    return-void
.end method

.method public setDark(Z)V
    .locals 0

    if-eqz p1, :cond_0

    new-instance p1, Lb/b/a/b/d;

    invoke-direct {p1}, Lb/b/a/b/d;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lb/b/a/b/e;

    invoke-direct {p1}, Lb/b/a/b/e;-><init>()V

    :goto_0
    invoke-virtual {p0, p1}, Lb/b/a/a/r;->setColorScheme(Lb/b/a/b/c;)V

    return-void
.end method

.method public setKeywordColor(I)V
    .locals 2

    invoke-virtual {p0}, Lb/b/a/a/r;->getColorScheme()Lb/b/a/b/c;

    move-result-object v0

    sget-object v1, Lb/b/a/b/c$a;->k:Lb/b/a/b/c$a;

    invoke-virtual {v0, v1, p1}, Lb/b/a/b/c;->a(Lb/b/a/b/c$a;I)V

    return-void
.end method

.method public setPanelBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lb/b/a/a/r;->t:Lb/b/a/a/c;

    invoke-virtual {v0, p1}, Lb/b/a/a/c;->a(I)V

    return-void
.end method

.method public setPanelTextColor(I)V
    .locals 1

    iget-object v0, p0, Lb/b/a/a/r;->t:Lb/b/a/a/c;

    invoke-virtual {v0, p1}, Lb/b/a/a/c;->b(I)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/b/a/a/r;->selectText(Z)V

    invoke-virtual {p0}, Lb/b/a/a/r;->hasLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lb/b/a/a/r;->moveCaret(I)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/androlua/LuaEditor;->pa:I

    :goto_0
    return-void
.end method

.method public setStringColor(I)V
    .locals 2

    invoke-virtual {p0}, Lb/b/a/a/r;->getColorScheme()Lb/b/a/b/c;

    move-result-object v0

    sget-object v1, Lb/b/a/b/c$a;->n:Lb/b/a/b/c$a;

    invoke-virtual {v0, v1, p1}, Lb/b/a/b/c;->a(Lb/b/a/b/c$a;I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    new-instance v0, Lb/b/a/b/f;

    invoke-direct {v0, p0}, Lb/b/a/b/f;-><init>(Lb/b/a/b/f$a;)V

    iget-boolean v1, p0, Lcom/androlua/LuaEditor;->ka:Z

    invoke-virtual {v0, v1}, Lb/b/a/b/f;->a(Z)V

    invoke-virtual {v0, p1}, Lb/b/a/b/f;->a(Ljava/lang/CharSequence;)V

    new-instance p1, Lb/b/a/b/g;

    invoke-direct {p1, v0}, Lb/b/a/b/g;-><init>(Lb/b/a/b/f;)V

    invoke-virtual {p0, p1}, Lb/b/a/a/r;->setDocumentProvider(Lb/b/a/b/g;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1

    invoke-virtual {p0}, Lb/b/a/a/r;->getLength()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lb/b/a/a/r;->replaceText(IILjava/lang/String;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    invoke-virtual {p0}, Lb/b/a/a/r;->getColorScheme()Lb/b/a/b/c;

    move-result-object v0

    sget-object v1, Lb/b/a/b/c$a;->a:Lb/b/a/b/c$a;

    invoke-virtual {v0, v1, p1}, Lb/b/a/b/c;->a(Lb/b/a/b/c$a;I)V

    return-void
.end method

.method public setTextHighlightColor(I)V
    .locals 2

    invoke-virtual {p0}, Lb/b/a/a/r;->getColorScheme()Lb/b/a/b/c;

    move-result-object v0

    sget-object v1, Lb/b/a/b/c$a;->d:Lb/b/a/b/c$a;

    invoke-virtual {v0, v1, p1}, Lb/b/a/b/c;->a(Lb/b/a/b/c$a;I)V

    return-void
.end method

.method public setUserwordColor(I)V
    .locals 2

    invoke-virtual {p0}, Lb/b/a/a/r;->getColorScheme()Lb/b/a/b/c;

    move-result-object v0

    sget-object v1, Lb/b/a/b/c$a;->m:Lb/b/a/b/c$a;

    invoke-virtual {v0, v1, p1}, Lb/b/a/b/c;->a(Lb/b/a/b/c$a;I)V

    return-void
.end method

.method public setWordWrap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/androlua/LuaEditor;->ka:Z

    invoke-super {p0, p1}, Lb/b/a/a/r;->setWordWrap(Z)V

    return-void
.end method

.method public startFindMode()V
    .locals 1

    new-instance v0, Lcom/androlua/LuaEditor$2;

    invoke-direct {v0, p0}, Lcom/androlua/LuaEditor$2;-><init>(Lcom/androlua/LuaEditor;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    return-void
.end method

.method public startGotoMode()V
    .locals 1

    new-instance v0, Lcom/androlua/LuaEditor$1;

    invoke-direct {v0, p0}, Lcom/androlua/LuaEditor$1;-><init>(Lcom/androlua/LuaEditor;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    return-void
.end method

.method public undo()V
    .locals 2

    invoke-virtual {p0}, Lb/b/a/a/r;->createDocumentProvider()Lb/b/a/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/b/g;->m()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lb/b/a/a/r;->setEdited(Z)V

    invoke-virtual {p0}, Lb/b/a/a/r;->respan()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lb/b/a/a/r;->selectText(Z)V

    invoke-virtual {p0, v0}, Lb/b/a/a/r;->moveCaret(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
