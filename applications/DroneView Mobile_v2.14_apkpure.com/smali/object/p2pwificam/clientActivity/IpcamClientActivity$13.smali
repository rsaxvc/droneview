.class Lobject/p2pwificam/clientActivity/IpcamClientActivity$13;
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
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$13;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 290
    new-instance v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$GetDataTask;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/IpcamClientActivity$13;->this$0:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$GetDataTask;-><init>(Lobject/p2pwificam/clientActivity/IpcamClientActivity;Lobject/p2pwificam/clientActivity/IpcamClientActivity$GetDataTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/IpcamClientActivity$GetDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 292
    return-void
.end method
