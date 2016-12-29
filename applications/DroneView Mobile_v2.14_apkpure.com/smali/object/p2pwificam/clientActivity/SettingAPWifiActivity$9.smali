.class Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$9;
.super Ljava/lang/Object;
.source "SettingAPWifiActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$9;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 289
    const-string v2, "strDIDtag"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wifi_name:----"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$9;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    iget-object v4, v4, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifi_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "wifi_pwd:----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$9;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    iget-object v4, v4, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifi_pwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$9;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    iget-object v2, v2, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifi_name:Ljava/lang/String;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$9;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    iget-object v3, v3, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifi_pwd:Ljava/lang/String;

    invoke-static {v2, v3}, Lobject/p2pipcam/utils/MyWifiUtils;->connectToWifiAP(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    const/4 v0, 0x0

    .line 298
    .local v0, "count":I
    :goto_1
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$9;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    invoke-virtual {v2}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->getWifiType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 314
    :cond_0
    const-wide/16 v2, 0x7d0

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 319
    :goto_2
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$9;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    iget-object v2, v2, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifihandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 322
    return-void

    .line 293
    .end local v0    # "count":I
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 299
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "count":I
    :cond_1
    const-string v2, "strDIDtag"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getWifiType():----"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$9;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    invoke-virtual {v4}, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->getWifiType()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    add-int/lit8 v0, v0, 0x1

    .line 301
    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    .line 304
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$9;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    iget-object v2, v2, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifi_name:Ljava/lang/String;

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity$9;->this$0:Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;

    iget-object v3, v3, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->wifi_pwd:Ljava/lang/String;

    invoke-static {v2, v3}, Lobject/p2pipcam/utils/MyWifiUtils;->connectToWifiAP(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-wide/16 v2, 0xbb8

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 307
    :catch_1
    move-exception v1

    .line 309
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 315
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v1

    .line 317
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method
