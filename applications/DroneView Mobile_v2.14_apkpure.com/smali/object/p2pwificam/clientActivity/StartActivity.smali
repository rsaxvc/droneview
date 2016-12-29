.class public Lobject/p2pwificam/clientActivity/StartActivity;
.super Landroid/app/Activity;
.source "StartActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "StartActivity"

.field public static mAppid:Ljava/lang/String;

.field public static userName:Ljava/lang/String;


# instance fields
.field private QQbutton:Landroid/widget/ImageButton;

.field private accept_license:I

.field private btBack:Landroid/widget/Button;

.field private event_did:Ljava/lang/String;

.field private event_index:I

.field private event_time:I

.field private event_type:I

.field private mHandler:Landroid/os/Handler;

.field private openid:Ljava/lang/String;

.field private preference:Landroid/content/SharedPreferences;

.field private start_mode:I

.field private token_tencent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "\u4eb2\u7231\u7684\u7528\u6237\uff0c\u8bf7\u6388\u6743\u767b\u5f55!"

    sput-object v0, Lobject/p2pwificam/clientActivity/StartActivity;->userName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    iput v0, p0, Lobject/p2pwificam/clientActivity/StartActivity;->accept_license:I

    .line 62
    iput v0, p0, Lobject/p2pwificam/clientActivity/StartActivity;->start_mode:I

    .line 64
    iput v0, p0, Lobject/p2pwificam/clientActivity/StartActivity;->event_index:I

    .line 65
    iput v0, p0, Lobject/p2pwificam/clientActivity/StartActivity;->event_type:I

    .line 66
    iput v0, p0, Lobject/p2pwificam/clientActivity/StartActivity;->event_time:I

    .line 68
    new-instance v0, Lobject/p2pwificam/clientActivity/StartActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/StartActivity$1;-><init>(Lobject/p2pwificam/clientActivity/StartActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/StartActivity;->mHandler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/StartActivity;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lobject/p2pwificam/clientActivity/StartActivity;->start_mode:I

    return v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/StartActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/StartActivity;->event_did:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/StartActivity;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lobject/p2pwificam/clientActivity/StartActivity;->event_type:I

    return v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/StartActivity;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lobject/p2pwificam/clientActivity/StartActivity;->event_index:I

    return v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/StartActivity;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lobject/p2pwificam/clientActivity/StartActivity;->event_time:I

    return v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/StartActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/StartActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private assertIsExists(Ljava/lang/String;)Z
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, "assets":Landroid/content/res/AssetManager;
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/StartActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 386
    :try_start_0
    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_0
    if-lt v4, v6, :cond_0

    .line 394
    :goto_1
    return v3

    .line 386
    :cond_0
    aget-object v2, v5, v4

    .line 388
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    .line 386
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 390
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 392
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private getEventData(Landroid/content/Intent;)V
    .locals 2
    .param p1, "in"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 399
    const-string v0, "did"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/StartActivity;->event_did:Ljava/lang/String;

    .line 400
    const-string v0, "event_type"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lobject/p2pwificam/clientActivity/StartActivity;->event_type:I

    .line 401
    const-string v0, "event_index"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lobject/p2pwificam/clientActivity/StartActivity;->event_index:I

    .line 402
    const-string v0, "event_time"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lobject/p2pwificam/clientActivity/StartActivity;->event_time:I

    .line 403
    return-void
.end method

.method private load_license()V
    .locals 10

    .prologue
    .line 364
    const v6, 0x7f080010

    invoke-virtual {p0, v6}, Lobject/p2pwificam/clientActivity/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebView;

    .line 365
    .local v5, "wView":Landroid/webkit/WebView;
    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 366
    .local v3, "mWebSettings":Landroid/webkit/WebSettings;
    sget-object v6, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 367
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/StartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v2, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 368
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "language":Ljava/lang/String;
    const-string v6, "tag"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "lang:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v6, "CLUF_BW_PIX_%s.html"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "fileName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lobject/p2pwificam/clientActivity/StartActivity;->assertIsExists(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 373
    const-string v6, "tag"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " not exists!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v0, "CLUF_BW_PIX_EN.html"

    .line 376
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "file:///android_asset/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 377
    .local v4, "url":Ljava/lang/String;
    const-string v6, "tag"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "url:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {v5, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method private showSureDialog()V
    .locals 4

    .prologue
    .line 328
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 329
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/StartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060061

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/StartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f060000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 333
    const v1, 0x7f06000c

    .line 334
    new-instance v2, Lobject/p2pwificam/clientActivity/StartActivity$3;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/StartActivity$3;-><init>(Lobject/p2pwificam/clientActivity/StartActivity;)V

    .line 333
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 340
    const v1, 0x7f06000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 341
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 342
    return-void
.end method


# virtual methods
.method public StartandMain()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 304
    const-string v3, "user_info"

    invoke-virtual {p0, v3, v5}, Lobject/p2pwificam/clientActivity/StartActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 305
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "openid"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "open_id":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\uff1aopen_id:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 307
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 308
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lobject/p2pwificam/clientActivity/MainActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 309
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/StartActivity;->startActivity(Landroid/content/Intent;)V

    .line 310
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/StartActivity;->finish()V

    .line 312
    .end local v0    # "in":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 357
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 361
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    const-string v8, "StartActivity"

    const-string v9, "StartActivity onCreate"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0, v12}, Lobject/p2pwificam/clientActivity/StartActivity;->requestWindowFeature(I)Z

    .line 143
    const v8, 0x7f030072

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/StartActivity;->setContentView(I)V

    .line 145
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/StartActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lobject/p2pipcam/utils/Pub;->load(Landroid/content/Context;)V

    .line 146
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/StartActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/easyview/ndt/LogUtil;->setLogFileName(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lobject/p2pipcam/utils/Pub;->getSaveLogFile()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v8}, Lcom/easyview/ndt/LogUtil;->writeLogToFile(Ljava/lang/Boolean;)V

    .line 148
    iput v11, p0, Lobject/p2pwificam/clientActivity/StartActivity;->start_mode:I

    .line 149
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/StartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 150
    .local v3, "in":Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 151
    const-string v8, "mode"

    invoke-virtual {v3, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lobject/p2pwificam/clientActivity/StartActivity;->start_mode:I

    .line 152
    iget v8, p0, Lobject/p2pwificam/clientActivity/StartActivity;->start_mode:I

    if-ne v8, v10, :cond_0

    .line 154
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/StartActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v10}, Lobject/p2pipcam/utils/NDTSUtils;->Start(Landroid/content/Context;I)V

    .line 155
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/StartActivity;->finish()V

    .line 296
    :goto_0
    return-void

    .line 158
    :cond_0
    iget v8, p0, Lobject/p2pwificam/clientActivity/StartActivity;->start_mode:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    .line 160
    invoke-direct {p0, v3}, Lobject/p2pwificam/clientActivity/StartActivity;->getEventData(Landroid/content/Intent;)V

    .line 162
    :cond_1
    const-string v8, "ndt"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "StartActivity "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lobject/p2pwificam/clientActivity/StartActivity;->start_mode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/easyview/ndt/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v8, "did"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "did":Ljava/lang/String;
    const-string v8, "StartActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "StartActivity onCreate "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lobject/p2pwificam/clientActivity/StartActivity;->start_mode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " did:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const v8, 0x7f080078

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/StartActivity;->findViewById(I)Landroid/view/View;

    .line 170
    .end local v1    # "did":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->get_event_notification(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 172
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/StartActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v12}, Lobject/p2pipcam/utils/NDTSUtils;->Start(Landroid/content/Context;I)V

    .line 177
    :cond_3
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->getAcceptLicense(Landroid/content/Context;)I

    move-result v8

    iput v8, p0, Lobject/p2pwificam/clientActivity/StartActivity;->accept_license:I

    .line 231
    const-string v0, ""

    .line 233
    .local v0, "appVersion":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/StartActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/StartActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_1
    const v8, 0x7f080012

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 239
    .local v6, "txtVersion":Landroid/widget/TextView;
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    invoke-static {}, Lobject/p2pipcam/utils/RecordDownTask;->getInstance()Lobject/p2pipcam/utils/RecordDownTask;

    move-result-object v8

    invoke-virtual {v8}, Lobject/p2pipcam/utils/RecordDownTask;->Clear()V

    .line 248
    const/4 v5, 0x0

    .line 249
    .local v5, "n":I
    const-string v8, "camera_info"

    invoke-virtual {p0, v8, v11}, Lobject/p2pwificam/clientActivity/StartActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lobject/p2pwificam/clientActivity/StartActivity;->preference:Landroid/content/SharedPreferences;

    .line 250
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/StartActivity;->preference:Landroid/content/SharedPreferences;

    const-string v9, "isFirst"

    invoke-interface {v8, v9, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 251
    if-ne v12, v5, :cond_4

    .line 253
    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/StartActivity;->randomName(I)Ljava/lang/String;

    move-result-object v7

    .line 255
    .local v7, "userName":Ljava/lang/String;
    iget-object v8, p0, Lobject/p2pwificam/clientActivity/StartActivity;->preference:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 256
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "isFirst"

    invoke-interface {v2, v8, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 257
    const-string v8, "camera_user"

    invoke-interface {v2, v8, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 258
    const-string v8, "activity"

    invoke-interface {v2, v8, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 259
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 262
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "userName":Ljava/lang/String;
    :cond_4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 263
    .local v4, "intent":Landroid/content/Intent;
    const-class v8, Lobject/p2pwificam/clientActivity/BridgeService;

    invoke-virtual {v4, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 264
    invoke-virtual {p0, v4}, Lobject/p2pwificam/clientActivity/StartActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 266
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lobject/p2pwificam/clientActivity/StartActivity$2;

    invoke-direct {v9, p0}, Lobject/p2pwificam/clientActivity/StartActivity$2;-><init>(Lobject/p2pwificam/clientActivity/StartActivity;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 295
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 234
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "n":I
    .end local v6    # "txtVersion":Landroid/widget/TextView;
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 299
    const-string v0, "StartActivity"

    const-string v1, "StartActivity onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 301
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 315
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v0

    .line 319
    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 322
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public randomName(I)Ljava/lang/String;
    .locals 10
    .param p1, "length"    # I

    .prologue
    const/16 v8, 0x1a

    .line 111
    new-array v1, v8, [C

    .line 113
    .local v1, "chars":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v8, :cond_0

    .line 117
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 119
    .local v0, "a":Ljava/lang/String;
    const-string v7, "radom"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "chars  =====   ======="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 123
    .local v4, "random":Ljava/util/Random;
    new-array v6, p1, [C

    .line 125
    .local v6, "t_data":[C
    const/4 v2, 0x0

    :goto_1
    if-lt v2, p1, :cond_1

    .line 130
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    .line 132
    .local v5, "s":Ljava/lang/String;
    const-string v7, "radom"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "s  =====   ======="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-object v5

    .line 115
    .end local v0    # "a":Ljava/lang/String;
    .end local v4    # "random":Ljava/util/Random;
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "t_data":[C
    :cond_0
    add-int/lit8 v7, v2, 0x61

    int-to-char v7, v7

    aput-char v7, v1, v2

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .restart local v0    # "a":Ljava/lang/String;
    .restart local v4    # "random":Ljava/util/Random;
    .restart local v6    # "t_data":[C
    :cond_1
    array-length v7, v1

    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 127
    .local v3, "index":I
    aget-char v7, v1, v3

    aput-char v7, v6, v2

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
