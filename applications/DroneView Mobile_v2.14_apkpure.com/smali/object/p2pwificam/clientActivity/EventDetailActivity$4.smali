.class Lobject/p2pwificam/clientActivity/EventDetailActivity$4;
.super Ljava/lang/Object;
.source "EventDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/EventDetailActivity;->initMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/EventDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$4;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    .line 297
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 298
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$4;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/EventDetailActivity;->menu:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->access$5(Lobject/p2pwificam/clientActivity/EventDetailActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 300
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
