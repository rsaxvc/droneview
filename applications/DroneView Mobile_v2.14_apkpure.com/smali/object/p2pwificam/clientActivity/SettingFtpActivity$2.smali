.class Lobject/p2pwificam/clientActivity/SettingFtpActivity$2;
.super Ljava/lang/Object;
.source "SettingFtpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/SettingFtpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingFtpActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingFtpActivity;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingFtpActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingFtpActivity;->successFlag:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->access$7(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingFtpActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingFtpActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingFtpActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingFtpActivity;->access$1(Lobject/p2pwificam/clientActivity/SettingFtpActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 123
    :cond_0
    return-void
.end method
