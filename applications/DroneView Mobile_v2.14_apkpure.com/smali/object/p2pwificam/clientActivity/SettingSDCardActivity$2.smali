.class Lobject/p2pwificam/clientActivity/SettingSDCardActivity$2;
.super Ljava/lang/Object;
.source "SettingSDCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/SettingSDCardActivity;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->successFlag:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->access$8(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->access$0(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;Z)V

    .line 171
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/SettingSDCardActivity$2;->this$0:Lobject/p2pwificam/clientActivity/SettingSDCardActivity;

    # getter for: Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/SettingSDCardActivity;->access$1(Lobject/p2pwificam/clientActivity/SettingSDCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 173
    :cond_0
    return-void
.end method
