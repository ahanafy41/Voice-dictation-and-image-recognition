.class public Lb/b/a/a/r;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lb/b/a/b/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a/a/r$b;,
        Lb/b/a/a/r$a;,
        Lb/b/a/a/r$c;
    }
.end annotation


# static fields
.field public static final SCROLL_DOWN:I = 0x1

.field public static final SCROLL_LEFT:I = 0x2

.field public static final SCROLL_RIGHT:I = 0x3

.field public static final SCROLL_UP:I = 0x0

.field protected static a:F = 0.75f

.field protected static b:I = 0x4

.field protected static c:I = 0x10

.field protected static d:J = 0xfaL

.field private static e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Landroid/graphics/Paint;

.field private B:I

.field private C:I

.field private D:Z

.field private E:Lb/b/a/a/e;

.field private F:Landroid/text/ClipboardManager;

.field private G:F

.field private H:I

.field private I:I

.field private J:Lb/b/a/a/v;

.field private K:I

.field private L:Landroid/graphics/Typeface;

.field private M:Landroid/graphics/Typeface;

.field private N:Landroid/graphics/Typeface;

.field private O:C

.field private P:Z

.field private Q:Landroid/graphics/Paint;

.field private R:I

.field private final S:Ljava/lang/Runnable;

.field private final T:Ljava/lang/Runnable;

.field private final U:Ljava/lang/Runnable;

.field private final V:Ljava/lang/Runnable;

.field private W:I

.field private aa:J

.field private ba:Z

.field private ca:I

.field private da:I

.field private ea:I

.field private final f:Landroid/widget/Scroller;

.field private fa:I

.field protected g:Z

.field private ga:Z

.field protected h:Lb/b/a/a/w;

.field private ha:Landroid/view/MotionEvent;

.field protected i:Lb/b/a/b/g;

.field private ia:F

.field protected j:I

.field private ja:F

.field protected k:I

.field protected l:I

.field protected m:I

.field protected n:Lb/b/a/b/c;

.field protected o:Z

.field protected p:Z

.field protected q:Z

.field protected r:I

.field protected s:Z

.field protected t:Lb/b/a/a/c;

.field protected u:Z

.field private v:Lb/b/a/a/r$a;

.field private w:Lb/b/a/a/r$b;

.field private x:Lb/b/a/b/r;

