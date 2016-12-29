.class Lobject/p2pwificam/clientActivity/IpcamClientActivity$12;
.super Ljava/lang/Object;
.source "IpcamClientActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/IpcamClientActivity;->findView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$12;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 267
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$12;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-static {v3}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    new-instance v2, Lobject/p2pipcam/utils/SearchBellUtil;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$12;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-direct {v2, v3}, Lobject/p2pipcam/utils/SearchBellUtil;-><init>(Landroid/app/Activity;)V

    .line 270
    .local v2, "util":Lobject/p2pipcam/utils/SearchBellUtil;
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$12;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$5(Lobject/p2pwificam/clientActivity/IpcamClientActivity;I)V

    .line 271
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$12;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    # getter for: Lobject/p2pwificam/clientActivity/IpcamClientActivity;->addBellListener:Lobject/p2pipcam/utils/SearchBellUtil$IAddBellListener;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->access$16(Lobject/p2pwificam/clientActivity/IpcamClientActivity;)Lobject/p2pipcam/utils/SearchBellUtil$IAddBellListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lobject/p2pipcam/utils/SearchBellUtil;->StartSearch(Lobject/p2pipcam/utils/SearchBellUtil$IAddBellListener;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "UID":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 283
    .end local v0    # "UID":Ljava/lang/String;
    .end local v2    # "util":Lobject/p2pipcam/utils/SearchBellUtil;
    :goto_0
    return-void

    .line 278
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$12;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    const-class v4, Lobject/p2pwificam/clientActivity/AddCameraActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    .local v1, "in":Landroid/content/Intent;
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$12;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-virtual {v3, v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->startActivity(Landroid/content/Intent;)V

    .line 280
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$12;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    const v4, 0x7f040001

    .line 281
    const v5, 0x7f040005

    .line 280
    invoke-virtual {v3, v4, v5}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method
