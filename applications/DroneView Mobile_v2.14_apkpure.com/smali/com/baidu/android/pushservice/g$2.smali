.class Lcom/baidu/android/pushservice/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/android/pushservice/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/android/pushservice/g;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/g;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/g$2;->a:Lcom/baidu/android/pushservice/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/g$2;->a:Lcom/baidu/android/pushservice/g;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/android/pushservice/g;->a(Landroid/content/Intent;)Z

    return-void
.end method
