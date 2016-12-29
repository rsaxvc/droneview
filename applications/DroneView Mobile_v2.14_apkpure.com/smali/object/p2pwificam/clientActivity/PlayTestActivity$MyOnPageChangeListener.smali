.class public Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;
.super Ljava/lang/Object;
.source "PlayTestActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnPageChangeListener"
.end annotation


# instance fields
.field one:I

.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

.field two:I


# direct methods
.method public constructor <init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V
    .locals 2

    .prologue
    .line 742
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->offset:I
    invoke-static {p1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$88(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->bmpW:I
    invoke-static {p1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$89(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;->one:I

    .line 745
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;->one:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;->two:I

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 796
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 792
    return-void
.end method

.method public onPageSelected(I)V
    .locals 7
    .param p1, "arg0"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v6, -0x1

    const v5, -0xffff01

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 749
    const/4 v0, 0x0

    .line 750
    .local v0, "animation":Landroid/view/animation/Animation;
    packed-switch p1, :pswitch_data_0

    .line 773
    :cond_0
    :goto_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    invoke-static {v1, p1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$91(Lobject/p2pwificam/clientActivity/PlayTestActivity;I)V

    .line 774
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->currIndex:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$90(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v1

    if-nez v1, :cond_4

    .line 775
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->t1:Landroid/widget/TextView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$92(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 776
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->t2:Landroid/widget/TextView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$93(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 785
    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 786
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 787
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->cursorxx:Landroid/widget/ImageView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$94(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 788
    return-void

    .line 752
    :pswitch_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->currIndex:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$90(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 753
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;->one:I

    int-to-float v1, v1

    invoke-direct {v0, v1, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 754
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    goto :goto_0

    :cond_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->currIndex:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$90(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 755
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;->two:I

    int-to-float v1, v1

    invoke-direct {v0, v1, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 757
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    goto :goto_0

    .line 759
    :pswitch_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->currIndex:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$90(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v1

    if-nez v1, :cond_2

    .line 760
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->offset:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$88(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;->one:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 761
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    goto :goto_0

    :cond_2
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->currIndex:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$90(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 762
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;->two:I

    int-to-float v1, v1

    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;->one:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 764
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    goto :goto_0

    .line 766
    :pswitch_2
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->currIndex:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$90(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v1

    if-nez v1, :cond_3

    .line 767
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->offset:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$88(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;->two:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 768
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->currIndex:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$90(Lobject/p2pwificam/clientActivity/PlayTestActivity;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 769
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;->one:I

    int-to-float v1, v1

    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;->two:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v0    # "animation":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 780
    :cond_4
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->t2:Landroid/widget/TextView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$93(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 781
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayTestActivity;->t1:Landroid/widget/TextView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->access$92(Lobject/p2pwificam/clientActivity/PlayTestActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 750
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
