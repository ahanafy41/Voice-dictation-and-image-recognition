.class Lbsh/Types;
.super Ljava/lang/Object;
.source ""


# static fields
.field static a:Lbsh/Primitive;

.field static b:Lbsh/Primitive;

.field static synthetic c:Ljava/lang/Class;

.field static synthetic d:Ljava/lang/Class;

.field static synthetic e:Ljava/lang/Class;

.field static synthetic f:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbsh/Primitive;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(I)V

    sput-object v0, Lbsh/Types;->a:Lbsh/Primitive;

    new-instance v0, Lbsh/Primitive;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(I)V

    sput-object v0, Lbsh/Types;->b:Lbsh/Primitive;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Class;Ljava/lang/Class;I)Lbsh/UtilEvalError;
    .locals 0

    invoke-static {p0}, Lbsh/Reflect;->normalizeClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lbsh/Reflect;->normalizeClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lbsh/Types;->a(Ljava/lang/String;Ljava/lang/String;I)Lbsh/UtilEvalError;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;I)Lbsh/UtilEvalError;
    .locals 3

    const-string v0, " to "

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    new-instance p2, Lbsh/UtilEvalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t assign "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_0
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Cannot cast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    new-instance p0, Lbsh/UtilTargetError;

    invoke-direct {p0, p2}, Lbsh/UtilTargetError;-><init>(Ljava/lang/Throwable;)V

    return-object p0
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

.method private static a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;IZ)Ljava/lang/Object;
    .locals 1

    if-eqz p4, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lbsh/InterpreterError;

    const-string p1, "bad cast params 1"

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez p4, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lbsh/InterpreterError;

    const-string p1, "bad cast params 2"

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    sget-object v0, Lbsh/Types;->e:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string v0, "bsh.Primitive"

    invoke-static {v0}, Lbsh/Types;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Types;->e:Ljava/lang/Class;

    :cond_4
    if-eq p1, v0, :cond_21

    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne p2, v0, :cond_6

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Lbsh/InterpreterError;

    const-string p1, "inconsistent args 1"

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p2, v0, :cond_8

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    goto :goto_3

    :cond_7
    new-instance p0, Lbsh/InterpreterError;

    const-string p1, "inconsistent args 2"

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_3
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_20

    if-eqz p0, :cond_1e

    if-ne p0, p1, :cond_9

    goto/16 :goto_b

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_e

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    invoke-static {p1}, Lbsh/Primitive;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p1}, Lbsh/Primitive;->unboxType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p4, :cond_b

    const/4 p2, 0x0

    goto :goto_4

    :cond_b
    invoke-static {p2, p1}, Lbsh/Primitive;->wrap(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbsh/Primitive;

    :goto_4
    invoke-static {p0, p1, p2, p4, p3}, Lbsh/Primitive;->a(Ljava/lang/Class;Ljava/lang/Class;Lbsh/Primitive;ZI)Lbsh/Primitive;

    move-result-object p0

    return-object p0

    :cond_c
    if-eqz p4, :cond_d

    sget-object p0, Lbsh/Types;->b:Lbsh/Primitive;

    return-object p0

    :cond_d
    invoke-static {p0, p1, p3}, Lbsh/Types;->a(Ljava/lang/Class;Ljava/lang/Class;I)Lbsh/UtilEvalError;

    move-result-object p0

    throw p0

    :cond_e
    :goto_5
    check-cast p2, Lbsh/Primitive;

    invoke-static {p0, p1, p2, p4, p3}, Lbsh/Primitive;->a(Ljava/lang/Class;Ljava/lang/Class;Lbsh/Primitive;ZI)Lbsh/Primitive;

    move-result-object p0

    return-object p0

    :cond_f
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_19

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p4, :cond_11

    sget-object p2, Lbsh/Types;->a:Lbsh/Primitive;

    :cond_11
    return-object p2

    :cond_12
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lbsh/Types;->f:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "bsh.This"

    invoke-static {v0}, Lbsh/Types;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Types;->f:Ljava/lang/Class;

    :cond_13
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lbsh/Capabilities;->canGenerateInterfaces()Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz p4, :cond_14

    sget-object p0, Lbsh/Types;->a:Lbsh/Primitive;

    goto :goto_6

    :cond_14
    check-cast p2, Lbsh/This;

    invoke-virtual {p2, p0}, Lbsh/This;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    :goto_6
    return-object p0

    :cond_15
    invoke-static {p0}, Lbsh/Primitive;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p1}, Lbsh/Primitive;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_17

    if-eqz p4, :cond_16

    sget-object p0, Lbsh/Types;->a:Lbsh/Primitive;

    goto :goto_7

    :cond_16
    invoke-static {p0, p2}, Lbsh/Primitive;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_7
    return-object p0

    :cond_17
    if-eqz p4, :cond_18

    sget-object p0, Lbsh/Types;->b:Lbsh/Primitive;

    return-object p0

    :cond_18
    invoke-static {p0, p1, p3}, Lbsh/Types;->a(Ljava/lang/Class;Ljava/lang/Class;I)Lbsh/UtilEvalError;

    move-result-object p0

    throw p0

    :cond_19
    :goto_8
    invoke-static {p0}, Lbsh/Primitive;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_1b

    if-eqz p1, :cond_1b

    if-eqz p4, :cond_1a

    sget-object p0, Lbsh/Types;->a:Lbsh/Primitive;

    goto :goto_9

    :cond_1a
    invoke-static {p0}, Lbsh/Primitive;->unboxType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    check-cast p2, Lbsh/Primitive;

    invoke-virtual {p2}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lbsh/Primitive;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_9
    return-object p0

    :cond_1b
    sget-object v0, Lbsh/Types;->c:Ljava/lang/Class;

    if-nez v0, :cond_1c

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lbsh/Types;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lbsh/Types;->c:Ljava/lang/Class;

    :cond_1c
    if-ne p0, v0, :cond_e

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_e

    if-eqz p1, :cond_e

    if-eqz p4, :cond_1d

    sget-object p0, Lbsh/Types;->a:Lbsh/Primitive;

    goto :goto_a

    :cond_1d
    check-cast p2, Lbsh/Primitive;

    invoke-virtual {p2}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object p0

    :goto_a
    return-object p0

    :cond_1e
    :goto_b
    if-eqz p4, :cond_1f

    sget-object p2, Lbsh/Types;->a:Lbsh/Primitive;

    :cond_1f
    return-object p2

    :cond_20
    new-instance p0, Lbsh/InterpreterError;

    const-string p1, "loose toType should be null"

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    new-instance p0, Lbsh/InterpreterError;

    const-string p1, "bad from Type, need to unwrap"

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0

    return-void
