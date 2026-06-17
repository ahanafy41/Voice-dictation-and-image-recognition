.class Lcom/androlua/LuaEditor$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaEditor;->startFindMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Lb/b/a/b/n;

.field private b:I

.field private c:Landroid/widget/EditText;

.field final synthetic d:Lcom/androlua/LuaEditor;


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditor$2;->d:Lcom/androlua/LuaEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/androlua/LuaEditor$2;I)I
    .locals 0

    iput p1, p0, Lcom/androlua/LuaEditor$2;->b:I

    return p1
.end method

.method private a()V
    .locals 9

    new-instance v0, Lb/b/a/b/n;

    invoke-direct {v0}, Lb/b/a/b/n;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaEditor$2;->a:Lb/b/a/b/n;

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->d:Lcom/androlua/LuaEditor;

    invoke-virtual {v0, v8}, Lb/b/a/a/r;->selectText(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/androlua/LuaEditor$2;->a:Lb/b/a/b/n;

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->d:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/androlua/LuaEditor;->getText()Lb/b/a/b/g;

    move-result-object v2

    iget v4, p0, Lcom/androlua/LuaEditor$2;->b:I

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->d:Lcom/androlua/LuaEditor;

    invoke-virtual {v0}, Lcom/androlua/LuaEditor;->getText()Lb/b/a/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/a/b/g;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lb/b/a/b/n;->a(Lb/b/a/b/g;Ljava/lang/String;IIZZ)I

    move-result v0

    iput v0, p0, Lcom/androlua/LuaEditor$2;->b:I

    iget v0, p0, Lcom/androlua/LuaEditor$2;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->d:Lcom/androlua/LuaEditor;

    invoke-virtual {v0, v8}, Lb/b/a/a/r;->selectText(Z)V

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->d:Lcom/androlua/LuaEditor;

    invoke-static {v0}, Lcom/androlua/LuaEditor;->a(Lcom/androlua/LuaEditor;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u672a\u627e\u5230"

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput v8, p0, Lcom/androlua/LuaEditor$2;->b:I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/androlua/LuaEditor$2;->d:Lcom/androlua/LuaEditor;

    iget-object v2, p0, Lcom/androlua/LuaEditor$2;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lb/b/a/a/r;->setSelection(II)V

    iget v0, p0, Lcom/androlua/LuaEditor$2;->b:I

    iget-object v1, p0, Lcom/androlua/LuaEditor$2;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/androlua/LuaEditor$2;->b:I

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->d:Lcom/androlua/LuaEditor;

    iget v1, p0, Lcom/androlua/LuaEditor$2;->b:I

    invoke-virtual {v0, v1}, Lb/b/a/a/r;->moveCaret(I)V

    return-void
.end method

.method static synthetic a(Lcom/androlua/LuaEditor$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/androlua/LuaEditor$2;->a()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/androlua/LuaEditor$2;->a()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    const-string v0, "\u641c\u7d22"

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/androlua/LuaEditor$2$1;

    iget-object v0, p0, Lcom/androlua/LuaEditor$2;->d:Lcom/androlua/LuaEditor;

    invoke-static {v0}, Lcom/androlua/LuaEditor;->a(Lcom/androlua/LuaEditor;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/androlua/LuaEditor$2$1;-><init>(Lcom/androlua/LuaEditor$2;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/androlua/LuaEditor$2;->c:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/androlua/LuaEditor$2;->c:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object p1, p0, Lcom/androlua/LuaEditor$2;->c:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object p1, p0, Lcom/androlua/LuaEditor$2;->c:Landroid/widget/EditText;

    new-instance v2, Lcom/androlua/LuaEditor$2$2;

    invoke-direct {v2, p0}, Lcom/androlua/LuaEditor$2$2;-><init>(Lcom/androlua/LuaEditor$2;)V

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p1, p0, Lcom/androlua/LuaEditor$2;->c:Landroid/widget/EditText;

    new-instance v2, Landroid/widget/RadioGroup$LayoutParams;

    iget-object v3, p0, Lcom/androlua/LuaEditor$2;->d:Lcom/androlua/LuaEditor;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v1

    const/4 v1, -0x1

    invoke-direct {v2, v3, v1}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    const-string v1, ""

    invoke-interface {p2, p1, v0, p1, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/androlua/LuaEditor$2;->c:Landroid/widget/EditText;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/androlua/LuaEditor$2;->d:Lcom/androlua/LuaEditor;

    invoke-static {v1}, Lcom/androlua/LuaEditor;->a(Lcom/androlua/LuaEditor;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x104000c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p2, p1, v2, p1, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/androlua/LuaEditor$2;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
