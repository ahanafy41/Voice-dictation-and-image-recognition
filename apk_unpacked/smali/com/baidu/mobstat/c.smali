.class public Lcom/baidu/mobstat/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/c$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/baidu/mobstat/c;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mobstat/c;

    invoke-direct {v0}, Lcom/baidu/mobstat/c;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/c;->a:Lcom/baidu/mobstat/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/c;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/c;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/c;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/c;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/c;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/c;->g:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/c;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/c;->a:Lcom/baidu/mobstat/c;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget v0, Lcom/baidu/mobstat/c$a;->a:I

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/baidu/mobstat/c;->b:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/baidu/mobstat/c;->c:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/baidu/mobstat/c;->b:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/mobstat/c;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    iget-object p2, p0, Lcom/baidu/mobstat/c;->b:Ljava/util/HashMap;

    :goto_0
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    return-object p2

    :cond_2
    sget v0, Lcom/baidu/mobstat/c$a;->c:I

    if-ne p2, v0, :cond_4

    iget-object p2, p0, Lcom/baidu/mobstat/c;->f:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/baidu/mobstat/c;->g:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/baidu/mobstat/c;->f:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/mobstat/c;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    iget-object p2, p0, Lcom/baidu/mobstat/c;->f:Ljava/util/HashMap;

    goto :goto_0

    :cond_3
    return-object p2

    :cond_4
    iget-object p2, p0, Lcom/baidu/mobstat/c;->d:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p2, p0, Lcom/baidu/mobstat/c;->e:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/baidu/mobstat/c;->d:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/mobstat/c;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    iget-object p2, p0, Lcom/baidu/mobstat/c;->d:Ljava/util/HashMap;

    goto :goto_0

    :cond_5
    return-object p2
.end method

.method public a(I)Lorg/json/JSONObject;
    .locals 3

    sget v0, Lcom/baidu/mobstat/c$a;->a:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/baidu/mobstat/c;->b:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    sget v0, Lcom/baidu/mobstat/c$a;->c:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/baidu/mobstat/c;->f:Ljava/util/HashMap;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/baidu/mobstat/c;->d:Ljava/util/HashMap;

    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :try_start_0
    new-instance p1, Lcom/baidu/mobstat/c$1;

    invoke-direct {p1, p0}, Lcom/baidu/mobstat/c$1;-><init>(Lcom/baidu/mobstat/c;)V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public b()V
    .locals 1

    sget v0, Lcom/baidu/mobstat/c$a;->a:I

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/c;->b(I)V

    sget v0, Lcom/baidu/mobstat/c$a;->c:I

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/c;->b(I)V

    sget v0, Lcom/baidu/mobstat/c$a;->b:I

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/c;->b(I)V

    return-void
.end method

.method public b(I)V
    .locals 1

    sget v0, Lcom/baidu/mobstat/c$a;->a:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/baidu/mobstat/c;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, p0, Lcom/baidu/mobstat/c;->b:Ljava/util/HashMap;

    :goto_0
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    goto :goto_1

    :cond_0
    sget v0, Lcom/baidu/mobstat/c$a;->c:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/baidu/mobstat/c;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, p0, Lcom/baidu/mobstat/c;->f:Ljava/util/HashMap;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/baidu/mobstat/c;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, p0, Lcom/baidu/mobstat/c;->d:Ljava/util/HashMap;

    goto :goto_0

    :goto_1
    return-void
.end method