.field private y:Lb/b/a/a/u;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const-string v2, "\u00c0\u00c1\u00c2\u00c4\u00c6\u00c3\u00c5\u0104\u0100"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x43

    const-string v2, "\u00c7\u0106\u010c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x44

    const-string v2, "\u010e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x45

    const-string v2, "\u00c8\u00c9\u00ca\u00cb\u0118\u011a\u0112"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x47

    const-string v2, "\u011e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x4c

    const-string v2, "\u0141"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x49

    const-string v2, "\u00cc\u00cd\u00ce\u00cf\u012a\u0130"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x4e

    const-string v2, "\u00d1\u0143\u0147"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x4f

    const-string v2, "\u00d8\u0152\u00d5\u00d2\u00d3\u00d4\u00d6\u014c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x52

    const-string v2, "\u0158"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x53

    const-string v2, "\u015a\u0160\u015e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x54

    const-string v2, "\u0164"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x55

    const-string v2, "\u00d9\u00da\u00db\u00dc\u016e\u016a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x59

    const-string v2, "\u00dd\u0178"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x5a

    const-string v2, "\u0179\u017b\u017d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x61

    const-string v2, "\u00e0\u00e1\u00e2\u00e4\u00e6\u00e3\u00e5\u0105\u0101"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x63

    const-string v2, "\u00e7\u0107\u010d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x64

    const-string v2, "\u010f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x65

    const-string v2, "\u00e8\u00e9\u00ea\u00eb\u0119\u011b\u0113"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x67

    const-string v2, "\u011f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x69

    const-string v2, "\u00ec\u00ed\u00ee\u00ef\u012b\u0131"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x6c

    const-string v2, "\u0142"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x6e

    const-string v2, "\u00f1\u0144\u0148"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x6f

    const-string v2, "\u00f8\u0153\u00f5\u00f2\u00f3\u00f4\u00f6\u014d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x72

    const-string v2, "\u0159"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x73

    const-string v2, "\u00a7\u00df\u015b\u0161\u015f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x74

    const-string v2, "\u0165"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x75

    const-string v2, "\u00f9\u00fa\u00fb\u00fc\u016f\u016b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x79

    const-string v2, "\u00fd\u00ff"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x7a

    const-string v2, "\u017a\u017c\u017e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const v1, 0xef01

    const-string v2, "\u2026\u00a5\u2022\u00ae\u00a9\u00b1[]{}\\|"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x2f

    const-string v2, "\\"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x31

    const-string v2, "\u00b9\u00bd\u2153\u00bc\u215b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x32

    const-string v2, "\u00b2\u2154"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x33

    const-string v2, "\u00b3\u00be\u215c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x34

    const-string v2, "\u2074"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x35

    const-string v2, "\u215d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x37

    const-string v2, "\u215e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x30

    const-string v2, "\u207f\u2205"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x24

    const-string v2, "\u00a2\u00a3\u20ac\u00a5\u20a3\u20a4\u20b1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x25

    const-string v2, "\u2030"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x2a

    const-string v2, "\u2020\u2021"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x2d

    const-string v2, "\u2013\u2014"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x2b

    const-string v2, "\u00b1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x28

    const-string v2, "[{<"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x29

    const-string v2, "]}>"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x21

    const-string v2, "\u00a1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x22

    const-string v2, "\u201c\u201d\u00ab\u00bb\u02dd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x3f

    const-string v2, "\u00bf"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x2c

    const-string v2, "\u201a\u201e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x3d

    const-string v2, "\u2260\u2248\u221e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x3c

    const-string v2, "\u2264\u00ab\u2039"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    const/16 v1, 0x3e

    const-string v2, "\u2265\u00bb\u203a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/b/a/a/r;->g:Z

    iput v0, p0, Lb/b/a/a/r;->j:I

    const/4 v1, -0x1

    iput v1, p0, Lb/b/a/a/r;->k:I

    iput v1, p0, Lb/b/a/a/r;->l:I

    sget v1, Lb/b/a/a/r;->b:I

    iput v1, p0, Lb/b/a/a/r;->m:I

    new-instance v1, Lb/b/a/b/e;

    invoke-direct {v1}, Lb/b/a/b/e;-><init>()V

    iput-object v1, p0, Lb/b/a/a/r;->n:Lb/b/a/b/c;

    iput-boolean v0, p0, Lb/b/a/a/r;->o:Z

    iput-boolean v0, p0, Lb/b/a/a/r;->p:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lb/b/a/a/r;->q:Z

    const/4 v2, 0x4

    iput v2, p0, Lb/b/a/a/r;->r:I

    iput-boolean v0, p0, Lb/b/a/a/r;->s:Z

    iput-boolean v1, p0, Lb/b/a/a/r;->u:Z

    iput v0, p0, Lb/b/a/a/r;->z:I

    iput v0, p0, Lb/b/a/a/r;->B:I

    iput v0, p0, Lb/b/a/a/r;->C:I

    iput-boolean v0, p0, Lb/b/a/a/r;->D:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lb/b/a/a/r;->G:F

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v2, p0, Lb/b/a/a/r;->L:Landroid/graphics/Typeface;

    iget-object v2, p0, Lb/b/a/a/r;->L:Landroid/graphics/Typeface;

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lb/b/a/a/r;->M:Landroid/graphics/Typeface;

    iget-object v1, p0, Lb/b/a/a/r;->L:Landroid/graphics/Typeface;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lb/b/a/a/r;->N:Landroid/graphics/Typeface;

    new-instance v1, Lb/b/a/a/g;

    invoke-direct {v1, p0}, Lb/b/a/a/g;-><init>(Lb/b/a/a/r;)V

    iput-object v1, p0, Lb/b/a/a/r;->S:Ljava/lang/Runnable;

    new-instance v1, Lb/b/a/a/h;

    invoke-direct {v1, p0}, Lb/b/a/a/h;-><init>(Lb/b/a/a/r;)V

    iput-object v1, p0, Lb/b/a/a/r;->T:Ljava/lang/Runnable;

    new-instance v1, Lb/b/a/a/i;

    invoke-direct {v1, p0}, Lb/b/a/a/i;-><init>(Lb/b/a/a/r;)V

    iput-object v1, p0, Lb/b/a/a/r;->U:Ljava/lang/Runnable;

    new-instance v1, Lb/b/a/a/j;

    invoke-direct {v1, p0}, Lb/b/a/a/j;-><init>(Lb/b/a/a/r;)V

    iput-object v1, p0, Lb/b/a/a/r;->V:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lb/b/a/a/r;->ba:Z

    new-instance v0, Lb/b/a/b/g;

    invoke-direct {v0, p0}, Lb/b/a/b/g;-><init>(Lb/b/a/b/f$a;)V

    iput-object v0, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    new-instance v0, Lb/b/a/a/w;

    invoke-direct {v0, p0}, Lb/b/a/a/w;-><init>(Lb/b/a/a/r;)V

    iput-object v0, p0, Lb/b/a/a/r;->h:Lb/b/a/a/w;

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb/b/a/a/r;->f:Landroid/widget/Scroller;

    invoke-direct {p0}, Lb/b/a/a/r;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lb/b/a/a/r;->g:Z

    iput p2, p0, Lb/b/a/a/r;->j:I

    const/4 v0, -0x1

    iput v0, p0, Lb/b/a/a/r;->k:I

    iput v0, p0, Lb/b/a/a/r;->l:I

    sget v0, Lb/b/a/a/r;->b:I

    iput v0, p0, Lb/b/a/a/r;->m:I

    new-instance v0, Lb/b/a/b/e;

    invoke-direct {v0}, Lb/b/a/b/e;-><init>()V

    iput-object v0, p0, Lb/b/a/a/r;->n:Lb/b/a/b/c;

    iput-boolean p2, p0, Lb/b/a/a/r;->o:Z

    iput-boolean p2, p0, Lb/b/a/a/r;->p:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/a/a/r;->q:Z

    const/4 v1, 0x4

    iput v1, p0, Lb/b/a/a/r;->r:I

    iput-boolean p2, p0, Lb/b/a/a/r;->s:Z

    iput-boolean v0, p0, Lb/b/a/a/r;->u:Z

    iput p2, p0, Lb/b/a/a/r;->z:I

    iput p2, p0, Lb/b/a/a/r;->B:I

    iput p2, p0, Lb/b/a/a/r;->C:I

    iput-boolean p2, p0, Lb/b/a/a/r;->D:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lb/b/a/a/r;->G:F

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v1, p0, Lb/b/a/a/r;->L:Landroid/graphics/Typeface;

    iget-object v1, p0, Lb/b/a/a/r;->L:Landroid/graphics/Typeface;

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lb/b/a/a/r;->M:Landroid/graphics/Typeface;

    iget-object v0, p0, Lb/b/a/a/r;->L:Landroid/graphics/Typeface;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lb/b/a/a/r;->N:Landroid/graphics/Typeface;

    new-instance v0, Lb/b/a/a/g;

    invoke-direct {v0, p0}, Lb/b/a/a/g;-><init>(Lb/b/a/a/r;)V

    iput-object v0, p0, Lb/b/a/a/r;->S:Ljava/lang/Runnable;

    new-instance v0, Lb/b/a/a/h;

    invoke-direct {v0, p0}, Lb/b/a/a/h;-><init>(Lb/b/a/a/r;)V

    iput-object v0, p0, Lb/b/a/a/r;->T:Ljava/lang/Runnable;

    new-instance v0, Lb/b/a/a/i;

    invoke-direct {v0, p0}, Lb/b/a/a/i;-><init>(Lb/b/a/a/r;)V

    iput-object v0, p0, Lb/b/a/a/r;->U:Ljava/lang/Runnable;

    new-instance v0, Lb/b/a/a/j;

    invoke-direct {v0, p0}, Lb/b/a/a/j;-><init>(Lb/b/a/a/r;)V

    iput-object v0, p0, Lb/b/a/a/r;->V:Ljava/lang/Runnable;

    iput-boolean p2, p0, Lb/b/a/a/r;->ba:Z

    new-instance p2, Lb/b/a/b/g;

    invoke-direct {p2, p0}, Lb/b/a/b/g;-><init>(Lb/b/a/b/f$a;)V

    iput-object p2, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    new-instance p2, Lb/b/a/a/w;

    invoke-direct {p2, p0}, Lb/b/a/a/w;-><init>(Lb/b/a/a/r;)V

    iput-object p2, p0, Lb/b/a/a/r;->h:Lb/b/a/a/w;

    new-instance p2, Landroid/widget/Scroller;

    invoke-direct {p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lb/b/a/a/r;->f:Landroid/widget/Scroller;

    invoke-direct {p0}, Lb/b/a/a/r;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lb/b/a/a/r;->g:Z

    iput p2, p0, Lb/b/a/a/r;->j:I

    const/4 p3, -0x1

    iput p3, p0, Lb/b/a/a/r;->k:I

    iput p3, p0, Lb/b/a/a/r;->l:I

    sget p3, Lb/b/a/a/r;->b:I

    iput p3, p0, Lb/b/a/a/r;->m:I

    new-instance p3, Lb/b/a/b/e;

    invoke-direct {p3}, Lb/b/a/b/e;-><init>()V

    iput-object p3, p0, Lb/b/a/a/r;->n:Lb/b/a/b/c;

    iput-boolean p2, p0, Lb/b/a/a/r;->o:Z

    iput-boolean p2, p0, Lb/b/a/a/r;->p:Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Lb/b/a/a/r;->q:Z

    const/4 v0, 0x4

    iput v0, p0, Lb/b/a/a/r;->r:I

    iput-boolean p2, p0, Lb/b/a/a/r;->s:Z

    iput-boolean p3, p0, Lb/b/a/a/r;->u:Z

    iput p2, p0, Lb/b/a/a/r;->z:I

    iput p2, p0, Lb/b/a/a/r;->B:I

    iput p2, p0, Lb/b/a/a/r;->C:I

    iput-boolean p2, p0, Lb/b/a/a/r;->D:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lb/b/a/a/r;->G:F

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Lb/b/a/a/r;->L:Landroid/graphics/Typeface;

    iget-object v0, p0, Lb/b/a/a/r;->L:Landroid/graphics/Typeface;

    invoke-static {v0, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p3

    iput-object p3, p0, Lb/b/a/a/r;->M:Landroid/graphics/Typeface;

    iget-object p3, p0, Lb/b/a/a/r;->L:Landroid/graphics/Typeface;

    const/4 v0, 0x2

    invoke-static {p3, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p3

    iput-object p3, p0, Lb/b/a/a/r;->N:Landroid/graphics/Typeface;

    new-instance p3, Lb/b/a/a/g;

    invoke-direct {p3, p0}, Lb/b/a/a/g;-><init>(Lb/b/a/a/r;)V

    iput-object p3, p0, Lb/b/a/a/r;->S:Ljava/lang/Runnable;

    new-instance p3, Lb/b/a/a/h;

    invoke-direct {p3, p0}, Lb/b/a/a/h;-><init>(Lb/b/a/a/r;)V

    iput-object p3, p0, Lb/b/a/a/r;->T:Ljava/lang/Runnable;

    new-instance p3, Lb/b/a/a/i;

    invoke-direct {p3, p0}, Lb/b/a/a/i;-><init>(Lb/b/a/a/r;)V

    iput-object p3, p0, Lb/b/a/a/r;->U:Ljava/lang/Runnable;

    new-instance p3, Lb/b/a/a/j;

    invoke-direct {p3, p0}, Lb/b/a/a/j;-><init>(Lb/b/a/a/r;)V

    iput-object p3, p0, Lb/b/a/a/r;->V:Ljava/lang/Runnable;

    iput-boolean p2, p0, Lb/b/a/a/r;->ba:Z

    new-instance p2, Lb/b/a/b/g;

    invoke-direct {p2, p0}, Lb/b/a/b/g;-><init>(Lb/b/a/b/f$a;)V

    iput-object p2, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    new-instance p2, Lb/b/a/a/w;

    invoke-direct {p2, p0}, Lb/b/a/a/w;-><init>(Lb/b/a/a/r;)V

    iput-object p2, p0, Lb/b/a/a/r;->h:Lb/b/a/a/w;

    new-instance p2, Landroid/widget/Scroller;

    invoke-direct {p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lb/b/a/a/r;->f:Landroid/widget/Scroller;

    invoke-direct {p0}, Lb/b/a/a/r;->f()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;CII)I
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    iget-object v4, v0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    invoke-virtual {v0, v1, v2}, Lb/b/a/a/r;->getAdvance(CI)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    if-gt v2, v6, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lb/b/a/a/r;->getContentWidth()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v2, v6, :cond_3

    :cond_0
    sparse-switch v1, :sswitch_data_0

    iget-char v4, v0, Lb/b/a/a/r;->O:C

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    const/4 v8, 0x2

    new-array v10, v8, [C

    aput-char v4, v10, v7

    aput-char v1, v10, v6

    const/4 v11, 0x0

    const/4 v12, 0x2

    int-to-float v13, v2

    int-to-float v14, v3

    iget-object v15, v0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    iput-char v7, v0, Lb/b/a/a/r;->O:C

    goto/16 :goto_1

    :sswitch_0
    iput-char v1, v0, Lb/b/a/a/r;->O:C

    goto/16 :goto_1

    :sswitch_1
    iget-boolean v1, v0, Lb/b/a/a/r;->p:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    iget-object v6, v0, Lb/b/a/a/r;->n:Lb/b/a/b/c;

    sget-object v7, Lb/b/a/b/c$a;->i:Lb/b/a/b/c$a;

    invoke-virtual {v6, v7}, Lb/b/a/b/c;->a(Lb/b/a/b/c$a;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    int-to-float v11, v2

    int-to-float v12, v3

    iget-object v13, v0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    const-string v8, "\u00b7"

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x1

    int-to-float v10, v2

    int-to-float v11, v3

    iget-object v12, v0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    const-string v7, " "

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_1

    :sswitch_2
    iget-boolean v1, v0, Lb/b/a/a/r;->p:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    iget-object v6, v0, Lb/b/a/a/r;->n:Lb/b/a/b/c;

    sget-object v7, Lb/b/a/b/c$a;->i:Lb/b/a/b/c$a;

    invoke-virtual {v6, v7}, Lb/b/a/b/c;->a(Lb/b/a/b/c$a;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    int-to-float v11, v2

    int-to-float v12, v3

    iget-object v13, v0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    const-string v8, "\u21b5"

    goto :goto_0

    :sswitch_3
    iget-boolean v1, v0, Lb/b/a/a/r;->p:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    iget-object v6, v0, Lb/b/a/a/r;->n:Lb/b/a/b/c;

    sget-object v7, Lb/b/a/b/c$a;->i:Lb/b/a/b/c$a;

    invoke-virtual {v6, v7}, Lb/b/a/b/c;->a(Lb/b/a/b/c$a;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    int-to-float v11, v2

    int-to-float v12, v3

    iget-object v13, v0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    const-string v8, "\u00bb"

    :goto_0
    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    new-array v4, v6, [C

    aput-char v1, v4, v7

    const/16 v18, 0x0

    const/16 v19, 0x1

    int-to-float v1, v2

    int-to-float v2, v3

    iget-object v3, v0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    move-object/from16 v16, p1

    move-object/from16 v17, v4

    move/from16 v20, v1

    move/from16 v21, v2

    move-object/from16 v22, v3

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_1
    return v5

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0x20 -> :sswitch_1
        0xd83c -> :sswitch_0
        0xd83d -> :sswitch_0
        0xffff -> :sswitch_2
    .end sparse-switch
.end method

.method private a(Landroid/graphics/Canvas;Ljava/lang/String;II)I
    .locals 1

    int-to-float p3, p3

    int-to-float p4, p4

    iget-object v0, p0, Lb/b/a/a/r;->Q:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 p1, 0x0

    return p1
.end method

.method private a(Landroid/graphics/Canvas;Ljava/lang/String;IIII)I
    .locals 8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p4, v0, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, p4

    :goto_0
    iget-object p4, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {p4, p2, p3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result p4

    float-to-int p4, p4

    iget-object v0, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    const v1, -0x77777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lb/b/a/a/r;->getLeftOffset()I

    move-result v1

    add-int/2addr v1, p4

    invoke-direct {p0, p1, v0, p6, v1}, Lb/b/a/a/r;->a(Landroid/graphics/Canvas;III)V

    iget-object v0, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-gt p5, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lb/b/a/a/r;->getContentWidth()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p5, v0, :cond_2

    :cond_1
    int-to-float v5, p5

    int-to-float v6, p6

    iget-object v7, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    :cond_2
    return p4
.end method

.method static synthetic a(Lb/b/a/a/r;)Lb/b/a/a/r$a;
    .locals 0

    iget-object p0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    return-object p0
.end method

.method private a(C)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    iget v1, p0, Lb/b/a/a/r;->j:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lb/b/a/b/g;->charAt(I)C

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lb/b/a/a/r$a;->a(C)V

    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    :goto_0
    invoke-virtual {v0, p1}, Lb/b/a/a/r$a;->a(C)V

    return-void
.end method

.method private a(FF)V
    .locals 3

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    add-int/2addr p1, v0

    float-to-int p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lb/b/a/a/r;->getMaxScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lb/b/a/a/r;->getMaxScrollY()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le p2, v0, :cond_2

    move p2, v0

    goto :goto_1

    :cond_2
    if-gez p2, :cond_3

    const/4 p2, 0x0

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2}, Lb/b/a/a/r;->smoothScrollTo(II)V

    return-void
.end method

.method private a(ILandroid/view/KeyEvent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendKeyEvent:2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lua"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/b/a/a/r;->isSelectText()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lb/b/a/a/r;->g()V

    iget-object p2, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lb/b/a/a/r$a;->d(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lb/b/a/a/r;->isSelectText()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lb/b/a/a/r;->h()V

    iget-object p2, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {p2, v1}, Lb/b/a/a/r$a;->d(Z)V

    :cond_1
    :goto_0
    const/16 p2, 0x7a

    if-eq p1, p2, :cond_3

    const/16 p2, 0x7b

    if-eq p1, p2, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {p1, v1}, Lb/b/a/a/r$a;->c(Z)V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {p1, v1}, Lb/b/a/a/r$a;->b(Z)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {p1}, Lb/b/a/a/r$a;->e()V

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {p1}, Lb/b/a/a/r$a;->f()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1}, Lb/b/a/b/g;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Lb/b/a/a/r;->moveCaret(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lb/b/a/a/r;->moveCaret(I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 14

    iget-object v0, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0}, Lb/b/a/b/g;->e()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    if-ne v5, v6, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0}, Lb/b/a/a/r;->d()I

    move-result v6

    mul-int v5, v5, v6

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lb/b/a/a/r;->d()I

    move-result v7

    mul-int v6, v6, v7

    if-lt v6, v2, :cond_1

    if-le v5, v1, :cond_4

    goto :goto_0

    :cond_4
    iget v7, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v7}, Lb/b/a/a/r;->c(I)Lb/b/a/b/q;

    move-result-object v7

    invoke-virtual {v7}, Lb/b/a/b/q;->a()I

    move-result v7

    iget v8, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v8}, Lb/b/a/a/r;->c(I)Lb/b/a/b/q;

    move-result-object v8

    invoke-virtual {v8}, Lb/b/a/b/q;->a()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v8, v4, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lb/b/a/a/r;->j:I

    if-ge v8, v9, :cond_6

    iget v10, v4, Landroid/graphics/Rect;->right:I

    if-lt v10, v9, :cond_6

    if-eqz v3, :cond_5

    iget v9, v3, Landroid/graphics/Rect;->left:I

    if-ge v9, v8, :cond_6

    :cond_5
    move-object v3, v4

    :cond_6
    int-to-float v11, v7

    int-to-float v10, v5

    int-to-float v12, v6

    iget-object v13, p0, Lb/b/a/a/r;->Q:Landroid/graphics/Paint;

    move-object v8, p1

    move v9, v11

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_7
    if-eqz v3, :cond_9

    iget v0, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lb/b/a/a/r;->d()I

    move-result v4

    mul-int v0, v0, v4

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lb/b/a/a/r;->d()I

    move-result v5

    mul-int v4, v4, v5

    if-lt v4, v2, :cond_9

    if-le v0, v1, :cond_8

    goto :goto_1

    :cond_8
    iget v1, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Lb/b/a/a/r;->c(I)Lb/b/a/b/q;

    move-result-object v1

    invoke-virtual {v1}, Lb/b/a/b/q;->a()I

    move-result v1

    iget v2, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v2}, Lb/b/a/a/r;->c(I)Lb/b/a/b/q;

    move-result-object v2

    invoke-virtual {v2}, Lb/b/a/b/q;->a()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lb/b/a/a/r;->Q:Landroid/graphics/Paint;

    iget-object v3, p0, Lb/b/a/a/r;->n:Lb/b/a/b/c;

    sget-object v5, Lb/b/a/b/c$a;->e:Lb/b/a/b/c$a;

    invoke-virtual {v3, v5}, Lb/b/a/b/c;->a(Lb/b/a/b/c$a;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v8, v1

    int-to-float v7, v0

    int-to-float v9, v4

    iget-object v10, p0, Lb/b/a/a/r;->Q:Landroid/graphics/Paint;

    move-object v5, p1

    move v6, v8

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lb/b/a/a/r;->Q:Landroid/graphics/Paint;

    iget-object v0, p0, Lb/b/a/a/r;->n:Lb/b/a/b/c;

    sget-object v1, Lb/b/a/b/c$a;->i:Lb/b/a/b/c$a;

    invoke-virtual {v0, v1}, Lb/b/a/b/c;->a(Lb/b/a/b/c$a;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    nop

    :cond_9
    :goto_1
    return-void
.end method

.method private a(Landroid/graphics/Canvas;II)V
    .locals 3

    iget-object v0, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iput p2, p0, Lb/b/a/a/r;->H:I

    iput p3, p0, Lb/b/a/a/r;->I:I

    iget-object v1, p0, Lb/b/a/a/r;->n:Lb/b/a/b/c;

    sget-object v2, Lb/b/a/b/c$a;->g:Lb/b/a/b/c$a;

    invoke-virtual {v1, v2}, Lb/b/a/b/c;->a(Lb/b/a/b/c$a;)I

    move-result v1

    iget-object v2, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-int/lit8 p2, p2, -0x1

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Lb/b/a/a/r;->a(Landroid/graphics/Canvas;III)V

    iget-object p1, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;III)V
    .locals 7

    iget-object v0, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    int-to-float v2, p2

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v1, p3

    int-to-float v3, v1

    add-int/2addr p2, p4

    int-to-float v4, p2

    iget p2, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr p3, p2

    int-to-float v5, p3

    iget-object v6, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic a(Lb/b/a/a/r;I)V
    .locals 0

    invoke-direct {p0, p1}, Lb/b/a/a/r;->f(I)V

    return-void
.end method

.method static synthetic a(Lb/b/a/a/r;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/b/a/a/r;->d(II)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 8

    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-static {v6, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    new-instance v7, Landroid/text/method/CharacterPickerDialog;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, v7

    move-object v2, p0

    move-object v3, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/text/method/CharacterPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V

    new-instance p1, Lb/b/a/a/n;

    invoke-direct {p1, p0, v6, p2}, Lb/b/a/a/n;-><init>(Lb/b/a/a/r;Landroid/text/SpannableStringBuilder;Z)V

    invoke-virtual {v7, p1}, Landroid/text/method/CharacterPickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v7}, Landroid/text/method/CharacterPickerDialog;->show()V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;CII)I
    .locals 5

    iget-object v0, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p0, p2}, Lb/b/a/a/r;->getAdvance(C)I

    move-result v1

    iget-object v2, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    iget-object v3, p0, Lb/b/a/a/r;->n:Lb/b/a/b/c;

    sget-object v4, Lb/b/a/b/c$a;->d:Lb/b/a/b/c$a;

    invoke-virtual {v3, v4}, Lb/b/a/b/c;->a(Lb/b/a/b/c$a;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, p1, p3, p4, v1}, Lb/b/a/a/r;->a(Landroid/graphics/Canvas;III)V

    iget-object v2, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    iget-object v3, p0, Lb/b/a/a/r;->n:Lb/b/a/b/c;

    sget-object v4, Lb/b/a/b/c$a;->c:Lb/b/a/b/c$a;

    invoke-virtual {v3, v4}, Lb/b/a/b/c;->a(Lb/b/a/b/c$a;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, p1, p2, p3, p4}, Lb/b/a/a/r;->a(Landroid/graphics/Canvas;CII)I

    iget-object p1, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return v1
.end method

.method static synthetic b(Lb/b/a/a/r;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lb/b/a/a/r;->S:Ljava/lang/Runnable;

    return-object p0
.end method

.method private b(C)V
    .locals 3

    iget-object v0, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    iget v1, p0, Lb/b/a/a/r;->j:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lb/b/a/b/g;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    sget-object v1, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {p1}, Lb/b/a/a/r$a;->i()V

    invoke-direct {p0, v0, v2}, Lb/b/a/a/r;->a(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {v0, p1}, Lb/b/a/a/r$a;->a(C)V

    :goto_1
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lb/b/a/a/r;->o:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lb/b/a/a/r;->z:I

    invoke-virtual {p0, v0}, Lb/b/a/a/r;->getPaintBaseline(I)I

    move-result v0

    iget-object v1, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    iget-object v2, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    iget-object v3, p0, Lb/b/a/a/r;->n:Lb/b/a/b/c;

    sget-object v4, Lb/b/a/b/c$a;->h:Lb/b/a/b/c$a;

    invoke-virtual {v3, v4}, Lb/b/a/b/c;->a(Lb/b/a/b/c$a;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Lb/b/a/a/r;->B:I

    invoke-virtual {p0}, Lb/b/a/a/r;->getContentWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v0, v2}, Lb/b/a/a/r;->a(Landroid/graphics/Canvas;III)V

    iget-object p1, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lb/b/a/a/r;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lb/b/a/a/r;->i(I)Z

    move-result p0

    return p0
.end method

.method private c(Landroid/graphics/Canvas;)I
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lb/b/a/a/r;->d()I

    move-result v0

    div-int/2addr p1, v0

    return p1
.end method

.method static synthetic c(Lb/b/a/a/r;I)I
    .locals 0

    iput p1, p0, Lb/b/a/a/r;->z:I

    return p1
.end method

.method static synthetic c(Lb/b/a/a/r;)Lb/b/a/a/v;
    .locals 0

    iget-object p0, p0, Lb/b/a/a/r;->J:Lb/b/a/a/v;

    return-object p0
.end method

.method private d(Landroid/graphics/Canvas;)I
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Lb/b/a/a/r;->d()I

    move-result v0

    div-int/2addr p1, v0

    return p1
.end method

.method static synthetic d(Lb/b/a/a/r;)Lb/b/a/b/r;
    .locals 0

    iget-object p0, p0, Lb/b/a/a/r;->x:Lb/b/a/b/r;

    return-object p0
.end method

.method private d(II)V
    .locals 4

    const/4 v0, 0x0

    if-gt p1, p2, :cond_0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Invalid startRow and/or endRow"

    invoke-static {v1, v2}, Lb/b/a/b/v;->a(ZLjava/lang/String;)V

    iget-object v1, p0, Lb/b/a/a/r;->h:Lb/b/a/a/w;

    invoke-virtual {v1}, Lb/b/a/a/w;->a()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-virtual {p0}, Lb/b/a/a/r;->d()I

    move-result v3

    mul-int p1, p1, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr p1, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr p1, v2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lb/b/a/a/r;->d()I

    move-result v3

    mul-int p2, p2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr p2, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v1

    invoke-super {p0, v0, p1, v2, p2}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method

.method private e(Landroid/graphics/Canvas;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-direct/range {p0 .. p1}, Lb/b/a/a/r;->c(Landroid/graphics/Canvas;)I

    move-result v8

    iget-object v1, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v1, v8}, Lb/b/a/b/g;->e(I)I

    move-result v9

    if-gez v9, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v1}, Lb/b/a/b/g;->length()I

    invoke-virtual/range {p0 .. p0}, Lb/b/a/a/r;->isWordWrap()Z

    move-result v1

    const/4 v10, 0x1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v1, v9}, Lb/b/a/b/g;->a(I)I

    move-result v1

    add-int/2addr v1, v10

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v8, 0x1

    :goto_0
    move v11, v1

    iget-boolean v1, v0, Lb/b/a/a/r;->D:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lb/b/a/a/r;->Q:Landroid/graphics/Paint;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v3}, Lb/b/a/b/g;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lb/b/a/a/r;->C:I

    :cond_2
    invoke-direct/range {p0 .. p1}, Lb/b/a/a/r;->d(Landroid/graphics/Canvas;)I

    move-result v12

    invoke-virtual {v0, v8}, Lb/b/a/a/r;->getPaintBaseline(I)I

    move-result v13

    iget v1, v0, Lb/b/a/a/r;->C:I

    iput v1, v0, Lb/b/a/a/r;->ca:I

    const/4 v14, 0x0

    iput v14, v0, Lb/b/a/a/r;->da:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Lb/b/a/a/r;->ea:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    iput v1, v0, Lb/b/a/a/r;->fa:I

    iput-boolean v14, v0, Lb/b/a/a/r;->ga:Z

    iget-object v1, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v1}, Lb/b/a/b/g;->g()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v10

    const-string v2, "No spans to paint in TextWarrior.paint()"

    invoke-static {v1, v2}, Lb/b/a/b/v;->a(ZLjava/lang/String;)V

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lb/b/a/b/q;

    invoke-direct {v1, v14, v14}, Lb/b/a/b/q;-><init>(II)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/a/b/q;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1}, Lb/b/a/b/q;->a()I

    move-result v4

    add-int v5, v2, v4

    const/16 v16, 0x0

    if-ge v3, v6, :cond_4

    add-int/lit8 v2, v3, 0x1

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/a/b/q;

    move/from16 v18, v2

    move-object/from16 v17, v3

    goto :goto_2

    :cond_4
    move/from16 v18, v3

    move-object/from16 v17, v16

    :goto_2
    if-eqz v17, :cond_6

    if-le v5, v9, :cond_5

    goto :goto_3

    :cond_5
    move v2, v5

    move-object/from16 v1, v17

    move/from16 v3, v18

    goto :goto_1

    :cond_6
    :goto_3
    invoke-virtual {v1}, Lb/b/a/b/q;->b()I

    move-result v4

    invoke-virtual {v1}, Lb/b/a/b/q;->b()I

    move-result v2

    const/16 v3, 0x1e

    if-eq v2, v10, :cond_8

    if-eq v2, v3, :cond_7

    iget-object v2, v0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    iget-object v3, v0, Lb/b/a/a/r;->L:Landroid/graphics/Typeface;

    :goto_4
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_5

    :cond_7
    iget-object v2, v0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    iget-object v3, v0, Lb/b/a/a/r;->N:Landroid/graphics/Typeface;

    goto :goto_4

    :cond_8
    iget-object v2, v0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    iget-object v3, v0, Lb/b/a/a/r;->M:Landroid/graphics/Typeface;

    goto :goto_4

    :goto_5
    iget-object v2, v0, Lb/b/a/a/r;->n:Lb/b/a/b/c;

    invoke-virtual {v1}, Lb/b/a/b/q;->b()I

    move-result v1

    invoke-virtual {v2, v1}, Lb/b/a/b/c;->a(I)I

    move-result v1

    iget-object v2, v0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v1}, Lb/b/a/b/g;->f()I

    move-result v3

    iget-boolean v1, v0, Lb/b/a/a/r;->D:Z

    if-eqz v1, :cond_a

    iget-object v1, v0, Lb/b/a/a/r;->Q:Landroid/graphics/Paint;

    iget-object v2, v0, Lb/b/a/a/r;->n:Lb/b/a/b/c;

    sget-object v14, Lb/b/a/b/c$a;->i:Lb/b/a/b/c$a;

    invoke-virtual {v2, v14}, Lb/b/a/b/c;->a(Lb/b/a/b/c$a;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Lb/b/a/a/r;->C:I

    iget v2, v0, Lb/b/a/a/r;->W:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    int-to-float v14, v1

    iget v1, v0, Lb/b/a/a/r;->C:I

    iget v10, v0, Lb/b/a/a/r;->W:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v1, v10

    int-to-float v10, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v21

    add-int v1, v1, v21

    int-to-float v1, v1

    move/from16 v21, v6

    iget-object v6, v0, Lb/b/a/a/r;->Q:Landroid/graphics/Paint;

    move/from16 v22, v1

    move-object/from16 v1, p1

    move/from16 v23, v8

    move/from16 v19, v9

    const/16 v9, 0x1e

    move v8, v3

    move v3, v14

    move v14, v4

    move v4, v10

    move v10, v5

    move/from16 v5, v22

    move/from16 v24, v21

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lb/b/a/a/r;->getMaxScrollY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    mul-int v2, v2, v3

    invoke-virtual/range {p0 .. p0}, Lb/b/a/a/r;->getMaxScrollY()I

    move-result v3

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    mul-int v3, v3, v4

    invoke-virtual/range {p0 .. p0}, Lb/b/a/a/r;->getMaxScrollY()I

    move-result v4

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    sub-int v3, v2, v1

    iget v4, v0, Lb/b/a/a/r;->R:I

    div-int/lit8 v5, v4, 0x4

    if-ge v3, v5, :cond_9

    div-int/lit8 v4, v4, 0x4

    add-int v2, v1, v4

    :cond_9
    iget v3, v0, Lb/b/a/a/r;->C:I

    iget v4, v0, Lb/b/a/a/r;->W:I

    div-int/lit8 v5, v4, 0x2

    sub-int v5, v3, v5

    iget v6, v0, Lb/b/a/a/r;->R:I

    div-int/lit8 v21, v6, 0x4

    sub-int v5, v5, v21

    int-to-float v5, v5

    int-to-float v1, v1

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v6, v6, 0x4

    sub-int/2addr v3, v6

    int-to-float v4, v3

    int-to-float v6, v2

    iget-object v3, v0, Lb/b/a/a/r;->Q:Landroid/graphics/Paint;

    move/from16 v21, v1

    move-object/from16 v1, p1

    move v2, v5

    move-object/from16 v22, v3

    move/from16 v3, v21

    move v5, v6

    move-object/from16 v6, v22

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_a
    move v14, v4

    move v10, v5

    move/from16 v24, v6

    move/from16 v23, v8

    move/from16 v19, v9

    const/16 v9, 0x1e

    move v8, v3

    :cond_b
    :goto_6
    const/4 v1, 0x1

    if-eq v14, v1, :cond_d

    if-eq v14, v9, :cond_c

    iget-object v1, v0, Lb/b/a/a/r;->L:Landroid/graphics/Typeface;

    goto :goto_7

    :cond_c
    iget-object v1, v0, Lb/b/a/a/r;->N:Landroid/graphics/Typeface;

    goto :goto_7

    :cond_d
    iget-object v1, v0, Lb/b/a/a/r;->M:Landroid/graphics/Typeface;

    :goto_7
    iget-object v2, v0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object v3, v1

    move/from16 v1, v23

    const/4 v2, 0x0

    :goto_8
    if-gt v1, v12, :cond_1f

    iget-object v4, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v4, v1}, Lb/b/a/b/g;->f(I)I

    move-result v4

    if-lt v1, v8, :cond_e

    goto/16 :goto_12

    :cond_e
    iget-boolean v5, v0, Lb/b/a/a/r;->D:Z

    if-eqz v5, :cond_f

    if-eq v11, v2, :cond_f

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v0, v7, v2, v5, v13}, Lb/b/a/a/r;->a(Landroid/graphics/Canvas;Ljava/lang/String;II)I

    move v2, v11

    :cond_f
    iget v5, v0, Lb/b/a/a/r;->C:I

    move-object/from16 v25, v3

    move v6, v5

    move/from16 v26, v18

    move/from16 v5, v19

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v4, :cond_1c

    if-eqz v17, :cond_15

    if-lt v5, v10, :cond_15

    invoke-virtual/range {v17 .. v17}, Lb/b/a/b/q;->a()I

    move-result v18

    add-int v10, v10, v18

    invoke-virtual/range {v17 .. v17}, Lb/b/a/b/q;->b()I

    move-result v9

    if-eq v14, v9, :cond_13

    const/4 v14, 0x1

    if-eq v9, v14, :cond_11

    const/16 v14, 0x1e

    if-eq v9, v14, :cond_10

    iget-object v14, v0, Lb/b/a/a/r;->L:Landroid/graphics/Typeface;

    :goto_a
    move/from16 v18, v2

    move-object v2, v14

    move-object/from16 v14, v25

    goto :goto_b

    :cond_10
    iget-object v14, v0, Lb/b/a/a/r;->N:Landroid/graphics/Typeface;

    goto :goto_a

    :cond_11
    iget-object v14, v0, Lb/b/a/a/r;->M:Landroid/graphics/Typeface;

    goto :goto_a

    :goto_b
    if-eq v14, v2, :cond_12

    iget-object v14, v0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object v14, v2

    :cond_12
    iget-object v2, v0, Lb/b/a/a/r;->n:Lb/b/a/b/c;

    invoke-virtual {v2, v9}, Lb/b/a/b/c;->a(I)I

    move-result v2

    move/from16 v21, v4

    iget-object v4, v0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v25, v14

    goto :goto_c

    :cond_13
    move/from16 v18, v2

    move/from16 v21, v4

    move-object/from16 v14, v25

    :goto_c
    move/from16 v2, v24

    move/from16 v4, v26

    if-ge v4, v2, :cond_14

    add-int/lit8 v26, v4, 0x1

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/a/b/q;

    move-object/from16 v17, v4

    move v14, v9

    goto :goto_d

    :cond_14
    move/from16 v26, v4

    move v14, v9

    move-object/from16 v17, v16

    :goto_d
    const/16 v19, 0x1e

    goto :goto_e

    :cond_15
    move/from16 v18, v2

    move/from16 v21, v4

    move/from16 v2, v24

    move-object/from16 v9, v25

    move/from16 v4, v26

    const/16 v19, 0x1e

    move/from16 v26, v4

    move-object/from16 v25, v9

    :goto_e
    iget v4, v0, Lb/b/a/a/r;->j:I

    if-ne v5, v4, :cond_16

    invoke-direct {v0, v7, v6, v13}, Lb/b/a/a/r;->a(Landroid/graphics/Canvas;II)V

    :cond_16
    iget-object v4, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v4, v5}, Lb/b/a/b/g;->charAt(I)C

    move-result v4

    iget-object v9, v0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {v9, v5}, Lb/b/a/a/r$a;->c(I)Z

    move-result v9

    if-eqz v9, :cond_19

    iget-boolean v9, v0, Lb/b/a/a/r;->ga:Z

    if-nez v9, :cond_18

    iget v9, v0, Lb/b/a/a/r;->k:I

    if-ne v5, v9, :cond_17

    iput v6, v0, Lb/b/a/a/r;->ca:I

    iput v13, v0, Lb/b/a/a/r;->da:I

    :cond_17
    const/4 v9, 0x1

    iput-boolean v9, v0, Lb/b/a/a/r;->ga:Z

    goto :goto_f

    :cond_18
    const/4 v9, 0x1

    :goto_f
    invoke-direct {v0, v7, v4, v6, v13}, Lb/b/a/a/r;->b(Landroid/graphics/Canvas;CII)I

    move-result v4

    add-int/2addr v6, v4

    const/4 v9, 0x0

    goto :goto_11

    :cond_19
    iget-boolean v9, v0, Lb/b/a/a/r;->ga:Z

    if-eqz v9, :cond_1b

    iget v9, v0, Lb/b/a/a/r;->l:I

    if-ne v5, v9, :cond_1a

    iput v6, v0, Lb/b/a/a/r;->ea:I

    iput v13, v0, Lb/b/a/a/r;->fa:I

    :cond_1a
    const/4 v9, 0x0

    iput-boolean v9, v0, Lb/b/a/a/r;->ga:Z

    goto :goto_10

    :cond_1b
    const/4 v9, 0x0

    :goto_10
    invoke-direct {v0, v7, v4, v6, v13}, Lb/b/a/a/r;->a(Landroid/graphics/Canvas;CII)I

    move-result v4

    add-int/2addr v6, v4

    :goto_11
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    move/from16 v24, v2

    move/from16 v2, v18

    move/from16 v4, v21

    const/16 v9, 0x1e

    goto/16 :goto_9

    :cond_1c
    move/from16 v18, v2

    move/from16 v2, v24

    move-object/from16 v9, v25

    move/from16 v4, v26

    const/16 v19, 0x1e

    const/16 v20, 0x1

    iget-object v3, v0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    add-int/lit8 v2, v5, -0x1

    invoke-virtual {v3, v2}, Lb/b/a/b/g;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1d

    add-int/lit8 v11, v11, 0x1

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lb/b/a/a/r;->d()I

    move-result v2

    add-int/2addr v13, v2

    iget v2, v0, Lb/b/a/a/r;->B:I

    if-le v6, v2, :cond_1e

    iput v6, v0, Lb/b/a/a/r;->B:I

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    move/from16 v19, v5

    move-object v3, v9

    move/from16 v2, v18

    const/16 v9, 0x1e

    move/from16 v18, v4

    goto/16 :goto_8

    :cond_1f
    :goto_12
    invoke-direct/range {p0 .. p1}, Lb/b/a/a/r;->b(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Lb/b/a/a/r;->isWordWrap()Z

    move-result v1

    if-nez v1, :cond_20

    invoke-direct/range {p0 .. p1}, Lb/b/a/a/r;->a(Landroid/graphics/Canvas;)V

    :cond_20
    return-void
.end method

.method static synthetic e(Lb/b/a/a/r;)V
    .locals 0

    invoke-direct {p0}, Lb/b/a/a/r;->g()V

    return-void
.end method

.method private e(II)Z
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic f(Lb/b/a/a/r;)Lb/b/a/a/r$b;
    .locals 0

    iget-object p0, p0, Lb/b/a/a/r;->w:Lb/b/a/a/r$b;

    return-object p0
.end method

.method private f()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lb/b/a/a/r;->ba:Z

    new-instance v0, Lb/b/a/a/r$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/b/a/a/r$a;-><init>(Lb/b/a/a/r;Lb/b/a/a/g;)V

    iput-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Lb/b/a/a/r;->F:Landroid/text/ClipboardManager;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    iget-object v0, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    sget v2, Lb/b/a/a/r;->c:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v0, p0, Lb/b/a/a/r;->W:I

    const-string v2, "\u00b7"

    const-string v3, "a"

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lb/b/a/a/r;->R:I

    iget-object v0, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lb/b/a/a/r;->W:I

    :cond_0
    iget-object v0, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lb/b/a/a/r;->R:I

    iget v0, p0, Lb/b/a/a/r;->R:I

    sput v0, Lb/b/a/a/y;->m:I

    sput v0, Lb/b/a/a/x;->m:I

    iget-object v0, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lb/b/a/a/r;->W:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lb/b/a/a/r;->Q:Landroid/graphics/Paint;

    iget-object v0, p0, Lb/b/a/a/r;->Q:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lb/b/a/a/r;->Q:Landroid/graphics/Paint;

    sget v2, Lb/b/a/a/r;->c:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    new-instance v0, Lb/b/a/a/k;

    invoke-direct {v0, p0}, Lb/b/a/a/k;-><init>(Lb/b/a/a/r;)V

    iput-object v0, p0, Lb/b/a/a/r;->x:Lb/b/a/b/r;

    new-instance v0, Lb/b/a/a/l;

    invoke-direct {v0, p0}, Lb/b/a/a/l;-><init>(Lb/b/a/a/r;)V

    iput-object v0, p0, Lb/b/a/a/r;->y:Lb/b/a/a/u;

    new-instance v0, Lb/b/a/a/m;

    invoke-direct {v0, p0}, Lb/b/a/a/m;-><init>(Lb/b/a/a/r;)V

    iput-object v0, p0, Lb/b/a/a/r;->J:Lb/b/a/a/v;

    invoke-direct {p0}, Lb/b/a/a/r;->i()V

    new-instance v0, Lb/b/a/a/e;

    invoke-direct {v0, p0}, Lb/b/a/a/e;-><init>(Lb/b/a/a/r;)V

    iput-object v0, p0, Lb/b/a/a/r;->E:Lb/b/a/a/e;

    new-instance v0, Lb/b/a/a/c;

    invoke-direct {v0, p0}, Lb/b/a/a/c;-><init>(Lb/b/a/a/r;)V

    iput-object v0, p0, Lb/b/a/a/r;->t:Lb/b/a/a/c;

    iget-object v0, p0, Lb/b/a/a/r;->t:Lb/b/a/a/c;

    invoke-static {}, Lb/b/a/b/j;->f()Lb/b/a/b/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/b/a/a/c;->a(Lb/b/a/b/i;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private f(I)V
    .locals 4

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Invalid startRow"

    invoke-static {v1, v2}, Lb/b/a/b/v;->a(ZLjava/lang/String;)V

    iget-object v1, p0, Lb/b/a/a/r;->h:Lb/b/a/a/w;

    invoke-virtual {v1}, Lb/b/a/a/w;->a()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    invoke-virtual {p0}, Lb/b/a/a/r;->d()I

    move-result v3

    mul-int p1, p1, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr p1, v3

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-super {p0, v0, p1, v1, v2}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method

.method private g(I)I
    .locals 3

    invoke-virtual {p0, p1}, Lb/b/a/a/r;->c(I)Lb/b/a/b/q;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/a/b/q;->a()I

    move-result v0

    invoke-virtual {p1}, Lb/b/a/b/q;->b()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lb/b/a/a/r;->getContentWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lb/b/a/a/r;->R:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lb/b/a/a/r;->getContentWidth()I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lb/b/a/a/r;->R:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    iget v2, p0, Lb/b/a/a/r;->R:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lb/b/a/a/r;->getLeftOffset()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    sub-int/2addr v0, p1

    iget p1, p0, Lb/b/a/a/r;->R:I

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Lb/b/a/a/r;->getLeftOffset()I

    move-result p1

    sub-int p1, v0, p1

    :cond_1
    return p1
.end method

.method static synthetic g(Lb/b/a/a/r;)Lb/b/a/a/u;
    .locals 0

    iget-object p0, p0, Lb/b/a/a/r;->y:Lb/b/a/a/u;

    return-object p0
.end method

.method private g()V
    .locals 2

    iget v0, p0, Lb/b/a/a/r;->z:I

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v0, v1}, Lb/b/a/a/r;->d(II)V

    return-void
.end method

.method private h(I)I
    .locals 2

    iget-object v0, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0, p1}, Lb/b/a/b/g;->b(I)I

    move-result p1

    invoke-virtual {p0}, Lb/b/a/a/r;->d()I

    move-result v0

    mul-int p1, p1, v0

    invoke-virtual {p0}, Lb/b/a/a/r;->d()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    invoke-virtual {p0}, Lb/b/a/a/r;->getContentHeight()I

    move-result v1

    add-int/2addr p1, v1

    if-le v0, p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Lb/b/a/a/r;->getContentHeight()I

    move-result p1

    sub-int p1, v0, p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    iget v1, p0, Lb/b/a/a/r;->k:I

    invoke-virtual {v0, v1}, Lb/b/a/b/g;->b(I)I

    move-result v0

    iget-object v1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    iget v2, p0, Lb/b/a/a/r;->l:I

    invoke-virtual {v1, v2}, Lb/b/a/b/g;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lb/b/a/a/r;->d(II)V

    return-void
