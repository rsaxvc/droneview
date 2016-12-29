.class public Lobject/p2pwificam/clientActivity/PlayActivity$MyOnClickListener;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/PlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnClickListener"
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayActivity;


# direct methods
.method public constructor <init>(Lobject/p2pwificam/clientActivity/PlayActivity;I)V
    .locals 1
    .param p2, "i"    # I

    .prologue
    .line 709
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyOnClickListener;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 707
    const/4 v0, 0x0

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyOnClickListener;->index:I

    .line 710
    iput p2, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyOnClickListener;->index:I

    .line 712
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 716
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyOnClickListener;->this$0:Lobject/p2pwificam/clientActivity/PlayActivity;

    # getter for: Lobject/p2pwificam/clientActivity/PlayActivity;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/PlayActivity;->access$113(Lobject/p2pwificam/clientActivity/PlayActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayActivity$MyOnClickListener;->index:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 717
    return-void
.end method
