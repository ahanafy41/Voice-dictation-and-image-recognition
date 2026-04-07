.class public abstract Lc/a/a/k;
.super Lc/a/a/o;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/k$a;
    }
.end annotation


# static fields
.field public static final A:Lc/a/a/j;

.field public static final B:Lc/a/a/j;

.field public static final C:Lc/a/a/j;

.field private static D:I

.field public static final E:[Lc/a/a/k;

.field public static final F:Lc/a/a/j;

.field public static final G:Lc/a/a/j;

.field public static final H:Lc/a/a/j;

.field public static final I:Lc/a/a/j;

.field public static final J:Lc/a/a/j;

.field public static final K:Lc/a/a/j;

.field public static final L:Lc/a/a/j;

.field public static final a:[Ljava/lang/String;

.field public static final b:Lc/a/a/k;

.field public static final c:Lc/a/a/d;

.field public static final d:Lc/a/a/d;

.field public static final e:Lc/a/a/k;

.field public static final f:Lc/a/a/i;

.field public static final g:Lc/a/a/i;

.field public static final h:Lc/a/a/i;

.field public static final i:[Lc/a/a/k;

.field public static j:Lc/a/a/j;

.field public static final k:Lc/a/a/j;

.field public static final l:Lc/a/a/j;

.field public static final m:Lc/a/a/j;

.field public static final n:Lc/a/a/j;

.field public static final o:Lc/a/a/j;

.field public static final p:Lc/a/a/j;

.field public static final q:Lc/a/a/j;

.field public static final r:Lc/a/a/j;

.field public static final s:Lc/a/a/j;

.field public static final t:Lc/a/a/j;

.field public static final u:Lc/a/a/j;

.field public static final v:Lc/a/a/j;

.field public static final w:Lc/a/a/j;

.field public static final x:Lc/a/a/j;

.field public static final y:Lc/a/a/j;

.field public static final z:Lc/a/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "nil"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "boolean"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "lightuserdata"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "number"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "string"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "table"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "function"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "userdata"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "thread"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "value"

    aput-object v4, v0, v3

    sput-object v0, Lc/a/a/k;->a:[Ljava/lang/String;

    sget-object v0, Lc/a/a/h;->M:Lc/a/a/h;

    sput-object v0, Lc/a/a/k;->b:Lc/a/a/k;

    sget-object v0, Lc/a/a/d;->M:Lc/a/a/d;

    sput-object v0, Lc/a/a/k;->c:Lc/a/a/d;

    sget-object v0, Lc/a/a/d;->N:Lc/a/a/d;

    sput-object v0, Lc/a/a/k;->d:Lc/a/a/d;

    sget-object v0, Lc/a/a/k$a;->O:Lc/a/a/k$a;

    sput-object v0, Lc/a/a/k;->e:Lc/a/a/k;

    invoke-static {v1}, Lc/a/a/g;->b(I)Lc/a/a/g;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->f:Lc/a/a/i;

    invoke-static {v2}, Lc/a/a/g;->b(I)Lc/a/a/g;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->g:Lc/a/a/i;

    const/4 v0, -0x1

    invoke-static {v0}, Lc/a/a/g;->b(I)Lc/a/a/g;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->h:Lc/a/a/i;

    new-array v0, v1, [Lc/a/a/k;

    sput-object v0, Lc/a/a/k;->i:[Lc/a/a/k;

    const-string v0, "_ENV"

    invoke-static {v0}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->j:Lc/a/a/j;

    const-string v0, "__index"

    invoke-static {v0}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->k:Lc/a/a/j;

    const-string v0, "__newindex"

    invoke-static {v0}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->l:Lc/a/a/j;

    const-string v0, "__call"

    invoke-static {v0}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->m:Lc/a/a/j;

    const-string v0, "__mode"

    invoke-static {v0}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->n:Lc/a/a/j;

    const-string v0, "__metatable"

    invoke-static {v0}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->o:Lc/a/a/j;

    const-string v0, "__add"

    invoke-static {v0}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->p:Lc/a/a/j;

    const-string v0, "__sub"

    invoke-static {v0}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->q:Lc/a/a/j;

    const-string v0, "__div"

    invoke-static {v0}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->r:Lc/a/a/j;

    const-string v0, "__mul"

    invoke-static {v0}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->s:Lc/a/a/j;

    const-string v0, "__pow"

    invoke-static {v0}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->t:Lc/a/a/j;

    const-string v0, "__mod"

    invoke-static {v0}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->u:Lc/a/a/j;

    const-string v0, "__unm"

    invoke-static {v0}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->v:Lc/a/a/j;

    const-string v0, "__len"

    invoke-static {v0}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->w:Lc/a/a/j;

    const-string v0, "__eq"

    invoke-static {v0}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->x:Lc/a/a/j;

    const-string v0, "__lt"

    invoke-static {v0}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->y:Lc/a/a/j;

    const-string v0, "__le"

    invoke-static {v0}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->z:Lc/a/a/j;

    const-string v0, "__tostring"

    invoke-static {v0}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->A:Lc/a/a/j;

    const-string v0, "__concat"

    invoke-static {v0}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->B:Lc/a/a/j;

    const-string v0, ""

    invoke-static {v0}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->C:Lc/a/a/j;

    const/16 v0, 0xfa

    sput v0, Lc/a/a/k;->D:I

    sget v0, Lc/a/a/k;->D:I

    new-array v0, v0, [Lc/a/a/k;

    sput-object v0, Lc/a/a/k;->E:[Lc/a/a/k;

    :goto_0
    sget v0, Lc/a/a/k;->D:I

    if-ge v1, v0, :cond_0

    sget-object v0, Lc/a/a/k;->E:[Lc/a/a/k;

    sget-object v2, Lc/a/a/k;->b:Lc/a/a/k;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "__idiv"

    invoke-static {v0}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->F:Lc/a/a/j;

    const-string v0, "__band"

    invoke-static {v0}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->G:Lc/a/a/j;

    const-string v0, "__bor"

    invoke-static {v0}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->H:Lc/a/a/j;

    const-string v0, "__bxor"

    invoke-static {v0}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->I:Lc/a/a/j;

    const-string v0, "__shl"

    invoke-static {v0}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->J:Lc/a/a/j;

    const-string v0, "__shr"

    invoke-static {v0}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->K:Lc/a/a/j;

    const-string v0, "__bnot"

    invoke-static {v0}, Lc/a/a/k;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object v0

    sput-object v0, Lc/a/a/k;->L:Lc/a/a/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/a/a/o;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lc/a/a/k;
    .locals 1

    new-instance v0, Lc/a/a/f;

    invoke-direct {v0, p0}, Lc/a/a/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lc/a/a/k;Lc/a/a/o;)Lc/a/a/o;
    .locals 1

    invoke-virtual {p1}, Lc/a/a/o;->b()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lc/a/a/o$b;

    invoke-direct {v0, p0, p1}, Lc/a/a/o$b;-><init>(Lc/a/a/k;Lc/a/a/o;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static b([Lc/a/a/k;)Lc/a/a/o;
    .locals 4

    array-length v0, p0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    new-instance v0, Lc/a/a/o$a;

    sget-object v1, Lc/a/a/k;->e:Lc/a/a/k;

    invoke-direct {v0, p0, v1}, Lc/a/a/o$a;-><init>([Lc/a/a/k;Lc/a/a/o;)V

    return-object v0

    :cond_0
    new-instance v0, Lc/a/a/o$b;

    aget-object v1, p0, v1

    aget-object p0, p0, v2

    invoke-direct {v0, v1, p0}, Lc/a/a/o$b;-><init>(Lc/a/a/k;Lc/a/a/o;)V

    return-object v0

    :cond_1
    aget-object p0, p0, v1

    return-object p0

    :cond_2
    sget-object p0, Lc/a/a/k;->e:Lc/a/a/k;

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Lc/a/a/j;
    .locals 0

    invoke-static {p0}, Lc/a/a/j;->d(Ljava/lang/String;)Lc/a/a/j;

    move-result-object p0

    return-object p0
.end method

.method public static h(D)Lc/a/a/i;
    .locals 0

    invoke-static {p0, p1}, Lc/a/a/e;->h(D)Lc/a/a/i;

    move-result-object p0

    return-object p0
.end method

.method public static l(J)Lc/a/a/i;
    .locals 0

    invoke-static {p0, p1}, Lc/a/a/g;->l(J)Lc/a/a/i;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lc/a/a/k;
    .locals 0

    return-object p0
.end method

.method public a(D)Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/k;->p:Lc/a/a/j;

    invoke-virtual {p0, v0, p1, p2}, Lc/a/a/k;->a(Lc/a/a/k;D)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Lc/a/a/k;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    sget-object p1, Lc/a/a/k;->b:Lc/a/a/k;

    :goto_0
    return-object p1
.end method

.method public a(J)Lc/a/a/k;
    .locals 0

    long-to-double p1, p1

    invoke-virtual {p0, p1, p2}, Lc/a/a/k;->a(D)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/a/a/k;)Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/k;->p:Lc/a/a/j;

    invoke-virtual {p0, v0, p1}, Lc/a/a/k;->a(Lc/a/a/k;Lc/a/a/k;)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lc/a/a/k;D)Lc/a/a/k;
    .locals 2

    invoke-virtual {p0, p1}, Lc/a/a/k;->i(Lc/a/a/k;)Lc/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/k;->h()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2, p3}, Lc/a/a/k;->h(D)Lc/a/a/i;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lc/a/a/k;->b(Lc/a/a/k;Lc/a/a/k;)Lc/a/a/k;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "attempt to perform arithmetic "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on number and "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/a/a/k;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/k;->a(Ljava/lang/String;)Lc/a/a/k;

    const/4 p1, 0x0

    throw p1
.end method

.method protected a(Lc/a/a/k;Lc/a/a/k;)Lc/a/a/k;
    .locals 2

    invoke-virtual {p0, p1}, Lc/a/a/k;->i(Lc/a/a/k;)Lc/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/k;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, p1}, Lc/a/a/k;->i(Lc/a/a/k;)Lc/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/k;->h()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attempt to perform arithmetic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/a/a/k;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lc/a/a/k;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/k;->a(Ljava/lang/String;)Lc/a/a/k;

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {v0, p0, p2}, Lc/a/a/k;->b(Lc/a/a/k;Lc/a/a/k;)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/a/a/k;Lc/a/a/k;Lc/a/a/k;)Lc/a/a/k;
    .locals 3

    invoke-virtual {p0}, Lc/a/a/k;->f()Lc/a/a/k;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lc/a/a/k;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const/4 p1, 0x3

    aput-object p3, v1, p1

    invoke-virtual {v0, v1}, Lc/a/a/k;->a([Lc/a/a/k;)Lc/a/a/o;

    move-result-object p1

    invoke-virtual {p1}, Lc/a/a/o;->a()Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lc/a/a/k;Ljava/lang/String;)Lc/a/a/k;
    .locals 1

    invoke-virtual {p0, p1}, Lc/a/a/k;->i(Lc/a/a/k;)Lc/a/a/k;

    move-result-object p1

    invoke-virtual {p1}, Lc/a/a/k;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lc/a/a/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/a/a/k;->l()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/a/a/f;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lc/a/a/k;Lc/a/a/o;)Lc/a/a/o;
    .locals 0

    invoke-static {p1, p2}, Lc/a/a/k;->b(Lc/a/a/k;Lc/a/a/o;)Lc/a/a/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/a/a/k;->a(Lc/a/a/o;)Lc/a/a/o;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/a/a/o;)Lc/a/a/o;
    .locals 1

    invoke-virtual {p0}, Lc/a/a/k;->f()Lc/a/a/k;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lc/a/a/k;->a(Lc/a/a/k;Lc/a/a/o;)Lc/a/a/o;

    move-result-object p1

    return-object p1
.end method

.method public a([Lc/a/a/k;)Lc/a/a/o;
    .locals 0

    invoke-static {p1}, Lc/a/a/k;->b([Lc/a/a/k;)Lc/a/a/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/a/a/k;->a(Lc/a/a/o;)Lc/a/a/o;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/a/a/j;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(D)Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/k;->r:Lc/a/a/j;

    invoke-virtual {p0, v0, p1, p2}, Lc/a/a/k;->a(Lc/a/a/k;D)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public b(J)Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/k;->G:Lc/a/a/j;

    long-to-double p1, p1

    invoke-virtual {p0, v0, p1, p2}, Lc/a/a/k;->a(Lc/a/a/k;D)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public b(Lc/a/a/k;)Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/k;->G:Lc/a/a/j;

    invoke-virtual {p0, v0, p1}, Lc/a/a/k;->a(Lc/a/a/k;Lc/a/a/k;)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public b(Lc/a/a/k;Lc/a/a/k;)Lc/a/a/k;
    .locals 1

    invoke-virtual {p0}, Lc/a/a/k;->f()Lc/a/a/k;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lc/a/a/k;->a(Lc/a/a/k;Lc/a/a/k;Lc/a/a/k;)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/String;)Lc/a/a/k;
    .locals 2

    new-instance v0, Lc/a/a/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " expected, got "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/a/a/k;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lc/a/a/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(D)Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/k;->u:Lc/a/a/j;

    invoke-virtual {p0, v0, p1, p2}, Lc/a/a/k;->a(Lc/a/a/k;D)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public c(J)Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/k;->H:Lc/a/a/j;

    long-to-double p1, p1

    invoke-virtual {p0, v0, p1, p2}, Lc/a/a/k;->a(Lc/a/a/k;D)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public c(Lc/a/a/k;)Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/k;->H:Lc/a/a/j;

    invoke-virtual {p0, v0, p1}, Lc/a/a/k;->a(Lc/a/a/k;Lc/a/a/k;)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method protected c(Ljava/lang/String;)Lc/a/a/k;
    .locals 3

    new-instance v0, Lc/a/a/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not implemented for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/a/a/k;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lc/a/a/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc/a/a/k;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lc/a/a/k;
    .locals 3

    new-instance v0, Lc/a/a/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to perform arithmetic on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/a/a/k;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(D)Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/k;->s:Lc/a/a/j;

    invoke-virtual {p0, v0, p1, p2}, Lc/a/a/k;->a(Lc/a/a/k;D)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public d(J)Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/k;->I:Lc/a/a/j;

    long-to-double p1, p1

    invoke-virtual {p0, v0, p1, p2}, Lc/a/a/k;->a(Lc/a/a/k;D)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public d(Lc/a/a/k;)Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/k;->I:Lc/a/a/j;

    invoke-virtual {p0, v0, p1}, Lc/a/a/k;->a(Lc/a/a/k;Lc/a/a/k;)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public e()Lc/a/a/k;
    .locals 2

    sget-object v0, Lc/a/a/k;->L:Lc/a/a/j;

    const-string v1, "attempt to perform arithmetic on "

    invoke-virtual {p0, v0, v1}, Lc/a/a/k;->a(Lc/a/a/k;Ljava/lang/String;)Lc/a/a/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/a/a/k;->e(Lc/a/a/k;)Lc/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public e(D)Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/k;->t:Lc/a/a/j;

    invoke-virtual {p0, v0, p1, p2}, Lc/a/a/k;->a(Lc/a/a/k;D)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public e(J)Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/k;->F:Lc/a/a/j;

    long-to-double p1, p1

    invoke-virtual {p0, v0, p1, p2}, Lc/a/a/k;->a(Lc/a/a/k;D)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public e(Lc/a/a/k;)Lc/a/a/k;
    .locals 1

    invoke-virtual {p0}, Lc/a/a/k;->f()Lc/a/a/k;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lc/a/a/k;->b(Lc/a/a/k;Lc/a/a/k;)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected f()Lc/a/a/k;
    .locals 2

    sget-object v0, Lc/a/a/k;->m:Lc/a/a/j;

    const-string v1, "attempt to call "

    invoke-virtual {p0, v0, v1}, Lc/a/a/k;->a(Lc/a/a/k;Ljava/lang/String;)Lc/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public f(J)Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/k;->s:Lc/a/a/j;

    long-to-double p1, p1

    invoke-virtual {p0, v0, p1, p2}, Lc/a/a/k;->a(Lc/a/a/k;D)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public f(Lc/a/a/k;)Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/k;->r:Lc/a/a/j;

    invoke-virtual {p0, v0, p1}, Lc/a/a/k;->a(Lc/a/a/k;Lc/a/a/k;)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public f(D)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public g()Lc/a/a/k;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g(D)Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/k;->q:Lc/a/a/j;

    invoke-virtual {p0, v0, p1, p2}, Lc/a/a/k;->a(Lc/a/a/k;D)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public g(J)Lc/a/a/k;
    .locals 0

    long-to-double p1, p1

    invoke-virtual {p0, p1, p2}, Lc/a/a/k;->e(D)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public g(Lc/a/a/k;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public h(Lc/a/a/k;)Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/k;->F:Lc/a/a/j;

    invoke-virtual {p0, v0, p1}, Lc/a/a/k;->a(Lc/a/a/k;Lc/a/a/k;)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h(J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public i()Lc/a/a/k;
    .locals 2

    sget-object v0, Lc/a/a/k;->v:Lc/a/a/j;

    const-string v1, "attempt to perform arithmetic on "

    invoke-virtual {p0, v0, v1}, Lc/a/a/k;->a(Lc/a/a/k;Ljava/lang/String;)Lc/a/a/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/a/a/k;->e(Lc/a/a/k;)Lc/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public i(J)Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/k;->J:Lc/a/a/j;

    long-to-double p1, p1

    invoke-virtual {p0, v0, p1, p2}, Lc/a/a/k;->a(Lc/a/a/k;D)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public i(Lc/a/a/k;)Lc/a/a/k;
    .locals 1

    invoke-virtual {p0}, Lc/a/a/k;->g()Lc/a/a/k;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lc/a/a/k;->b:Lc/a/a/k;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lc/a/a/k;->m(Lc/a/a/k;)Lc/a/a/k;

    const/4 p1, 0x0

    throw p1
.end method

.method public j()Lc/a/a/j;
    .locals 1

    const-string v0, "strValue"

    invoke-virtual {p0, v0}, Lc/a/a/k;->b(Ljava/lang/String;)Lc/a/a/k;

    const/4 v0, 0x0

    throw v0
.end method

.method public j(J)Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/k;->K:Lc/a/a/j;

    long-to-double p1, p1

    invoke-virtual {p0, v0, p1, p2}, Lc/a/a/k;->a(Lc/a/a/k;D)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public j(Lc/a/a/k;)Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/k;->u:Lc/a/a/j;

    invoke-virtual {p0, v0, p1}, Lc/a/a/k;->a(Lc/a/a/k;Lc/a/a/k;)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public k()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public k(J)Lc/a/a/k;
    .locals 0

    long-to-double p1, p1

    invoke-virtual {p0, p1, p2}, Lc/a/a/k;->g(D)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public k(Lc/a/a/k;)Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/k;->s:Lc/a/a/j;

    invoke-virtual {p0, v0, p1}, Lc/a/a/k;->a(Lc/a/a/k;Lc/a/a/k;)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public l(Lc/a/a/k;)Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/k;->t:Lc/a/a/j;

    invoke-virtual {p0, v0, p1}, Lc/a/a/k;->a(Lc/a/a/k;Lc/a/a/k;)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public abstract l()Ljava/lang/String;
.end method

.method public m(Lc/a/a/k;)Lc/a/a/k;
    .locals 0

    const-string p1, "rawget"

    invoke-virtual {p0, p1}, Lc/a/a/k;->c(Ljava/lang/String;)Lc/a/a/k;

    const/4 p1, 0x0

    throw p1
.end method

.method public n(Lc/a/a/k;)Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/k;->J:Lc/a/a/j;

    invoke-virtual {p0, v0, p1}, Lc/a/a/k;->a(Lc/a/a/k;Lc/a/a/k;)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public o(Lc/a/a/k;)Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/k;->K:Lc/a/a/j;

    invoke-virtual {p0, v0, p1}, Lc/a/a/k;->a(Lc/a/a/k;Lc/a/a/k;)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public p(Lc/a/a/k;)Lc/a/a/k;
    .locals 1

    sget-object v0, Lc/a/a/k;->q:Lc/a/a/j;

    invoke-virtual {p0, v0, p1}, Lc/a/a/k;->a(Lc/a/a/k;Lc/a/a/k;)Lc/a/a/k;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lc/a/a/k;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
