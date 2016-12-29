.class public Lcom/tencent/android/tpush/service/a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/jg/JgClassChecked;
    author = 0x1
    fComment = "\u786e\u8ba4\u5df2\u8fdb\u884c\u5b89\u5168\u6821\u9a8c"
    lastDate = "20150316"
    reviewer = 0x3
    vComment = {
        .enum Lcom/jg/EType;->INTENTCHECK:Lcom/jg/EType;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcom/tencent/android/tpush/service/a;

.field private static volatile c:Lcom/tencent/android/tpush/service/j;

.field private static volatile d:Lcom/tencent/android/tpush/service/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    sput-object v0, Lcom/tencent/android/tpush/service/a;->b:Lcom/tencent/android/tpush/service/a;

    .line 61
    sput-object v0, Lcom/tencent/android/tpush/service/a;->c:Lcom/tencent/android/tpush/service/j;

    .line 64
    sput-object v0, Lcom/tencent/android/tpush/service/a;->d:Lcom/tencent/android/tpush/service/l;

    .line 131
    const-class v0, Lcom/tencent/android/tpush/service/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/android/tpush/service/a;
    .locals 2

    .prologue
    .line 135
    const-class v1, Lcom/tencent/android/tpush/service/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/service/a;->b:Lcom/tencent/android/tpush/service/a;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/tencent/android/tpush/service/a;

    invoke-direct {v0}, Lcom/tencent/android/tpush/service/a;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/service/a;->b:Lcom/tencent/android/tpush/service/a;

    .line 138
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/service/a;->b:Lcom/tencent/android/tpush/service/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(ILcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 721
    const/4 v0, 0x1

    invoke-static {p1, p4, v0}, Lcom/tencent/android/tpush/service/d/f;->a(ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 723
    const-string v1, "accId"

    iget-wide v2, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->accessId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 724
    iget-object v1, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->account:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->account:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    const-string v1, "account"

    iget-object v2, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->account:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 728
    const-string v1, "token"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    :cond_1
    iget-object v1, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->ticket:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->ticket:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 731
    const-string v1, "ticket"

    iget-object v2, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->ticket:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    const-string v1, "ticketType"

    iget-short v2, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->ticketType:S

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    .line 734
    :cond_2
    iget-object v1, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->deviceId:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->deviceId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 735
    const-string v1, "deviceId"

    iget-object v2, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    :cond_3
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 738
    return-void
.end method

.method private a(ILcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterRsp;Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;Lcom/tencent/android/tpush/service/channel/a;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 769
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.REGISTER.RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 770
    const-string v1, "data"

    iget-object v2, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterRsp;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    const-string v1, "flag"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 772
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 773
    const-string v1, "operation"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 785
    new-instance v1, Lcom/tencent/android/tpush/data/a;

    invoke-direct {v1}, Lcom/tencent/android/tpush/data/a;-><init>()V

    .line 786
    iget-wide v2, p3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->accessId:J

    iput-wide v2, v1, Lcom/tencent/android/tpush/data/a;->a:J

    .line 787
    iget-object v2, p3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->accessKey:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/android/tpush/data/a;->b:Ljava/lang/String;

    .line 788
    iget-object v2, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterRsp;->token:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/android/tpush/data/a;->c:Ljava/lang/String;

    .line 789
    iput-object p5, v1, Lcom/tencent/android/tpush/data/a;->d:Ljava/lang/String;

    .line 790
    invoke-static {v1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->addRegisterInfo(Lcom/tencent/android/tpush/data/a;)Z

    .line 791
    invoke-static {p5}, Lcom/tencent/android/tpush/service/cache/CacheManager;->addRegisterInfos(Ljava/lang/String;)V

    .line 794
    invoke-static {}, Lcom/tencent/android/tpush/service/b/j;->a()Lcom/tencent/android/tpush/service/b/j;

    move-result-object v1

    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, p3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->accessId:J

    invoke-virtual {v1, v2, v3, v4, p5}, Lcom/tencent/android/tpush/service/b/j;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 796
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterRsp;->token:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/service/cache/CacheManager;->setToken(Landroid/content/Context;Ljava/lang/String;)Z

    .line 798
    invoke-static {p5}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 799
    invoke-virtual {v0, p5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 804
    iget-object v0, p2, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterRsp;->token:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, p5}, Lcom/tencent/android/tpush/service/a;->a(ILcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/android/tpush/service/channel/b;->a(Z)V

    .line 809
    const-string v0, ""

    .line 811
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 812
    const-string v1, "aidl"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 813
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    :goto_0
    return-void

    .line 814
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(ILcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;Lcom/tencent/android/tpush/service/channel/a;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 853
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.UNREGISTER.RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 854
    const-string v1, "flag"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 855
    const-string v1, "operation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 858
    invoke-static {p4}, Lcom/tencent/android/tpush/service/cache/CacheManager;->UnregisterInfoSuccessByPkgName(Ljava/lang/String;)Z

    .line 859
    invoke-static {p4}, Lcom/tencent/android/tpush/service/cache/CacheManager;->removeRegisterInfos(Ljava/lang/String;)V

    .line 861
    invoke-static {}, Lcom/tencent/android/tpush/service/b/j;->a()Lcom/tencent/android/tpush/service/b/j;

    move-result-object v1

    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p4}, Lcom/tencent/android/tpush/service/b/j;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 864
    invoke-static {p4}, Lcom/tencent/android/tpush/common/p;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 866
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 869
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 871
    invoke-direct {p0, p1, p4}, Lcom/tencent/android/tpush/service/a;->a(ILjava/lang/String;)V

    .line 873
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 743
    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Lcom/tencent/android/tpush/service/d/f;->a(ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 745
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 746
    return-void
.end method

.method private a(ILjava/lang/String;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 752
    const/4 v0, 0x3

    invoke-static {p1, p4, v0}, Lcom/tencent/android/tpush/service/d/f;->a(ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 754
    const-string v1, "tagName"

    invoke-static {p2}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    const-string v1, "tagFlag"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 756
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 757
    return-void
.end method

.method private a(ILjava/lang/String;Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;Lcom/tencent/android/tpush/service/channel/a;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 828
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.REGISTER.RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 829
    const-string v1, "data"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 830
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 831
    const-string v1, "msg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 832
    const-string v1, "flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 833
    const-string v1, "operation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 835
    invoke-static {p5}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 836
    invoke-virtual {v0, p5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 841
    iget-object v0, p3, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->token:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, p5}, Lcom/tencent/android/tpush/service/a;->a(ILcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    return-void
.end method

.method private a(ILjava/lang/String;Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;Lcom/tencent/android/tpush/service/channel/a;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 883
    sget-object v0, Lcom/tencent/android/tpush/service/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterFailHandler failed with ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.UNREGISTER.RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 888
    const-string v1, "flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 889
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 890
    const-string v1, "msg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 891
    const-string v1, "operation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 893
    invoke-static {p5}, Lcom/tencent/android/tpush/common/p;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 895
    invoke-virtual {v0, p5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 900
    invoke-direct {p0, p1, p5}, Lcom/tencent/android/tpush/service/a;->a(ILjava/lang/String;)V

    .line 901
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 220
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 223
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {p1, v0}, Lcom/tencent/android/tpush/service/d/f;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->a()Lcom/tencent/android/tpush/service/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/android/tpush/service/m;->d()V

    .line 227
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/service/b;

    invoke-direct {v1, p0, p1}, Lcom/tencent/android/tpush/service/b;-><init>(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;J)Z

    .line 236
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/a;ILcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterRsp;Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;Lcom/tencent/android/tpush/service/channel/a;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p6}, Lcom/tencent/android/tpush/service/a;->a(ILcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterRsp;Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;Lcom/tencent/android/tpush/service/channel/a;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/a;ILcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;Lcom/tencent/android/tpush/service/channel/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/android/tpush/service/a;->a(ILcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;Lcom/tencent/android/tpush/service/channel/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/a;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/android/tpush/service/a;->a(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/a;ILjava/lang/String;Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;Lcom/tencent/android/tpush/service/channel/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p5}, Lcom/tencent/android/tpush/service/a;->a(ILjava/lang/String;Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;Lcom/tencent/android/tpush/service/channel/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/a;ILjava/lang/String;Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;Lcom/tencent/android/tpush/service/channel/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p5}, Lcom/tencent/android/tpush/service/a;->a(ILjava/lang/String;Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;Lcom/tencent/android/tpush/service/channel/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/tencent/android/tpush/service/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 245
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 248
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v1

    new-instance v2, Lcom/tencent/android/tpush/service/c;

    invoke-direct {v2, p0, p1, v0}, Lcom/tencent/android/tpush/service/c;-><init>(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;J)Z

    .line 271
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/a;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const-wide/16 v6, 0x0

    .line 274
    invoke-static {p1}, Lcom/tencent/android/tpush/service/d/a;->a(Landroid/content/Context;)B

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 280
    const-string v1, "com.tencent.android.tpush.action.next.applist.ts"

    invoke-static {p1, v1, v6, v7}, Lcom/tencent/android/tpush/service/d/f;->c(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    .line 281
    cmp-long v3, v1, v6

    if-nez v3, :cond_4

    .line 282
    const-string v1, "com.tencent.android.tpush.action.next.applist.ts"

    invoke-static {p1, v1, v6, v7}, Lcom/tencent/android/tpush/common/m;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v1

    move-wide v2, v1

    .line 285
    :goto_1
    const/4 v1, 0x0

    .line 286
    cmp-long v6, v2, v6

    if-nez v6, :cond_3

    .line 295
    :cond_2
    :goto_2
    if-eqz v0, :cond_0

    .line 296
    invoke-static {}, Lcom/tencent/android/tpush/common/g;->a()Lcom/tencent/android/tpush/common/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/service/d;

    invoke-direct {v1, p0, p1, v4, v5}, Lcom/tencent/android/tpush/service/d;-><init>(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;J)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/android/tpush/common/g;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 289
    :cond_3
    cmp-long v6, v4, v2

    if-gtz v6, :cond_2

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v6, 0xa4cb800

    cmp-long v2, v2, v6

    if-gtz v2, :cond_2

    move v0, v1

    goto :goto_2

    :cond_4
    move-wide v2, v1

    goto :goto_1
.end method

.method private c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    .prologue
    .line 377
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 378
    const-string v1, "accId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 380
    const-string v1, "accKey"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 381
    const-string v1, "packName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 383
    const-string v1, "account"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 384
    const-string v1, "ticket"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 385
    const-string v1, "ticketType"

    const/4 v2, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 386
    const-string v1, "qua"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 387
    const-string v2, "appVer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 388
    const-string v2, "reserved"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 390
    const-string v2, "aidl"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 393
    :try_start_0
    invoke-static {v1}, Lcom/tencent/android/tpush/service/d/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 394
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15, v1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->setQua(Landroid/content/Context;JLjava/lang/String;)Z

    .line 396
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->getEncryptAPKSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 398
    invoke-static {}, Lcom/tencent/android/tpush/service/p;->a()Lcom/tencent/android/tpush/service/p;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    invoke-static {}, Lcom/tencent/android/tpush/service/d/c;->a()Ljava/lang/String;

    move-result-object v17

    new-instance v1, Lcom/tencent/android/tpush/service/f;

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/tencent/android/tpush/service/f;-><init>(Lcom/tencent/android/tpush/service/a;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V

    move-object v2, v14

    move-wide v3, v15

    move-object v5, v13

    move-object/from16 v6, v17

    move-object v13, v1

    invoke-virtual/range {v2 .. v13}, Lcom/tencent/android/tpush/service/p;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/android/tpush/service/channel/p;)V

    .line 468
    invoke-static/range {p1 .. p1}, Lcom/tencent/android/tpush/service/XGWatchdog;->getInstance(Landroid/content/Context;)Lcom/tencent/android/tpush/service/XGWatchdog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/android/tpush/service/XGWatchdog;->sendAllLocalXGAppList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :cond_1
    :goto_0
    return-void

    .line 469
    :catch_0
    move-exception v1

    .line 470
    sget-object v2, Lcom/tencent/android/tpush/service/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> register error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    sget-object v2, Lcom/tencent/android/tpush/service/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> register error-> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/a;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private d(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15

    .prologue
    .line 483
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 484
    const-string v1, "accId"

    const-wide/16 v2, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 485
    const-string v1, "packName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 487
    const-string v1, "tagFlag"

    const/4 v2, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 488
    const-string v1, "tagName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 491
    invoke-static {}, Lcom/tencent/android/tpush/service/p;->a()Lcom/tencent/android/tpush/service/p;

    move-result-object v8

    new-instance v1, Lcom/tencent/android/tpush/service/g;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/tencent/android/tpush/service/g;-><init>(Lcom/tencent/android/tpush/service/a;JILjava/lang/String;Ljava/lang/String;)V

    move-wide v9, v3

    move-object v11, v7

    move v12, v5

    move-object v13, v6

    move-object v14, v1

    invoke-virtual/range {v8 .. v14}, Lcom/tencent/android/tpush/service/p;->a(JLjava/lang/String;ILjava/lang/String;Lcom/tencent/android/tpush/service/channel/p;)V

    .line 541
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/a;->e(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private e(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .prologue
    .line 560
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 562
    const-string v0, "accId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 564
    const-string v0, "accKey"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 565
    const-string v0, "packName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 567
    const-string v0, "token"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 570
    invoke-static {v6}, Lcom/tencent/android/tpush/service/cache/CacheManager;->UnregisterInfoByPkgName(Ljava/lang/String;)Z

    .line 573
    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/service/p;->a()Lcom/tencent/android/tpush/service/p;

    move-result-object v0

    invoke-static {}, Lcom/tencent/android/tpush/service/d/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    new-instance v7, Lcom/tencent/android/tpush/service/h;

    invoke-direct {v7, p0, v8, v6}, Lcom/tencent/android/tpush/service/h;-><init>(Lcom/tencent/android/tpush/service/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/android/tpush/service/p;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/tencent/android/tpush/service/channel/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 630
    :catch_0
    move-exception v0

    .line 631
    sget-object v1, Lcom/tencent/android/tpush/service/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> unregister error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/a;->g(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private f(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    .line 644
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 645
    const-string v0, "accId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 646
    const-string v0, "token"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 647
    const-string v0, "other_push_type"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 648
    const-string v0, "other_push_token"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 649
    invoke-static {}, Lcom/tencent/android/tpush/service/p;->a()Lcom/tencent/android/tpush/service/p;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    new-instance v6, Lcom/tencent/android/tpush/service/i;

    invoke-direct {v6, p0, v7}, Lcom/tencent/android/tpush/service/i;-><init>(Lcom/tencent/android/tpush/service/a;Ljava/lang/String;)V

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/android/tpush/service/p;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/android/tpush/service/channel/p;)V

    .line 699
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/a;->d(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private g(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 702
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 704
    const-string v0, "debugMode"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 706
    sput-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    .line 707
    if-eqz v0, :cond_1

    .line 708
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/tencent/android/tpush/a/a;->a(I)V

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/tencent/android/tpush/a/a;->a(I)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/tencent/android/tpush/service/a;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/tencent/android/tpush/service/a;->f(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 147
    monitor-enter p0

    if-eqz p1, :cond_2

    .line 149
    :try_start_0
    sget-object v0, Lcom/tencent/android/tpush/service/a;->c:Lcom/tencent/android/tpush/service/j;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lcom/tencent/android/tpush/service/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/android/tpush/service/j;-><init>(Lcom/tencent/android/tpush/service/a;Lcom/tencent/android/tpush/service/b;)V

    sput-object v0, Lcom/tencent/android/tpush/service/a;->c:Lcom/tencent/android/tpush/service/j;

    .line 152
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 154
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    sget-object v1, Lcom/tencent/android/tpush/service/a;->c:Lcom/tencent/android/tpush/service/j;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/tencent/android/tpush/service/a;->d:Lcom/tencent/android/tpush/service/l;

    if-nez v0, :cond_1

    .line 165
    new-instance v0, Lcom/tencent/android/tpush/service/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/android/tpush/service/l;-><init>(Lcom/tencent/android/tpush/service/a;Lcom/tencent/android/tpush/service/b;)V

    sput-object v0, Lcom/tencent/android/tpush/service/a;->d:Lcom/tencent/android/tpush/service/l;

    .line 166
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 167
    const-string v1, "com.tencent.android.tpush.action.REGISTER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v1, "com.tencent.android.tpush.action.UNREGISTER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v1, "com.tencent.android.tpush.action.ENABLE_DEBUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v1, "com.tencent.android.tpush.action.MSG_ACK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v1, "com.tencent.android.tpush.action.TAG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v1, "com.tencent.android.tpush.action.PUSH_CLICK.RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v1, "com.tencent.android.tpush.action.PUSH_CANCELLED.RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v1, "com.tencent.android.tpush.action.CUSTOM_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v1, "com.tencent.android.tpush.action.CLEAR_CUSTOM_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v1, "com.tencent.android.tpush.action.ack.sdk2srv"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v1, "com.tencent.android.tpush.action.reserved.act"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v1, "com.tencent.android.tpush.action.UPDATE_OTHER_PUSH_TOKEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    sget-object v1, Lcom/tencent/android/tpush/service/a;->d:Lcom/tencent/android/tpush/service/l;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    :cond_1
    :goto_1
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.SERVICE_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    const-string v1, "pkg"

    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v1, "ver"

    const v2, 0x401d70a4    # 2.46f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 190
    invoke-static {}, Lcom/tencent/android/tpush/service/m;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    :cond_2
    monitor-exit p0

    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    :try_start_3
    sget-object v1, Lcom/tencent/android/tpush/service/a;->a:Ljava/lang/String;

    const-string v2, "registerReceiver"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 182
    :catch_1
    move-exception v0

    .line 183
    :try_start_4
    sget-object v1, Lcom/tencent/android/tpush/service/a;->a:Ljava/lang/String;

    const-string v2, "registerReceiver"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 196
    if-eqz p1, :cond_1

    .line 198
    sget-object v0, Lcom/tencent/android/tpush/service/a;->c:Lcom/tencent/android/tpush/service/j;

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Lcom/tencent/android/tpush/service/a;->c:Lcom/tencent/android/tpush/service/j;

    invoke-static {p1, v0}, Lcom/tencent/android/tpush/common/p;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 202
    sput-object v1, Lcom/tencent/android/tpush/service/a;->c:Lcom/tencent/android/tpush/service/j;

    .line 205
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/service/a;->d:Lcom/tencent/android/tpush/service/l;

    if-eqz v0, :cond_1

    .line 207
    sget-object v0, Lcom/tencent/android/tpush/service/a;->d:Lcom/tencent/android/tpush/service/l;

    invoke-static {p1, v0}, Lcom/tencent/android/tpush/common/p;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 209
    sput-object v1, Lcom/tencent/android/tpush/service/a;->d:Lcom/tencent/android/tpush/service/l;

    .line 212
    :cond_1
    return-void
.end method
