.class public abstract Lobject/p2pwificam/gridview/PullToRefreshBase;
.super Landroid/widget/LinearLayout;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/gridview/PullToRefreshBase$OnLastItemVisibleListener;,
        Lobject/p2pwificam/gridview/PullToRefreshBase$OnRefreshListener;,
        Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;"
    }
.end annotation


# static fields
.field static final FRICTION:F = 2.0f

.field static final MANUAL_REFRESHING:I = 0x3

.field public static final MODE_BOTH:I = 0x3

.field public static final MODE_PULL_DOWN_TO_REFRESH:I = 0x1

.field public static final MODE_PULL_UP_TO_REFRESH:I = 0x2

.field static final PULL_TO_REFRESH:I = 0x0

.field static final REFRESHING:I = 0x2

.field static final RELEASE_TO_REFRESH:I = 0x1


# instance fields
.field private currentMode:I

.field private currentSmoothScrollRunnable:Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lobject/p2pwificam/gridview/PullToRefreshBase",
            "<TT;>.SmoothScrollRunnable;"
        }
    .end annotation
.end field

.field private disableScrollingWhileRefreshing:Z

.field private footerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

.field private final handler:Landroid/os/Handler;

.field private headerHeight:I

.field private headerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

.field private initialMotionY:F

.field private isBeingDragged:Z

.field private isPullToRefreshEnabled:Z

.field private lastMotionX:F

.field private lastMotionY:F

.field private mode:I

.field private onRefreshListener:Lobject/p2pwificam/gridview/PullToRefreshBase$OnRefreshListener;

.field refreshableView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private state:I