.end method

.method static synthetic h(Lb/b/a/a/r;)V
    .locals 0

    invoke-direct {p0}, Lb/b/a/a/r;->h()V

    return-void
.end method

.method static synthetic i(Lb/b/a/a/r;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lb/b/a/a/r;->T:Ljava/lang/Runnable;

    return-object p0
.end method

.method private i()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lb/b/a/a/r;->j:I

    iput v0, p0, Lb/b/a/a/r;->z:I

    iput v0, p0, Lb/b/a/a/r;->B:I

    iget-object v1, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {v1, v0}, Lb/b/a/a/r$a;->d(Z)V

    iget-object v1, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {v1}, Lb/b/a/a/r$a;->i()V

    iget-object v1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v1}, Lb/b/a/b/g;->clearSpans()V

    invoke-virtual {p0}, Lb/b/a/a/r;->getContentWidth()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v1}, Lb/b/a/b/g;->j()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v1}, Lb/b/a/b/g;->a()V

    :cond_1
    iget-object v1, p0, Lb/b/a/a/r;->x:Lb/b/a/b/r;

    invoke-interface {v1, v0}, Lb/b/a/b/r;->a(I)V

    invoke-virtual {p0, v0, v0}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method private i(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget-object v2, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v2}, Lb/b/a/b/g;->c()I

    move-result v2

    if-ge p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Invalid charOffset given"

    invoke-static {v2, v3}, Lb/b/a/b/v;->a(ZLjava/lang/String;)V

    invoke-direct {p0, p1}, Lb/b/a/a/r;->h(I)I

    move-result v2

    invoke-direct {p0, p1}, Lb/b/a/a/r;->g(I)I

    move-result p1

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1, v2}, Landroid/view/View;->scrollBy(II)V

    return v0
