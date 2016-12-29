.class Lobject/p2pwificam/clientActivity/MainMUActivity$1;
.super Ljava/lang/Object;
.source "MainMUActivity.java"

# interfaces
.implements Lobject/p2pipcam/utils/SearchBellUtil$IAddBellListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/MainMUActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/MainMUActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/MainMUActivity$1;->this$0:Lobject/p2pwificam/clientActivity/MainMUActivity;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;

    .prologue
    .line 306
    sget-object v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->instance:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->instance:Lobject/p2pwificam/clientActivity/IpcamClientActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->addDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_0
    return-void
.end method