.field private touchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 127
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 101
    iput-boolean v1, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->isBeingDragged:Z

    .line 103
    iput v1, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->state:I

    .line 104
    iput v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->mode:I

    .line 107
    iput-boolean v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->disableScrollingWhileRefreshing:Z

    .line 110
    iput-boolean v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->isPullToRefreshEnabled:Z

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->handler:Landroid/os/Handler;

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 132
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 101
    iput-boolean v1, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->isBeingDragged:Z

    .line 103
    iput v1, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->state:I

    .line 104
    iput v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->mode:I

    .line 107
    iput-boolean v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->disableScrollingWhileRefreshing:Z

    .line 110
    iput-boolean v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->isPullToRefreshEnabled:Z

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->handler:Landroid/os/Handler;

    .line 133
    iput p2, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->mode:I

    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 138
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    iput-boolean v1, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->isBeingDragged:Z

    .line 103
    iput v1, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->state:I

    .line 104
    iput v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->mode:I

    .line 107
    iput-boolean v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->disableScrollingWhileRefreshing:Z

    .line 110
    iput-boolean v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->isPullToRefreshEnabled:Z

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->handler:Landroid/os/Handler;

    .line 139
    invoke-direct {p0, p1, p2}, Lobject/p2pwificam/gridview/PullToRefreshBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 533
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->setOrientation(I)V

    .line 535
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    iput v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->touchSlop:I

    .line 538
    sget-object v0, Lobject/easyview/drone/R$styleable;->PullToRefresh:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 539
    .local v6, "a":Landroid/content/res/TypedArray;
    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->mode:I

    .line 545
    :cond_0
    invoke-virtual {p0, p1, p2}, Lobject/p2pwificam/gridview/PullToRefreshBase;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->refreshableView:Landroid/view/View;

    .line 546
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->refreshableView:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->addRefreshableView(Landroid/content/Context;Landroid/view/View;)V

    .line 549
    const v0, 0x7f0601bb

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 550
    .local v4, "pullLabel":Ljava/lang/String;
    const v0, 0x7f0601bd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 551
    .local v5, "refreshingLabel":Ljava/lang/String;
    const v0, 0x7f0601bc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 554
    .local v3, "releaseLabel":Ljava/lang/String;
    iget v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 555
    :cond_1
    new-instance v0, Lobject/p2pwificam/gridview/LoadingLayout;

    const/4 v2, 0x1

    move-object v1, p1

    .line 556
    invoke-direct/range {v0 .. v5}, Lobject/p2pwificam/gridview/LoadingLayout;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iput-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    .line 557
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    const/4 v1, 0x0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    .line 558
    const/4 v9, -0x2

    invoke-direct {v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 557
    invoke-virtual {p0, v0, v1, v2}, Lobject/p2pwificam/gridview/PullToRefreshBase;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 559
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    invoke-direct {p0, v0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->measureView(Landroid/view/View;)V

    .line 560
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    invoke-virtual {v0}, Lobject/p2pwificam/gridview/LoadingLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerHeight:I

    .line 562
    :cond_2
    iget v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 563
    :cond_3
    new-instance v0, Lobject/p2pwificam/gridview/LoadingLayout;

    const/4 v2, 0x2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lobject/p2pwificam/gridview/LoadingLayout;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->footerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    .line 564
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->footerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    .line 565
    const/4 v8, -0x2

    invoke-direct {v1, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 564
    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/gridview/PullToRefreshBase;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->footerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    invoke-direct {p0, v0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->measureView(Landroid/view/View;)V

    .line 567
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->footerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    invoke-virtual {v0}, Lobject/p2pwificam/gridview/LoadingLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerHeight:I

    .line 571
    :cond_4
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 572
    const/4 v0, 0x2

    const/high16 v1, -0x1000000

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 573
    .local v7, "color":I
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    if-eqz v0, :cond_5

    .line 574
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    invoke-virtual {v0, v7}, Lobject/p2pwificam/gridview/LoadingLayout;->setTextColor(I)V

    .line 576
    :cond_5
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->footerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    if-eqz v0, :cond_6

    .line 577
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->footerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    invoke-virtual {v0, v7}, Lobject/p2pwificam/gridview/LoadingLayout;->setTextColor(I)V

    .line 580
    .end local v7    # "color":I
    :cond_6
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 581
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->setBackgroundResource(I)V

    .line 583
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 584
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->refreshableView:Landroid/view/View;

    const/4 v1, 0x0

    .line 585
    const/4 v2, -0x1

    .line 584
    invoke-virtual {v6, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 587
    :cond_8
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 590
    iget v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->mode:I

    packed-switch v0, :pswitch_data_0

    .line 599
    const/4 v0, 0x0

    iget v1, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerHeight:I

    neg-int v1, v1

    const/4 v2, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v0, v1, v2, v8}, Lobject/p2pwificam/gridview/PullToRefreshBase;->setPadding(IIII)V

    .line 605
    :goto_0
    iget v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->mode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    .line 606
    iget v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->mode:I

    iput v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->currentMode:I

    .line 608
    :cond_9
    return-void

    .line 592
    :pswitch_0
    const/4 v0, 0x0

    iget v1, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerHeight:I

    neg-int v1, v1

    const/4 v2, 0x0

    iget v8, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerHeight:I

    neg-int v8, v8

    invoke-virtual {p0, v0, v1, v2, v8}, Lobject/p2pwificam/gridview/PullToRefreshBase;->setPadding(IIII)V

    goto :goto_0

    .line 595
    :pswitch_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v8, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerHeight:I

    neg-int v8, v8

    invoke-virtual {p0, v0, v1, v2, v8}, Lobject/p2pwificam/gridview/PullToRefreshBase;->setPadding(IIII)V

    goto :goto_0

    .line 590
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isReadyForPull()Z
    .locals 2

    .prologue
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    .line 687
    iget v1, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->mode:I

    packed-switch v1, :pswitch_data_0

    .line 695
    :cond_0
    :goto_0
    return v0

    .line 689
    :pswitch_0
    invoke-virtual {p0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->isReadyForPullDown()Z

    move-result v0

    goto :goto_0

    .line 691
    :pswitch_1
    invoke-virtual {p0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->isReadyForPullUp()Z

    move-result v0

    goto :goto_0

    .line 693
    :pswitch_2
    invoke-virtual {p0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->isReadyForPullUp()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->isReadyForPullDown()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 687
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private measureView(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    const/4 v6, 0x0

    .line 611
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 612
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 613
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 616
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 617
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 619
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 620
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 624
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 625
    return-void

    .line 622
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private pullEvent()Z
    .locals 8

    .prologue
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    const/4 v3, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 636
    invoke-virtual {p0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->getScrollY()I

    move-result v1

    .line 638
    .local v1, "oldHeight":I
    iget v4, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->currentMode:I

    packed-switch v4, :pswitch_data_0

    .line 645
    iget v4, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->initialMotionY:F

    iget v5, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->lastMotionY:F

    sub-float/2addr v4, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 650
    .local v0, "newHeight":I
    :goto_0
    invoke-virtual {p0, v0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->setHeaderScroll(I)V

    .line 652
    if-eqz v0, :cond_2

    .line 653
    iget v4, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->state:I

    if-nez v4, :cond_1

    iget v4, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerHeight:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 654
    iput v2, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->state:I

    .line 656
    iget v3, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->currentMode:I

    packed-switch v3, :pswitch_data_1

    .line 683
    :cond_0
    :goto_1
    return v2

    .line 640
    .end local v0    # "newHeight":I
    :pswitch_0
    iget v4, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->initialMotionY:F

    iget v5, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->lastMotionY:F

    sub-float/2addr v4, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    div-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 642
    .restart local v0    # "newHeight":I
    goto :goto_0

    .line 658
    :pswitch_1
    iget-object v3, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->footerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    invoke-virtual {v3}, Lobject/p2pwificam/gridview/LoadingLayout;->releaseToRefresh()V

    goto :goto_1

    .line 661
    :pswitch_2
    iget-object v3, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    invoke-virtual {v3}, Lobject/p2pwificam/gridview/LoadingLayout;->releaseToRefresh()V

    goto :goto_1

    .line 667
    :cond_1
    iget v4, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->state:I

    if-ne v4, v2, :cond_2

    iget v4, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerHeight:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 668
    iput v3, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->state:I

    .line 670
    iget v3, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->currentMode:I

    packed-switch v3, :pswitch_data_2

    goto :goto_1

    .line 675
    :pswitch_3
    iget-object v3, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    invoke-virtual {v3}, Lobject/p2pwificam/gridview/LoadingLayout;->pullToRefresh()V

    goto :goto_1

    .line 672
    :pswitch_4
    iget-object v3, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->footerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    invoke-virtual {v3}, Lobject/p2pwificam/gridview/LoadingLayout;->pullToRefresh()V

    goto :goto_1

    .line 683
    :cond_2
    if-ne v1, v0, :cond_0

    move v2, v3

    goto :goto_1

    .line 638
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 656
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 670
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected addRefreshableView(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    .local p2, "refreshableView":Landroid/view/View;, "TT;"
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, p2, v0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    return-void
.end method

.method protected abstract createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation
.end method

.method public final getAdapterView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->refreshableView:Landroid/view/View;

    return-object v0
.end method

.method protected final getCurrentMode()I
    .locals 1

    .prologue
    .line 446
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    iget v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->currentMode:I

    return v0
.end method

.method protected final getFooterLayout()Lobject/p2pwificam/gridview/LoadingLayout;
    .locals 1

    .prologue
    .line 450
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->footerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    return-object v0
.end method

.method protected final getHeaderHeight()I
    .locals 1

    .prologue
    .line 458
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    iget v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerHeight:I

    return v0
.end method

.method protected final getHeaderLayout()Lobject/p2pwificam/gridview/LoadingLayout;
    .locals 1

    .prologue
    .line 454
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    return-object v0
.end method

.method protected final getMode()I
    .locals 1

    .prologue
    .line 462
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    iget v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->mode:I

    return v0
.end method

.method public final getRefreshableView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->refreshableView:Landroid/view/View;

    return-object v0
.end method

.method public final hasPullFromTop()Z
    .locals 2

    .prologue
    .line 300
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    iget v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->currentMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDisableScrollingWhileRefreshing()Z
    .locals 1

    .prologue
    .line 182
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->disableScrollingWhileRefreshing:Z

    return v0
.end method

.method public final isPullToRefreshEnabled()Z
    .locals 1

    .prologue
    .line 172
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    iget-boolean v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->isPullToRefreshEnabled:Z

    return v0
.end method

.method protected abstract isReadyForPullDown()Z
.end method

.method protected abstract isReadyForPullUp()Z
.end method

.method public final isRefreshing()Z
    .locals 2

    .prologue
    .line 191
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    iget v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    const/4 v10, 0x2

    const v9, 0x38d1b717    # 1.0E-4f

    const/4 v5, 0x0

    const/4 v8, 0x3

    const/4 v6, 0x1

    .line 363
    iget-boolean v7, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->isPullToRefreshEnabled:Z

    if-nez v7, :cond_0

    .line 421
    :goto_0
    return v5

    .line 367
    :cond_0
    invoke-virtual {p0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->isRefreshing()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->disableScrollingWhileRefreshing:Z

    if-eqz v7, :cond_1

    move v5, v6

    .line 368
    goto :goto_0

    .line 371
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 373
    .local v0, "action":I
    if-eq v0, v8, :cond_2

    if-ne v0, v6, :cond_3

    .line 374
    :cond_2
    iput-boolean v5, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->isBeingDragged:Z

    goto :goto_0

    .line 378
    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v7, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->isBeingDragged:Z

    if-eqz v7, :cond_4

    move v5, v6

    .line 379
    goto :goto_0

    .line 382
    :cond_4
    packed-switch v0, :pswitch_data_0

    .line 421
    :cond_5
    :goto_1
    :pswitch_0
    iget-boolean v5, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->isBeingDragged:Z

    goto :goto_0

    .line 384
    :pswitch_1
    invoke-direct {p0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->isReadyForPull()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 387
    .local v3, "y":F
    iget v5, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->lastMotionY:F

    sub-float v1, v3, v5

    .line 388
    .local v1, "dy":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 389
    .local v4, "yDiff":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v7, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->lastMotionX:F

    sub-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 391
    .local v2, "xDiff":F
    iget v5, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->touchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_5

    cmpl-float v5, v4, v2

    if-lez v5, :cond_5

    .line 392
    iget v5, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->mode:I

    if-eq v5, v6, :cond_6

    iget v5, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->mode:I

    if-ne v5, v8, :cond_7

    :cond_6
    cmpl-float v5, v1, v9

    if-ltz v5, :cond_7

    .line 393
    invoke-virtual {p0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->isReadyForPullDown()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 394
    iput v3, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->lastMotionY:F

    .line 395
    iput-boolean v6, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->isBeingDragged:Z

    .line 396
    iget v5, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->mode:I

    if-ne v5, v8, :cond_5

    .line 397
    iput v6, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->currentMode:I

    goto :goto_1

    .line 399
    :cond_7
    iget v5, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->mode:I

    if-eq v5, v10, :cond_8

    iget v5, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->mode:I

    if-ne v5, v8, :cond_5

    :cond_8
    cmpg-float v5, v1, v9

    if-gtz v5, :cond_5

    .line 400
    invoke-virtual {p0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->isReadyForPullUp()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 401
    iput v3, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->lastMotionY:F

    .line 402
    iput-boolean v6, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->isBeingDragged:Z

    .line 403
    iget v5, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->mode:I

    if-ne v5, v8, :cond_5

    .line 404
    iput v10, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->currentMode:I

    goto :goto_1

    .line 412
    .end local v1    # "dy":F
    .end local v2    # "xDiff":F
    .end local v3    # "y":F
    .end local v4    # "yDiff":F
    :pswitch_2
    invoke-direct {p0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->isReadyForPull()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 413
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->initialMotionY:F

    iput v6, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->lastMotionY:F

    .line 414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->lastMotionX:F

    .line 415
    iput-boolean v5, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->isBeingDragged:Z

    goto :goto_1

    .line 382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onRefreshComplete()V
    .locals 1

    .prologue
    .line 210
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    iget v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->state:I

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->resetHeader()V

    .line 213
    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 309
    iget-boolean v2, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->isPullToRefreshEnabled:Z

    if-nez v2, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v0

    .line 313
    :cond_1
    invoke-virtual {p0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->isRefreshing()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->disableScrollingWhileRefreshing:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 314
    goto :goto_0

    .line 317
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-nez v2, :cond_0

    .line 321
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 333
    :pswitch_0
    invoke-direct {p0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->isReadyForPull()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->initialMotionY:F

    iput v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->lastMotionY:F

    move v0, v1

    .line 335
    goto :goto_0

    .line 324
    :pswitch_1
    iget-boolean v2, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->isBeingDragged:Z

    if-eqz v2, :cond_0

    .line 325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->lastMotionY:F

    .line 326
    invoke-direct {p0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->pullEvent()Z

    move v0, v1

    .line 327
    goto :goto_0

    .line 342
    :pswitch_2
    iget-boolean v2, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->isBeingDragged:Z

    if-eqz v2, :cond_0

    .line 343
    iput-boolean v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->isBeingDragged:Z

    .line 345
    iget v2, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->state:I

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->onRefreshListener:Lobject/p2pwificam/gridview/PullToRefreshBase$OnRefreshListener;

    if-eqz v2, :cond_4

    .line 346
    invoke-virtual {p0, v1}, Lobject/p2pwificam/gridview/PullToRefreshBase;->setRefreshingInternal(Z)V

    .line 347
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->onRefreshListener:Lobject/p2pwificam/gridview/PullToRefreshBase$OnRefreshListener;

    invoke-interface {v0}, Lobject/p2pwificam/gridview/PullToRefreshBase$OnRefreshListener;->onRefresh()V

    :goto_1
    move v0, v1

    .line 351
    goto :goto_0

    .line 349
    :cond_4
    invoke-virtual {p0, v0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->smoothScrollTo(I)V

    goto :goto_1

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected resetHeader()V
    .locals 2

    .prologue
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    const/4 v1, 0x0

    .line 488
    iput v1, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->state:I

    .line 489
    iput-boolean v1, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->isBeingDragged:Z

    .line 491
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    invoke-virtual {v0}, Lobject/p2pwificam/gridview/LoadingLayout;->reset()V

    .line 494
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->footerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->footerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    invoke-virtual {v0}, Lobject/p2pwificam/gridview/LoadingLayout;->reset()V

    .line 498
    :cond_1
    invoke-virtual {p0, v1}, Lobject/p2pwificam/gridview/PullToRefreshBase;->smoothScrollTo(I)V

    .line 499
    return-void
.end method

.method public final setDisableScrollingWhileRefreshing(Z)V
    .locals 0
    .param p1, "disableScrollingWhileRefreshing"    # Z

    .prologue
    .line 202
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->disableScrollingWhileRefreshing:Z

    .line 203
    return-void
.end method

.method protected final setHeaderScroll(I)V
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 517
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lobject/p2pwificam/gridview/PullToRefreshBase;->scrollTo(II)V

    .line 518
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 1
    .param p1, "longClickable"    # Z

    .prologue
    .line 716
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 717
    return-void
.end method

.method public final setOnRefreshListener(Lobject/p2pwificam/gridview/PullToRefreshBase$OnRefreshListener;)V
    .locals 0

    .prologue
    .line 222
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    .local p1, "listener":Lobject/p2pwificam/gridview/PullToRefreshBase$OnRefreshListener;, "Lobject/p2pwificam/gridview/PullToRefreshBase$OnRefreshListener;"
    iput-object p1, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->onRefreshListener:Lobject/p2pwificam/gridview/PullToRefreshBase$OnRefreshListener;

    .line 223
    return-void
.end method

.method public setPullLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "pullLabel"    # Ljava/lang/String;

    .prologue
    .line 258
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    invoke-virtual {v0, p1}, Lobject/p2pwificam/gridview/LoadingLayout;->setPullLabel(Ljava/lang/String;)V

    .line 261
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->footerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->footerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    invoke-virtual {v0, p1}, Lobject/p2pwificam/gridview/LoadingLayout;->setPullLabel(Ljava/lang/String;)V

    .line 264
    :cond_1
    return-void
.end method

.method public final setPullToRefreshEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 232
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    iput-boolean p1, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->isPullToRefreshEnabled:Z

    .line 233
    return-void
.end method

.method public final setRefreshing()V
    .locals 1

    .prologue
    .line 282
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->setRefreshing(Z)V

    .line 283
    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 1
    .param p1, "doScroll"    # Z

    .prologue
    .line 293
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    invoke-virtual {p0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    invoke-virtual {p0, p1}, Lobject/p2pwificam/gridview/PullToRefreshBase;->setRefreshingInternal(Z)V

    .line 295
    const/4 v0, 0x3

    iput v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->state:I

    .line 297
    :cond_0
    return-void
.end method

.method protected setRefreshingInternal(Z)V
    .locals 2
    .param p1, "doScroll"    # Z

    .prologue
    .line 502
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    const/4 v0, 0x2

    iput v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->state:I

    .line 504
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    invoke-virtual {v0}, Lobject/p2pwificam/gridview/LoadingLayout;->refreshing()V

    .line 507
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->footerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->footerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    invoke-virtual {v0}, Lobject/p2pwificam/gridview/LoadingLayout;->refreshing()V

    .line 511
    :cond_1
    if-eqz p1, :cond_2

    .line 512
    iget v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->currentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerHeight:I

    neg-int v0, v0

    :goto_0
    invoke-virtual {p0, v0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->smoothScrollTo(I)V

    .line 514
    :cond_2
    return-void

    .line 512
    :cond_3
    iget v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerHeight:I

    goto :goto_0
.end method

.method public setRefreshingLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "refreshingLabel"    # Ljava/lang/String;

    .prologue
    .line 273
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    invoke-virtual {v0, p1}, Lobject/p2pwificam/gridview/LoadingLayout;->setRefreshingLabel(Ljava/lang/String;)V

    .line 276
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->footerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->footerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    invoke-virtual {v0, p1}, Lobject/p2pwificam/gridview/LoadingLayout;->setRefreshingLabel(Ljava/lang/String;)V

    .line 279
    :cond_1
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "releaseLabel"    # Ljava/lang/String;

    .prologue
    .line 243
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->headerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    invoke-virtual {v0, p1}, Lobject/p2pwificam/gridview/LoadingLayout;->setReleaseLabel(Ljava/lang/String;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->footerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->footerLayout:Lobject/p2pwificam/gridview/LoadingLayout;

    invoke-virtual {v0, p1}, Lobject/p2pwificam/gridview/LoadingLayout;->setReleaseLabel(Ljava/lang/String;)V

    .line 249
    :cond_1
    return-void
.end method

.method protected final smoothScrollTo(I)V
    .locals 3
    .param p1, "y"    # I

    .prologue
    .line 521
    .local p0, "this":Lobject/p2pwificam/gridview/PullToRefreshBase;, "Lobject/p2pwificam/gridview/PullToRefreshBase<TT;>;"
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->currentSmoothScrollRunnable:Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->currentSmoothScrollRunnable:Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {v0}, Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;->stop()V

    .line 525
    :cond_0
    invoke-virtual {p0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->getScrollY()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 526
    new-instance v0, Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;

    iget-object v1, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->handler:Landroid/os/Handler;

    invoke-virtual {p0}, Lobject/p2pwificam/gridview/PullToRefreshBase;->getScrollY()I

    move-result v2

    invoke-direct {v0, p0, v1, v2, p1}, Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;-><init>(Lobject/p2pwificam/gridview/PullToRefreshBase;Landroid/os/Handler;II)V

    iput-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->currentSmoothScrollRunnable:Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;

    .line 527
    iget-object v0, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pwificam/gridview/PullToRefreshBase;->currentSmoothScrollRunnable:Lobject/p2pwificam/gridview/PullToRefreshBase$SmoothScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 529
    :cond_1
    return-void
.end method
