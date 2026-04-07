.class Lb/b/a/a/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/a/a/r;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/text/SpannableStringBuilder;

.field final synthetic b:Z

.field final synthetic c:Lb/b/a/a/r;


# direct methods
.method constructor <init>(Lb/b/a/a/r;Landroid/text/SpannableStringBuilder;Z)V
    .locals 0

    iput-object p1, p0, Lb/b/a/a/n;->c:Lb/b/a/a/r;

    iput-object p2, p0, Lb/b/a/a/n;->a:Landroid/text/SpannableStringBuilder;

    iput-boolean p3, p0, Lb/b/a/a/n;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lb/b/a/a/n;->a:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_1

    iget-boolean p1, p0, Lb/b/a/a/n;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/b/a/a/n;->c:Lb/b/a/a/r;

    invoke-static {p1}, Lb/b/a/a/r;->a(Lb/b/a/a/r;)Lb/b/a/a/r$a;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lb/b/a/a/r$a;->a(C)V

    :cond_0
    iget-object p1, p0, Lb/b/a/a/n;->c:Lb/b/a/a/r;

    invoke-static {p1}, Lb/b/a/a/r;->a(Lb/b/a/a/r;)Lb/b/a/a/r$a;

    move-result-object p1

    iget-object v0, p0, Lb/b/a/a/n;->a:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Lb/b/a/a/r$a;->a(C)V

    :cond_1
    return-void
.end method
