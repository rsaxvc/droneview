.class public Lobject/p2pwificam/clientActivity/ThresholdActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "ThresholdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private _camera:Lcom/easyview/basecamera/BaseCamera;

.field private bThresholdModify:Z

.field private btnCancel:Landroid/widget/ImageButton;

.field private btnOK:Landroid/widget/Button;

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private progressDialog:Landroid/app/ProgressDialog;

.field private seekBarBodyTemp:Lcom/easyview/control/RangeSeekBar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/easyview/control/RangeSeekBar",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private seekBarHum:Lcom/easyview/control/RangeSeekBar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/easyview/control/RangeSeekBar",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private seekBarTemp:Lcom/easyview/control/RangeSeekBar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/easyview/control/RangeSeekBar",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private successFlag:Z

.field private tvBodyTempMax:Landroid/widget/TextView;

.field private tvBodyTempMin:Landroid/widget/TextView;

.field private tvHumMax:Landroid/widget/TextView;

.field private tvHumMin:Landroid/widget/TextView;

.field private tvTempMax:Landroid/widget/TextView;

.field private tvTempMin:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 40
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->successFlag:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 47
    iput-boolean v1, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->bThresholdModify:Z

    .line 215
    new-instance v0, Lobject/p2pwificam/clientActivity/ThresholdActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/ThresholdActivity$1;-><init>(Lobject/p2pwificam/clientActivity/ThresholdActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->handler:Landroid/os/Handler;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/ThresholdActivity;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->showThres()V

    return-void
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/ThresholdActivity;Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->successFlag:Z

    return-void
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/ThresholdActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->tvBodyTempMax:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/ThresholdActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/ThresholdActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/ThresholdActivity;Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->bThresholdModify:Z

    return-void
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/ThresholdActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->tvHumMin:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/ThresholdActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->tvHumMax:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/ThresholdActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->tvTempMin:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/ThresholdActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->tvTempMax:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/ThresholdActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->tvBodyTempMin:Landroid/widget/TextView;

    return-object v0
.end method

.method private createBodyTempSeekBar()V
    .locals 5

    .prologue
    .line 133
    new-instance v1, Lcom/easyview/control/RangeSeekBar;

    const-wide/high16 v2, 0x4041000000000000L    # 34.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-wide v3, 0x4046800000000000L    # 45.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/easyview/control/RangeSeekBar;-><init>(Ljava/lang/Number;Ljava/lang/Number;Landroid/content/Context;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->seekBarBodyTemp:Lcom/easyview/control/RangeSeekBar;

    .line 134
    const v1, 0x7f080243

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->tvBodyTempMin:Landroid/widget/TextView;

    .line 135
    const v1, 0x7f080244

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->tvBodyTempMax:Landroid/widget/TextView;

    .line 137
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->seekBarBodyTemp:Lcom/easyview/control/RangeSeekBar;

    new-instance v2, Lobject/p2pwificam/clientActivity/ThresholdActivity$5;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/ThresholdActivity$5;-><init>(Lobject/p2pwificam/clientActivity/ThresholdActivity;)V

    invoke-virtual {v1, v2}, Lcom/easyview/control/RangeSeekBar;->setOnRangeSeekBarChangeListener(Lcom/easyview/control/RangeSeekBar$OnRangeSeekBarChangeListener;)V

    .line 149
    const v1, 0x7f080245

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 150
    .local v0, "layout":Landroid/view/ViewGroup;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->seekBarBodyTemp:Lcom/easyview/control/RangeSeekBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 151
    return-void
.end method

.method private createSeekBar()V
    .locals 5

    .prologue
    .line 89
    new-instance v1, Lcom/easyview/control/RangeSeekBar;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/easyview/control/RangeSeekBar;-><init>(Ljava/lang/Number;Ljava/lang/Number;Landroid/content/Context;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->seekBarHum:Lcom/easyview/control/RangeSeekBar;

    .line 90
    const v1, 0x7f08023b

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->tvHumMin:Landroid/widget/TextView;

    .line 91
    const v1, 0x7f08023c

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->tvHumMax:Landroid/widget/TextView;

    .line 93
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->seekBarHum:Lcom/easyview/control/RangeSeekBar;

    new-instance v2, Lobject/p2pwificam/clientActivity/ThresholdActivity$3;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/ThresholdActivity$3;-><init>(Lobject/p2pwificam/clientActivity/ThresholdActivity;)V

    invoke-virtual {v1, v2}, Lcom/easyview/control/RangeSeekBar;->setOnRangeSeekBarChangeListener(Lcom/easyview/control/RangeSeekBar$OnRangeSeekBarChangeListener;)V

    .line 107
    const v1, 0x7f08023d

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 108
    .local v0, "layout":Landroid/view/ViewGroup;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->seekBarHum:Lcom/easyview/control/RangeSeekBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 109
    return-void
.end method

.method private createTempSeekBar()V
    .locals 5

    .prologue
    .line 112
    new-instance v1, Lcom/easyview/control/RangeSeekBar;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/easyview/control/RangeSeekBar;-><init>(Ljava/lang/Number;Ljava/lang/Number;Landroid/content/Context;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->seekBarTemp:Lcom/easyview/control/RangeSeekBar;

    .line 113
    const v1, 0x7f08023f

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->tvTempMin:Landroid/widget/TextView;

    .line 114
    const v1, 0x7f080240

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->tvTempMax:Landroid/widget/TextView;

    .line 116
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->seekBarTemp:Lcom/easyview/control/RangeSeekBar;

    new-instance v2, Lobject/p2pwificam/clientActivity/ThresholdActivity$4;

    invoke-direct {v2, p0}, Lobject/p2pwificam/clientActivity/ThresholdActivity$4;-><init>(Lobject/p2pwificam/clientActivity/ThresholdActivity;)V

    invoke-virtual {v1, v2}, Lcom/easyview/control/RangeSeekBar;->setOnRangeSeekBarChangeListener(Lcom/easyview/control/RangeSeekBar$OnRangeSeekBarChangeListener;)V

    .line 128
    const v1, 0x7f080241

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 129
    .local v0, "layout":Landroid/view/ViewGroup;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->seekBarTemp:Lcom/easyview/control/RangeSeekBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 130
    return-void
.end method

.method private getDataFromOther()V
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "cameraid"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "strDID":Ljava/lang/String;
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v2

    iput-object v2, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    .line 85
    return-void
.end method

.method private saveThres()V
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    .line 185
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v4}, Lcom/easyview/basecamera/BaseCamera;->getExtThres()Lcom/easyview/struct/EVCommandDefs$ExtThresholds;

    move-result-object v2

    .line 186
    .local v2, "thres":Lcom/easyview/struct/EVCommandDefs$ExtThresholds;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, v2, Lcom/easyview/struct/EVCommandDefs$ExtThresholds;->count:I

    if-lt v0, v4, :cond_0

    .line 208
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    new-instance v5, Lobject/p2pwificam/clientActivity/ThresholdActivity$6;

    invoke-direct {v5, p0}, Lobject/p2pwificam/clientActivity/ThresholdActivity$6;-><init>(Lobject/p2pwificam/clientActivity/ThresholdActivity;)V

    invoke-virtual {v4, v5}, Lcom/easyview/basecamera/BaseCamera;->setExtThres(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 213
    return-void

    .line 188
    :cond_0
    iget-object v4, v2, Lcom/easyview/struct/EVCommandDefs$ExtThresholds;->values:[Lcom/easyview/struct/EVCommandDefs$ExtThreshold;

    aget-object v4, v4, v0

    iget v3, v4, Lcom/easyview/struct/EVCommandDefs$ExtThreshold;->alarm_upper:I

    .line 189
    .local v3, "upper":I
    iget-object v4, v2, Lcom/easyview/struct/EVCommandDefs$ExtThresholds;->values:[Lcom/easyview/struct/EVCommandDefs$ExtThreshold;

    aget-object v4, v4, v0

    iget v1, v4, Lcom/easyview/struct/EVCommandDefs$ExtThreshold;->alarm_lower:I

    .line 190
    .local v1, "lower":I
    iget-object v4, v2, Lcom/easyview/struct/EVCommandDefs$ExtThresholds;->values:[Lcom/easyview/struct/EVCommandDefs$ExtThreshold;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/easyview/struct/EVCommandDefs$ExtThreshold;->item_type:I

    packed-switch v4, :pswitch_data_0

    .line 205
    :goto_1
    iget-object v4, v2, Lcom/easyview/struct/EVCommandDefs$ExtThresholds;->values:[Lcom/easyview/struct/EVCommandDefs$ExtThreshold;

    aget-object v4, v4, v0

    iput v3, v4, Lcom/easyview/struct/EVCommandDefs$ExtThreshold;->alarm_upper:I

    .line 206
    iget-object v4, v2, Lcom/easyview/struct/EVCommandDefs$ExtThresholds;->values:[Lcom/easyview/struct/EVCommandDefs$ExtThreshold;

    aget-object v4, v4, v0

    iput v1, v4, Lcom/easyview/struct/EVCommandDefs$ExtThreshold;->alarm_lower:I

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :pswitch_0
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->seekBarHum:Lcom/easyview/control/RangeSeekBar;

    invoke-virtual {v4}, Lcom/easyview/control/RangeSeekBar;->getSelectedMaxValue()Ljava/lang/Number;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 194
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->seekBarHum:Lcom/easyview/control/RangeSeekBar;

    invoke-virtual {v4}, Lcom/easyview/control/RangeSeekBar;->getSelectedMinValue()Ljava/lang/Number;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v1, v4

    .line 195
    goto :goto_1

    .line 197
    :pswitch_1
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->seekBarTemp:Lcom/easyview/control/RangeSeekBar;

    invoke-virtual {v4}, Lcom/easyview/control/RangeSeekBar;->getSelectedMaxValue()Ljava/lang/Number;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 198
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->seekBarTemp:Lcom/easyview/control/RangeSeekBar;

    invoke-virtual {v4}, Lcom/easyview/control/RangeSeekBar;->getSelectedMinValue()Ljava/lang/Number;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v1, v4

    .line 199
    goto :goto_1

    .line 201
    :pswitch_2
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->seekBarBodyTemp:Lcom/easyview/control/RangeSeekBar;

    invoke-virtual {v4}, Lcom/easyview/control/RangeSeekBar;->getSelectedMaxValue()Ljava/lang/Number;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 202
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->seekBarBodyTemp:Lcom/easyview/control/RangeSeekBar;

    invoke-virtual {v4}, Lcom/easyview/control/RangeSeekBar;->getSelectedMinValue()Ljava/lang/Number;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v1, v4

    goto :goto_1

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showThres()V
    .locals 11

    .prologue
    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 155
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    invoke-virtual {v4}, Lcom/easyview/basecamera/BaseCamera;->getExtThres()Lcom/easyview/struct/EVCommandDefs$ExtThresholds;

    move-result-object v3

    .line 156
    .local v3, "thres":Lcom/easyview/struct/EVCommandDefs$ExtThresholds;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, v3, Lcom/easyview/struct/EVCommandDefs$ExtThresholds;->count:I

    if-lt v2, v4, :cond_0

    .line 182
    return-void

    .line 158
    :cond_0
    iget-object v4, v3, Lcom/easyview/struct/EVCommandDefs$ExtThresholds;->values:[Lcom/easyview/struct/EVCommandDefs$ExtThreshold;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/easyview/struct/EVCommandDefs$ExtThreshold;->alarm_upper:I

    int-to-double v4, v4

    div-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 159
    .local v0, "dMax":Ljava/lang/Double;
    iget-object v4, v3, Lcom/easyview/struct/EVCommandDefs$ExtThresholds;->values:[Lcom/easyview/struct/EVCommandDefs$ExtThreshold;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/easyview/struct/EVCommandDefs$ExtThreshold;->alarm_lower:I

    int-to-double v4, v4

    div-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 160
    .local v1, "dMin":Ljava/lang/Double;
    iget-object v4, v3, Lcom/easyview/struct/EVCommandDefs$ExtThresholds;->values:[Lcom/easyview/struct/EVCommandDefs$ExtThreshold;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/easyview/struct/EVCommandDefs$ExtThreshold;->item_type:I

    packed-switch v4, :pswitch_data_0

    .line 156
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :pswitch_0
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->seekBarHum:Lcom/easyview/control/RangeSeekBar;

    invoke-virtual {v4, v0}, Lcom/easyview/control/RangeSeekBar;->setSelectedMaxValue(Ljava/lang/Number;)V

    .line 164
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->seekBarHum:Lcom/easyview/control/RangeSeekBar;

    invoke-virtual {v4, v1}, Lcom/easyview/control/RangeSeekBar;->setSelectedMinValue(Ljava/lang/Number;)V

    .line 165
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->tvHumMin:Landroid/widget/TextView;

    const-string v5, "%1$.1fRH"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->tvHumMax:Landroid/widget/TextView;

    const-string v5, "%1$.1fRH"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 169
    :pswitch_1
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->seekBarTemp:Lcom/easyview/control/RangeSeekBar;

    invoke-virtual {v4, v0}, Lcom/easyview/control/RangeSeekBar;->setSelectedMaxValue(Ljava/lang/Number;)V

    .line 170
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->seekBarTemp:Lcom/easyview/control/RangeSeekBar;

    invoke-virtual {v4, v1}, Lcom/easyview/control/RangeSeekBar;->setSelectedMinValue(Ljava/lang/Number;)V

    .line 171
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->tvTempMin:Landroid/widget/TextView;

    const-string v5, "%1$.1f\u2103"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->tvTempMax:Landroid/widget/TextView;

    const-string v5, "%1$.1f\u2103"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 175
    :pswitch_2
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->seekBarBodyTemp:Lcom/easyview/control/RangeSeekBar;

    invoke-virtual {v4, v0}, Lcom/easyview/control/RangeSeekBar;->setSelectedMaxValue(Ljava/lang/Number;)V

    .line 176
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->seekBarBodyTemp:Lcom/easyview/control/RangeSeekBar;

    invoke-virtual {v4, v1}, Lcom/easyview/control/RangeSeekBar;->setSelectedMinValue(Ljava/lang/Number;)V

    .line 177
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->tvBodyTempMin:Landroid/widget/TextView;

    const-string v5, "%1$.1f\u2103"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->tvBodyTempMax:Landroid/widget/TextView;

    const-string v5, "%1$.1f\u2103"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v2, 0x7f040006

    const/high16 v1, 0x7f040000

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 257
    :goto_0
    return-void

    .line 242
    :pswitch_0
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->bThresholdModify:Z

    if-eqz v0, :cond_0

    .line 244
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->saveThres()V

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->finish()V

    .line 248
    invoke-virtual {p0, v2, v1}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 253
    :pswitch_1
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->finish()V

    .line 254
    invoke-virtual {p0, v2, v1}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x7f08010a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->requestWindowFeature(I)Z

    .line 52
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->getDataFromOther()V

    .line 53
    const v0, 0x7f030058

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->setContentView(I)V

    .line 55
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 56
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 57
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f06016b

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 60
    const v0, 0x7f08010b

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->btnOK:Landroid/widget/Button;

    .line 61
    const v0, 0x7f08010a

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->btnCancel:Landroid/widget/ImageButton;

    .line 63
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 64
    const/4 v1, 0x3

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 66
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->createSeekBar()V

    .line 67
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->createTempSeekBar()V

    .line 68
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/ThresholdActivity;->createBodyTempSeekBar()V

    .line 70
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->btnOK:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->btnCancel:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/ThresholdActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    new-instance v1, Lobject/p2pwificam/clientActivity/ThresholdActivity$2;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/ThresholdActivity$2;-><init>(Lobject/p2pwificam/clientActivity/ThresholdActivity;)V

    invoke-virtual {v0, v1}, Lcom/easyview/basecamera/BaseCamera;->getExtThres(Lcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 80
    return-void
.end method