.end method

.method private j(I)I
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const p1, 0x7fffffff

    const-string v0, "MeasureSpec cannot be UNSPECIFIED. Setting dimensions to max."

    invoke-static {v0}, Lb/b/a/b/v;->a(Ljava/lang/String;)V

    :cond_0
    return p1
.end method

.method static synthetic j(Lb/b/a/a/r;)I
    .locals 0

    iget p0, p0, Lb/b/a/a/r;->z:I

    return p0
.end method

.method static synthetic k(Lb/b/a/a/r;)I
    .locals 1

    iget v0, p0, Lb/b/a/a/r;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/b/a/a/r;->z:I

    return v0
.end method

.method static synthetic l(Lb/b/a/a/r;)I
    .locals 1

    iget v0, p0, Lb/b/a/a/r;->z:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lb/b/a/a/r;->z:I

    return v0
.end method

.method static synthetic m(Lb/b/a/a/r;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lb/b/a/a/r;->U:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic n(Lb/b/a/a/r;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lb/b/a/a/r;->V:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic o(Lb/b/a/a/r;)Lb/b/a/a/e;
    .locals 0

    iget-object p0, p0, Lb/b/a/a/r;->E:Lb/b/a/a/e;

    return-object p0
.end method

.method static synthetic p(Lb/b/a/a/r;)Z
    .locals 0

    iget-boolean p0, p0, Lb/b/a/a/r;->ba:Z

    return p0
.end method


# virtual methods
.method a(II)I
    .locals 9

    invoke-virtual {p0}, Lb/b/a/a/r;->d()I

    move-result v0

    div-int/2addr p2, v0

    iget-object v0, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0}, Lb/b/a/b/g;->f()I

    move-result v0

    const/4 v1, 0x1

    if-le p2, v0, :cond_0

    iget-object p1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1}, Lb/b/a/b/g;->c()I

    move-result p1

    sub-int/2addr p1, v1

    return p1

    :cond_0
    iget-object v0, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0, p2}, Lb/b/a/b/g;->e(I)I

    move-result v0

    if-gez v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    if-gez p1, :cond_2

    return v0

    :cond_2
    iget-object v2, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v2, p2}, Lb/b/a/b/g;->d(I)Ljava/lang/String;

    move-result-object p2

    iget v2, p0, Lb/b/a/a/r;->C:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    move v6, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v2, v3, :cond_5

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sparse-switch v7, :sswitch_data_0

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_0
    const/4 v5, 0x2

    new-array v8, v5, [C

    aput-char v7, v8, v4

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput-char v7, v8, v1

    iget-object v7, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v4, v5}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v6, v5

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0}, Lb/b/a/a/r;->getSpaceAdvance()I

    move-result v7

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lb/b/a/a/r;->getEOLAdvance()I

    move-result v7

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0, v6}, Lb/b/a/a/r;->e(I)I

    move-result v7

    :goto_1
    add-int/2addr v6, v7

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v7}, Lb/b/a/a/r;->getCharAdvance(C)I

    move-result v7

    goto :goto_1

    :goto_2
    if-lt v6, p1, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v2, p1, :cond_6

    add-int/2addr v0, v2

    return v0

    :cond_6
    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0x20 -> :sswitch_1
        0xd83c -> :sswitch_0
        0xd83d -> :sswitch_0
        0xffff -> :sswitch_2
    .end sparse-switch
