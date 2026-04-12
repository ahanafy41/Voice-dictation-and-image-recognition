.class public final Lcom/android/cglib/dx/a/a/j;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Lcom/android/cglib/dx/a/a/n;

.field private final e:Z


# direct methods
.method public constructor <init>(IIILcom/android/cglib/dx/a/a/n;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/cglib/dx/b/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/android/cglib/dx/b/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p3}, Lcom/android/cglib/dx/b/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    iput p1, p0, Lcom/android/cglib/dx/a/a/j;->a:I

    iput p2, p0, Lcom/android/cglib/dx/a/a/j;->b:I

    iput p3, p0, Lcom/android/cglib/dx/a/a/j;->c:I

    iput-object p4, p0, Lcom/android/cglib/dx/a/a/j;->d:Lcom/android/cglib/dx/a/a/n;

    iput-boolean p5, p0, Lcom/android/cglib/dx/a/a/j;->e:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "format == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus nextOpcode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus family"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus opcode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/a/a/j;->b:I

    return v0
.end method

.method public b()Lcom/android/cglib/dx/a/a/n;
    .locals 1

    iget-object v0, p0, Lcom/android/cglib/dx/a/a/j;->d:Lcom/android/cglib/dx/a/a/n;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/a/a/j;->a:I

    invoke-static {v0}, Lcom/android/cglib/dx/b/b;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/a/a/j;->c:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/android/cglib/dx/a/a/j;->a:I

    return v0
.end method

.method public f()Lcom/android/cglib/dx/a/a/j;
    .locals 3

    iget v0, p0, Lcom/android/cglib/dx/a/a/j;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bogus opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/android/cglib/dx/a/a/k;->ka:Lcom/android/cglib/dx/a/a/j;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/cglib/dx/a/a/k;->la:Lcom/android/cglib/dx/a/a/j;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/android/cglib/dx/a/a/k;->ia:Lcom/android/cglib/dx/a/a/j;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/android/cglib/dx/a/a/k;->ja:Lcom/android/cglib/dx/a/a/j;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/android/cglib/dx/a/a/k;->ga:Lcom/android/cglib/dx/a/a/j;

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/android/cglib/dx/a/a/k;->ha:Lcom/android/cglib/dx/a/a/j;

    return-object v0

    :pswitch_6
    sget-object v0, Lcom/android/cglib/dx/a/a/k;->ea:Lcom/android/cglib/dx/a/a/j;

    return-object v0

    :pswitch_7
    sget-object v0, Lcom/android/cglib/dx/a/a/k;->fa:Lcom/android/cglib/dx/a/a/j;

    return-object v0

    :pswitch_8
    sget-object v0, Lcom/android/cglib/dx/a/a/k;->ca:Lcom/android/cglib/dx/a/a/j;

    return-object v0

    :pswitch_9
    sget-object v0, Lcom/android/cglib/dx/a/a/k;->da:Lcom/android/cglib/dx/a/a/j;

    return-object v0

    :pswitch_a
    sget-object v0, Lcom/android/cglib/dx/a/a/k;->aa:Lcom/android/cglib/dx/a/a/j;

    return-object v0

    :pswitch_b
    sget-object v0, Lcom/android/cglib/dx/a/a/k;->ba:Lcom/android/cglib/dx/a/a/j;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/cglib/dx/a/a/j;->e:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/cglib/dx/a/a/j;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
