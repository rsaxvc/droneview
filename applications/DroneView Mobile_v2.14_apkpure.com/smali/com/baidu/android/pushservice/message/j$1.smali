.class Lcom/baidu/android/pushservice/message/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/pushservice/message/j;->a(Lcom/baidu/android/pushservice/message/f;)Lcom/baidu/android/pushservice/message/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/android/pushservice/message/j;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/message/j;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/message/j$1;->a:Lcom/baidu/android/pushservice/message/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/message/j$1;->a:Lcom/baidu/android/pushservice/message/j;

    iget-object v0, v0, Lcom/baidu/android/pushservice/message/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/util/q;->c(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/android/pushservice/message/j;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "deleteInvalidAlarmMsg"

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
