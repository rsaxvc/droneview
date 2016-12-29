.class public Lobject/p2pwificam/clientActivity/AboutActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pwificam/clientActivity/AboutActivity$MyAdapter;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AboutActivity"


# instance fields
.field private _viewPager:Landroid/support/v4/view/ViewPager;

.field private clearButton:Landroid/widget/Button;

.field private clearProgressBar:Landroid/widget/ProgressBar;

.field private click_count:I

.field private delFileCount:I

.field private imgIdArray:[I

.field private mImageViews:[Landroid/widget/ImageView;

.field private ms:J

.field private outButton:Landroid/widget/Button;

.field private stopDel:Z

.field private tips:[Landroid/widget/ImageView;

.field private totalFileCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->clearProgressBar:Landroid/widget/ProgressBar;

    .line 38
    iput v1, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->totalFileCount:I

    .line 39
    iput v1, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->delFileCount:I

    .line 40
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->stopDel:Z

    .line 119
    iput v1, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->click_count:I

    .line 120
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->ms:J

    .line 31
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/AboutActivity;)[Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->mImageViews:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/AboutActivity;I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->totalFileCount:I

    return-void
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/AboutActivity;I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->delFileCount:I

    return-void
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/AboutActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->clearProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/AboutActivity;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->totalFileCount:I

    return v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/AboutActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->clearButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/AboutActivity;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->delFileCount:I

    return v0
.end method


# virtual methods
.method public ClearAllFile()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->clearProgressBar:Landroid/widget/ProgressBar;

    .line 168
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->clearProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->clearButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 170
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->stopDel:Z

    .line 171
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lobject/p2pwificam/clientActivity/AboutActivity$2;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/AboutActivity$2;-><init>(Lobject/p2pwificam/clientActivity/AboutActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 197
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 198
    return-void
.end method

.method public DeleteFolder(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "stat"    # Z

    .prologue
    .line 268
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    const/4 v1, 0x0

    .line 277
    :goto_0
    return v1

    .line 272
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    invoke-virtual {p0, p1}, Lobject/p2pwificam/clientActivity/AboutActivity;->deleteFile(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {p0, p1, p2}, Lobject/p2pwificam/clientActivity/AboutActivity;->deleteDirectory(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public deleteDirectory(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "stat"    # Z

    .prologue
    const/4 v4, 0x0

    .line 218
    const/4 v2, 0x0

    .line 220
    .local v2, "flag":Z
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 221
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 223
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, "dirFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    .line 259
    :cond_1
    :goto_0
    return v4

    .line 227
    :cond_2
    const/4 v2, 0x1

    .line 228
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 229
    .local v1, "files":[Ljava/io/File;
    if-eqz p2, :cond_3

    .line 231
    iget v5, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->totalFileCount:I

    array-length v6, v1

    add-int/2addr v5, v6

    iput v5, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->totalFileCount:I

    .line 235
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, v1

    if-lt v3, v5, :cond_5

    .line 257
    :cond_4
    :goto_2
    if-eqz v2, :cond_1

    .line 259
    const/4 v4, 0x1

    goto :goto_0

    .line 236
    :cond_5
    iget-boolean v5, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->stopDel:Z

    if-nez v5, :cond_1

    .line 237
    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 239
    if-nez p2, :cond_6

    .line 241
    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/AboutActivity;->deleteFile(Ljava/lang/String;)Z

    move-result v2

    .line 242
    if-eqz v2, :cond_4

    .line 243
    iget v5, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->delFileCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->delFileCount:I

    .line 244
    new-instance v5, Lobject/p2pwificam/clientActivity/AboutActivity$3;

    invoke-direct {v5, p0}, Lobject/p2pwificam/clientActivity/AboutActivity$3;-><init>(Lobject/p2pwificam/clientActivity/AboutActivity;)V

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/AboutActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 235
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 253
    :cond_7
    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Lobject/p2pwificam/clientActivity/AboutActivity;->deleteDirectory(Ljava/lang/String;Z)Z

    move-result v2

    .line 254
    if-nez v2, :cond_6

    goto :goto_2
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 205
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 209
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 164
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 126
    :pswitch_1
    invoke-virtual {p0, p0}, Lobject/p2pwificam/clientActivity/AboutActivity;->showSureDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 138
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0601f3

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 140
    const v4, 0x7f06000e

    new-instance v5, Lobject/p2pwificam/clientActivity/AboutActivity$1;

    invoke-direct {v5, p0}, Lobject/p2pwificam/clientActivity/AboutActivity$1;-><init>(Lobject/p2pwificam/clientActivity/AboutActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    const v4, 0x7f06000d

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 147
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 151
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 152
    .local v1, "c":J
    iget-wide v4, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->ms:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0xc8

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    iget v4, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->click_count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->click_count:I

    .line 154
    :goto_1
    iput-wide v1, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->ms:J

    .line 155
    iget v4, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->click_count:I

    const/4 v5, 0x6

    if-le v4, v5, :cond_0

    .line 157
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lobject/p2pwificam/clientActivity/SystemSettingActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .local v3, "in":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/AboutActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 153
    .end local v3    # "in":Landroid/content/Intent;
    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->click_count:I

    goto :goto_1

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x7f080012
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const-string v5, "AboutActivity"

    const-string v6, "AboutActivity onCreate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/AboutActivity;->requestWindowFeature(I)Z

    .line 61
    const/high16 v5, 0x7f030000

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/AboutActivity;->setContentView(I)V

    .line 62
    const-string v1, ""

    .line 64
    .local v1, "appVersion":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/AboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/AboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v1, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    const v5, 0x7f080012

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 70
    .local v4, "txtVersion":Landroid/widget/TextView;
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v5, 0x7f080011

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->_viewPager:Landroid/support/v4/view/ViewPager;

    .line 74
    const/high16 v5, 0x7f060000

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "appName":Ljava/lang/String;
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->_viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v5, :cond_0

    .line 77
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->imgIdArray:[I

    .line 80
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->imgIdArray:[I

    array-length v5, v5

    new-array v5, v5, [Landroid/widget/ImageView;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->mImageViews:[Landroid/widget/ImageView;

    .line 81
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->mImageViews:[Landroid/widget/ImageView;

    array-length v5, v5

    if-lt v2, v5, :cond_3

    .line 88
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->_viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lobject/p2pwificam/clientActivity/AboutActivity$MyAdapter;

    invoke-direct {v6, p0}, Lobject/p2pwificam/clientActivity/AboutActivity$MyAdapter;-><init>(Lobject/p2pwificam/clientActivity/AboutActivity;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 92
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->_viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->mImageViews:[Landroid/widget/ImageView;

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x64

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 94
    const-string v5, "CamBox"

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 96
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->_viewPager:Landroid/support/v4/view/ViewPager;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 99
    .end local v2    # "i":I
    :cond_0
    const v5, 0x7f080015

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->outButton:Landroid/widget/Button;

    .line 100
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->outButton:Landroid/widget/Button;

    if-eqz v5, :cond_1

    .line 107
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->outButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    :cond_1
    const v5, 0x7f080014

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->clearButton:Landroid/widget/Button;

    .line 111
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->clearButton:Landroid/widget/Button;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->clearButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :cond_2
    return-void

    .line 82
    .restart local v2    # "i":I
    :cond_3
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 83
    .local v3, "imageView":Landroid/widget/ImageView;
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->mImageViews:[Landroid/widget/ImageView;

    aput-object v3, v5, v2

    .line 84
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->imgIdArray:[I

    aget v5, v5, v2

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 65
    .end local v0    # "appName":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "imageView":Landroid/widget/ImageView;
    .end local v4    # "txtVersion":Landroid/widget/TextView;
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 77
    nop

    :array_0
    .array-data 4
        0x7f020084
        0x7f020088
        0x7f020087
        0x7f020086
        0x7f020085
    .end array-data
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 115
    const-string v0, "AboutActivity"

    const-string v1, "AboutActivity onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lobject/p2pwificam/clientActivity/AboutActivity;->stopDel:Z

    .line 117
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onPause()V

    .line 118
    return-void
.end method
