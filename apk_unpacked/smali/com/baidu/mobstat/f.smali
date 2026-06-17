.class public Lcom/baidu/mobstat/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final b:Lcom/baidu/mobstat/f;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mobstat/f;

    invoke-direct {v0}, Lcom/baidu/mobstat/f;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/f;->b:Lcom/baidu/mobstat/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/f;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/baidu/mobstat/f;->b()V

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/f;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/f;->b:Lcom/baidu/mobstat/f;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/f;->a:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lcom/baidu/mobstat/j;->c()Lcom/baidu/mobstat/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/mobstat/j;->c()Lcom/baidu/mobstat/j;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/g;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    const-class v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    const-class v0, Landroid/app/ActionBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_1
    :try_start_2
    const-class v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_2
    :try_start_3
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "B0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_3
    :try_start_4
    const-class v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "C0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_4
    :try_start_5
    const-class v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "C1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_5
    const-string v0, "com.android.internal.policy.DecorView"

    :try_start_6
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "D0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_6
    :try_start_7
    const-class v0, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "D1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_7
    :try_start_8
    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "E0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_8
    :try_start_9
    const-class v0, Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "E1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_9
    :try_start_a
    const-class v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "F0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_a
    :try_start_b
    const-class v0, La/a/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "F1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_b
    :try_start_c
    const-class v0, Landroid/widget/Gallery;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "G0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_c
    :try_start_d
    const-class v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "G1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_d
    :try_start_e
    const-class v0, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_e
    :try_start_f
    const-class v0, Landroid/widget/ImageButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "I0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_f
    :try_start_10
    const-class v0, Landroid/widget/ImageSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "I1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_10
    :try_start_11
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "I2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_11
    :try_start_12
    const-class v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "L0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_12
    :try_start_13
    const-class v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "L1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_13

    :catch_13
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_13
    :try_start_14
    const-class v0, Landroid/app/ListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "L2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_14

    :catch_14
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_14
    :try_start_15
    const-class v0, Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "M0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_15

    :catch_15
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_15
    :try_start_16
    const-class v0, Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_16

    goto :goto_16

    :catch_16
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_16
    :try_start_17
    const-class v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "P0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_17

    :catch_17
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_17
    :try_start_18
    const-class v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_18

    goto :goto_18

    :catch_18
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_18
    :try_start_19
    const-class v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_19

    :catch_19
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_19
    :try_start_1a
    const-class v0, Landroid/widget/RatingBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_1a

    goto :goto_1a

    :catch_1a
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_1a
    :try_start_1b
    const-class v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R3"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_1b

    goto :goto_1b

    :catch_1b
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_1b
    :try_start_1c
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R4"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_1c

    goto :goto_1c

    :catch_1c
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_1c
    :try_start_1d
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_1d

    goto :goto_1d

    :catch_1d
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_1d
    :try_start_1e
    const-class v0, Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_1e

    goto :goto_1e

    :catch_1e
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_1e
    :try_start_1f
    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_1f

    goto :goto_1f

    :catch_1f
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_1f
    :try_start_20
    const-class v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S3"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_20

    goto :goto_20

    :catch_20
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_20
    :try_start_21
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S4"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_21

    goto :goto_21

    :catch_21
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_21
    :try_start_22
    const-class v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S5"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_22

    goto :goto_22

    :catch_22
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_22
    :try_start_23
    const-class v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S6"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_23

    goto :goto_23

    :catch_23
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_23
    :try_start_24
    const-class v0, Landroid/widget/TabHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_24

    goto :goto_24

    :catch_24
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_24
    :try_start_25
    const-class v0, Landroid/widget/TableLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_25

    goto :goto_25

    :catch_25
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_25
    :try_start_26
    const-class v0, Landroid/widget/TableRow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_26

    goto :goto_26

    :catch_26
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_26
    :try_start_27
    const-class v0, Landroid/widget/TabWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T3"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_27

    goto :goto_27

    :catch_27
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_27
    :try_start_28
    const-class v0, Landroid/widget/TextSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T4"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_28

    goto :goto_28

    :catch_28
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_28
    :try_start_29
    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T5"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_29

    goto :goto_29

    :catch_29
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_29
    :try_start_2a
    const-class v0, Landroid/widget/Toast;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T6"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_2a

    goto :goto_2a

    :catch_2a
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_2a
    :try_start_2b
    const-class v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T7"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_2b

    goto :goto_2b

    :catch_2b
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_2b
    :try_start_2c
    const-class v0, Landroid/view/TextureView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T8"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_2c

    goto :goto_2c

    :catch_2c
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_2c
    :try_start_2d
    const-class v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T9"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_2d

    goto :goto_2d

    :catch_2d
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_2d
    :try_start_2e
    const-class v0, Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_2e

    goto :goto_2e

    :catch_2e
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_2e
    :try_start_2f
    const-class v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_2f

    goto :goto_2f

    :catch_2f
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_2f
    :try_start_30
    const-class v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_30

    goto :goto_30

    :catch_30
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_30
    :try_start_31
    const-class v0, Landroid/widget/VideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V3"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_31

    goto :goto_31

    :catch_31
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_31
    :try_start_32
    const-class v0, Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V4"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_32

    goto :goto_32

    :catch_32
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_32
    :try_start_33
    const-class v0, Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V5"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_33

    goto :goto_33

    :catch_33
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_33
    :try_start_34
    const-class v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V6"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_34

    goto :goto_34

    :catch_34
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_34
    :try_start_35
    const-class v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "W0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_35

    goto :goto_35

    :catch_35
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_35
    :try_start_36
    const-class v0, Landroid/webkit/WebViewFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "W1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_36

    goto :goto_36

    :catch_36
    move-exception v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/f;->a(Ljava/lang/Throwable;)V

    :goto_36
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
