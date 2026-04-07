.class public Lb/b/a/b/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static a(Lcom/androlua/LuaTokenTypes;)I
    .locals 1

    sget-object v0, Lb/b/a/b/a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    return v0

    :pswitch_1
    const/4 p0, -0x1

    return p0

    :pswitch_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/CharSequence;)I
    .locals 4

    new-instance v0, Lcom/androlua/LuaLexer;

    invoke-direct {v0, p0}, Lcom/androlua/LuaLexer;-><init>(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/androlua/LuaLexer;->advance()Lcom/androlua/LuaTokenTypes;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/androlua/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v2

    const-string v3, "switch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lb/b/a/b/b;->a(Lcom/androlua/LuaTokenTypes;)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return p0
.end method

.method public static a(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/androlua/LuaLexer;

    invoke-direct {v1, p0}, Lcom/androlua/LuaLexer;-><init>(Ljava/lang/CharSequence;)V

    new-instance p0, Ljava/util/ArrayList;

    sget-object v2, Lc/a/a/a/f;->o:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lc/a/a/a/f;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lb/b/a/b/m;->d()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v2, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_3
    :try_start_0
    sget-object p0, Lcom/androlua/LuaTokenTypes;->WHITE_SPACE:Lcom/androlua/LuaTokenTypes;

    const/4 p0, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v1}, Lcom/androlua/LuaLexer;->advance()Lcom/androlua/LuaTokenTypes;

    move-result-object v8

    if-nez v8, :cond_4

    goto/16 :goto_7

    :cond_4
    invoke-virtual {v1}, Lcom/androlua/LuaLexer;->yyline()I

    move-result v9

    if-eq v3, v9, :cond_5

    const/4 v6, 0x1

    :cond_5
    sget-object v3, Lcom/androlua/LuaTokenTypes;->NEW_LINE:Lcom/androlua/LuaTokenTypes;

    const/16 v10, 0x20

    if-ne v8, v3, :cond_7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v10, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_6
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v7, v3

    const/4 v5, 0x1

    goto/16 :goto_6

    :cond_7
    if-nez v5, :cond_a

    if-eqz v6, :cond_8

    goto :goto_2

    :cond_8
    sget-object v3, Lcom/androlua/LuaTokenTypes;->WHITE_SPACE:Lcom/androlua/LuaTokenTypes;

    if-ne v8, v3, :cond_9

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_9
    invoke-virtual {v1}, Lcom/androlua/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_a
    :goto_2
    sget-object v3, Lb/b/a/b/a;->a:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v3, v3, v10

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    if-eqz v5, :cond_d

    mul-int v3, v7, p1

    invoke-static {v3}, Lb/b/a/b/b;->a(I)[C

    move-result-object v3

    goto :goto_5

    :pswitch_1
    invoke-virtual {v1}, Lcom/androlua/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_6

    :pswitch_2
    if-eqz v5, :cond_b

    mul-int v3, v7, p1

    div-int/lit8 v5, p1, 0x2

    sub-int/2addr v3, v5

    invoke-static {v3}, Lb/b/a/b/b;->a(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {v1}, Lcom/androlua/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :pswitch_3
    invoke-virtual {v2, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/2addr v7, v3

    if-eqz v5, :cond_c

    mul-int v3, v7, p1

    invoke-static {v3}, Lb/b/a/b/b;->a(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v1}, Lcom/androlua/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :goto_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual {v1}, Lcom/androlua/LuaLexer;->yytext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/2addr v7, v3

    goto :goto_4

    :goto_6
    :pswitch_4
    sget-object v3, Lcom/androlua/LuaTokenTypes;->WHITE_SPACE:Lcom/androlua/LuaTokenTypes;

    if-eq v8, v3, :cond_e

    sget-object v3, Lcom/androlua/LuaTokenTypes;->NEW_LINE:Lcom/androlua/LuaTokenTypes;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_e
    move v3, v9

    goto/16 :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_7
    return-object v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static a(I)[C
    .locals 3

    const/4 v0, 0x0

    if-gez p0, :cond_0

    new-array p0, v0, [C

    return-object p0

    :cond_0
    new-array v1, p0, [C

    :goto_0
    if-ge v0, p0, :cond_1

    const/16 v2, 0x20

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
