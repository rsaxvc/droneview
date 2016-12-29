.class Lobject/p2pwificam/clientActivity/SettingActivity$3;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lobject/p2pwificam/clientActivity/SettingActivity;->BWshareMemo(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lobject/p2pwificam/clientActivity/SettingActivity;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lobject/p2pwificam/clientActivity/SettingActivity;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/SettingActivity$3;->this$0:Lobject/p2pwificam/clientActivity/SettingActivity;

    iput-object p2, p0, Lobject/p2pwificam/clientActivity/SettingActivity$3;->val$uid:Ljava/lang/String;

    iput-object p3, p0, Lobject/p2pwificam/clientActivity/SettingActivity$3;->val$context:Landroid/content/Context;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 311
    const/4 v3, 0x0

    .line 312
    .local v3, "uri":Landroid/net/Uri;
    new-instance v1, Lobject/p2pipcam/zxingtwodimensioncode/QRCodeEncoder;

    invoke-direct {v1}, Lobject/p2pipcam/zxingtwodimensioncode/QRCodeEncoder;-><init>()V

    .line 315
    .local v1, "encoder":Lobject/p2pipcam/zxingtwodimensioncode/QRCodeEncoder;
    :try_start_0
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingActivity$3;->val$uid:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lobject/p2pipcam/zxingtwodimensioncode/QRCodeEncoder;->Create2DCode(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 314
    invoke-virtual {v1, v4}, Lobject/p2pipcam/zxingtwodimensioncode/QRCodeEncoder;->WriteBitmap(Landroid/graphics/Bitmap;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 322
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .local v2, "it":Landroid/content/Intent;
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 325
    const-string v4, "image/png"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/SettingActivity$3;->val$context:Landroid/content/Context;

    .line 328
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/SettingActivity$3;->val$context:Landroid/content/Context;

    const v6, 0x7f0600a6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 326
    invoke-static {v2, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 329
    return-void

    .line 317
    .end local v2    # "it":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Lcom/google/zxing/WriterException;
    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    goto :goto_0
.end method
