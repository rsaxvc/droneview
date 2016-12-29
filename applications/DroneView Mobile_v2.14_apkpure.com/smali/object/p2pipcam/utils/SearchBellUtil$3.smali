.class Lobject/p2pipcam/utils/SearchBellUtil$3;
.super Ljava/lang/Object;
.source "SearchBellUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pipcam/utils/SearchBellUtil;->showMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pipcam/utils/SearchBellUtil;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lobject/p2pipcam/utils/SearchBellUtil;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/utils/SearchBellUtil$3;->this$0:Lobject/p2pipcam/utils/SearchBellUtil;

    iput-object p2, p0, Lobject/p2pipcam/utils/SearchBellUtil$3;->val$msg:Ljava/lang/String;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lobject/p2pipcam/utils/SearchBellUtil$3;->this$0:Lobject/p2pipcam/utils/SearchBellUtil;

    # getter for: Lobject/p2pipcam/utils/SearchBellUtil;->progressdlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lobject/p2pipcam/utils/SearchBellUtil;->access$4(Lobject/p2pipcam/utils/SearchBellUtil;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lobject/p2pipcam/utils/SearchBellUtil$3;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 153
    return-void
.end method
