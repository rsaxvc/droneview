.class Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity$2;
.super Ljava/lang/Object;
.source "SettingIOSwitchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingIOSwitchActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 135
    :cond_0
    return-void
.end method
