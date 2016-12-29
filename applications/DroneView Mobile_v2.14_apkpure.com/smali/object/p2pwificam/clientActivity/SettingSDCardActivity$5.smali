.class Lobject/p2pwificam/clientActivity/SettingSDCardActivity$5;
.super Ljava/lang/Object;
.source "SettingSDCardActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$5;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$5;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->recodeModeMenu:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->access$10(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 269
    return-void
.end method
