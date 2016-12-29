.class public Lobject/p2pwificam/clientActivity/BWLicenseActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "BWLicenseActivity.java"


# instance fields
.field private mWebSettings:Landroid/webkit/WebSettings;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    return-void
.end method

.method private assertIsExists(Ljava/lang/String;)Z
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "assets":Landroid/content/res/AssetManager;
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/BWLicenseActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 44
    :try_start_0
    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_0
    if-lt v4, v6, :cond_0

    .line 52
    :goto_1
    return v3

    .line 44
    :cond_0
    aget-object v2, v5, v4

    .line 46
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    .line 44
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 48
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 21
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0, v8}, Lobject/p2pwificam/clientActivity/BWLicenseActivity;->requestWindowFeature(I)Z

    .line 23
    const v5, 0x7f030013

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/BWLicenseActivity;->setContentView(I)V

    .line 24
    const v5, 0x7f080010

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/BWLicenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    .line 25
    .local v4, "wView":Landroid/webkit/WebView;
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/BWLicenseActivity;->mWebSettings:Landroid/webkit/WebSettings;

    .line 26
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/BWLicenseActivity;->mWebSettings:Landroid/webkit/WebSettings;

    sget-object v6, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 27
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/BWLicenseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v2, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 28
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "language":Ljava/lang/String;
    const-string v5, "tag"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "lang:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string v5, "CLUF_BW_PIX_%s.html"

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "fileName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lobject/p2pwificam/clientActivity/BWLicenseActivity;->assertIsExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 33
    const-string v5, "tag"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " not exists!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v0, "CLUF_BW_PIX_EN.html"

    .line 36
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "file:///android_asset/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "url":Ljava/lang/String;
    const-string v5, "tag"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "url:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {v4, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 39
    return-void
.end method
