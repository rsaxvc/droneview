.class public Lobject/p2pipcam/utils/MyWifiUtils;
.super Ljava/lang/Object;
.source "MyWifiUtils.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field connManager:Landroid/net/ConnectivityManager;

.field private localWifiManager:Landroid/net/wifi/WifiManager;

.field private wifiConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private wifiConnectedInfo:Landroid/net/wifi/WifiInfo;

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lobject/p2pipcam/utils/MyWifiUtils;->localWifiManager:Landroid/net/wifi/WifiManager;

    .line 26
    const-string v0, "connectivity"

    invoke-direct {p0, v0}, Lobject/p2pipcam/utils/MyWifiUtils;->getSystemService(Ljava/lang/String;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pipcam/utils/MyWifiUtils;->connManager:Landroid/net/ConnectivityManager;

    .line 27
    sput-object p1, Lobject/p2pipcam/utils/MyWifiUtils;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method public static connectToWifi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 145
    move-object v0, p0

    .line 146
    .local v0, "SSID":Ljava/lang/String;
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 147
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    .line 148
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    .line 149
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    .line 150
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    .line 151
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clear()V

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 154
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 155
    iput v5, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 157
    sget-object v3, Lobject/p2pipcam/utils/MyWifiUtils;->mContext:Landroid/content/Context;

    .line 158
    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 157
    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 159
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 161
    return-void
.end method

.method public static connectToWifiAP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 164
    move-object v1, p0

    .line 165
    .local v1, "SSID":Ljava/lang/String;
    move-object v0, p1

    .line 166
    .local v0, "PWD":Ljava/lang/String;
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 167
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->clear()V

    .line 168
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->clear()V

    .line 169
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->clear()V

    .line 170
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->clear()V

    .line 171
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v4}, Ljava/util/BitSet;->clear()V

    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 174
    iput-boolean v6, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 175
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 176
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 177
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    .line 178
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    .line 180
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 181
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 182
    iput v7, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 183
    sget-object v4, Lobject/p2pipcam/utils/MyWifiUtils;->mContext:Landroid/content/Context;

    .line 184
    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 183
    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 185
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    invoke-virtual {v3, v4, v6}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 187
    return-void
.end method

