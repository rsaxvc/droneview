.class Lobject/p2pwificam/clientActivity/EventDetailActivity$1;
.super Ljava/lang/Object;
.source "EventDetailActivity.java"

# interfaces
.implements Lcom/easyview/basecamera/ICamera$IRespondListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/EventDetailActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/EventDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/EventDetailActivity$1;)Lobject/p2pwificam/clientActivity/EventDetailActivity;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;

    return-object v0
.end method


# virtual methods
.method public OnRespondResult(Lcom/easyview/basecamera/ICamera;II)V
    .locals 2
    .param p1, "camera"    # Lcom/easyview/basecamera/ICamera;
    .param p2, "cmd"    # I
    .param p3, "result"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/EventDetailActivity$1;->this$0:Lobject/p2pwificam/clientActivity/EventDetailActivity;

    new-instance v1, Lobject/p2pwificam/clientActivity/EventDetailActivity$1$1;

    invoke-direct {v1, p0, p3}, Lobject/p2pwificam/clientActivity/EventDetailActivity$1$1;-><init>(Lobject/p2pwificam/clientActivity/EventDetailActivity$1;I)V

    invoke-virtual {v0, v1}, Lobject/p2pwificam/clientActivity/EventDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method
