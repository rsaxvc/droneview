.class Lobject/p2pwificam/clientActivity/SettingSDCardActivity$6;
.super Ljava/lang/Object;
.source "SettingSDCardActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->initRecodeModeMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$6;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    .line 275
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 276
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$6;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->recodeModeMenu:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->access$10(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 278
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
