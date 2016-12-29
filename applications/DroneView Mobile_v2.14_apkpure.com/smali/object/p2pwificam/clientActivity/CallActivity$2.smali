.class Lobject/p2pwificam/clientActivity/CallActivity$2;
.super Landroid/os/Handler;
.source "CallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lobject/p2pwificam/clientActivity/CallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/CallActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/CallActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/CallActivity$2;->this$0:Lobject/p2pwificam/clientActivity/CallActivity;

    .line 255
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x10000000

    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 259
    const-string v2, "zdclock"

    const-string v3, "handleMessage :  #### 2222222222222222222222222"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallActivity$2;->this$0:Lobject/p2pwificam/clientActivity/CallActivity;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lobject/p2pwificam/clientActivity/CallActivity;->access$3(Lobject/p2pwificam/clientActivity/CallActivity;Ljava/lang/Boolean;)V

    .line 261
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallActivity$2;->this$0:Lobject/p2pwificam/clientActivity/CallActivity;

    iput-object v8, v2, Lobject/p2pwificam/clientActivity/CallActivity;->thread:Ljava/lang/Thread;

    .line 262
    sget v2, Lobject/p2pwificam/clientActivity/CallActivity;->MSG_CALL_ON:I

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_1

    .line 265
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallActivity$2;->this$0:Lobject/p2pwificam/clientActivity/CallActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/CallActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lobject/p2pwificam/clientActivity/PlayActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    .local v1, "in":Landroid/content/Intent;
    const-string v2, "camera_type"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    const-string v2, "stream_type"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 270
    const-string v2, "camera_name"

    const-string v3, "IPCAM"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string v2, "cameraid"

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/CallActivity$2;->this$0:Lobject/p2pwificam/clientActivity/CallActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallActivity;->did:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/CallActivity;->access$4(Lobject/p2pwificam/clientActivity/CallActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v2, "camera_user"

    const-string v3, "admin"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v2, "camera_pwd"

    const-string v3, "admin"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v2, "camera_type"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    const-string v2, "play_mode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    const-string v2, "play_type"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 278
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallActivity$2;->this$0:Lobject/p2pwificam/clientActivity/CallActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/CallActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 279
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallActivity$2;->this$0:Lobject/p2pwificam/clientActivity/CallActivity;

    # invokes: Lobject/p2pwificam/clientActivity/CallActivity;->stopService()V
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/CallActivity;->access$5(Lobject/p2pwificam/clientActivity/CallActivity;)V

    .line 320
    .end local v1    # "in":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    sget v2, Lobject/p2pwificam/clientActivity/CallActivity;->MSG_CALL_AUDIO:I

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_2

    .line 283
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallActivity$2;->this$0:Lobject/p2pwificam/clientActivity/CallActivity;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lobject/p2pwificam/clientActivity/CallActivity;->access$3(Lobject/p2pwificam/clientActivity/CallActivity;Ljava/lang/Boolean;)V

    .line 285
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallActivity$2;->this$0:Lobject/p2pwificam/clientActivity/CallActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/CallActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lobject/p2pwificam/clientActivity/AudioTalkActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 286
    .restart local v1    # "in":Landroid/content/Intent;
    const-string v2, "camera_type"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    const-string v2, "stream_type"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    const-string v2, "camera_name"

    const-string v3, "IPCAM"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v2, "cameraid"

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/CallActivity$2;->this$0:Lobject/p2pwificam/clientActivity/CallActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallActivity;->did:Ljava/lang/String;
    invoke-static {v3}, Lobject/p2pwificam/clientActivity/CallActivity;->access$4(Lobject/p2pwificam/clientActivity/CallActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string v2, "camera_user"

    const-string v3, "admin"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v2, "camera_pwd"

    const-string v3, "admin"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v2, "camera_type"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    const-string v2, "play_type"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 296
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 297
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallActivity$2;->this$0:Lobject/p2pwificam/clientActivity/CallActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/CallActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 298
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallActivity$2;->this$0:Lobject/p2pwificam/clientActivity/CallActivity;

    # invokes: Lobject/p2pwificam/clientActivity/CallActivity;->stopService()V
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/CallActivity;->access$5(Lobject/p2pwificam/clientActivity/CallActivity;)V

    goto :goto_0

    .line 301
    .end local v1    # "in":Landroid/content/Intent;
    :cond_2
    sget v2, Lobject/p2pwificam/clientActivity/CallActivity;->MSG_CALL_OFF:I

    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v2, v3, :cond_0

    .line 302
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallActivity$2;->this$0:Lobject/p2pwificam/clientActivity/CallActivity;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lobject/p2pwificam/clientActivity/CallActivity;->access$3(Lobject/p2pwificam/clientActivity/CallActivity;Ljava/lang/Boolean;)V

    .line 303
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallActivity$2;->this$0:Lobject/p2pwificam/clientActivity/CallActivity;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/CallActivity$2;->this$0:Lobject/p2pwificam/clientActivity/CallActivity;

    const-string v4, "isFirst"

    invoke-virtual {v3, v4, v5}, Lobject/p2pwificam/clientActivity/CallActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v2, v3}, Lobject/p2pwificam/clientActivity/CallActivity;->access$6(Lobject/p2pwificam/clientActivity/CallActivity;Landroid/content/SharedPreferences;)V

    .line 304
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallActivity$2;->this$0:Lobject/p2pwificam/clientActivity/CallActivity;

    # getter for: Lobject/p2pwificam/clientActivity/CallActivity;->preference:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/CallActivity;->access$7(Lobject/p2pwificam/clientActivity/CallActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 305
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "activity"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 306
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 307
    sget-object v2, Lobject/p2pwificam/clientActivity/BridgeService;->lockFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 308
    sget-object v2, Lobject/p2pwificam/clientActivity/BridgeService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v2, :cond_3

    .line 309
    sget-object v2, Lobject/p2pwificam/clientActivity/BridgeService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v2}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 310
    sput-object v8, Lobject/p2pwificam/clientActivity/BridgeService;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 315
    :cond_3
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/CallActivity$2;->this$0:Lobject/p2pwificam/clientActivity/CallActivity;

    # invokes: Lobject/p2pwificam/clientActivity/CallActivity;->stopService()V
    invoke-static {v2}, Lobject/p2pwificam/clientActivity/CallActivity;->access$5(Lobject/p2pwificam/clientActivity/CallActivity;)V

    goto/16 :goto_0
.end method
