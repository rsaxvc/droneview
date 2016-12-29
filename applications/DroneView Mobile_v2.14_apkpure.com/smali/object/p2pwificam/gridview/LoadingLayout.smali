.class public Lobject/p2pwificam/gridview/LoadingLayout;
.super Landroid/widget/FrameLayout;
.source "LoadingLayout.java"


# static fields
.field static final DEFAULT_ROTATION_ANIMATION_DURATION:I = 0x96


# instance fields
.field private final headerImage:Landroid/widget/ImageView;

.field private final headerProgress:Landroid/widget/ProgressBar;

.field private final headerText:Landroid/widget/TextView;

.field private pullLabel:Ljava/lang/String;

.field private refreshingLabel:Ljava/lang/String;

.field private releaseLabel:Ljava/lang/String;

.field private final resetRotateAnimation:Landroid/view/animation/Animation;

.field private final rotateAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I
    .param p3, "releaseLabel"    # Ljava/lang/String;
    .param p4, "pullLabel"    # Ljava/lang/String;
    .param p5, "refreshingLabel"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004c

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 34
    .local v7, "header":Landroid/view/ViewGroup;
    const v0, 0x7f0801fd

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/gridview/LoadingLayout;->headerText:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f0801ff

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lobject/p2pwificam/gridview/LoadingLayout;->headerImage:Landroid/widget/ImageView;

    .line 36
    const v0, 0x7f0801fe

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lobject/p2pwificam/gridview/LoadingLayout;->headerProgress:Landroid/widget/ProgressBar;

    .line 38
    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 39
    .local v8, "interpolator":Landroid/view/animation/Interpolator;
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    .line 40
    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 39
    iput-object v0, p0, Lobject/p2pwificam/gridview/LoadingLayout;->rotateAnimation:Landroid/view/animation/Animation;

    .line 41
    iget-object v0, p0, Lobject/p2pwificam/gridview/LoadingLayout;->rotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 42
    iget-object v0, p0, Lobject/p2pwificam/gridview/LoadingLayout;->rotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 43
    iget-object v0, p0, Lobject/p2pwificam/gridview/LoadingLayout;->rotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 45
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3ccc0000    # -180.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 46
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 45
    iput-object v0, p0, Lobject/p2pwificam/gridview/LoadingLayout;->resetRotateAnimation:Landroid/view/animation/Animation;

    .line 47
    iget-object v0, p0, Lobject/p2pwificam/gridview/LoadingLayout;->resetRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 48
    iget-object v0, p0, Lobject/p2pwificam/gridview/LoadingLayout;->resetRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 49
    iget-object v0, p0, Lobject/p2pwificam/gridview/LoadingLayout;->resetRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 51
    iput-object p3, p0, Lobject/p2pwificam/gridview/LoadingLayout;->releaseLabel:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lobject/p2pwificam/gridview/LoadingLayout;->pullLabel:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lobject/p2pwificam/gridview/LoadingLayout;->refreshingLabel:Ljava/lang/String;

    .line 55
    packed-switch p2, :pswitch_data_0

    .line 61
    iget-object v0, p0, Lobject/p2pwificam/gridview/LoadingLayout;->headerImage:Landroid/widget/ImageView;

    const v1, 0x7f020112

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget-object v0, p0, Lobject/p2pwificam/gridview/LoadingLayout;->headerImage:Landroid/widget/ImageView;

    const v1, 0x7f020113

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public pullToRefresh()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lobject/p2pwificam/gridview/LoadingLayout;->headerText:Landroid/widget/TextView;

    iget-object v1, p0, Lobject/p2pwificam/gridview/LoadingLayout;->pullLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lobject/p2pwificam/gridview/LoadingLayout;->headerImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 100
    iget-object v0, p0, Lobject/p2pwificam/gridview/LoadingLayout;->headerImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lobject/p2pwificam/gridview/LoadingLayout;->resetRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 101
    return-void
.end method

.method public refreshing()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lobject/p2pwificam/gridview/LoadingLayout;->headerText:Landroid/widget/TextView;

    iget-object v1, p0, Lobject/p2pwificam/gridview/LoadingLayout;->refreshingLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lobject/p2pwificam/gridview/LoadingLayout;->headerImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 85
    iget-object v0, p0, Lobject/p2pwificam/gridview/LoadingLayout;->headerImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lobject/p2pwificam/gridview/LoadingLayout;->headerProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 87
    return-void
.end method

.method public releaseToRefresh()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lobject/p2pwificam/gridview/LoadingLayout;->headerText:Landroid/widget/TextView;

    iget-object v1, p0, Lobject/p2pwificam/gridview/LoadingLayout;->releaseLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lobject/p2pwificam/gridview/LoadingLayout;->headerImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 75
    iget-object v0, p0, Lobject/p2pwificam/gridview/LoadingLayout;->headerImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lobject/p2pwificam/gridview/LoadingLayout;->rotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 76
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lobject/p2pwificam/gridview/LoadingLayout;->headerText:Landroid/widget/TextView;

    iget-object v1, p0, Lobject/p2pwificam/gridview/LoadingLayout;->pullLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lobject/p2pwificam/gridview/LoadingLayout;->headerImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lobject/p2pwificam/gridview/LoadingLayout;->headerProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 70
    return-void
.end method

.method public setPullLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "pullLabel"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lobject/p2pwificam/gridview/LoadingLayout;->pullLabel:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "refreshingLabel"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lobject/p2pwificam/gridview/LoadingLayout;->refreshingLabel:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "releaseLabel"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lobject/p2pwificam/gridview/LoadingLayout;->releaseLabel:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lobject/p2pwificam/gridview/LoadingLayout;->headerText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    return-void
.end method
