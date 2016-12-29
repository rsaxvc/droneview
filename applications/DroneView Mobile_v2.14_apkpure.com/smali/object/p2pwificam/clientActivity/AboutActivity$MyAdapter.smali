.class public Lobject/p2pwificam/clientActivity/AboutActivity$MyAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "AboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/AboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/AboutActivity;


# direct methods
.method public constructor <init>(Lobject/p2pwificam/clientActivity/AboutActivity;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/AboutActivity$MyAdapter;->this$0:Lobject/p2pwificam/clientActivity/AboutActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 295
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/View;
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AboutActivity$MyAdapter;->this$0:Lobject/p2pwificam/clientActivity/AboutActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AboutActivity;->mImageViews:[Landroid/widget/ImageView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/AboutActivity;->access$0(Lobject/p2pwificam/clientActivity/AboutActivity;)[Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AboutActivity$MyAdapter;->this$0:Lobject/p2pwificam/clientActivity/AboutActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AboutActivity;->mImageViews:[Landroid/widget/ImageView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/AboutActivity;->access$0(Lobject/p2pwificam/clientActivity/AboutActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p2, v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 297
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 312
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 285
    const v0, 0x7fffffff

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 304
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/View;
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AboutActivity$MyAdapter;->this$0:Lobject/p2pwificam/clientActivity/AboutActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AboutActivity;->mImageViews:[Landroid/widget/ImageView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/AboutActivity;->access$0(Lobject/p2pwificam/clientActivity/AboutActivity;)[Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AboutActivity$MyAdapter;->this$0:Lobject/p2pwificam/clientActivity/AboutActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AboutActivity;->mImageViews:[Landroid/widget/ImageView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/AboutActivity;->access$0(Lobject/p2pwificam/clientActivity/AboutActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p2, v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 305
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AboutActivity$MyAdapter;->this$0:Lobject/p2pwificam/clientActivity/AboutActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AboutActivity;->mImageViews:[Landroid/widget/ImageView;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/AboutActivity;->access$0(Lobject/p2pwificam/clientActivity/AboutActivity;)[Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AboutActivity$MyAdapter;->this$0:Lobject/p2pwificam/clientActivity/AboutActivity;

    # getter for: Lobject/p2pwificam/clientActivity/AboutActivity;->mImageViews:[Landroid/widget/ImageView;
    invoke-static {v1}, Lobject/p2pwificam/clientActivity/AboutActivity;->access$0(Lobject/p2pwificam/clientActivity/AboutActivity;)[Landroid/widget/ImageView;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p2, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 290
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Parcelable;
    .param p2, "arg1"    # Ljava/lang/ClassLoader;

    .prologue
    .line 318
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 330
    return-void
.end method
