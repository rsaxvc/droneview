.class final Lcom/baidu/android/pushservice/ADPushManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/pushservice/ADPushManager;->startWorkForAD(Landroid/content/Context;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/ADPushManager$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/ADPushManager$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/android/pushservice/ADPushManager$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/util/a;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/ADPushManager;->setPushADMsgEnable(Landroid/content/Context;Z)V

    return-void
.end method
