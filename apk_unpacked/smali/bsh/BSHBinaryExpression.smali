.class Lbsh/BSHBinaryExpression;
.super Lbsh/SimpleNode;
.source ""

# interfaces
.implements Lbsh/ParserConstants;


# static fields
.field static synthetic a:Ljava/lang/Class;


# instance fields
.field public kind:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lbsh/Primitive;

    if-eqz v0, :cond_0

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq p1, v0, :cond_0

    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_1

    instance-of p1, p1, Ljava/lang/Number;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/SimpleNode;->jjtGetChild(I)Lbsh/Node;

    move-result-object v1

    check-cast v1, Lbsh/SimpleNode;

    invoke-virtual {v1, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lbsh/BSHBinaryExpression;->kind:I

    const/4 v3, 0x1

    const/16 v4, 0x23

    if-ne v2, v4, :cond_4

    sget-object v2, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne v1, v2, :cond_0

    new-instance p1, Lbsh/Primitive;

    invoke-direct {p1, v0}, Lbsh/Primitive;-><init>(Z)V

    return-object p1

    :cond_0
    invoke-virtual {p0, v3}, Lbsh/SimpleNode;->jjtGetChild(I)Lbsh/Node;

    move-result-object v2

    check-cast v2, Lbsh/BSHType;

    invoke-virtual {v2, p1, p2}, Lbsh/BSHType;->getType(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Class;

    move-result-object p1

    instance-of p2, v1, Lbsh/Primitive;

    if-eqz p2, :cond_3

    sget-object p2, Lbsh/BSHBinaryExpression;->a:Ljava/lang/Class;

    if-nez p2, :cond_1

    const-string p2, "bsh.Primitive"

    invoke-static {p2}, Lbsh/BSHBinaryExpression;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    sput-object p2, Lbsh/BSHBinaryExpression;->a:Ljava/lang/Class;

    :cond_1
    if-ne p1, p2, :cond_2

    new-instance p1, Lbsh/Primitive;

    invoke-direct {p1, v3}, Lbsh/Primitive;-><init>(Z)V

    return-object p1

    :cond_2
    new-instance p1, Lbsh/Primitive;

    invoke-direct {p1, v0}, Lbsh/Primitive;-><init>(Z)V

    return-object p1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p1, p2}, Lbsh/Types;->c(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p1

    new-instance p2, Lbsh/Primitive;

    invoke-direct {p2, p1}, Lbsh/Primitive;-><init>(Z)V

    return-object p2

    :cond_4
    const/16 v4, 0x62

    if-eq v2, v4, :cond_5

    const/16 v4, 0x63

    if-ne v2, v4, :cond_7

    :cond_5
    invoke-direct {p0, v1}, Lbsh/BSHBinaryExpression;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v1

    check-cast v2, Lbsh/Primitive;

    invoke-virtual {v2}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_6
    move-object v2, v1

    :goto_0
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_7

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7

    new-instance p1, Lbsh/Primitive;

    invoke-direct {p1, v0}, Lbsh/Primitive;-><init>(Z)V

    return-object p1

    :cond_7
    iget v2, p0, Lbsh/BSHBinaryExpression;->kind:I

    const/16 v4, 0x60

    if-eq v2, v4, :cond_8

    const/16 v4, 0x61

    if-ne v2, v4, :cond_a

    :cond_8
    invoke-direct {p0, v1}, Lbsh/BSHBinaryExpression;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v2, v1

    check-cast v2, Lbsh/Primitive;

    invoke-virtual {v2}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_9
    move-object v2, v1

    :goto_1
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_a

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v3, :cond_a

    new-instance p1, Lbsh/Primitive;

    invoke-direct {p1, v3}, Lbsh/Primitive;-><init>(Z)V

    return-object p1

    :cond_a
    invoke-direct {p0, v1}, Lbsh/BSHBinaryExpression;->b(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p0, v3}, Lbsh/SimpleNode;->jjtGetChild(I)Lbsh/Node;

    move-result-object v4

    check-cast v4, Lbsh/SimpleNode;

    invoke-virtual {v4, p1, p2}, Lbsh/SimpleNode;->eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2}, Lbsh/BSHBinaryExpression;->b(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x5a

    if-nez v2, :cond_b

    invoke-direct {p0, v1}, Lbsh/BSHBinaryExpression;->a(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_b
    if-nez v4, :cond_c

    invoke-direct {p0, p2}, Lbsh/BSHBinaryExpression;->a(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_c
    if-eqz v2, :cond_19

    if-eqz v4, :cond_19

    iget v2, p0, Lbsh/BSHBinaryExpression;->kind:I

    if-ne v2, v5, :cond_19

    :cond_d
    iget v2, p0, Lbsh/BSHBinaryExpression;->kind:I

    if-eq v2, v5, :cond_17

    const/16 v4, 0x5f

    if-eq v2, v4, :cond_15

    const/16 v0, 0x66

    if-eq v2, v0, :cond_e

    goto :goto_2

    :cond_e
    instance-of v0, v1, Ljava/lang/String;

    if-nez v0, :cond_14

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_f

    goto :goto_4

    :cond_f
    :goto_2
    instance-of v0, v1, Lbsh/Primitive;

    if-nez v0, :cond_10

    instance-of v0, p2, Lbsh/Primitive;

    if-eqz v0, :cond_11

    :cond_10
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq v1, v0, :cond_13

    if-eq p2, v0, :cond_13

    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-eq v1, v0, :cond_12

    if-ne p2, v0, :cond_11

    goto :goto_3

    :cond_11
    new-instance p2, Lbsh/EvalError;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Operator: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lbsh/ParserConstants;->tokenImage:[Ljava/lang/String;

    iget v2, p0, Lbsh/BSHBinaryExpression;->kind:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\' inappropriate for objects"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p2

    :cond_12
    :goto_3
    new-instance p2, Lbsh/EvalError;

    const-string v0, "illegal use of null value or \'null\' literal"

    invoke-direct {p2, v0, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p2

    :cond_13
    new-instance p2, Lbsh/EvalError;

    const-string v0, "illegal use of undefined variable, class, or \'void\' literal"

    invoke-direct {p2, v0, p0, p1}, Lbsh/EvalError;-><init>(Ljava/lang/String;Lbsh/SimpleNode;Lbsh/CallStack;)V

    throw p2

    :cond_14
    :goto_4
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_15
    new-instance p1, Lbsh/Primitive;

    if-eq v1, p2, :cond_16

    const/4 v0, 0x1

    :cond_16
    invoke-direct {p1, v0}, Lbsh/Primitive;-><init>(Z)V

    return-object p1

    :cond_17
    new-instance p1, Lbsh/Primitive;

    if-ne v1, p2, :cond_18

    const/4 v0, 0x1

    :cond_18
    invoke-direct {p1, v0}, Lbsh/Primitive;-><init>(Z)V

    return-object p1

    :cond_19
    :try_start_0
    iget v0, p0, Lbsh/BSHBinaryExpression;->kind:I

    invoke-static {v1, p2, v0}, Lbsh/Primitive;->binaryOperation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    invoke-virtual {p2, p0, p1}, Lbsh/UtilEvalError;->toEvalError(Lbsh/SimpleNode;Lbsh/CallStack;)Lbsh/EvalError;

    move-result-object p1

    throw p1
.end method
