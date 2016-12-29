.class public final Lobject/easyview/drone/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/easyview/drone/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final PullToRefresh:[I

.field public static final PullToRefresh_adapterViewBackground:I = 0x0

.field public static final PullToRefresh_headerBackground:I = 0x1

.field public static final PullToRefresh_headerTextColor:I = 0x2

.field public static final PullToRefresh_mode:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2246
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lobject/easyview/drone/R$styleable;->PullToRefresh:[I

    .line 2305
    return-void

    .line 2246
    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
