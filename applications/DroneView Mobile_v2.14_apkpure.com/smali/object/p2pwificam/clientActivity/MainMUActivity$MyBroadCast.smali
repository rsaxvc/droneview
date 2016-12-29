.class Lobject/p2pwificam/clientActivity/MainMUActivity$MyBroadCast;
.super Landroid/content/BroadcastReceiver;
.source "MainMUActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/MainMUActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadCast"
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;


# direct methods
.method private constructor <init>(Lobject/p2pwificam/clientActivity/MainMUActivity;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/MainMUActivity$MyBroadCast;->this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lobject/p2pwificam/clientActivity/MainMUActivity;Lobject/p2pwificam/clientActivity/MainMUActivity$MyBroadCast;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lobject/p2pwificam/clientActivity/MainMUActivity$MyBroadCast;-><init>(Lobject/p2pwificam/clientActivity/MainMUActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 137
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/MainMUActivity$MyBroadCast;->this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/MainMUActivity;->moveTaskToBack(Z)Z

    .line 138
    return-void
.end method
