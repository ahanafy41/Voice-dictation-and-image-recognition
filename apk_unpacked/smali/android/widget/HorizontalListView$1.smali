.class Landroid/widget/HorizontalListView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Landroid/widget/HorizontalListView;


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Landroid/widget/HorizontalListView$1;->a:Landroid/widget/HorizontalListView;

    invoke-static {p1}, Landroid/widget/HorizontalListView;->a(Landroid/widget/HorizontalListView;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