.end method

.method a(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_0
    return-void
.end method

.method protected a()Z
    .locals 3

    iget v0, p0, Lb/b/a/a/r;->j:I

    iget-object v1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v1}, Lb/b/a/b/g;->c()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method a(I)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const-string p1, "Invalid scroll direction"

    invoke-static {p1}, Lb/b/a/b/v;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lb/b/a/a/r;->V:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lb/b/a/a/r;->a()Z

    move-result p1

    if-nez p1, :cond_4

    iget p1, p0, Lb/b/a/a/r;->z:I

    iget-object v1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    iget v2, p0, Lb/b/a/a/r;->j:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lb/b/a/b/g;->b(I)I

    move-result v1

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lb/b/a/a/r;->V:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lb/b/a/a/r;->U:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget p1, p0, Lb/b/a/a/r;->j:I

    if-lez p1, :cond_4

    iget v1, p0, Lb/b/a/a/r;->z:I

    iget-object v2, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    sub-int/2addr p1, v0

    invoke-virtual {v2, p1}, Lb/b/a/b/g;->b(I)I

    move-result p1

    if-ne v1, p1, :cond_4

    iget-object p1, p0, Lb/b/a/a/r;->U:Ljava/lang/Runnable;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lb/b/a/a/r;->S:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lb/b/a/a/r;->c()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lb/b/a/a/r;->S:Ljava/lang/Runnable;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lb/b/a/a/r;->T:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lb/b/a/a/r;->b()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lb/b/a/a/r;->T:Ljava/lang/Runnable;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method b(II)I
    .locals 10

    invoke-virtual {p0}, Lb/b/a/a/r;->d()I

    move-result v0

    div-int/2addr p2, v0

    iget-object v0, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0, p2}, Lb/b/a/b/g;->e(I)I

    move-result v0

    const/4 v1, -0x1

    if-ltz v0, :cond_4

    if-gez p1, :cond_0

    goto :goto_4

    :cond_0
    iget-object v2, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v2, p2}, Lb/b/a/b/g;->d(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x1

    sparse-switch v7, :sswitch_data_0

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_0
    const/4 v5, 0x2

    new-array v9, v5, [C

    aput-char v7, v9, v3

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput-char v7, v9, v8

    iget-object v7, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {v7, v9, v3, v5}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v6, v5

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0}, Lb/b/a/a/r;->getSpaceAdvance()I

    move-result v7

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lb/b/a/a/r;->getEOLAdvance()I

    move-result v7

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0, v6}, Lb/b/a/a/r;->e(I)I

    move-result v7

    :goto_1
    add-int/2addr v6, v7

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v7}, Lb/b/a/a/r;->getCharAdvance(C)I

    move-result v7

    goto :goto_1

    :goto_2
    if-lt v6, p1, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v4, p1, :cond_4

    add-int/2addr v0, v4

    return v0

    :cond_4
    :goto_4
    return v1

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0x20 -> :sswitch_1
        0xd83c -> :sswitch_0
        0xd83d -> :sswitch_0
        0xffff -> :sswitch_2
    .end sparse-switch
