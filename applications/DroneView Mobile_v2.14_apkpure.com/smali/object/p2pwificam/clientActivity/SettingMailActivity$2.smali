.class Lobject/p2pwificam/clientActivity/SettingMailActivity$2;
.super Ljava/lang/Object;
.source "SettingMailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/SettingMailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingMailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->successFlag:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$14(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingMailActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingMailActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingMailActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingMailActivity;->access$1(Lobject/p2pwificam/clientActivity/SettingMailActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 177
    :cond_0
    return-void
.end method
