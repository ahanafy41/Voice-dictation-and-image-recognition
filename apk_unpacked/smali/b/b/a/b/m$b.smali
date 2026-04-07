.class Lb/b/a/b/m$b;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:Lb/b/a/b/m;

.field private final b:Lb/b/a/b/h;

.field private c:Z

.field private d:I

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/b/a/b/q;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Lb/b/a/b/m;


# direct methods
.method public constructor <init>(Lb/b/a/b/m;Lb/b/a/b/m;)V
    .locals 2

    iput-object p1, p0, Lb/b/a/b/m$b;->f:Lb/b/a/b/m;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/b/a/b/m$b;->c:Z

    const/16 v1, 0x10

    iput v1, p0, Lb/b/a/b/m$b;->d:I

    iput-object p2, p0, Lb/b/a/b/m$b;->a:Lb/b/a/b/m;

    new-instance p2, Lb/b/a/b/h;

    invoke-direct {p2}, Lb/b/a/b/h;-><init>()V

    iput-object p2, p0, Lb/b/a/b/m$b;->b:Lb/b/a/b/h;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lb/b/a/b/m$b;->e:Ljava/util/ArrayList;

    iget-object p2, p0, Lb/b/a/b/m$b;->e:Ljava/util/ArrayList;

    new-instance v1, Lb/b/a/b/q;

    invoke-static {p1}, Lb/b/a/b/m;->a(Lb/b/a/b/m;)Lb/b/a/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/a/b/g;->length()I

    move-result p1

    invoke-direct {v1, p1, v0}, Lb/b/a/b/q;-><init>(II)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private c()V
    .locals 25

    move-object/from16 v1, p0

    iget-object v0, v1, Lb/b/a/b/m$b;->f:Lb/b/a/b/m;

    invoke-virtual {v0}, Lb/b/a/b/m;->b()Lb/b/a/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/a/b/g;->f()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x2004

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    mul-int/lit8 v4, v0, 0x5

    const/4 v8, 0x4

    const/16 v9, 0x270f

    if-ge v4, v9, :cond_0

    new-instance v4, Lb/b/a/b/g;

    invoke-direct {v4, v2}, Lb/b/a/b/g;-><init>(Lb/b/a/b/g;)V

    iget-object v10, v1, Lb/b/a/b/m$b;->b:Lb/b/a/b/h;

    invoke-static {v4, v10}, Lb/b/a/b/o;->a(Ljava/lang/CharSequence;Lb/b/a/b/h;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v1, Lb/b/a/b/m$b;->e:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v8, :cond_1

    iget-object v0, v1, Lb/b/a/b/m$b;->b:Lb/b/a/b/h;

    invoke-virtual {v0}, Lb/b/a/b/h;->c()V

    return-void

    :cond_0
    invoke-static {}, Lb/b/a/b/o;->e()V

    :cond_1
    invoke-static {}, Lb/b/a/b/o;->b()Ljava/util/HashMap;

    invoke-static {}, Lb/b/a/b/o;->d()Ljava/util/HashMap;

    move-result-object v4

    new-instance v10, Lcom/androlua/LuaLexer;

    invoke-direct {v10, v2}, Lcom/androlua/LuaLexer;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {}, Lb/b/a/b/m;->c()Lb/b/a/b/i;

    move-result-object v11

    invoke-virtual {v11}, Lb/b/a/b/i;->a()V

    invoke-static {}, Lb/b/a/b/o;->a()V

    :try_start_0
    const-string v13, ""

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x0

    move-object/from16 v18, v13

    move-object/from16 v17, v14

    move-object/from16 v12, v16

    move-object/from16 v20, v12

    move-object/from16 v21, v20

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x1

    const/16 v22, -0x1

    :goto_0
    iget-object v9, v1, Lb/b/a/b/m$b;->b:Lb/b/a/b/h;

    invoke-virtual {v9}, Lb/b/a/b/h;->b()Z

    move-result v9

    if-nez v9, :cond_24

    invoke-virtual {v10}, Lcom/androlua/LuaLexer;->advance()Lcom/androlua/LuaTokenTypes;

    move-result-object v9

    if-nez v9, :cond_2

    goto/16 :goto_19

    :cond_2
    invoke-virtual {v10}, Lcom/androlua/LuaLexer;->yylength()I

    move-result v8

    add-int/2addr v13, v8

    if-eqz v14, :cond_4

    sget-object v15, Lcom/androlua/LuaTokenTypes;->STRING:Lcom/androlua/LuaTokenTypes;

    if-ne v12, v15, :cond_4

    sget-object v15, Lcom/androlua/LuaTokenTypes;->STRING:Lcom/androlua/LuaTokenTypes;

    if-eq v9, v15, :cond_4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    const/4 v1, 0x2

    if-le v15, v1, :cond_3

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v15, 0x1

    sub-int/2addr v1, v15

    invoke-virtual {v14, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v14, "\\.|\\$"

    invoke-virtual {v1, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v14, v1

    sub-int/2addr v14, v15

    aget-object v1, v1, v14

    invoke-virtual {v11, v1}, Lb/b/a/b/i;->a(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " :import"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lb/b/a/b/o;->a(Ljava/lang/String;)V

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    goto :goto_1

    :cond_4
    move v15, v14

    move-object/from16 v1, v17

    :goto_1
    sget-object v14, Lb/b/a/b/l;->a:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    aget v14, v14, v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v17, v15

    const-string v15, "require"

    packed-switch v14, :pswitch_data_0

    move-object/from16 v23, v2

    move-object/from16 v21, v4

    move-object v4, v6

    move-object/from16 v20, v9

    move-object/from16 v9, v18

    const/4 v2, 0x1

    move-object/from16 v18, v1

    :try_start_1
    new-instance v1, Lb/b/a/b/q;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v6, 0x0

    goto/16 :goto_15

    :pswitch_0
    :try_start_2
    new-instance v14, Lb/b/a/b/q;

    const/4 v15, 0x4

    invoke-direct {v14, v8, v15}, Lb/b/a/b/q;-><init>(II)V

    :goto_2
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v23, v2

    :goto_3
    move-object/from16 v21, v4

    move-object v4, v6

    move-object/from16 v20, v9

    move-object/from16 v9, v18

    :goto_4
    const/4 v2, 0x1

    move-object/from16 v18, v1

    goto/16 :goto_14

    :pswitch_1
    new-instance v14, Lb/b/a/b/q;

    const/16 v15, 0x1e

    invoke-direct {v14, v8, v15}, Lb/b/a/b/q;-><init>(II)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v23, v2

    move-object/from16 v21, v4

    move-object v4, v6

    move-object/from16 v20, v9

    move-object/from16 v9, v18

    const/4 v2, 0x1

    move-object/from16 v18, v1

    move-object v1, v14

    goto/16 :goto_16

    :pswitch_2
    const/16 v14, 0x270f

    if-le v0, v14, :cond_5

    new-instance v14, Lb/b/a/b/q;

    const/4 v15, 0x0

    invoke-direct {v14, v8, v15}, Lb/b/a/b/q;-><init>(II)V

    goto :goto_2

    :cond_5
    sget-object v14, Lcom/androlua/LuaTokenTypes;->NUMBER:Lcom/androlua/LuaTokenTypes;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v23, v2

    move-object/from16 v2, v20

    if-ne v2, v14, :cond_6

    :try_start_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v14, 0x1

    sub-int/2addr v2, v14

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/a/b/q;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Lb/b/a/b/q;->b(I)V

    invoke-virtual {v2}, Lb/b/a/b/q;->a()I

    move-result v14

    add-int/2addr v14, v8

    invoke-virtual {v2, v14}, Lb/b/a/b/q;->a(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {v10}, Lcom/androlua/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v2

    sget-object v14, Lcom/androlua/LuaTokenTypes;->FUNCTION:Lcom/androlua/LuaTokenTypes;

    if-ne v12, v14, :cond_7

    new-instance v14, Lb/b/a/b/q;

    move-object/from16 v20, v9

    const/4 v9, 0x4

    invoke-direct {v14, v8, v9}, Lb/b/a/b/q;-><init>(II)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11, v2}, Lb/b/a/b/i;->a(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " :function"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lb/b/a/b/o;->a(Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    move-object/from16 v20, v9

    invoke-virtual {v11, v2}, Lb/b/a/b/i;->f(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    new-instance v9, Lb/b/a/b/q;

    const/4 v14, 0x4

    invoke-direct {v9, v8, v14}, Lb/b/a/b/q;-><init>(II)V

    :goto_5
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    move-object/from16 v9, v18

    move-object/from16 v18, v6

    goto/16 :goto_9

    :cond_8
    sget-object v9, Lcom/androlua/LuaTokenTypes;->GOTO:Lcom/androlua/LuaTokenTypes;

    if-eq v12, v9, :cond_f

    sget-object v9, Lcom/androlua/LuaTokenTypes;->AT:Lcom/androlua/LuaTokenTypes;

    if-ne v12, v9, :cond_9

    goto :goto_8

    :cond_9
    sget-object v9, Lcom/androlua/LuaTokenTypes;->MULT:Lcom/androlua/LuaTokenTypes;

    if-ne v12, v9, :cond_a

    sget-object v9, Lcom/androlua/LuaTokenTypes;->LOCAL:Lcom/androlua/LuaTokenTypes;

    move-object/from16 v14, v21

    if-ne v14, v9, :cond_a

    new-instance v9, Lb/b/a/b/q;

    const/4 v14, 0x2

    invoke-direct {v9, v8, v14}, Lb/b/a/b/q;-><init>(II)V

    goto :goto_5

    :cond_a
    invoke-virtual {v11, v2}, Lb/b/a/b/i;->c(Ljava/lang/String;)Z

    move-result v9

    const/4 v14, 0x3

    if-eqz v9, :cond_b

    new-instance v9, Lb/b/a/b/q;

    invoke-direct {v9, v8, v14}, Lb/b/a/b/q;-><init>(II)V

    goto :goto_5

    :cond_b
    sget-object v9, Lcom/androlua/LuaTokenTypes;->DOT:Lcom/androlua/LuaTokenTypes;

    if-ne v12, v9, :cond_c

    move-object/from16 v9, v18

    invoke-virtual {v11, v9}, Lb/b/a/b/i;->c(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-virtual {v11, v9, v2}, Lb/b/a/b/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d

    move-object/from16 v18, v6

    new-instance v6, Lb/b/a/b/q;

    invoke-direct {v6, v8, v14}, Lb/b/a/b/q;-><init>(II)V

    :goto_7
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_c
    move-object/from16 v9, v18

    :cond_d
    move-object/from16 v18, v6

    invoke-virtual {v11, v2}, Lb/b/a/b/i;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    new-instance v6, Lb/b/a/b/q;

    invoke-direct {v6, v8, v14}, Lb/b/a/b/q;-><init>(II)V

    goto :goto_7

    :cond_e
    new-instance v6, Lb/b/a/b/q;

    const/4 v14, 0x0

    invoke-direct {v6, v8, v14}, Lb/b/a/b/q;-><init>(II)V

    goto :goto_7

    :cond_f
    :goto_8
    move-object/from16 v9, v18

    move-object/from16 v18, v6

    new-instance v6, Lb/b/a/b/q;

    const/4 v14, 0x4

    invoke-direct {v6, v8, v14}, Lb/b/a/b/q;-><init>(II)V

    goto :goto_7

    :goto_9
    sget-object v6, Lcom/androlua/LuaTokenTypes;->DOT:Lcom/androlua/LuaTokenTypes;

    if-eq v12, v6, :cond_14

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/b/a/b/q;

    invoke-virtual {v8}, Lb/b/a/b/q;->a()I

    move-result v14

    if-ne v14, v13, :cond_12

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/16 v21, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lb/b/a/b/q;

    invoke-virtual {v8}, Lb/b/a/b/q;->b()I

    move-result v8

    if-nez v8, :cond_10

    invoke-virtual {v14}, Lb/b/a/b/q;->b()I

    move-result v6

    if-nez v6, :cond_14

    const/4 v6, 0x5

    invoke-virtual {v14, v6}, Lb/b/a/b/q;->b(I)V

    goto :goto_b

    :cond_10
    move-object/from16 v21, v4

    const/16 v4, 0xa

    if-ne v8, v4, :cond_11

    const/4 v4, 0x6

    invoke-virtual {v14, v4}, Lb/b/a/b/q;->b(I)V

    goto :goto_c

    :cond_11
    const/4 v4, 0x7

    if-ne v8, v4, :cond_13

    invoke-virtual {v14, v4}, Lb/b/a/b/q;->b(I)V

    goto :goto_c

    :cond_12
    move-object/from16 v21, v4

    :cond_13
    move-object/from16 v4, v21

    goto :goto_a

    :cond_14
    :goto_b
    move-object/from16 v21, v4

    :goto_c
    sget-object v4, Lcom/androlua/LuaTokenTypes;->ASSIGN:Lcom/androlua/LuaTokenTypes;

    if-ne v12, v4, :cond_15

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v11, v9}, Lb/b/a/b/i;->a(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " :require"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lb/b/a/b/o;->a(Ljava/lang/String;)V

    if-ltz v22, :cond_15

    add-int/lit8 v4, v22, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/a/b/q;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lb/b/a/b/q;->b(I)V

    goto :goto_d

    :cond_15
    const/4 v6, 0x4

    :goto_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object v9, v2

    move/from16 v22, v4

    move/from16 v14, v17

    move-object/from16 v4, v18

    const/4 v2, 0x1

    move-object/from16 v18, v1

    move-object/from16 v1, v16

    goto/16 :goto_17

    :pswitch_3
    move-object/from16 v23, v2

    move-object/from16 v21, v4

    move-object/from16 v20, v9

    move-object/from16 v9, v18

    move-object/from16 v18, v6

    const/4 v6, 0x4

    new-instance v2, Lb/b/a/b/q;

    const/16 v4, 0x32

    invoke-direct {v2, v8, v4}, Lb/b/a/b/q;-><init>(II)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x270f

    if-le v0, v4, :cond_16

    goto :goto_f

    :cond_16
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    const-string v8, "import"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    :cond_17
    const/16 v17, 0x1

    :cond_18
    if-eqz v17, :cond_19

    invoke-virtual {v10}, Lcom/androlua/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :pswitch_4
    move-object/from16 v23, v2

    move-object/from16 v21, v4

    move-object/from16 v20, v9

    move-object/from16 v9, v18

    const/16 v4, 0x270f

    move-object/from16 v18, v6

    const/4 v6, 0x4

    new-instance v2, Lb/b/a/b/q;

    const/4 v14, 0x2

    invoke-direct {v2, v8, v14}, Lb/b/a/b/q;-><init>(II)V

    :goto_e
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    :goto_f
    move/from16 v14, v17

    move-object/from16 v4, v18

    move-object/from16 v18, v1

    move-object v1, v2

    const/4 v2, 0x1

    goto/16 :goto_17

    :pswitch_5
    move-object/from16 v23, v2

    move-object/from16 v21, v4

    move-object/from16 v20, v9

    move-object/from16 v9, v18

    const/16 v4, 0x270f

    move-object/from16 v18, v6

    const/4 v6, 0x4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1a

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v10}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v14

    iput v14, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v10}, Lcom/androlua/LuaLexer;->yychar()I

    move-result v14

    iput v14, v2, Landroid/graphics/Rect;->right:I

    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    iget v15, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v15

    const/4 v15, 0x1

    if-le v14, v15, :cond_1a

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    new-instance v2, Lb/b/a/b/q;

    const/4 v14, 0x2

    invoke-direct {v2, v8, v14}, Lb/b/a/b/q;-><init>(II)V

    goto :goto_e

    :pswitch_6
    move-object/from16 v23, v2

    move-object/from16 v21, v4

    move-object/from16 v20, v9

    move-object/from16 v9, v18

    const/16 v4, 0x270f

    move-object/from16 v18, v6

    const/4 v6, 0x4

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v10}, Lcom/androlua/LuaLexer;->yychar()I

    move-result v14

    invoke-virtual {v10}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v15

    invoke-virtual {v10}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v4

    const/4 v6, 0x0

    invoke-direct {v2, v14, v15, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lb/b/a/b/q;

    const/4 v4, 0x2

    invoke-direct {v2, v8, v4}, Lb/b/a/b/q;-><init>(II)V

    goto :goto_e

    :pswitch_7
    move-object/from16 v23, v2

    move-object/from16 v21, v4

    move-object/from16 v20, v9

    move-object/from16 v9, v18

    move-object/from16 v18, v6

    sget-object v2, Lcom/androlua/LuaTokenTypes;->DOT:Lcom/androlua/LuaTokenTypes;

    if-ne v12, v2, :cond_1b

    new-instance v2, Lb/b/a/b/q;

    const/4 v4, 0x0

    invoke-direct {v2, v8, v4}, Lb/b/a/b/q;-><init>(II)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v18

    goto/16 :goto_4

    :cond_1b
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1c

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v4, v18

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v10}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v6

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v10}, Lcom/androlua/LuaLexer;->yychar()I

    move-result v6

    iput v6, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v14, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v14

    const/4 v14, 0x1

    if-le v6, v14, :cond_1d

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1c
    move-object/from16 v4, v18

    :cond_1d
    :goto_10
    new-instance v2, Lb/b/a/b/q;

    const/4 v6, 0x1

    invoke-direct {v2, v8, v6}, Lb/b/a/b/q;-><init>(II)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v1

    goto/16 :goto_12

    :pswitch_8
    move-object/from16 v23, v2

    move-object/from16 v21, v4

    move-object v4, v6

    move-object/from16 v20, v9

    move-object/from16 v9, v18

    sget-object v2, Lcom/androlua/LuaTokenTypes;->DOT:Lcom/androlua/LuaTokenTypes;

    if-ne v12, v2, :cond_1e

    new-instance v2, Lb/b/a/b/q;

    const/4 v6, 0x0

    invoke-direct {v2, v8, v6}, Lb/b/a/b/q;-><init>(II)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v1

    goto/16 :goto_13

    :cond_1e
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v10}, Lcom/androlua/LuaLexer;->yychar()I

    move-result v6

    invoke-virtual {v10}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v14

    invoke-virtual {v10}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v15

    move-object/from16 v18, v1

    const/4 v1, 0x0

    invoke-direct {v2, v6, v14, v1, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lb/b/a/b/q;

    const/4 v2, 0x1

    invoke-direct {v1, v8, v2}, Lb/b/a/b/q;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v16

    move/from16 v14, v17

    const/4 v2, 0x1

    const/16 v19, 0x0

    goto/16 :goto_17

    :pswitch_9
    move-object/from16 v23, v2

    move-object/from16 v21, v4

    move-object v4, v6

    move-object/from16 v20, v9

    move-object/from16 v9, v18

    move-object/from16 v18, v1

    sget-object v1, Lcom/androlua/LuaTokenTypes;->DOT:Lcom/androlua/LuaTokenTypes;

    if-ne v12, v1, :cond_1f

    new-instance v1, Lb/b/a/b/q;

    const/4 v2, 0x0

    invoke-direct {v1, v8, v2}, Lb/b/a/b/q;-><init>(II)V

    :goto_11
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    :cond_1f
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v10}, Lcom/androlua/LuaLexer;->yychar()I

    move-result v2

    invoke-virtual {v10}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v6

    invoke-virtual {v10}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v14

    const/4 v15, 0x0

    invoke-direct {v1, v2, v6, v15, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lb/b/a/b/q;

    const/4 v2, 0x1

    invoke-direct {v1, v8, v2}, Lb/b/a/b/q;-><init>(II)V

    goto :goto_11

    :pswitch_a
    move-object/from16 v23, v2

    move-object/from16 v21, v4

    move-object v4, v6

    move-object/from16 v20, v9

    move-object/from16 v9, v18

    move-object/from16 v18, v1

    sget-object v1, Lcom/androlua/LuaTokenTypes;->DOT:Lcom/androlua/LuaTokenTypes;

    if-ne v12, v1, :cond_20

    new-instance v1, Lb/b/a/b/q;

    const/4 v2, 0x0

    invoke-direct {v1, v8, v2}, Lb/b/a/b/q;-><init>(II)V

    goto :goto_11

    :cond_20
    if-eqz v19, :cond_21

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v10}, Lcom/androlua/LuaLexer;->yychar()I

    move-result v2

    invoke-virtual {v10}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v6

    invoke-virtual {v10}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v14

    const/4 v15, 0x0

    invoke-direct {v1, v2, v6, v15, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    new-instance v1, Lb/b/a/b/q;

    const/4 v2, 0x1

    invoke-direct {v1, v8, v2}, Lb/b/a/b/q;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_12
    move-object/from16 v1, v16

    move/from16 v14, v17

    const/4 v2, 0x1

    const/16 v19, 0x1

    goto :goto_17

    :pswitch_b
    move-object/from16 v23, v2

    move-object/from16 v21, v4

    move-object v4, v6

    move-object/from16 v20, v9

    move-object/from16 v9, v18

    move-object/from16 v18, v1

    sget-object v1, Lcom/androlua/LuaTokenTypes;->DOT:Lcom/androlua/LuaTokenTypes;

    if-ne v12, v1, :cond_22

    new-instance v1, Lb/b/a/b/q;

    const/4 v2, 0x0

    invoke-direct {v1, v8, v2}, Lb/b/a/b/q;-><init>(II)V

    goto :goto_11

    :goto_13
    const/4 v2, 0x1

    goto :goto_14

    :cond_22
    new-instance v1, Lb/b/a/b/q;

    const/4 v2, 0x1

    invoke-direct {v1, v8, v2}, Lb/b/a/b/q;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_14
    move-object/from16 v1, v16

    goto :goto_16

    :goto_15
    invoke-direct {v1, v8, v6}, Lb/b/a/b/q;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_16
    move/from16 v14, v17

    :goto_17
    sget-object v6, Lcom/androlua/LuaTokenTypes;->WHITE_SPACE:Lcom/androlua/LuaTokenTypes;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v8, v20

    if-eq v8, v6, :cond_23

    move-object v6, v8

    goto :goto_18

    :cond_23
    move-object v6, v12

    :goto_18
    move-object/from16 v1, p0

    move-object/from16 v20, v8

    move-object/from16 v17, v18

    move-object/from16 v2, v23

    const/4 v8, 0x4

    move-object/from16 v18, v9

    move-object/from16 v24, v6

    move-object v6, v4

    move-object/from16 v4, v21

    move-object/from16 v21, v12

    move-object/from16 v12, v24

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1a

    :cond_24
    :goto_19
    move-object/from16 v23, v2

    goto :goto_1b

    :catch_1
    move-exception v0

    move-object/from16 v23, v2

    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/b/a/b/v;->a(Ljava/lang/String;)V

    :goto_1b
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Lb/b/a/b/q;

    invoke-virtual/range {v23 .. v23}, Lb/b/a/b/g;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/b/a/b/q;-><init>(II)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    invoke-virtual {v11}, Lb/b/a/b/i;->e()V

    invoke-static {v5}, Lb/b/a/b/m;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-object/from16 v1, p0

    iput-object v3, v1, Lb/b/a/b/m$b;->e:Ljava/util/ArrayList;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_8
        :pswitch_8
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_7
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lb/b/a/b/m$b;->b:Lb/b/a/b/h;

    invoke-virtual {v0}, Lb/b/a/b/h;->c()V

    return-void
.end method

.method public b()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lb/b/a/b/m$b;->f:Lb/b/a/b/m;

    invoke-virtual {v1}, Lb/b/a/b/m;->b()Lb/b/a/b/g;

    move-result-object v1

    invoke-static {}, Lb/b/a/b/m;->c()Lb/b/a/b/i;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lb/b/a/b/i;->d()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    new-instance v1, Lb/b/a/b/q;

    invoke-direct {v1, v5, v5}, Lb/b/a/b/q;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v3, v0, Lb/b/a/b/m$b;->e:Ljava/util/ArrayList;

    return-void

    :cond_0
    const/16 v4, 0x7f

    new-array v6, v4, [C

    invoke-virtual {v1, v5}, Lb/b/a/b/g;->g(I)I

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v1}, Lb/b/a/b/g;->h()Z

    move-result v12

    if-eqz v12, :cond_20

    iget-object v12, v0, Lb/b/a/b/m$b;->b:Lb/b/a/b/h;

    invoke-virtual {v12}, Lb/b/a/b/h;->b()Z

    move-result v12

    if-nez v12, :cond_20

    invoke-virtual {v1}, Lb/b/a/b/g;->k()C

    move-result v12

    const/4 v5, 0x3

    const/16 v14, 0x1e

    const/16 v15, 0x28

    const/16 v13, 0xa

    const/4 v4, 0x1

    if-eq v8, v7, :cond_b

    if-eqz v8, :cond_b

    if-eq v8, v4, :cond_b

    if-eq v8, v5, :cond_b

    if-eq v8, v13, :cond_b

    if-eq v8, v14, :cond_9

    if-eq v8, v15, :cond_8

    const/16 v4, 0x14

    if-eq v8, v4, :cond_9

    const/16 v4, 0x15

    if-eq v8, v4, :cond_9

    const/16 v4, 0x32

    if-eq v8, v4, :cond_5

    const/16 v4, 0x33

    if-eq v8, v4, :cond_2

    const-string v4, "Invalid state in TokenScanner"

    invoke-static {v4}, Lb/b/a/b/v;->a(Ljava/lang/String;)V

    :cond_1
    const/16 v7, 0x7f

    goto/16 :goto_7

    :cond_2
    invoke-virtual {v2, v12}, Lb/b/a/b/i;->b(C)Z

    move-result v4

    if-nez v4, :cond_3

    if-ne v12, v13, :cond_4

    :cond_3
    invoke-virtual {v2, v9}, Lb/b/a/b/i;->c(C)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v12}, Lb/b/a/b/i;->c(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v9}, Lb/b/a/b/i;->c(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v12}, Lb/b/a/b/i;->a(C)Z

    move-result v4

    if-nez v4, :cond_6

    if-ne v12, v13, :cond_7

    :cond_6
    invoke-virtual {v2, v9}, Lb/b/a/b/i;->c(C)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v12}, Lb/b/a/b/i;->c(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v9}, Lb/b/a/b/i;->c(C)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    const/16 v7, 0x7f

    const/16 v9, 0x20

    goto/16 :goto_b

    :cond_8
    invoke-virtual {v2, v9, v12}, Lb/b/a/b/i;->b(CC)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_2
    move v9, v12

    const/16 v7, 0x7f

    const/4 v8, -0x1

    goto/16 :goto_b

    :cond_9
    invoke-virtual {v2, v9, v12}, Lb/b/a/b/i;->c(CC)Z

    move-result v4

    if-eqz v4, :cond_a

    move v9, v12

    const/16 v7, 0x7f

    const/16 v8, 0x28

    goto/16 :goto_b

    :cond_a
    if-ne v12, v13, :cond_1

    goto :goto_2

    :cond_b
    const/16 v16, 0x33

    const/16 v17, 0x32

    const/16 v18, 0x15

    const/16 v19, 0x14

    invoke-virtual {v2, v9, v12}, Lb/b/a/b/i;->a(CC)Z

    move-result v20

    if-eqz v20, :cond_c

    const/16 v7, 0x1e

    :goto_3
    const/4 v9, 0x1

    goto :goto_4

    :cond_c
    invoke-virtual {v2, v9, v12}, Lb/b/a/b/i;->c(CC)Z

    move-result v9

    if-eqz v9, :cond_d

    const/16 v7, 0x28

    goto :goto_3

    :cond_d
    invoke-virtual {v2, v12}, Lb/b/a/b/i;->a(C)Z

    move-result v9

    if-eqz v9, :cond_e

    const/16 v7, 0x32

    goto :goto_3

    :cond_e
    invoke-virtual {v2, v12}, Lb/b/a/b/i;->b(C)Z

    move-result v9

    if-eqz v9, :cond_f

    const/16 v7, 0x33

    goto :goto_3

    :cond_f
    invoke-virtual {v2, v12}, Lb/b/a/b/i;->d(C)Z

    move-result v9

    if-eqz v9, :cond_10

    const/16 v7, 0x14

    goto :goto_3

    :cond_10
    invoke-virtual {v2, v12}, Lb/b/a/b/i;->e(C)Z

    move-result v9

    if-eqz v9, :cond_11

    const/16 v7, 0x15

    goto :goto_3

    :cond_11
    move v7, v8

    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_16

    if-eq v7, v14, :cond_13

    if-ne v7, v15, :cond_12

    goto :goto_5

    :cond_12
    move v5, v11

    goto :goto_6

    :cond_13
    :goto_5
    add-int/lit8 v5, v11, -0x1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lb/b/a/b/q;

    invoke-virtual {v9}, Lb/b/a/b/q;->a()I

    move-result v9

    if-ne v9, v5, :cond_14

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_14
    :goto_6
    if-lez v10, :cond_15

    if-eqz v8, :cond_15

    new-instance v4, Lb/b/a/b/q;

    sub-int v8, v11, v10

    const/4 v9, 0x0

    invoke-direct {v4, v8, v9}, Lb/b/a/b/q;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    new-instance v4, Lb/b/a/b/q;

    invoke-direct {v4, v5, v7}, Lb/b/a/b/q;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v7

    move v9, v12

    const/16 v7, 0x7f

    const/4 v10, 0x0

    goto/16 :goto_b

    :cond_16
    invoke-virtual {v2, v12}, Lb/b/a/b/i;->h(C)Z

    move-result v7

    if-nez v7, :cond_19

    invoke-virtual {v2, v12}, Lb/b/a/b/i;->f(C)Z

    move-result v7

    if-eqz v7, :cond_17

    goto :goto_8

    :cond_17
    const/16 v7, 0x7f

    if-ge v10, v7, :cond_18

    aput-char v12, v6, v10

    add-int/lit8 v10, v10, 0x1

    :cond_18
    :goto_7
    move v9, v12

    goto/16 :goto_b

    :cond_19
    :goto_8
    const/16 v7, 0x7f

    if-lez v10, :cond_1e

    const/4 v9, 0x0

    aget-char v14, v6, v9

    invoke-virtual {v2, v14}, Lb/b/a/b/i;->i(C)Z

    move-result v14

    if-eqz v14, :cond_1a

    sub-int v4, v11, v10

    new-instance v5, Lb/b/a/b/q;

    invoke-direct {v5, v4, v13}, Lb/b/a/b/q;-><init>(II)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xa

    goto :goto_9

    :cond_1a
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v6, v9, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v13}, Lb/b/a/b/i;->d(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1b

    sub-int v5, v11, v10

    new-instance v8, Lb/b/a/b/q;

    invoke-direct {v8, v5, v4}, Lb/b/a/b/q;-><init>(II)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1b
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6, v9, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v4}, Lb/b/a/b/i;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    sub-int v4, v11, v10

    new-instance v8, Lb/b/a/b/q;

    invoke-direct {v8, v4, v5}, Lb/b/a/b/q;-><init>(II)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x3

    goto :goto_9

    :cond_1c
    if-eqz v8, :cond_1d

    sub-int v4, v11, v10

    new-instance v5, Lb/b/a/b/q;

    invoke-direct {v5, v4, v9}, Lb/b/a/b/q;-><init>(II)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    goto :goto_9

    :cond_1d
    move v4, v8

    :goto_9
    move v5, v4

    const/4 v10, 0x0

    goto :goto_a

    :cond_1e
    const/4 v9, 0x0

    move v5, v8

    :goto_a
    if-eqz v5, :cond_1f

    invoke-virtual {v2, v12}, Lb/b/a/b/i;->f(C)Z

    move-result v4

    if-eqz v4, :cond_1f

    new-instance v4, Lb/b/a/b/q;

    invoke-direct {v4, v11, v9}, Lb/b/a/b/q;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v12

    const/4 v8, 0x0

    goto :goto_b

    :cond_1f
    move v8, v5

    goto :goto_7

    :goto_b
    add-int/lit8 v11, v11, 0x1

    const/16 v4, 0x7f

    const/4 v5, 0x0

    const/4 v7, -0x1

    goto/16 :goto_0

    :cond_20
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    new-instance v1, Lb/b/a/b/q;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lb/b/a/b/q;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    iput-object v3, v0, Lb/b/a/b/m$b;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public run()V
    .locals 2

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/b/a/b/m$b;->c:Z

    iget-object v1, p0, Lb/b/a/b/m$b;->b:Lb/b/a/b/h;

    invoke-virtual {v1}, Lb/b/a/b/h;->a()V

    :try_start_0
    invoke-static {}, Lb/b/a/b/m;->c()Lb/b/a/b/i;

    move-result-object v1

    instance-of v1, v1, Lb/b/a/b/j;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lb/b/a/b/m$b;->c()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lb/b/a/b/m$b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lb/b/a/b/m$b;->e:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lb/b/a/b/m$b;->c:Z

    :goto_0
    iget-boolean v0, p0, Lb/b/a/b/m$b;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/a/b/m$b;->b:Lb/b/a/b/h;

    invoke-virtual {v0}, Lb/b/a/b/h;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/b/a/b/m$b;->a:Lb/b/a/b/m;

    iget-object v1, p0, Lb/b/a/b/m$b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lb/b/a/b/m;->a(Ljava/util/List;)V

    :cond_2
    return-void
.end method
