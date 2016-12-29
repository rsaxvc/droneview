.class public Lcom/easyview/common/TimeZoneAdapter;
.super Ljava/lang/Object;
.source "TimeZoneAdapter.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# instance fields
.field private _timeZones:Lcom/easyview/common/EVTimeZones;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/easyview/common/TimeZoneAdapter;->_timeZones:Lcom/easyview/common/EVTimeZones;

    invoke-virtual {v0}, Lcom/easyview/common/EVTimeZones;->Count()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 19
    iget-object v0, p0, Lcom/easyview/common/TimeZoneAdapter;->_timeZones:Lcom/easyview/common/EVTimeZones;

    invoke-virtual {v0, p1}, Lcom/easyview/common/EVTimeZones;->getItem(I)Lcom/easyview/common/EVTimeZone;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 24
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public get_timeZones()Lcom/easyview/common/EVTimeZones;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/easyview/common/TimeZoneAdapter;->_timeZones:Lcom/easyview/common/EVTimeZones;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "arg0"    # Landroid/database/DataSetObserver;

    .prologue
    .line 61
    return-void
.end method

.method public set_timeZones(Lcom/easyview/common/EVTimeZones;)V
    .locals 0
    .param p1, "_timeZones"    # Lcom/easyview/common/EVTimeZones;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/easyview/common/TimeZoneAdapter;->_timeZones:Lcom/easyview/common/EVTimeZones;

    .line 81
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "arg0"    # Landroid/database/DataSetObserver;

    .prologue
    .line 67
    return-void
.end method
