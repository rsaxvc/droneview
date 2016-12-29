.class public Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;
.super Ljava/lang/Object;
.source "PlayAlarmActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayAlarmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnPageChangeListener"
.end annotation


# instance fields
.field one:I

.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

.field two:I


# direct methods
.method public constructor <init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V
    .locals 2

    .prologue
    .line 662
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->offset:I
    invoke-static {p1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$88(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->bmpW:I
    invoke-static {p1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$89(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;->one:I

    .line 665
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;->one:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;->two:I

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 716
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 712
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

    .line 669
    const/4 v0, 0x0

    .line 670
    .local v0, "animation":Landroid/view/animation/Animation;
    packed-switch p1, :pswitch_data_0

    .line 693
    :cond_0
    :goto_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    invoke-static {v1, p1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$91(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;I)V

    .line 694
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->currIndex:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$90(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v1

    if-nez v1, :cond_4

    .line 695
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->t1:Landroid/widget/TextView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$92(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 696
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->t2:Landroid/widget/TextView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$93(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 705
    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 706
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 707
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->cursorxx:Landroid/widget/ImageView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$94(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 708
    return-void

    .line 672
    :pswitch_0
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->currIndex:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$90(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 673
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;->one:I

    int-to-float v1, v1

    invoke-direct {v0, v1, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 674
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    goto :goto_0

    :cond_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->currIndex:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$90(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 675
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;->two:I

    int-to-float v1, v1

    invoke-direct {v0, v1, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 677
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    goto :goto_0

    .line 679
    :pswitch_1
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->currIndex:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$90(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v1

    if-nez v1, :cond_2

    .line 680
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->offset:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$88(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;->one:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 681
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    goto :goto_0

    :cond_2
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->currIndex:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$90(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 682
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;->two:I

    int-to-float v1, v1

    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;->one:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 684
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    goto :goto_0

    .line 686
    :pswitch_2
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->currIndex:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$90(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v1

    if-nez v1, :cond_3

    .line 687
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->offset:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$88(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;->two:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 688
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->currIndex:I
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$90(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 689
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;->one:I

    int-to-float v1, v1

    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;->two:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v0    # "animation":Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 700
    :cond_4
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->t2:Landroid/widget/TextView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$93(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 701
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$MyOnPageChangeListener;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->t1:Landroid/widget/TextView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->access$92(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 670
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
