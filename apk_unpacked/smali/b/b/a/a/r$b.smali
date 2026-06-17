.class Lb/b/a/a/r$b;
.super Landroid/view/inputmethod/BaseInputConnection;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field final synthetic d:Lb/b/a/a/r;


# direct methods
.method public constructor <init>(Lb/b/a/a/r;Lb/b/a/a/r;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/b/a/a/r$b;->a:Z

    iput p1, p0, Lb/b/a/a/r$b;->b:I

    iput-boolean p1, p0, Lb/b/a/a/r$b;->c:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lb/b/a/a/r$b;->a:Z

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lb/b/a/a/r$b;->b:I

    iput-boolean v0, p0, Lb/b/a/a/r$b;->a:Z

    iget-object v0, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    iget-object v0, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0}, Lb/b/a/b/g;->d()V

    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 4

    iget-object v0, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    invoke-static {v0}, Lb/b/a/a/r;->a(Lb/b/a/a/r;)Lb/b/a/a/r$a;

    move-result-object v0

    iget-object v1, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    invoke-virtual {v1}, Lb/b/a/a/r;->getCaretPosition()I

    move-result v1

    iget v2, p0, Lb/b/a/a/r$b;->b:I

    sub-int/2addr v1, v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lb/b/a/a/r$a;->a(IILjava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lb/b/a/a/r$b;->b:I

    iget-object v1, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    iget-object v1, v1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v1}, Lb/b/a/b/g;->d()V

    const/4 v1, 0x1

    if-le p2, v1, :cond_0

    iget-object p1, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    invoke-static {p1}, Lb/b/a/a/r;->a(Lb/b/a/a/r;)Lb/b/a/a/r$a;

    move-result-object p1

    iget-object v2, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    iget v2, v2, Lb/b/a/a/r;->j:I

    add-int/2addr v2, p2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Lb/b/a/a/r$a;->d(I)V

    goto :goto_0

    :cond_0
    if-gtz p2, :cond_1

    iget-object v2, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    invoke-static {v2}, Lb/b/a/a/r;->a(Lb/b/a/a/r;)Lb/b/a/a/r$a;

    move-result-object v2

    iget-object v3, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    iget v3, v3, Lb/b/a/a/r;->j:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    sub-int/2addr v3, p1

    sub-int/2addr v3, p2

    invoke-virtual {v2, v3}, Lb/b/a/a/r$a;->d(I)V

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lb/b/a/a/r$b;->a:Z

    return v1
.end method

