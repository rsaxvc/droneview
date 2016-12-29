.class public Lobject/p2pipcam/adapter/WifiScanListAdapter;
.super Landroid/widget/BaseAdapter;
.source "WifiScanListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lobject/p2pipcam/adapter/WifiScanListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private holder:Lobject/p2pipcam/adapter/WifiScanListAdapter$ViewHolder;

.field private inflater:Landroid/view/LayoutInflater;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/easyview/bean/WifiScanBean;",
            ">;"
        }
    .end annotation
.end field

.field list2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pipcam/adapter/WifiScanListAdapter;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 29
    iput-object p1, p0, Lobject/p2pipcam/adapter/WifiScanListAdapter;->context:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pipcam/adapter/WifiScanListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lobject/p2pipcam/adapter/WifiScanListAdapter;->list:Ljava/util/ArrayList;

    .line 34
    return-void
.end method

.method private getSystemService(Ljava/lang/String;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p1, "wifiService"    # Ljava/lang/String;

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addWifiScan(Lcom/easyview/bean/WifiScanBean;)V
    .locals 1
    .param p1, "wifiScanBean"    # Lcom/easyview/bean/WifiScanBean;

    .prologue
    .line 119
    iget-object v0, p0, Lobject/p2pipcam/adapter/WifiScanListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public clearWifi()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lobject/p2pipcam/adapter/WifiScanListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lobject/p2pipcam/adapter/WifiScanListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 54
    if-nez p2, :cond_0

    .line 55
    iget-object v2, p0, Lobject/p2pipcam/adapter/WifiScanListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 56
    const v3, 0x7f030067

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    new-instance v2, Lobject/p2pipcam/adapter/WifiScanListAdapter$ViewHolder;

    invoke-direct {v2, p0, v4}, Lobject/p2pipcam/adapter/WifiScanListAdapter$ViewHolder;-><init>(Lobject/p2pipcam/adapter/WifiScanListAdapter;Lobject/p2pipcam/adapter/WifiScanListAdapter$ViewHolder;)V

    iput-object v2, p0, Lobject/p2pipcam/adapter/WifiScanListAdapter;->holder:Lobject/p2pipcam/adapter/WifiScanListAdapter$ViewHolder;

    .line 59
    iget-object v3, p0, Lobject/p2pipcam/adapter/WifiScanListAdapter;->holder:Lobject/p2pipcam/adapter/WifiScanListAdapter$ViewHolder;

    const v2, 0x7f0802dd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lobject/p2pipcam/adapter/WifiScanListAdapter$ViewHolder;->ssid:Landroid/widget/TextView;

    .line 60
    iget-object v3, p0, Lobject/p2pipcam/adapter/WifiScanListAdapter;->holder:Lobject/p2pipcam/adapter/WifiScanListAdapter$ViewHolder;

    .line 61
    const v2, 0x7f0802ee

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 60
    iput-object v2, v3, Lobject/p2pipcam/adapter/WifiScanListAdapter$ViewHolder;->safe:Landroid/widget/TextView;

    .line 62
    iget-object v3, p0, Lobject/p2pipcam/adapter/WifiScanListAdapter;->holder:Lobject/p2pipcam/adapter/WifiScanListAdapter$ViewHolder;

    .line 63
    const v2, 0x7f0802ef

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 62
    iput-object v2, v3, Lobject/p2pipcam/adapter/WifiScanListAdapter$ViewHolder;->signal:Landroid/widget/TextView;

    .line 64
    iget-object v2, p0, Lobject/p2pipcam/adapter/WifiScanListAdapter;->holder:Lobject/p2pipcam/adapter/WifiScanListAdapter$ViewHolder;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    :goto_0
    iget-object v2, p0, Lobject/p2pipcam/adapter/WifiScanListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 70
    const v2, 0x7f0200b0

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 81
    :goto_1
    iget-object v2, p0, Lobject/p2pipcam/adapter/WifiScanListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/easyview/bean/WifiScanBean;

    .line 82
    .local v1, "wifiScanBean":Lcom/easyview/bean/WifiScanBean;
    iget-object v2, p0, Lobject/p2pipcam/adapter/WifiScanListAdapter;->holder:Lobject/p2pipcam/adapter/WifiScanListAdapter$ViewHolder;

    iget-object v2, v2, Lobject/p2pipcam/adapter/WifiScanListAdapter$ViewHolder;->ssid:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/easyview/bean/WifiScanBean;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const-string v2, "wifiScanBean"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wifiScanBean"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/easyview/bean/WifiScanBean;->getSsid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v2, p0, Lobject/p2pipcam/adapter/WifiScanListAdapter;->holder:Lobject/p2pipcam/adapter/WifiScanListAdapter$ViewHolder;

    iget-object v2, v2, Lobject/p2pipcam/adapter/WifiScanListAdapter$ViewHolder;->signal:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/easyview/bean/WifiScanBean;->getDbm0()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const-string v0, ""

    .line 86
    .local v0, "safeName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/easyview/bean/WifiScanBean;->getSecurity()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 108
    :goto_2
    iget-object v2, p0, Lobject/p2pipcam/adapter/WifiScanListAdapter;->holder:Lobject/p2pipcam/adapter/WifiScanListAdapter$ViewHolder;

    iget-object v2, v2, Lobject/p2pipcam/adapter/WifiScanListAdapter$ViewHolder;->safe:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-object p2

    .line 66
    .end local v0    # "safeName":Ljava/lang/String;
    .end local v1    # "wifiScanBean":Lcom/easyview/bean/WifiScanBean;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lobject/p2pipcam/adapter/WifiScanListAdapter$ViewHolder;

    iput-object v2, p0, Lobject/p2pipcam/adapter/WifiScanListAdapter;->holder:Lobject/p2pipcam/adapter/WifiScanListAdapter$ViewHolder;

    goto :goto_0

    .line 71
    :cond_1
    if-nez p1, :cond_2

    .line 73
    const v2, 0x7f0200b5

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 74
    :cond_2
    iget-object v2, p0, Lobject/p2pipcam/adapter/WifiScanListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_3

    .line 76
    const v2, 0x7f0200b2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 79
    :cond_3
    const v2, 0x7f0200b3

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 88
    .restart local v0    # "safeName":Ljava/lang/String;
    .restart local v1    # "wifiScanBean":Lcom/easyview/bean/WifiScanBean;
    :pswitch_0
    iget-object v2, p0, Lobject/p2pipcam/adapter/WifiScanListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    goto :goto_2

    .line 91
    :pswitch_1
    const-string v0, "WEP"

    .line 92
    goto :goto_2

    .line 94
    :pswitch_2
    const-string v0, "WPA_PSK(AES)"

    .line 95
    goto :goto_2

    .line 97
    :pswitch_3
    const-string v0, "WPA_PSK(TKIP)"

    .line 98
    goto :goto_2

    .line 100
    :pswitch_4
    const-string v0, "WPA2_PSK(AES)"

    .line 101
    goto :goto_2

    .line 103
    :pswitch_5
    const-string v0, "WPA2_PSK(TKIP)"

    .line 104
    goto :goto_2

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getWifiScan(I)Lcom/easyview/bean/WifiScanBean;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lobject/p2pipcam/adapter/WifiScanListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easyview/bean/WifiScanBean;

    return-object v0
.end method

.method public getWifiScanBeans()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/easyview/bean/WifiScanBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lobject/p2pipcam/adapter/WifiScanListAdapter;->list:Ljava/util/ArrayList;

    return-object v0
.end method
