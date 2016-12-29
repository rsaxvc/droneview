.class Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$2;
.super Ljava/lang/Object;
.source "SettingLCDCtrlActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingLCDCtrlActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 151
    :cond_0
    return-void
.end method
