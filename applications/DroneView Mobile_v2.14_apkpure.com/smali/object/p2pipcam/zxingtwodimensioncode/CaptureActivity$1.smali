.class Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity$1;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;


# direct methods
.method constructor <init>(Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity$1;->this$0:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity$1;->this$0:Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;

    invoke-virtual {v0}, Lobject/p2pipcam/zxingtwodimensioncode/CaptureActivity;->finish()V

    .line 87
    return-void
.end method
