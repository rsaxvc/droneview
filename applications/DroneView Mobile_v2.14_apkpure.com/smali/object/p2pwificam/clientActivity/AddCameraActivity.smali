.class public Lobject/p2pwificam/clientActivity/AddCameraActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "AddCameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lobject/p2pwificam/clientActivity/BridgeService$AddCameraInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread;,
        Lobject/p2pwificam/clientActivity/AddCameraActivity$SettingWifiReceiver;
    }
.end annotation


# static fields
.field private static final LIGHT_PWD:Ljava/lang/String; = "Bwpix+"

.field private static final LIGHT_USER:Ljava/lang/String; = "Bellandwyson"

.field private static final SEARCH_TIME:I = 0xbb8


# instance fields
.field private CameraType:I

.field private final REQUEST_CODE_SET_AP:I

.field private _p2p_id:Ljava/lang/String;

.field private _p2p_name:Ljava/lang/String;

.field private _use_name:Ljava/lang/String;

.field private _use_pwd:Ljava/lang/String;

.field private back:Landroid/widget/ImageButton;

.field private btnScanId:Landroid/widget/Button;

.field private btnSearchCamera:Landroid/widget/Button;

.field private btnWifiSearchCamera:Landroid/widget/Button;

.field private devNameEdit:Landroid/widget/EditText;

.field private didEdit:Landroid/widget/EditText;

.field private done:Landroid/widget/Button;

.field private isSearched:Z

.field private listAdapter:Lobject/p2pipcam/adapter/SearchListAdapter;

.field private option:I

.field private progressdlg:Landroid/app/ProgressDialog;

.field private pwdEdit:Landroid/widget/EditText;

.field private receiver:Lobject/p2pwificam/clientActivity/AddCameraActivity$SettingWifiReceiver;

.field private strName:Ljava/lang/String;

.field private strOldDID:Ljava/lang/String;

.field private strPwd:Ljava/lang/String;

.field private strUser:Ljava/lang/String;

.field private textViewAddCamera:Landroid/widget/TextView;

.field updateListHandler:Landroid/os/Handler;

.field updateThread:Ljava/lang/Runnable;

