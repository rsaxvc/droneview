.class Lobject/p2pwificam/clientActivity/PlayBackTFActivity$4;
.super Ljava/lang/Object;
.source "PlayBackTFActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/PlayBackTFActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$4;->this$0:Lobject/p2pwificam/clientActivity/PlayBackTFActivity;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 222
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 223
    const/4 v0, 0x1

    .line 225
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
