.class Lobject/p2pwificam/clientActivity/CallVideoActivity$13;
.super Ljava/lang/Object;
.source "CallVideoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/CallVideoActivity;->showSureDialogPlay(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/CallVideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$13;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 242
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$13;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->stopMusicService()V

    .line 243
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$13;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->finish()V

    .line 244
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/CallVideoActivity$13;->this$0:Lobject/p2pwificam/clientActivity/CallVideoActivity;

    const v1, 0x7f040006

    .line 245
    const/high16 v2, 0x7f040000

    .line 244
    invoke-virtual {v0, v1, v2}, Lobject/p2pwificam/clientActivity/CallVideoActivity;->overridePendingTransition(II)V

    .line 246
    return-void
.end method
