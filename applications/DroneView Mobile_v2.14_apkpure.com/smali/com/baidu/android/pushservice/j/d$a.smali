.class Lcom/baidu/android/pushservice/j/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/android/pushservice/j/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/content/pm/ApplicationInfo;

.field public b:I

.field public c:Z

.field public d:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/baidu/android/pushservice/j/d$a;->b:I

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/j/d$a;->c:Z

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/j/d$a;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/android/pushservice/j/d$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/android/pushservice/j/d$a;-><init>()V

    return-void
.end method
