.class Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$2;
.super Ljava/lang/Object;
.source "AllPicterCheckActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$2;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 129
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$2;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    invoke-virtual {v0}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->finish()V

    .line 130
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity$2;->this$0:Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;

    const v1, 0x7f040006

    .line 131
    const/high16 v2, 0x7f040000

    .line 130
    invoke-virtual {v0, v1, v2}, Lobject/p2pwificam/clientActivity/other/AllPicterCheckActivity;->overridePendingTransition(II)V

    .line 132
    return-void
.end method
