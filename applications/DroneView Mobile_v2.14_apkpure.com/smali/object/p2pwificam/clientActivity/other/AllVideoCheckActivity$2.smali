.class Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity$2;
.super Ljava/lang/Object;
.source "AllVideoCheckActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity$2;->this$0:Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity$2;->this$0:Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->finish()V

    .line 87
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity$2;->this$0:Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;

    const v1, 0x7f040006

    .line 88
    const/high16 v2, 0x7f040000

    .line 87
    invoke-virtual {v0, v1, v2}, Lobject/p2pwificam/clientActivity/other/AllVideoCheckActivity;->overridePendingTransition(II)V

    .line 89
    return-void
.end method