.end method

.method b(I)Landroid/graphics/Rect;
    .locals 4

    if-ltz p1, :cond_1

    iget-object v0, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0}, Lb/b/a/b/g;->c()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0, p1}, Lb/b/a/b/g;->b(I)I

    move-result v0

    invoke-virtual {p0}, Lb/b/a/a/r;->d()I

    move-result v1

    mul-int v0, v0, v1

    invoke-virtual {p0}, Lb/b/a/a/r;->d()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lb/b/a/a/r;->c(I)Lb/b/a/b/q;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/a/b/q;->a()I

    move-result v2

    invoke-virtual {p1}, Lb/b/a/b/q;->b()I

    move-result p1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v0, p1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3

    :cond_1
    :goto_0
    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method protected b()Z
    .locals 1

    iget v0, p0, Lb/b/a/a/r;->z:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected c(I)Lb/b/a/b/q;
    .locals 11

    iget-object v0, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0, p1}, Lb/b/a/b/g;->b(I)I

    move-result v0

    iget-object v1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v1, v0}, Lb/b/a/b/g;->e(I)I

    move-result v1

    iget v2, p0, Lb/b/a/a/r;->C:I

    iget-object v3, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v3, v0}, Lb/b/a/b/g;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    move v5, v2

    move v6, v5

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_0
    add-int v8, v1, v2

    if-gt v8, p1, :cond_1

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v8, 0x1

    sparse-switch v5, :sswitch_data_0

    if-eqz v7, :cond_0

    move v5, v6

    const/4 v7, 0x0

    goto :goto_2

    :sswitch_0
    const/4 v7, 0x2

    new-array v9, v7, [C

    aput-char v5, v9, v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v9, v8

    iget-object v5, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {v5, v9, v4, v7}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v6

    const/4 v7, 0x1

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0}, Lb/b/a/a/r;->getSpaceAdvance()I

    move-result v5

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lb/b/a/a/r;->getEOLAdvance()I

    move-result v5

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0, v6}, Lb/b/a/a/r;->e(I)I

    move-result v5

    :goto_1
    add-int/2addr v5, v6

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v5}, Lb/b/a/a/r;->getCharAdvance(C)I

    move-result v5

    goto :goto_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v10, v6

    move v6, v5

    move v5, v10

    goto :goto_0

    :cond_1
    new-instance p1, Lb/b/a/b/q;

    invoke-direct {p1, v5, v6}, Lb/b/a/b/q;-><init>(II)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0x20 -> :sswitch_1
        0xd83c -> :sswitch_0
        0xd83d -> :sswitch_0
        0xffff -> :sswitch_2
    .end sparse-switch
.end method

.method c(II)V
    .locals 9

    iget-object v0, p0, Lb/b/a/a/r;->f:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lb/b/a/a/r;->getMaxScrollX()I

    move-result v6

    invoke-virtual {p0}, Lb/b/a/a/r;->getMaxScrollY()I

    move-result v8

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method protected c()Z
    .locals 3

    iget v0, p0, Lb/b/a/a/r;->z:I

    iget-object v1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v1}, Lb/b/a/b/g;->f()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public cancelSpanning()V
    .locals 1

    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {v0}, Lb/b/a/a/r$a;->a()V

    return-void
.end method

