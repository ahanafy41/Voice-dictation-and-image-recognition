.class Lbsh/XThis$Handler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsh/XThis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Handler"
.end annotation


# instance fields
.field private final synthetic a:Lbsh/XThis;


# direct methods
.method constructor <init>(Lbsh/XThis;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsh/XThis$Handler;->a:Lbsh/XThis;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lbsh/XThis$Handler;->invokeImpl(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lbsh/TargetError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lbsh/EvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    sget-boolean p2, Lbsh/Interpreter;->DEBUG:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "EvalError in scripted interface: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p3, p0, Lbsh/XThis$Handler;->a:Lbsh/XThis;

    invoke-virtual {p3}, Lbsh/XThis;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    :cond_0
    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lbsh/TargetError;->getTarget()Ljava/lang/Throwable;

    move-result-object p1

    throw p1
.end method

.method public invokeImpl(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const-string v0, "toString"

    const-string v1, "equals"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbsh/CallStack;

    iget-object v4, p0, Lbsh/XThis$Handler;->a:Lbsh/XThis;

    iget-object v4, v4, Lbsh/This;->a:Lbsh/NameSpace;

    invoke-direct {v3, v4}, Lbsh/CallStack;-><init>(Lbsh/NameSpace;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lbsh/XThis$Handler;->a:Lbsh/XThis;

    iget-object v6, v6, Lbsh/This;->a:Lbsh/NameSpace;

    new-array v7, v4, [Ljava/lang/Class;

    sget-object v8, Lbsh/XThis;->c:Ljava/lang/Class;

    if-nez v8, :cond_0

    const-string v8, "java.lang.Object"

    invoke-static {v8}, Lbsh/XThis;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lbsh/XThis;->c:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v8, Lbsh/XThis;->c:Ljava/lang/Class;

    :goto_0
    aput-object v8, v7, v5

    invoke-virtual {v6, v1, v7}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object v6
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v6, v3

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v6, :cond_2

    aget-object p2, p3, v5

    new-instance p3, Ljava/lang/Boolean;

    if-ne p1, p2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    invoke-direct {p3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p3

    :cond_2
    :try_start_1
    iget-object v1, p0, Lbsh/XThis$Handler;->a:Lbsh/XThis;

    iget-object v1, v1, Lbsh/This;->a:Lbsh/NameSpace;

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v6}, Lbsh/NameSpace;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Lbsh/BshMethod;

    move-result-object v3
    :try_end_1
    .catch Lbsh/UtilEvalError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v3, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuffer;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object p3, p0, Lbsh/XThis$Handler;->a:Lbsh/XThis;

    invoke-virtual {p3}, Lbsh/XThis;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "\nimplements:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_3
    array-length p2, p1

    if-lt v5, p2, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object p3, p1, v5

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length p3, p1

    if-le p3, v4, :cond_4

    const-string p3, ","

    goto :goto_4

    :cond_4
    const-string p3, ""

    :goto_4
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    iget-object p2, p0, Lbsh/XThis$Handler;->a:Lbsh/XThis;

    invoke-static {p3, p1}, Lbsh/Primitive;->wrap([Ljava/lang/Object;[Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lbsh/This;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