.field private userEdit:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 60
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->devNameEdit:Landroid/widget/EditText;

    .line 61
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->userEdit:Landroid/widget/EditText;

    .line 62
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->pwdEdit:Landroid/widget/EditText;

    .line 63
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->didEdit:Landroid/widget/EditText;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->strName:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->strUser:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->strPwd:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->strOldDID:Ljava/lang/String;

    .line 71
    const v0, 0xffff

    iput v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->option:I

    .line 72
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->textViewAddCamera:Landroid/widget/TextView;

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->CameraType:I

    .line 76
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->listAdapter:Lobject/p2pipcam/adapter/SearchListAdapter;

    .line 77
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->progressdlg:Landroid/app/ProgressDialog;

    .line 80
    const/16 v0, 0x14

    iput v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->REQUEST_CODE_SET_AP:I

    .line 86
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->receiver:Lobject/p2pwificam/clientActivity/AddCameraActivity$SettingWifiReceiver;

    .line 171
    new-instance v0, Lobject/p2pwificam/clientActivity/AddCameraActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/AddCameraActivity$1;-><init>(Lobject/p2pwificam/clientActivity/AddCameraActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->updateThread:Ljava/lang/Runnable;

    .line 182
    new-instance v0, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/AddCameraActivity$2;-><init>(Lobject/p2pwificam/clientActivity/AddCameraActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->updateListHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method private InitParams()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 130
    iget v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->option:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 131
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->textViewAddCamera:Landroid/widget/TextView;

    const v1, 0x7f060070

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 132
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->btnScanId:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->btnSearchCamera:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->didEdit:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 139
    :goto_0
    iget v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->option:I

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->devNameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->strName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->userEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->strUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->pwdEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->strPwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->didEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->strOldDID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->strOldDID:Ljava/lang/String;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->_p2p_id:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->didEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->strOldDID:Ljava/lang/String;

    invoke-static {v1}, Lobject/p2pipcam/utils/Pub;->DisturbUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->back:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->done:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->btnScanId:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->btnSearchCamera:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->btnWifiSearchCamera:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->textViewAddCamera:Landroid/widget/TextView;

    const v1, 0x7f06006f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->progressdlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Lobject/p2pipcam/adapter/SearchListAdapter;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->listAdapter:Lobject/p2pipcam/adapter/SearchListAdapter;

    return-object v0
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->_p2p_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->_use_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->_use_pwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->_p2p_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lobject/p2pwificam/clientActivity/AddCameraActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->_p2p_name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$15(Lobject/p2pwificam/clientActivity/AddCameraActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->_use_name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16(Lobject/p2pwificam/clientActivity/AddCameraActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->_use_pwd:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->devNameEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->userEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->pwdEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/AddCameraActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->didEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/AddCameraActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->_p2p_id:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/AddCameraActivity;)V
    .locals 0

    .prologue
    .line 464
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->done()V

    return-void
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/AddCameraActivity;)V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->startSearch()V

    return-void
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/AddCameraActivity;Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->isSearched:Z

    return-void
.end method

.method private checkTwoDimension()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 507
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.google.zxing.client.android.SCAN"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .local v8, "scanintent":Landroid/content/Intent;
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const v10, 0xffff

    invoke-virtual {v9, v8, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_6

    .line 509
    const/4 v5, 0x0

    .line 510
    .local v5, "open":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 512
    .local v6, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string v10, "BarcodeScanner.apk"

    invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 513
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    .line 514
    const-string v10, "scanner.apk"

    .line 513
    invoke-direct {v2, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 515
    .local v2, "file":Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .local v7, "out":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 517
    .local v4, "len":I
    const/16 v9, 0x400

    :try_start_1
    new-array v0, v9, [B

    .line 518
    .local v0, "buff":[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v9, -0x1

    if-ne v4, v9, :cond_2

    .line 522
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 523
    .local v3, "intent2":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 524
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    .line 526
    const-string v10, "application/vnd.android.package-archive"

    .line 525
    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 532
    if-eqz v5, :cond_0

    .line 534
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 539
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    .line 541
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 550
    .end local v0    # "buff":[B
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "intent2":Landroid/content/Intent;
    .end local v4    # "len":I
    .end local v5    # "open":Ljava/io/InputStream;
    .end local v7    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :goto_2
    return-void

    .line 519
    .restart local v0    # "buff":[B
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "len":I
    .restart local v5    # "open":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :cond_2
    const/4 v9, 0x0

    :try_start_4
    invoke-virtual {v7, v0, v9, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 528
    .end local v0    # "buff":[B
    :catch_0
    move-exception v1

    move-object v6, v7

    .line 529
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "len":I
    .end local v7    # "out":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_5
    const-string v9, "tag"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "exception:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 532
    if-eqz v5, :cond_3

    .line 534
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 539
    :cond_3
    :goto_4
    if-eqz v6, :cond_1

    .line 541
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 542
    :catch_1
    move-exception v1

    .line 543
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 535
    :catch_2
    move-exception v1

    .line 536
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 531
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 532
    :goto_5
    if-eqz v5, :cond_4

    .line 534
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 539
    :cond_4
    :goto_6
    if-eqz v6, :cond_5

    .line 541
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 546
    :cond_5
    :goto_7
    throw v9

    .line 535
    :catch_3
    move-exception v1

    .line 536
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 542
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 543
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 535
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "buff":[B
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "intent2":Landroid/content/Intent;
    .restart local v4    # "len":I
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    .line 536
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 542
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 543
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 548
    .end local v0    # "buff":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "intent2":Landroid/content/Intent;
    .end local v4    # "len":I
    .end local v5    # "open":Ljava/io/InputStream;
    .end local v7    # "out":Ljava/io/FileOutputStream;
    :cond_6
    invoke-virtual {p0, v8, v11}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 531
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "len":I
    .restart local v5    # "open":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 528
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "len":I
    :catch_7
    move-exception v1

    goto :goto_3
.end method

.method private done()V
    .locals 8

    .prologue
    const v7, 0xffff

    .line 465
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 466
    .local v0, "in":Landroid/content/Intent;
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->devNameEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, "strDevName":Ljava/lang/String;
    const-string v4, "admin"

    .line 468
    .local v4, "strUser":Ljava/lang/String;
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->pwdEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 469
    .local v3, "strPwd":Ljava/lang/String;
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->didEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "strDID":Ljava/lang/String;
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 472
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->_p2p_id:Ljava/lang/String;

    .line 475
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 476
    const v5, 0x7f060076

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->showToast(I)V

    .line 504
    :goto_0
    return-void

    .line 480
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 481
    const v5, 0x7f06007c

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->showToast(I)V

    goto :goto_0

    .line 485
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 486
    const v5, 0x7f060079

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->showToast(I)V

    goto :goto_0

    .line 489
    :cond_3
    const-string v5, "object.ipcam.client.camerainforeceiver"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    iget v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->option:I

    if-ne v5, v7, :cond_4

    .line 491
    const/4 v5, 0x1

    iput v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->option:I

    .line 493
    :cond_4
    const-string v5, "camera_option"

    iget v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->option:I

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    iget v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->option:I

    if-eq v5, v7, :cond_5

    .line 495
    const-string v5, "camera_old_id"

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->strOldDID:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    :cond_5
    const-string v5, "camera_name"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    const-string v5, "cameraid"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    const-string v5, "camera_user"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    const-string v5, "camera_pwd"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    const-string v5, "camera_type"

    iget v6, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->CameraType:I

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 503
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->finish()V

    goto :goto_0
.end method

.method private findView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 343
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->back:Landroid/widget/ImageButton;

    .line 344
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->done:Landroid/widget/Button;

    .line 345
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->devNameEdit:Landroid/widget/EditText;

    .line 346
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->userEdit:Landroid/widget/EditText;

    .line 347
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->pwdEdit:Landroid/widget/EditText;

    .line 348
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->didEdit:Landroid/widget/EditText;

    .line 349
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->btnScanId:Landroid/widget/Button;

    .line 350
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->btnSearchCamera:Landroid/widget/Button;

    .line 351
    const v0, 0x7f080027

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->btnWifiSearchCamera:Landroid/widget/Button;

    .line 352
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->textViewAddCamera:Landroid/widget/TextView;

    .line 354
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->isBell(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->didEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 357
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->userEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 358
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 365
    :cond_0
    return-void
.end method

.method private hiddenInputMethod()V
    .locals 3

    .prologue
    .line 405
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 406
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 407
    return-void
.end method

.method private searchCamera()V
    .locals 3

    .prologue
    .line 411
    iget-boolean v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->isSearched:Z

    if-nez v1, :cond_0

    .line 412
    const/4 v1, 0x1

    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->isSearched:Z

    .line 413
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->startSearch()V

    .line 462
    :goto_0
    return-void

    .line 415
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 417
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 418
    const v2, 0x7f06007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 420
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 421
    new-instance v2, Lobject/p2pwificam/clientActivity/AddCameraActivity$3;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/AddCameraActivity$3;-><init>(Lobject/p2pwificam/clientActivity/AddCameraActivity;)V

    .line 419
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 430
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 429
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 431
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->listAdapter:Lobject/p2pipcam/adapter/SearchListAdapter;

    .line 432
    new-instance v2, Lobject/p2pwificam/clientActivity/AddCameraActivity$4;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/AddCameraActivity$4;-><init>(Lobject/p2pwificam/clientActivity/AddCameraActivity;)V

    .line 431
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 460
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private startSearch()V
    .locals 4

    .prologue
    .line 297
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->listAdapter:Lobject/p2pipcam/adapter/SearchListAdapter;

    invoke-virtual {v0}, Lobject/p2pipcam/adapter/SearchListAdapter;->ClearAll()V

    .line 298
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->progressdlg:Landroid/app/ProgressDialog;

    const v1, 0x7f060097

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->progressdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 300
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread;-><init>(Lobject/p2pwificam/clientActivity/AddCameraActivity;Lobject/p2pwificam/clientActivity/AddCameraActivity$SearchThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 301
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->updateListHandler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->updateThread:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 302
    return-void
.end method


# virtual methods
.method public callBackSearchResultData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "cameraType"    # I
    .param p2, "strMac"    # Ljava/lang/String;
    .param p3, "strName"    # Ljava/lang/String;
    .param p4, "strDeviceID"    # Ljava/lang/String;
    .param p5, "strIpAddr"    # Ljava/lang/String;
    .param p6, "port"    # I

    .prologue
    const/4 v0, 0x0

    .line 660
    sput-object p3, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->strCamName:Ljava/lang/String;

    .line 661
    sput-object p4, Lobject/p2pwificam/clientActivity/IpcamClientActivity;->strDID:Ljava/lang/String;

    .line 662
    sput-object v0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devCamName:Ljava/lang/String;

    .line 663
    sput-object v0, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devDID:Ljava/lang/String;

    .line 664
    sput-object p3, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devCamName:Ljava/lang/String;

    .line 665
    sput-object p4, Lobject/p2pwificam/clientActivity/SettingAPWifiActivity;->devDID:Ljava/lang/String;

    .line 666
    const-string v0, "strDIDtag"

    const-string v1, "add"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const-string v0, "strDIDtag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "strName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "strDID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "strIpAddr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "port:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->listAdapter:Lobject/p2pipcam/adapter/SearchListAdapter;

    invoke-virtual {v0, p2, p3, p4}, Lobject/p2pipcam/adapter/SearchListAdapter;->AddCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 554
    invoke-super {p0, p1, p2, p3}, Lobject/p2pwificam/clientActivity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 555
    if-nez p1, :cond_4

    .line 556
    const/4 v5, -0x1

    if-ne p2, v5, :cond_2

    .line 558
    const/4 v0, 0x0

    .line 559
    .local v0, "contents":Ljava/lang/String;
    :try_start_0
    const-string v5, "SCAN_RESULT"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 560
    .local v4, "result":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 562
    const-string v5, "scan_result"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 564
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 566
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v1, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v0    # "contents":Ljava/lang/String;
    .local v1, "contents":Ljava/lang/String;
    move-object v0, v1

    .line 568
    .end local v1    # "contents":Ljava/lang/String;
    .restart local v0    # "contents":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 569
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->didEdit:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 612
    .end local v0    # "contents":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 571
    .restart local v0    # "contents":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    :cond_3
    const v5, 0x7f06007e

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->showToast(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 574
    .end local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 575
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 579
    .end local v0    # "contents":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    const/16 v5, 0x14

    if-ne p1, v5, :cond_2

    .line 581
    const-string v5, "strDIDtag"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "requestCode ==="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const-string v5, "strDIDtag"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "resultCode ===  "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 587
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 588
    .local v3, "extras":Landroid/os/Bundle;
    const-string v5, "P2P_ID"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->_p2p_id:Ljava/lang/String;

    .line 589
    const-string v5, "P2P_NAME"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->_p2p_name:Ljava/lang/String;

    .line 590
    const-string v5, "USE_NAME"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->_use_name:Ljava/lang/String;

    .line 591
    const-string v5, "USE_PWD"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->_use_pwd:Ljava/lang/String;

    .line 593
    const-string v5, "strDIDtag"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_p2p_id === "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->_p2p_id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const-string v5, "strDIDtag"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_p2p_name === "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->_p2p_name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const-string v5, "strDIDtag"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_use_name === "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->_use_name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const-string v5, "strDIDtag"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_use_pwd === "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->_use_pwd:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 584
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v3, 0x7f040006

    const/high16 v2, 0x7f040000

    .line 369
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 401
    :goto_0
    return-void

    .line 371
    :sswitch_0
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->finish()V

    .line 372
    invoke-virtual {p0, v3, v2}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 375
    :sswitch_1
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->done()V

    .line 376
    invoke-virtual {p0, v3, v2}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 386
    :sswitch_2
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->checkTwoDimension()V

    goto :goto_0

    .line 389
    :sswitch_3
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->searchCamera()V

    goto :goto_0

    .line 393
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lobject/p2pwificam/clientActivity/DeviceInitActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 396
    .local v0, "in":Landroid/content/Intent;
    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 369
    :sswitch_data_0
    .sparse-switch
        0x7f080019 -> :sswitch_0
        0x7f08001b -> :sswitch_1
        0x7f080025 -> :sswitch_2
        0x7f080026 -> :sswitch_3
        0x7f080027 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v2, 0xffff

    .line 90
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->requestWindowFeature(I)Z

    .line 92
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->setContentView(I)V

    .line 93
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 94
    .local v0, "in":Landroid/content/Intent;
    const-string v1, "camera_option"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->option:I

    .line 96
    iget v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->option:I

    if-eq v1, v2, :cond_0

    .line 97
    const-string v1, "camera_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->strName:Ljava/lang/String;

    .line 98
    const-string v1, "cameraid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->strOldDID:Ljava/lang/String;

    .line 99
    const-string v1, "camera_user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->strUser:Ljava/lang/String;

    .line 100
    const-string v1, "camera_pwd"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->strPwd:Ljava/lang/String;

    .line 102
    :cond_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->progressdlg:Landroid/app/ProgressDialog;

    .line 103
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->progressdlg:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 104
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->progressdlg:Landroid/app/ProgressDialog;

    const v2, 0x7f060097

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 105
    new-instance v1, Lobject/p2pipcam/adapter/SearchListAdapter;

    invoke-direct {v1, p0}, Lobject/p2pipcam/adapter/SearchListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->listAdapter:Lobject/p2pipcam/adapter/SearchListAdapter;

    .line 106
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->findView()V

    .line 107
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->InitParams()V

    .line 109
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 168
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->receiver:Lobject/p2pwificam/clientActivity/AddCameraActivity$SettingWifiReceiver;

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 125
    const v0, 0x7f040006

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->overridePendingTransition(II)V

    .line 126
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onPause()V

    .line 127
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 113
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->receiver:Lobject/p2pwificam/clientActivity/AddCameraActivity$SettingWifiReceiver;

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Lobject/p2pwificam/clientActivity/AddCameraActivity$SettingWifiReceiver;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/AddCameraActivity$SettingWifiReceiver;-><init>(Lobject/p2pwificam/clientActivity/AddCameraActivity;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->receiver:Lobject/p2pwificam/clientActivity/AddCameraActivity$SettingWifiReceiver;

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 117
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "setting_ap_wifi"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->receiver:Lobject/p2pwificam/clientActivity/AddCameraActivity$SettingWifiReceiver;

    invoke-virtual {p0, v1, v0}, Lobject/p2pwificam/clientActivity/AddCameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onStart()V

    .line 121
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AddCameraActivity;->progressdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 161
    invoke-static {}, Lobject/p2pipcam/nativecaller/NativeCaller;->StopSearch()V

    .line 162
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onStop()V

    .line 163
    return-void
.end method
