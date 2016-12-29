.class Lobject/p2pwificam/clientActivity/MainMUActivity$5;
.super Ljava/lang/Object;
.source "MainMUActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/MainMUActivity;->initMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/MainMUActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/MainMUActivity$5;->this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    .line 262
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity$5;->this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;

    # getter for: Lobject/p2pwificam/clientActivity/MainMUActivity;->menu:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/MainMUActivity;->access$4(Lobject/p2pwificam/clientActivity/MainMUActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 265
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
