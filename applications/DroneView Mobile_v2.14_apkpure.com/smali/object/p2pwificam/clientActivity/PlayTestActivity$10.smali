.class Lobject/p2pwificam/clientActivity/PlayTestActivity$10;
.super Ljava/lang/Object;
.source "PlayTestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/PlayTestActivity;->showSureDialogPlay(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayTestActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$10;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 519
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$10;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->stopMusicService()V

    .line 520
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$10;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->finish()V

    .line 521
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayTestActivity$10;->this$0:Lobject/p2pwificam/clientActivity/PlayTestActivity;

    const v1, 0x7f040006

    .line 522
    const/high16 v2, 0x7f040000

    .line 521
    invoke-virtual {v0, v1, v2}, Lobject/p2pwificam/clientActivity/PlayTestActivity;->overridePendingTransition(II)V

    .line 523
    return-void
.end method