.method private getSystemService(Ljava/lang/String;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p1, "connectivityService"    # Ljava/lang/String;

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public AddWifiConfig(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "wifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v3, -0x1

    .line 108
    .local v3, "wifiId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    move v4, v3

    .line 124
    .end local v3    # "wifiId":I
    .local v4, "wifiId":I
    :goto_1
    return v4

    .line 109
    .end local v4    # "wifiId":I
    .restart local v3    # "wifiId":I
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 110
    .local v1, "wifi":Landroid/net/wifi/ScanResult;
    iget-object v5, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 111
    const-string v5, "AddWifiConfig"

    const-string v6, "equals"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 113
    .local v2, "wifiCong":Landroid/net/wifi/WifiConfiguration;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 115
    const/4 v5, 0x0

    iput-object v5, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 116
    const/4 v5, 0x0

    iput-boolean v5, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 117
    const/4 v5, 0x2

    iput v5, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 118
    iget-object v5, p0, Lobject/p2pipcam/utils/MyWifiUtils;->localWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v2}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    .line 119
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    move v4, v3

    .line 120
    .end local v3    # "wifiId":I
    .restart local v4    # "wifiId":I
    goto :goto_1

    .line 108
    .end local v2    # "wifiCong":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "wifiId":I
    .restart local v3    # "wifiId":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public ConnectWifi(I)Z
    .locals 5
    .param p1, "wifiId"    # I

    .prologue
    const/4 v3, 0x1

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lobject/p2pipcam/utils/MyWifiUtils;->wifiConfigList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 140
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 130
    :cond_0
    iget-object v2, p0, Lobject/p2pipcam/utils/MyWifiUtils;->wifiConfigList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 131
    .local v1, "wifi":Landroid/net/wifi/WifiConfiguration;
    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v2, p1, :cond_2

    .line 133
    :goto_2
    iget-object v2, p0, Lobject/p2pipcam/utils/MyWifiUtils;->localWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, p1, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 137
    goto :goto_1

    .line 134
    :cond_1
    const-string v4, "ConnectWifi"

    iget-object v2, p0, Lobject/p2pipcam/utils/MyWifiUtils;->wifiConfigList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 129
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public IsConfiguration(Ljava/lang/String;)I
    .locals 3
    .param p1, "SSID"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string v1, "IsConfiguration"

    iget-object v2, p0, Lobject/p2pipcam/utils/MyWifiUtils;->wifiConfigList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lobject/p2pipcam/utils/MyWifiUtils;->wifiConfigList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 102
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 97
    :cond_0
    iget-object v1, p0, Lobject/p2pipcam/utils/MyWifiUtils;->wifiConfigList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v1, p0, Lobject/p2pipcam/utils/MyWifiUtils;->wifiConfigList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v1, p0, Lobject/p2pipcam/utils/MyWifiUtils;->wifiConfigList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lobject/p2pipcam/utils/MyWifiUtils;->wifiConfigList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 96
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public WifiCheckState()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lobject/p2pipcam/utils/MyWifiUtils;->localWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    return v0
.end method

.method public WifiClose()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lobject/p2pipcam/utils/MyWifiUtils;->localWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lobject/p2pipcam/utils/MyWifiUtils;->localWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 52
    :cond_0
    return-void
.end method

.method public WifiOpen()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lobject/p2pipcam/utils/MyWifiUtils;->localWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lobject/p2pipcam/utils/MyWifiUtils;->localWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 45
    :cond_0
    return-void
.end method

.method public WifiStartScan()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lobject/p2pipcam/utils/MyWifiUtils;->localWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 64
    return-void
.end method

.method public acquireWifiLock()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lobject/p2pipcam/utils/MyWifiUtils;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 206
    return-void
.end method

.method public createWifiLock(Ljava/lang/String;)V
    .locals 1
    .param p1, "lockName"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v0, p0, Lobject/p2pipcam/utils/MyWifiUtils;->localWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pipcam/utils/MyWifiUtils;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 201
    return-void
.end method

.method public disconnectWifi()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lobject/p2pipcam/utils/MyWifiUtils;->localWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 56
    return-void
.end method

.method public getConfiguration()V
    .locals 3

    .prologue
    .line 87
    iget-object v1, p0, Lobject/p2pipcam/utils/MyWifiUtils;->localWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lobject/p2pipcam/utils/MyWifiUtils;->wifiConfigList:Ljava/util/List;

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lobject/p2pipcam/utils/MyWifiUtils;->wifiConfigList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 92
    return-void

    .line 89
    :cond_0
    const-string v2, "getConfiguration"

    iget-object v1, p0, Lobject/p2pipcam/utils/MyWifiUtils;->wifiConfigList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v2, "getConfiguration"

    iget-object v1, p0, Lobject/p2pipcam/utils/MyWifiUtils;->wifiConfigList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getConnectedID()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lobject/p2pipcam/utils/MyWifiUtils;->wifiConnectedInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lobject/p2pipcam/utils/MyWifiUtils;->wifiConnectedInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    goto :goto_0
.end method

.method public getConnectedIPAddr()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lobject/p2pipcam/utils/MyWifiUtils;->wifiConnectedInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lobject/p2pipcam/utils/MyWifiUtils;->wifiConnectedInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    goto :goto_0
.end method

.method public getConnectedInfo()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lobject/p2pipcam/utils/MyWifiUtils;->localWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pipcam/utils/MyWifiUtils;->wifiConnectedInfo:Landroid/net/wifi/WifiInfo;

    .line 218
    return-void
.end method

.method public getConnectedMacAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lobject/p2pipcam/utils/MyWifiUtils;->wifiConnectedInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const-string v0, "NULL"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lobject/p2pipcam/utils/MyWifiUtils;->wifiConnectedInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getConnectedSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lobject/p2pipcam/utils/MyWifiUtils;->getConnectedInfo()V

    .line 228
    iget-object v0, p0, Lobject/p2pipcam/utils/MyWifiUtils;->wifiConnectedInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lobject/p2pipcam/utils/MyWifiUtils;->localWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWifiType()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 190
    iget-object v2, p0, Lobject/p2pipcam/utils/MyWifiUtils;->connManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 191
    .local v0, "mWifi":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reconnectWifi()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lobject/p2pipcam/utils/MyWifiUtils;->localWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reassociate()Z

    .line 60
    return-void
.end method

.method public releaseWifiLock()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lobject/p2pipcam/utils/MyWifiUtils;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lobject/p2pipcam/utils/MyWifiUtils;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 213
    :cond_0
    return-void
.end method

.method public scanResultToString(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v3, "strReturnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 82
    return-object v3

    .line 75
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 76
    .local v4, "strScan":Landroid/net/wifi/ScanResult;
    invoke-virtual {v4}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "str":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 78
    .local v0, "bool":Z
    if-nez v0, :cond_1

    .line 79
    const-string v5, "scanResultToSting"

    const-string v6, "Addfail"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