.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lb/b/a/a/r;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/a/r;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lb/b/a/a/r;->f:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    iget-object v0, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0}, Lb/b/a/b/g;->f()I

    move-result v0

    invoke-virtual {p0}, Lb/b/a/a/r;->d()I

    move-result v1

    mul-int v0, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public copy()V
    .locals 2

    iget v0, p0, Lb/b/a/a/r;->k:I

    iget v1, p0, Lb/b/a/a/r;->l:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    iget-object v1, p0, Lb/b/a/a/r;->F:Landroid/text/ClipboardManager;

    invoke-virtual {v0, v1}, Lb/b/a/a/r$a;->a(Landroid/text/ClipboardManager;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/b/a/a/r;->selectText(Z)V

    return-void
.end method

.method public copy(Landroid/text/ClipboardManager;)V
    .locals 1

    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {v0, p1}, Lb/b/a/a/r$a;->a(Landroid/text/ClipboardManager;)V

    return-void
.end method

.method public createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    invoke-super {p0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_NEXT_AT_MOVEMENT_GRANULARITY:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0xf

    if-le v1, v2, :cond_1

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lb/b/a/a/r;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Lb/b/a/a/r;->getSelectionEnd()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMultiLine(Z)V

    :cond_4
    return-object v0
.end method

.method public createDocumentProvider()Lb/b/a/b/g;
    .locals 2

    new-instance v0, Lb/b/a/b/g;

    iget-object v1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-direct {v0, v1}, Lb/b/a/b/g;-><init>(Lb/b/a/b/g;)V

    return-object v0
.end method

.method public cut()V
    .locals 2

    iget v0, p0, Lb/b/a/a/r;->k:I

    iget v1, p0, Lb/b/a/a/r;->l:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    iget-object v1, p0, Lb/b/a/a/r;->F:Landroid/text/ClipboardManager;

    invoke-virtual {v0, v1}, Lb/b/a/a/r$a;->b(Landroid/text/ClipboardManager;)V

    :cond_0
    return-void
.end method

.method public cut(Landroid/text/ClipboardManager;)V
    .locals 1

    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {v0, p1}, Lb/b/a/a/r$a;->b(Landroid/text/ClipboardManager;)V

    return-void
.end method

.method protected d()I
    .locals 2

    iget-object v0, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v0

    return v1
.end method

.method protected d(I)I
    .locals 3

    iget-object v0, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0, p1}, Lb/b/a/b/g;->b(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Invalid char offset given to getColumn"

    invoke-static {v1, v2}, Lb/b/a/b/v;->a(ZLjava/lang/String;)V

    iget-object v1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v1, v0}, Lb/b/a/b/g;->e(I)I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method protected e(I)I
    .locals 4

    iget-boolean v0, p0, Lb/b/a/a/r;->p:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lb/b/a/a/r;->m:I

    iget-object v0, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "\u00b7"

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    float-to-int v0, v0

    mul-int p1, p1, v0

    return p1

    :cond_0
    iget v0, p0, Lb/b/a/a/r;->C:I

    sub-int/2addr p1, v0

    iget v0, p0, Lb/b/a/a/r;->W:I

    div-int/2addr p1, v0

    iget v1, p0, Lb/b/a/a/r;->m:I

    rem-int/2addr p1, v1

    sub-int/2addr v1, p1

    mul-int v1, v1, v0

    return v1
.end method

.method e()V
    .locals 1

    iget-object v0, p0, Lb/b/a/a/r;->S:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lb/b/a/a/r;->T:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lb/b/a/a/r;->U:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lb/b/a/a/r;->V:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public focusCaret()V
    .locals 1

    iget v0, p0, Lb/b/a/a/r;->j:I

    invoke-direct {p0, v0}, Lb/b/a/a/r;->i(I)Z

    return-void
.end method

.method public focusSelectionEnd()V
    .locals 2

    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/b/a/a/r$a;->a(Z)V

    return-void
.end method

.method public focusSelectionStart()V
    .locals 2

    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/b/a/a/r$a;->a(Z)V

    return-void
.end method

.method public format()V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/b/a/a/r;->selectText(Z)V

    new-instance v1, Lb/b/a/b/g;

    iget-object v2, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-direct {v1, v2}, Lb/b/a/b/g;-><init>(Lb/b/a/b/g;)V

    new-instance v2, Lb/b/a/b/h;

    invoke-direct {v2}, Lb/b/a/b/h;-><init>()V

    invoke-static {v1, v2}, Lb/b/a/b/o;->a(Ljava/lang/CharSequence;Lb/b/a/b/h;)Z

    new-instance v1, Lb/b/a/b/g;

    iget-object v2, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-direct {v1, v2}, Lb/b/a/b/g;-><init>(Lb/b/a/b/g;)V

    iget v2, p0, Lb/b/a/a/r;->r:I

    invoke-static {v1, v2}, Lb/b/a/b/b;->a(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v2}, Lb/b/a/b/g;->b()V

    iget-object v2, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v2}, Lb/b/a/b/g;->c()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v2, v0, v3, v4, v5}, Lb/b/a/b/g;->a(IIJ)V

    iget-object v2, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v2, v1, v0, v3, v4}, Lb/b/a/b/g;->a([CIJ)V

    iget-object v0, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0}, Lb/b/a/b/g;->d()V

    iget-object v0, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0}, Lb/b/a/b/g;->clearSpans()V

    invoke-virtual {p0}, Lb/b/a/a/r;->respan()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getAdvance(C)I
    .locals 5

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    iget-char v1, p0, Lb/b/a/a/r;->O:C

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    new-array v4, v3, [C

    aput-char v1, v4, v2

    aput-char p1, v4, v0

    iget-object p1, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p1

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lb/b/a/a/r;->getSpaceAdvance()I

    move-result v0

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lb/b/a/a/r;->getEOLAdvance()I

    move-result v0

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lb/b/a/a/r;->getTabAdvance()I

    move-result v0

    goto :goto_1

    :cond_0
    new-array v1, v0, [C

    aput-char p1, v1, v2

    iget-object p1, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p1

    :goto_0
    float-to-int v0, p1

    :goto_1
    :sswitch_3
    if-nez v0, :cond_1

    iget v0, p0, Lb/b/a/a/r;->W:I

    :cond_1
    return v0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_1
        0x20 -> :sswitch_0
        0xd83c -> :sswitch_3
        0xd83d -> :sswitch_3
        0xffff -> :sswitch_1
    .end sparse-switch
.end method

.method public getAdvance(CI)I
    .locals 4

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    iget-char p2, p0, Lb/b/a/a/r;->O:C

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 v2, 0x2

    new-array v3, v2, [C

    aput-char p2, v3, v0

    aput-char p1, v3, v1

    iget-object p1, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p1

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lb/b/a/a/r;->getSpaceAdvance()I

    move-result v0

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lb/b/a/a/r;->getEOLAdvance()I

    move-result v0

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0, p2}, Lb/b/a/a/r;->e(I)I

    move-result v0

    goto :goto_1

    :cond_0
    new-array p2, v1, [C

    aput-char p1, p2, v0

    iget-object p1, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p1

    :goto_0
    float-to-int v0, p1

    :goto_1
    :sswitch_3
    return v0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_1
        0x20 -> :sswitch_0
        0xd83c -> :sswitch_3
        0xd83d -> :sswitch_3
        0xffff -> :sswitch_1
    .end sparse-switch
.end method

.method public getAutoIndentWidth()I
    .locals 1

    iget v0, p0, Lb/b/a/a/r;->r:I

    return v0
.end method

.method public getCaretPosition()I
    .locals 1

    iget v0, p0, Lb/b/a/a/r;->j:I

    return v0
.end method

.method public getCaretRow()I
    .locals 1

    iget v0, p0, Lb/b/a/a/r;->z:I

    return v0
.end method

.method public getCaretX()I
    .locals 1

    iget v0, p0, Lb/b/a/a/r;->H:I

    return v0
.end method

.method public getCaretY()I
    .locals 1

    iget v0, p0, Lb/b/a/a/r;->I:I

    return v0
.end method

.method public getCharAdvance(C)I
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/4 v2, 0x0

    aput-char p1, v1, v2

    iget-object p1, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public getColorScheme()Lb/b/a/b/c;
    .locals 1

    iget-object v0, p0, Lb/b/a/a/r;->n:Lb/b/a/b/c;

    return-object v0
.end method

.method protected getContentHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getContentWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getEOLAdvance()I
    .locals 5

    iget-boolean v0, p0, Lb/b/a/a/r;->p:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    const-string v3, "\u21b5"

    invoke-virtual {v0, v3, v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    :goto_0
    float-to-int v0, v0

    return v0

    :cond_0
    sget v0, Lb/b/a/a/r;->a:F

    iget-object v3, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    const-string v4, " "

    invoke-virtual {v3, v4, v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    mul-float v0, v0, v1

    goto :goto_0
.end method

.method public getLeftOffset()I
    .locals 1

    iget v0, p0, Lb/b/a/a/r;->C:I

    return v0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0}, Lb/b/a/b/g;->c()I

    move-result v0

    return v0
.end method

.method getMaxScrollX()I
    .locals 3

    invoke-virtual {p0}, Lb/b/a/a/r;->isWordWrap()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lb/b/a/a/r;->C:I

    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lb/b/a/a/r;->B:I

    invoke-virtual {p0}, Lb/b/a/a/r;->getContentWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lb/b/a/a/r;->h:Lb/b/a/a/w;

    invoke-virtual {v2}, Lb/b/a/a/w;->a()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget v2, p0, Lb/b/a/a/r;->R:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method getMaxScrollY()I
    .locals 2

    iget-object v0, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0}, Lb/b/a/b/g;->f()I

    move-result v0

    invoke-virtual {p0}, Lb/b/a/a/r;->d()I

    move-result v1

    mul-int v0, v0, v1

    invoke-virtual {p0}, Lb/b/a/a/r;->getContentHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lb/b/a/a/r;->h:Lb/b/a/a/w;

    invoke-virtual {v1}, Lb/b/a/a/w;->a()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getNumVisibleRows()I
    .locals 4

    invoke-virtual {p0}, Lb/b/a/a/r;->getContentHeight()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lb/b/a/a/r;->d()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getPaintBaseline(I)I
    .locals 2

    iget-object v0, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Lb/b/a/a/r;->d()I

    move-result v1

    mul-int p1, p1, v1

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public final getRowWidth()I
    .locals 2

    invoke-virtual {p0}, Lb/b/a/a/r;->getContentWidth()I

    move-result v0

    iget v1, p0, Lb/b/a/a/r;->C:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSelectionEnd()I
    .locals 1

    iget v0, p0, Lb/b/a/a/r;->l:I

    if-gez v0, :cond_0

    iget v0, p0, Lb/b/a/a/r;->j:I

    :cond_0
    return v0
.end method

.method public getSelectionEndX()I
    .locals 2

    iget v0, p0, Lb/b/a/a/r;->k:I

    iget v1, p0, Lb/b/a/a/r;->l:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lb/b/a/a/r;->H:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lb/b/a/a/r;->ea:I

    :goto_0
    return v0
.end method

.method public getSelectionEndY()I
    .locals 2

    iget v0, p0, Lb/b/a/a/r;->k:I

    iget v1, p0, Lb/b/a/a/r;->l:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lb/b/a/a/r;->I:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lb/b/a/a/r;->fa:I

    :goto_0
    return v0
.end method

.method public getSelectionStart()I
    .locals 1

    iget v0, p0, Lb/b/a/a/r;->k:I

    if-gez v0, :cond_0

    iget v0, p0, Lb/b/a/a/r;->j:I

    :cond_0
    return v0
.end method

.method public getSelectionStartX()I
    .locals 2

    iget v0, p0, Lb/b/a/a/r;->k:I

    iget v1, p0, Lb/b/a/a/r;->l:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lb/b/a/a/r;->H:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lb/b/a/a/r;->ca:I

    :goto_0
    return v0
.end method

.method public getSelectionStartY()I
    .locals 2

    iget v0, p0, Lb/b/a/a/r;->k:I

    iget v1, p0, Lb/b/a/a/r;->l:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lb/b/a/a/r;->I:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lb/b/a/a/r;->da:I

    :goto_0
    return v0
.end method

.method protected getSpaceAdvance()I
    .locals 4

    iget-boolean v0, p0, Lb/b/a/a/r;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "\u00b7"

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    float-to-int v0, v0

    return v0

    :cond_0
    iget v0, p0, Lb/b/a/a/r;->W:I

    return v0
.end method

.method protected getTabAdvance()I
    .locals 5

    iget-boolean v0, p0, Lb/b/a/a/r;->p:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lb/b/a/a/r;->m:I

    iget-object v1, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "\u00b7"

    invoke-virtual {v1, v4, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    float-to-int v1, v1

    :goto_0
    mul-int v0, v0, v1

    return v0

    :cond_0
    iget v0, p0, Lb/b/a/a/r;->m:I

    iget v1, p0, Lb/b/a/a/r;->W:I

    goto :goto_0
.end method

.method public getTextSize()F
    .locals 1

    iget-object v0, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTopOffset()I
    .locals 1

    iget v0, p0, Lb/b/a/a/r;->K:I

    return v0
.end method

.method public getUiState()Landroid/os/Parcelable;
    .locals 1

    new-instance v0, Lb/b/a/a/r$c;

    invoke-direct {v0, p0}, Lb/b/a/a/r$c;-><init>(Lb/b/a/a/r;)V

    return-object v0
.end method

.method public getZoom()F
    .locals 1

    iget v0, p0, Lb/b/a/a/r;->G:F

    return v0
.end method

.method public hasLayout()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inSelectionRange(I)Z
    .locals 1

    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {v0, p1}, Lb/b/a/a/r$a;->c(I)Z

    move-result p1

    return p1
.end method

.method public isAccessibilityEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lb/b/a/a/r;->ba:Z

    return v0
.end method

.method public isEdited()Z
    .locals 1

    iget-boolean v0, p0, Lb/b/a/a/r;->g:Z

    return v0
.end method

.method public isFlingScrolling()Z
    .locals 1

    iget-object v0, p0, Lb/b/a/a/r;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSaveEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isSelectText()Z
    .locals 1

    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {v0}, Lb/b/a/a/r$a;->c()Z

    move-result v0

    return v0
.end method

.method public final isSelectText2()Z
    .locals 1

    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {v0}, Lb/b/a/a/r$a;->d()Z

    move-result v0

    return v0
.end method

.method public isShowLineNumbers()Z
    .locals 1

    iget-boolean v0, p0, Lb/b/a/a/r;->D:Z

    return v0
.end method

.method public isWordWrap()Z
    .locals 1

    iget-object v0, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0}, Lb/b/a/b/g;->j()Z

    move-result v0

    return v0
.end method

.method public moveCaret(I)V
    .locals 1

    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {v0, p1}, Lb/b/a/a/r$a;->d(I)V

    return-void
.end method

.method public moveCaretDown()V
    .locals 1

    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {v0}, Lb/b/a/a/r$a;->e()V

    return-void
.end method

.method public moveCaretLeft()V
    .locals 2

    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/b/a/a/r$a;->b(Z)V

    return-void
.end method

.method public moveCaretRight()V
    .locals 2

    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/b/a/a/r$a;->c(Z)V

    return-void
.end method

.method public moveCaretUp()V
    .locals 1

    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {v0}, Lb/b/a/a/r$a;->f()V

    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    const v0, 0x20001

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v0, 0x50000006

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object p1, p0, Lb/b/a/a/r;->w:Lb/b/a/a/r$b;

    if-nez p1, :cond_0

    new-instance p1, Lb/b/a/a/r$b;

    invoke-direct {p1, p0, p0}, Lb/b/a/a/r$b;-><init>(Lb/b/a/a/r;Lb/b/a/a/r;)V

    iput-object p1, p0, Lb/b/a/a/r;->w:Lb/b/a/a/r$b;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lb/b/a/a/r$b;->b()V

    :goto_0
    iget-object p1, p0, Lb/b/a/a/r;->w:Lb/b/a/a/r$b;

    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, p1}, Lb/b/a/a/r;->e(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    sget-object v4, Lc/a/a/a/f;->h:Ljava/lang/String;

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lb/b/a/a/r;->d()I

    move-result v1

    sub-int v8, v0, v1

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lb/b/a/a/r;->a(Landroid/graphics/Canvas;Ljava/lang/String;IIII)I

    move-result v0

    iget v1, p0, Lb/b/a/a/r;->B:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lb/b/a/a/r;->B:I

    :cond_0
    iget-object v0, p0, Lb/b/a/a/r;->h:Lb/b/a/a/w;

    invoke-virtual {v0, p1}, Lb/b/a/a/w;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-direct {p0}, Lb/b/a/a/r;->g()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    neg-float p1, p1

    invoke-virtual {p0}, Lb/b/a/a/r;->d()I

    move-result v1

    int-to-float v1, v1

    mul-float p1, p1, v1

    invoke-direct {p0, v0, p1}, Lb/b/a/a/r;->a(FF)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-boolean v0, p0, Lb/b/a/a/r;->ba:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lb/b/a/a/r;->h:Lb/b/a/a/w;

    invoke-virtual {v2, p1}, Lb/b/a/a/w;->b(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lb/b/a/a/r;->ha:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lb/b/a/a/r;->h:Lb/b/a/a/w;

    iget-object v3, p0, Lb/b/a/a/r;->ha:Landroid/view/MotionEvent;

    iget v4, p0, Lb/b/a/a/r;->ia:F

    sub-float/2addr v4, v0

    iget v5, p0, Lb/b/a/a/r;->ja:F

    sub-float/2addr v5, v1

    invoke-virtual {v2, v3, p1, v4, v5}, Lb/b/a/a/w;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    :goto_0
    iput v0, p0, Lb/b/a/a/r;->ia:F

    iput v1, p0, Lb/b/a/a/r;->ja:F

    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Lb/b/a/a/r;->h:Lb/b/a/a/w;

    invoke-virtual {v0, p1, p2}, Lb/b/a/a/w;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p2}, Lb/b/a/a/t;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lb/b/a/a/r;->a(ILandroid/view/KeyEvent;)V

    return v1

    :cond_1
    const/16 v0, 0x3f

    const v2, 0xef01

    if-eq p1, v0, :cond_9

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lb/b/a/a/t;->b(Landroid/view/KeyEvent;)C

    move-result v0

    if-nez v0, :cond_3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-ne p1, v1, :cond_5

    iget-boolean p1, p0, Lb/b/a/a/r;->s:Z

    if-eqz p1, :cond_4

    invoke-direct {p0, v0}, Lb/b/a/a/r;->a(C)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lb/b/a/a/r;->b(C)V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lb/b/a/a/r;->s:Z

    if-eqz p1, :cond_6

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    iget-boolean p1, p0, Lb/b/a/a/r;->s:Z

    if-nez p1, :cond_8

    sget-object p1, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    :cond_7
    iget-object p1, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {p1, v0}, Lb/b/a/a/r$a;->a(C)V

    :cond_8
    :goto_0
    return v1

    :cond_9
    :goto_1
    sget-object p1, Lb/b/a/a/r;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lb/b/a/a/r;->a(Ljava/lang/String;Z)V

    return v1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lb/b/a/a/r;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lb/b/a/a/t;->b(Landroid/view/KeyEvent;)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    iget v3, p0, Lb/b/a/a/r;->j:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lb/b/a/b/g;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object p1, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lb/b/a/a/r$a;->a(C)V

    iget-object p1, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p2

    invoke-virtual {p1, p2}, Lb/b/a/a/r$a;->a(C)V

    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lb/b/a/a/r;->h:Lb/b/a/a/w;

    invoke-virtual {v0, p1, p2}, Lb/b/a/a/w;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    if-eqz p1, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lb/b/a/a/r;->K:I

    iget-boolean v0, p0, Lb/b/a/a/r;->P:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/b/a/a/r;->respan()V

    :cond_0
    if-lez p4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lb/b/a/a/r;->P:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lb/b/a/a/r;->t:Lb/b/a/a/c;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lb/b/a/a/c;->c(I)V

    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-direct {p0, p1}, Lb/b/a/a/r;->j(I)I

    move-result p1

    invoke-direct {p0, p2}, Lb/b/a/a/r;->j(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object v0, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0}, Lb/b/a/b/g;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eq p3, p1, :cond_0

    iget-object p1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1}, Lb/b/a/b/g;->a()V

    :cond_0
    iget-object p1, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {p1}, Lb/b/a/a/r$a;->j()V

    if-ge p2, p4, :cond_1

    iget p1, p0, Lb/b/a/a/r;->j:I

    invoke-direct {p0, p1}, Lb/b/a/a/r;->i(I)Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/a/a/r;->h:Lb/b/a/a/w;

    invoke-virtual {v0, p1}, Lb/b/a/a/w;->a(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lb/b/a/a/r;->e(II)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_1
    :goto_0
    return v1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :goto_0
    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v2, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {v2, v1}, Lb/b/a/a/r$a;->c(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-gez v0, :cond_1

    iget-object v2, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {v2, v1}, Lb/b/a/a/r$a;->b(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-lez p1, :cond_2

    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {v0}, Lb/b/a/a/r$a;->e()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-gez p1, :cond_3

    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {v0}, Lb/b/a/a/r$a;->f()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public paste()V
    .locals 2

    iget-object v0, p0, Lb/b/a/a/r;->F:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lb/b/a/a/r$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public paste(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {v0, p1}, Lb/b/a/a/r$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_0
    const/16 v0, 0x100

    const/4 v1, 0x4

    const-string v2, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    const/4 v3, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x200

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v3, :cond_3

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lb/b/a/a/r;->moveCaretUp()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lb/b/a/a/r;->moveCaretLeft()V

    :goto_0
    return v3

    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v3, :cond_6

    if-eq p1, v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lb/b/a/a/r;->moveCaretDown()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lb/b/a/a/r;->moveCaretRight()V

    :goto_1
    return v3
.end method

.method public replaceText(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0}, Lb/b/a/b/g;->b()V

    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {v0, p1, p2, p3}, Lb/b/a/a/r$a;->b(IILjava/lang/String;)V

    iget-object p1, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {p1}, Lb/b/a/a/r$a;->i()V

    iget-object p1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1}, Lb/b/a/b/g;->d()V

    iget-object p1, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {p1}, Lb/b/a/a/r$a;->g()V

    return-void
.end method

.method public respan()V
    .locals 1

    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {v0}, Lb/b/a/a/r$a;->b()V

    return-void
.end method

.method public restoreUiState(Landroid/os/Parcelable;)V
    .locals 3

    check-cast p1, Lb/b/a/a/r$c;

    iget v0, p1, Lb/b/a/a/r$c;->a:I

    iget-boolean v1, p1, Lb/b/a/a/r$c;->d:Z

    if-eqz v1, :cond_0

    iget v1, p1, Lb/b/a/a/r$c;->e:I

    iget p1, p1, Lb/b/a/a/r$c;->f:I

    new-instance v2, Lb/b/a/a/o;

    invoke-direct {v2, p0, v1, p1, v0}, Lb/b/a/a/o;-><init>(Lb/b/a/a/r;III)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lb/b/a/a/f;

    invoke-direct {p1, p0, v0}, Lb/b/a/a/f;-><init>(Lb/b/a/a/r;I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public selectAll()V
    .locals 4

    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    iget-object v1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v1}, Lb/b/a/b/g;->c()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Lb/b/a/a/r$a;->a(IIZZ)V

    return-void
.end method

.method public selectText(Z)V
    .locals 1

    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {v0}, Lb/b/a/a/r$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lb/b/a/a/r;->h()V

    iget-object p1, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lb/b/a/a/r$a;->d(Z)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {v0}, Lb/b/a/a/r$a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lb/b/a/a/r;->g()V

    iget-object p1, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setAutoComplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lb/b/a/a/r;->u:Z

    return-void
.end method

.method public setAutoIndent(Z)V
    .locals 0

    iput-boolean p1, p0, Lb/b/a/a/r;->q:Z

    return-void
.end method

.method public setAutoIndentWidth(I)V
    .locals 0

    iput p1, p0, Lb/b/a/a/r;->r:I

    return-void
.end method

.method public setBoldTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/a/r;->M:Landroid/graphics/Typeface;

    return-void
.end method

.method public setChirality(Z)V
    .locals 1

    iget-object v0, p0, Lb/b/a/a/r;->h:Lb/b/a/a/w;

    invoke-virtual {v0, p1}, Lb/b/a/a/w;->a(Z)V

    return-void
.end method

.method public setColorScheme(Lb/b/a/b/c;)V
    .locals 1

    iput-object p1, p0, Lb/b/a/a/r;->n:Lb/b/a/b/c;

    iget-object v0, p0, Lb/b/a/a/r;->h:Lb/b/a/a/w;

    invoke-virtual {v0, p1}, Lb/b/a/a/w;->a(Lb/b/a/b/c;)V

    sget-object v0, Lb/b/a/b/c$a;->b:Lb/b/a/b/c$a;

    invoke-virtual {p1, v0}, Lb/b/a/b/c;->a(Lb/b/a/b/c$a;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setDocumentProvider(Lb/b/a/b/g;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-direct {p0}, Lb/b/a/a/r;->i()V

    iget-object p1, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {p1}, Lb/b/a/a/r$a;->a()V

    iget-object p1, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {p1}, Lb/b/a/a/r$a;->b()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-boolean p1, p0, Lb/b/a/a/r;->ba:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setEdited(Z)V
    .locals 0

    iput-boolean p1, p0, Lb/b/a/a/r;->g:Z

    return-void
.end method

.method public setHighlightCurrentRow(Z)V
    .locals 0

    iput-boolean p1, p0, Lb/b/a/a/r;->o:Z

    invoke-direct {p0}, Lb/b/a/a/r;->g()V

    return-void
.end method

.method public setItalicTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/a/r;->N:Landroid/graphics/Typeface;

    return-void
.end method

.method public setLongPressCaps(Z)V
    .locals 0

    iput-boolean p1, p0, Lb/b/a/a/r;->s:Z

    return-void
.end method

.method public setNavigationMethod(Lb/b/a/a/w;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/a/r;->h:Lb/b/a/a/w;

    return-void
.end method

.method public setNonPrintingCharVisibility(Z)V
    .locals 1

    iget-boolean v0, p0, Lb/b/a/a/r;->p:Z

    xor-int/2addr v0, p1

    if-eqz v0, :cond_1

    iput-boolean p1, p0, Lb/b/a/a/r;->p:Z

    iget-object p1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1}, Lb/b/a/b/g;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1}, Lb/b/a/b/g;->a()V

    :cond_0
    iget-object p1, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {p1}, Lb/b/a/a/r$a;->j()V

    iget p1, p0, Lb/b/a/a/r;->j:I

    invoke-direct {p0, p1}, Lb/b/a/a/r;->i(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setOnSelectionChangedListener(Lb/b/a/a/u;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/a/r;->y:Lb/b/a/a/u;

    return-void
.end method

.method public setRowListener(Lb/b/a/b/r;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/a/r;->x:Lb/b/a/b/r;

    return-void
.end method

.method public setSelection(II)V
    .locals 3

    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lb/b/a/a/r$a;->a(IIZZ)V

    return-void
.end method

.method public setSelectionRange(II)V
    .locals 2

    iget-object v0, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, v1}, Lb/b/a/a/r$a;->a(IIZZ)V

    return-void
.end method

.method public setShowLineNumbers(Z)V
    .locals 0

    iput-boolean p1, p0, Lb/b/a/a/r;->D:Z

    return-void
.end method

.method public setTabSpaces(I)V
    .locals 0

    if-gez p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lb/b/a/a/r;->m:I

    iget-object p1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1}, Lb/b/a/b/g;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1}, Lb/b/a/b/g;->a()V

    :cond_1
    iget-object p1, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {p1}, Lb/b/a/a/r$a;->j()V

    iget p1, p0, Lb/b/a/a/r;->j:I

    invoke-direct {p0, p1}, Lb/b/a/a/r;->i(I)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setTextSize(I)V
    .locals 10

    const/16 v0, 0x8

    if-le p1, v0, :cond_2

    const/16 v0, 0x50

    if-ge p1, v0, :cond_2

    int-to-float v0, p1

    iget-object v1, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lb/b/a/a/r;->d()I

    move-result v1

    int-to-double v1, v1

    const/16 v3, 0x61

    invoke-virtual {p0, v3}, Lb/b/a/a/r;->getAdvance(C)I

    move-result v4

    int-to-double v4, v4

    sget v6, Lb/b/a/a/r;->c:I

    div-int/2addr p1, v6

    int-to-float p1, p1

    iput p1, p0, Lb/b/a/a/r;->G:F

    iget-object p1, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lb/b/a/a/r;->Q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1}, Lb/b/a/b/g;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1}, Lb/b/a/b/g;->a()V

    :cond_1
    iget-object p1, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {p1}, Lb/b/a/a/r$a;->j()V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    int-to-double v6, p1

    invoke-virtual {p0, v3}, Lb/b/a/a/r;->getAdvance(C)I

    move-result p1

    int-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    int-to-double v3, p1

    invoke-virtual {p0}, Lb/b/a/a/r;->d()I

    move-result p1

    int-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v8

    double-to-int p1, v6

    double-to-int v0, v3

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    iget-object p1, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    const-string v0, "a"

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lb/b/a/a/r;->R:I

    iget-object p1, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    const-string v0, "\u00b7"

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lb/b/a/a/r;->W:I

    iget p1, p0, Lb/b/a/a/r;->R:I

    sput p1, Lb/b/a/a/y;->m:I

    sput p1, Lb/b/a/a/x;->m:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iput-object p1, p0, Lb/b/a/a/r;->L:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lb/b/a/a/r;->M:Landroid/graphics/Typeface;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lb/b/a/a/r;->N:Landroid/graphics/Typeface;

    iget-object v0, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lb/b/a/a/r;->Q:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1}, Lb/b/a/b/g;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1}, Lb/b/a/b/g;->a()V

    :cond_0
    iget-object p1, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {p1}, Lb/b/a/a/r$a;->j()V

    iget p1, p0, Lb/b/a/a/r;->j:I

    invoke-direct {p0, p1}, Lb/b/a/a/r;->i(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setWordWrap(Z)V
    .locals 1

    iget-object v0, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {v0, p1}, Lb/b/a/b/g;->a(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lb/b/a/a/r;->B:I

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    iget-object p1, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {p1}, Lb/b/a/a/r$a;->j()V

    iget p1, p0, Lb/b/a/a/r;->j:I

    invoke-direct {p0, p1}, Lb/b/a/a/r;->i(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setZoom(F)V
    .locals 5

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v0, v2

    if-lez v4, :cond_2

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_2

    iget v0, p0, Lb/b/a/a/r;->G:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lb/b/a/a/r;->G:F

    sget v0, Lb/b/a/a/r;->c:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lb/b/a/a/r;->Q:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1}, Lb/b/a/b/g;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lb/b/a/a/r;->i:Lb/b/a/b/g;

    invoke-virtual {p1}, Lb/b/a/b/g;->a()V

    :cond_1
    iget-object p1, p0, Lb/b/a/a/r;->v:Lb/b/a/a/r$a;

    invoke-virtual {p1}, Lb/b/a/a/r$a;->j()V

    iget-object p1, p0, Lb/b/a/a/r;->A:Landroid/graphics/Paint;

    const-string v0, "a"

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lb/b/a/a/r;->R:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lb/b/a/a/r;->aa:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lb/b/a/a/r;->f:Landroid/widget/Scroller;

    invoke-virtual {v2, v1, v0, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/b/a/a/r;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/b/a/a/r;->f:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollBy(II)V

    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lb/b/a/a/r;->aa:J

    return-void
.end method

.method public final smoothScrollTo(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lb/b/a/a/r;->smoothScrollBy(II)V

    return-void
.end method

.method public stopFlingScrolling()V
    .locals 2

    iget-object v0, p0, Lb/b/a/a/r;->f:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    return-void
.end method