.end method

.method static a(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1, v0, v1, v1}, Lbsh/Types;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lbsh/Types;->a:Lbsh/Primitive;
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception p0

    new-instance p1, Lbsh/InterpreterError;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "err in cast check: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method static a([Ljava/lang/Class;[Ljava/lang/Class;I)Z
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-eq p2, v2, :cond_8

    const/4 v3, 0x2

    if-eq p2, v3, :cond_5

    if-eq p2, v0, :cond_4

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    const/4 p2, 0x0

    :goto_0
    array-length v0, p0

    if-lt p2, v0, :cond_1

    return v2

    :cond_1
    aget-object v0, p1, p2

    aget-object v3, p0, p2

    invoke-static {v0, v3}, Lbsh/Types;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Lbsh/InterpreterError;

    const-string p1, "bad case"

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p0, p1}, Lbsh/Types;->a([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result p0

    return p0

    :cond_5
    const/4 p2, 0x0

    :goto_1
    array-length v0, p0

    if-lt p2, v0, :cond_6

    return v2

    :cond_6
    aget-object v0, p1, p2

    aget-object v3, p0, p2

    invoke-static {v0, v3}, Lbsh/Types;->d(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_8
    const/4 p2, 0x0

    :goto_2
    array-length v0, p0

    if-lt p2, v0, :cond_9

    return v2

    :cond_9
    aget-object v0, p1, p2

    aget-object v3, p0, p2

    invoke-static {v0, v3}, Lbsh/Types;->c(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_a

    return v1

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_2
.end method

.method static b(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1

    invoke-static {p0, p1}, Lbsh/Types;->c(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lbsh/Types;->d(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static c(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_d

    if-ne p0, p1, :cond_2

    return v1

    :cond_2
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_4

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_3

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_3

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_3

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_4

    :cond_3
    return v1

    :cond_4
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_6

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_5

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_5

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_5

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_6

    :cond_5
    return v1

    :cond_6
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_8

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_7

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_7

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_7

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_8

    :cond_7
    return v1

    :cond_8
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_a

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_9

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_9

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_a

    :cond_9
    return v1

    :cond_a
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_c

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v2, :cond_b

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_c

    :cond_b
    return v1

    :cond_c
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_e

    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, p1, :cond_e

    return v1

    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public static castObject(Ljava/lang/Object;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 2

    if-eqz p0, :cond_1

    instance-of v0, p0, Lbsh/Primitive;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lbsh/Primitive;

    invoke-virtual {v0}, Lbsh/Primitive;->getType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    invoke-static {p1, v0, p0, p2, v1}, Lbsh/Types;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lbsh/InterpreterError;

    const-string p1, "null fromValue"

    invoke-direct {p0, p1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static d(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lbsh/Types;->c:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "java.lang.Object"

    invoke-static {v1}, Lbsh/Types;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lbsh/Types;->c:Ljava/lang/Class;

    :cond_1
    const/4 v2, 0x1

    if-ne p0, v1, :cond_2

    return v2

    :cond_2
    sget-object v1, Lbsh/Types;->d:Ljava/lang/Class;

    if-nez v1, :cond_3

    const-string v1, "java.lang.Number"

    invoke-static {v1}, Lbsh/Types;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lbsh/Types;->d:Ljava/lang/Class;

    :cond_3
    if-ne p0, v1, :cond_4

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_4

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_4

    return v2

    :cond_4
    sget-object v1, Lbsh/Primitive;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public static getTypes([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/Class;

    return-object p0

    :cond_0
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/Class;

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_1

    return-object v1

    :cond_1
    aget-object v2, p0, v0

    if-nez v2, :cond_2

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_1

    :cond_2
    aget-object v2, p0, v0

    instance-of v2, v2, Lbsh/Primitive;

    if-eqz v2, :cond_3

    aget-object v2, p0, v0

    check-cast v2, Lbsh/Primitive;

    invoke-virtual {v2}, Lbsh/Primitive;->getType()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    :cond_3
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
