.class public Lcom/tencent/android/tpush/service/d/e;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static a:I

.field private static b:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/service/d/e;->b:Landroid/content/SharedPreferences;

    .line 55
    const/16 v0, 0x64

    sput v0, Lcom/tencent/android/tpush/service/d/e;->a:I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 39
    invoke-static {p0}, Lcom/tencent/android/tpush/service/d/e;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 40
    sget-object v0, Lcom/tencent/android/tpush/service/d/e;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 41
    return v0
.end method

.method private static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/tencent/android/tpush/service/d/e;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 110
    const-string v0, "tpush.shareprefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/d/e;->b:Landroid/content/SharedPreferences;

    .line 112
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/service/d/e;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 46
    :try_start_0
    invoke-static {p0}, Lcom/tencent/android/tpush/service/d/e;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 47
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    goto :goto_0
.end method
