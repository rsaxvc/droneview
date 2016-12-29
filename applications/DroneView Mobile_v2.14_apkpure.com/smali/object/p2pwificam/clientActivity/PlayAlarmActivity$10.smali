.class Lobject/p2pwificam/clientActivity/PlayAlarmActivity$10;
.super Ljava/lang/Object;
.source "PlayAlarmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->showSureDialogPlay(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayAlarmActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$10;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 511
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$10;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->stopMusicService()V

    .line 512
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$10;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->finish()V

    .line 513
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayAlarmActivity$10;->this$0:Lobject/p2pwificam/clientActivity/PlayAlarmActivity;

    const v1, 0x7f040006

    .line 514
    const/high16 v2, 0x7f040000

    .line 513
    invoke-virtual {v0, v1, v2}, Lobject/p2pwificam/clientActivity/PlayAlarmActivity;->overridePendingTransition(II)V

    .line 515
    return-void
.end method
