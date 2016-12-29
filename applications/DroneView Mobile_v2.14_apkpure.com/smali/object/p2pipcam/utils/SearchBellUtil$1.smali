.class Lobject/p2pipcam/utils/SearchBellUtil$1;
.super Ljava/lang/Object;
.source "SearchBellUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pipcam/utils/SearchBellUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pipcam/utils/SearchBellUtil;


# direct methods
.method constructor <init>(Lobject/p2pipcam/utils/SearchBellUtil;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/utils/SearchBellUtil$1;->this$0:Lobject/p2pipcam/utils/SearchBellUtil;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x1

    .line 65
    iget-object v0, p0, Lobject/p2pipcam/utils/SearchBellUtil$1;->this$0:Lobject/p2pipcam/utils/SearchBellUtil;

    # getter for: Lobject/p2pipcam/utils/SearchBellUtil;->_context:Landroid/app/Activity;
    invoke-static {v0}, Lobject/p2pipcam/utils/SearchBellUtil;->access$0(Lobject/p2pipcam/utils/SearchBellUtil;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Search Cancel"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 66
    iget-object v0, p0, Lobject/p2pipcam/utils/SearchBellUtil$1;->this$0:Lobject/p2pipcam/utils/SearchBellUtil;

    invoke-static {v0, v2}, Lobject/p2pipcam/utils/SearchBellUtil;->access$1(Lobject/p2pipcam/utils/SearchBellUtil;Z)V

    .line 67
    return-void
.end method
