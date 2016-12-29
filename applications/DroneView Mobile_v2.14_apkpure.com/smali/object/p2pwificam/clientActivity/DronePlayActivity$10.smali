.class Lobject/p2pwificam/clientActivity/DronePlayActivity$10;
.super Ljava/lang/Object;
.source "DronePlayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/DronePlayActivity;->showSureDialogPlay(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/DronePlayActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$10;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 293
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$10;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->finish()V

    .line 294
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/DronePlayActivity$10;->this$0:Lobject/p2pwificam/clientActivity/DronePlayActivity;

    const v1, 0x7f040006

    .line 295
    const/high16 v2, 0x7f040000

    .line 294
    invoke-virtual {v0, v1, v2}, Lobject/p2pwificam/clientActivity/DronePlayActivity;->overridePendingTransition(II)V

    .line 296
    return-void
.end method