.method public deleteSurroundingText(II)Z
    .locals 2

    iget v0, p0, Lb/b/a/a/r$b;->b:I

    if-eqz v0, :cond_0

    const-string v0, "lua"

    const-string v1, "Warning: Implmentation of InputConnection.deleteSurroundingText will not skip composing text"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    invoke-static {v0}, Lb/b/a/a/r;->a(Lb/b/a/a/r;)Lb/b/a/a/r$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/b/a/a/r$a;->a(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public finishComposingText()Z
    .locals 1

    invoke-virtual {p0}, Lb/b/a/a/r$b;->b()V

    const/4 v0, 0x1

    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 7

    and-int/lit16 v0, p1, 0x2000

    const/16 v1, 0x4000

    const/16 v2, 0x2000

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    iget v0, v0, Lb/b/a/a/r;->j:I

    sub-int/2addr v0, v4

    if-ltz v0, :cond_0

    invoke-static {}, Lb/b/a/b/m;->c()Lb/b/a/b/i;

    move-result-object v4

    iget-object v5, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    iget-object v5, v5, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v5, v0}, Lb/b/a/b/g;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Lb/b/a/b/i;->h(C)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    and-int/2addr p1, v1

    if-ne p1, v1, :cond_1

    const/16 p1, 0x6000

    const/16 v1, 0x6000

    goto :goto_2

    :cond_1
    const/16 v1, 0x2000

    goto :goto_2

    :cond_2
    invoke-static {}, Lb/b/a/b/m;->c()Lb/b/a/b/i;

    move-result-object p1

    iget-object v0, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    iget v0, v0, Lb/b/a/a/r;->j:I

    sub-int/2addr v0, v4

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_6

    iget-object v5, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    iget-object v5, v5, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v5, v0}, Lb/b/a/b/g;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v5}, Lb/b/a/b/i;->h(C)Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v2, :cond_4

    invoke-virtual {p1, v5}, Lb/b/a/b/i;->g(C)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    :goto_1
    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 0

    iget-object p2, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    invoke-static {p2}, Lb/b/a/a/r;->a(Lb/b/a/a/r;)Lb/b/a/a/r$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lb/b/a/a/r$a;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 0

    iget-object p2, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    invoke-static {p2}, Lb/b/a/a/r;->a(Lb/b/a/a/r;)Lb/b/a/a/r$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lb/b/a/a/r$a;->b(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public performContextMenuAction(I)Z
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    invoke-virtual {p1, v0}, Lb/b/a/a/r;->selectText(Z)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lb/b/a/a/r;->selectText(Z)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    invoke-virtual {p1}, Lb/b/a/a/r;->paste()V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    invoke-virtual {p1}, Lb/b/a/a/r;->copy()V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    invoke-virtual {p1}, Lb/b/a/a/r;->cut()V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    invoke-virtual {p1}, Lb/b/a/a/r;->selectAll()V

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1020028
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reportFullscreenMode(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-static {p1}, Lb/b/a/a/t;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lb/b/a/a/r$b;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    invoke-virtual {v0}, Lb/b/a/a/r;->isSelectText()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    invoke-virtual {v0, v2}, Lb/b/a/a/r;->selectText(Z)V

    :cond_0
    iget-boolean v0, p0, Lb/b/a/a/r$b;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    invoke-virtual {v0}, Lb/b/a/a/r;->isSelectText()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    invoke-virtual {v0, v1}, Lb/b/a/a/r;->selectText(Z)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/16 v3, 0x3b

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    if-eq p1, v3, :cond_3

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lb/b/a/a/r$b;->c:Z

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v0, v3, :cond_7

    const/16 v3, 0x7a

    if-eq v0, v3, :cond_6

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_0
    iget-object p1, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    invoke-virtual {p1}, Lb/b/a/a/r;->moveCaretRight()V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    invoke-virtual {p1}, Lb/b/a/a/r;->moveCaretLeft()V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    invoke-virtual {p1}, Lb/b/a/a/r;->moveCaretDown()V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    invoke-virtual {p1}, Lb/b/a/a/r;->moveCaretUp()V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    iget-object v0, p1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0}, Lb/b/a/b/g;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/b/a/a/r;->moveCaret(I)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    invoke-virtual {p1, v1}, Lb/b/a/a/r;->moveCaret(I)V

    goto :goto_0

    :cond_7
    iput-boolean v2, p0, Lb/b/a/a/r$b;->c:Z

    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/a/a/r$b;->a:Z

    iget-object v1, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    iget-object v1, v1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v1}, Lb/b/a/b/g;->i()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    iget-object v1, v1, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v1}, Lb/b/a/b/g;->b()V

    :cond_0
    iget-object v1, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    invoke-static {v1}, Lb/b/a/a/r;->a(Lb/b/a/a/r;)Lb/b/a/a/r$a;

    move-result-object v1

    iget-object v2, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    invoke-virtual {v2}, Lb/b/a/a/r;->getCaretPosition()I

    move-result v2

    iget v3, p0, Lb/b/a/a/r$b;->b:I

    sub-int/2addr v2, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lb/b/a/a/r$a;->a(IILjava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Lb/b/a/a/r$b;->b:I

    if-le p2, v0, :cond_1

    iget-object p1, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    invoke-static {p1}, Lb/b/a/a/r;->a(Lb/b/a/a/r;)Lb/b/a/a/r$a;

    move-result-object p1

    iget-object v1, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    iget v1, v1, Lb/b/a/a/r;->j:I

    add-int/2addr v1, p2

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lb/b/a/a/r$a;->d(I)V

    goto :goto_0

    :cond_1
    if-gtz p2, :cond_2

    iget-object v1, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    invoke-static {v1}, Lb/b/a/a/r;->a(Lb/b/a/a/r;)Lb/b/a/a/r$a;

    move-result-object v1

    iget-object v2, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    iget v2, v2, Lb/b/a/a/r;->j:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lb/b/a/a/r$a;->d(I)V

    :cond_2
    :goto_0
    return v0
.end method

.method public setSelection(II)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    invoke-static {p2}, Lb/b/a/a/r;->a(Lb/b/a/a/r;)Lb/b/a/a/r$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lb/b/a/a/r$a;->d(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lb/b/a/a/r$b;->d:Lb/b/a/a/r;

    invoke-static {v1}, Lb/b/a/a/r;->a(Lb/b/a/a/r;)Lb/b/a/a/r$a;

    move-result-object v1

    sub-int/2addr p2, p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Lb/b/a/a/r$a;->a(IIZZ)V

    :goto_0
    return v0
.end method
