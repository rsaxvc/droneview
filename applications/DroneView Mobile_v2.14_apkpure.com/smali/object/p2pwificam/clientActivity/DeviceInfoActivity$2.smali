.class Lobject/p2pwificam/clientActivity/DeviceInfoActivity$2;
.super Ljava/lang/Object;
.source "DeviceInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/DeviceInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DeviceInfoActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DeviceInfoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DeviceInfoActivity;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DeviceInfoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->successFlag:Z
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->access$5(Lobject/p2pwificam/clientActivity/DeviceInfoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DeviceInfoActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->access$0(Lobject/p2pwificam/clientActivity/DeviceInfoActivity;Z)V

    .line 122
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DeviceInfoActivity$2;->this$0:Lobject/p2pwificam/clientActivity/DeviceInfoActivity;

    # getter for: Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pwificam/clientActivity/DeviceInfoActivity;->access$1(Lobject/p2pwificam/clientActivity/DeviceInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 124
    :cond_0
    return-void
.end method
