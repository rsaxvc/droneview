.class public Lobject/p2pwificam/clientActivity/PlayBackTFActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "PlayBackTFActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupCollapseListener;
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lobject/p2pwificam/clientActivity/BridgeService$PlayBackTFInterface;


# instance fields
.field private final PARAMS:I

.field private TIMEOUT:I

.field private _camera:Lcom/easyview/basecamera/BaseCamera;

.field private btnBack:Landroid/widget/ImageButton;

.field private btnSearch:Landroid/widget/Button;

.field private count_expand:I

.field private editDateBegin:Landroid/widget/EditText;

.field private editDateEnd:Landroid/widget/EditText;

.field private endTime:I

.field private exListView:Landroid/widget/ExpandableListView;

.field private expandGroup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private floatHeaderView:Landroid/widget/RelativeLayout;

.field private headerImg:Landroid/widget/ImageView;

.field private headerSum:Landroid/widget/TextView;

.field private headerTitle:Landroid/widget/TextView;

.field private indicatorGroupHeight:I

.field private mExAdapter:Lobject/p2pipcam/adapter/PlaybackTFAdapter;

.field private mHandler:Landroid/os/Handler;

.field private positionID:I

.field private progressDialog:Landroid/app/ProgressDialog;

.field private runnable:Ljava/lang/Runnable;

.field searchListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

.field private startTime:I

.field private strDID:Ljava/lang/String;

.field private strName:Ljava/lang/String;

.field private successFlag:Z

.field private the_group_expand_position:I

.field private tvNoVideo:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 63
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->btnBack:Landroid/widget/ImageButton;

    .line 64
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->btnSearch:Landroid/widget/Button;

    .line 65
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->tvNoVideo:Landroid/widget/TextView;

    .line 66
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 67
    const/16 v0, 0x1770

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->TIMEOUT:I

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->PARAMS:I

    .line 69
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->successFlag:Z

    .line 70
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->startTime:I

    .line 71
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->endTime:I

    .line 72
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->strName:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->strDID:Ljava/lang/String;

    .line 74
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->positionID:I

    .line 75
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->tvTitle:Landroid/widget/TextView;

    .line 76
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->editDateBegin:Landroid/widget/EditText;

    .line 77
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->editDateEnd:Landroid/widget/EditText;

    .line 78
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;

    .line 79
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->mExAdapter:Lobject/p2pipcam/adapter/PlaybackTFAdapter;

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->the_group_expand_position:I

    .line 82
    iput v2, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->count_expand:I

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->expandGroup:Ljava/util/Map;

    .line 87
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$1;-><init>(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->mHandler:Landroid/os/Handler;

    .line 103
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$2;-><init>(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->runnable:Ljava/lang/Runnable;

    .line 119
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->floatHeaderView:Landroid/widget/RelativeLayout;

    .line 120
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->headerImg:Landroid/widget/ImageView;

    .line 121
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->headerTitle:Landroid/widget/TextView;

    .line 122
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->headerSum:Landroid/widget/TextView;

    .line 519
    new-instance v0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$3;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$3;-><init>(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->searchListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->successFlag:Z

    return-void
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->startTime:I

    return-void
.end method

.method static synthetic access$11(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->editDateBegin:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$12(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->endTime:I

    return-void
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)Lobject/p2pipcam/adapter/PlaybackTFAdapter;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->mExAdapter:Lobject/p2pipcam/adapter/PlaybackTFAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->successFlag:Z

    return v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)Landroid/widget/ExpandableListView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->tvNoVideo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->floatHeaderView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->the_group_expand_position:I

    return v0
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->editDateEnd:Landroid/widget/EditText;

    return-object v0
.end method

.method private date(Ljava/lang/String;Z)V
    .locals 10
    .param p1, "d"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    .line 313
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v9, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 314
    .local v9, "f":Ljava/text/SimpleDateFormat;
    const/4 v7, 0x0

    .line 316
    .local v7, "date":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v9, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 321
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 322
    .local v6, "ca":Ljava/util/Calendar;
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 323
    new-instance v0, Landroid/app/DatePickerDialog;

    .line 324
    new-instance v2, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$6;

    invoke-direct {v2, p0, p2, v9}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$6;-><init>(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;ZLjava/text/SimpleDateFormat;)V

    .line 362
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 363
    const/4 v1, 0x5

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    .line 323
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 364
    .local v0, "dialog":Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 365
    .end local v0    # "dialog":Landroid/app/DatePickerDialog;
    .end local v6    # "ca":Ljava/util/Calendar;
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v8

    .line 318
    .local v8, "e":Ljava/text/ParseException;
    invoke-virtual {v8}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 243
    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;

    .line 244
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->btnBack:Landroid/widget/ImageButton;

    .line 245
    const v0, 0x7f0801db

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->btnSearch:Landroid/widget/Button;

    .line 246
    const v0, 0x7f0801e1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->tvNoVideo:Landroid/widget/TextView;

    .line 247
    const v0, 0x7f080145

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->tvTitle:Landroid/widget/TextView;

    .line 248
    const v0, 0x7f0801d9

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->editDateBegin:Landroid/widget/EditText;

    .line 249
    const v0, 0x7f0801da

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->editDateEnd:Landroid/widget/EditText;

    .line 251
    const v0, 0x7f0801dd

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->floatHeaderView:Landroid/widget/RelativeLayout;

    .line 252
    const v0, 0x7f0801de

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->headerImg:Landroid/widget/ImageView;

    .line 253
    const v0, 0x7f0801df

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->headerTitle:Landroid/widget/TextView;

    .line 254
    const v0, 0x7f0801e0

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->headerSum:Landroid/widget/TextView;

    .line 255
    return-void
.end method

.method private getDataFromOther()V
    .locals 6

    .prologue
    .line 194
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 195
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "camera_name"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->strName:Ljava/lang/String;

    .line 196
    const-string v3, "cameraid"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->strDID:Ljava/lang/String;

    .line 197
    const-string v3, "positionID"

    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->positionID:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->positionID:I

    .line 198
    const-string v3, "camera_pwd"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "strPwd":Ljava/lang/String;
    const-string v3, "camera_user"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "strUser":Ljava/lang/String;
    const-string v3, "tag"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PlayBackTFActivity  strName:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->strName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " strDID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 201
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " strPwd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " strUser:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 200
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {}, Lcom/easyview/camera/CameraList;->GetInstance()Lcom/easyview/camera/CameraList;

    move-result-object v3

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/easyview/camera/CameraList;->getCamera(Ljava/lang/String;)Lcom/easyview/basecamera/BaseCamera;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    .line 203
    return-void
.end method

.method private getHeight()I
    .locals 9

    .prologue
    .line 487
    iget v4, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->indicatorGroupHeight:I

    .line 488
    .local v4, "showHeight":I
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;

    const/4 v7, 0x0

    iget v8, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->indicatorGroupHeight:I

    invoke-virtual {v6, v7, v8}, Landroid/widget/ExpandableListView;->pointToPosition(II)I

    move-result v1

    .line 489
    .local v1, "nEndPos":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    .line 490
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v6, v1}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    .line 491
    .local v2, "pos":J
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    .line 492
    .local v0, "groupPos":I
    iget v6, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->the_group_expand_position:I

    if-eq v0, v6, :cond_0

    .line 493
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;

    .line 494
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v7}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v1, v7

    .line 493
    invoke-virtual {v6, v7}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 495
    .local v5, "viewNext":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 498
    .end local v0    # "groupPos":I
    .end local v2    # "pos":J
    .end local v5    # "viewNext":Landroid/view/View;
    :cond_0
    return v4
.end method

.method private initDate()V
    .locals 21

    .prologue
    .line 159
    const/4 v12, 0x0

    .line 160
    .local v12, "byear":I
    const/4 v11, 0x0

    .line 161
    .local v11, "bmonth":I
    const/4 v10, 0x0

    .line 163
    .local v10, "bday":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 164
    .local v14, "calendar":Ljava/util/Calendar;
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 165
    .local v2, "eyear":I
    const/4 v5, 0x2

    invoke-virtual {v14, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 166
    .local v3, "emonth":I
    const/4 v5, 0x5

    invoke-virtual {v14, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 167
    .local v4, "eday":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 168
    new-instance v13, Ljava/util/GregorianCalendar;

    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 169
    const/4 v6, 0x2

    invoke-virtual {v14, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x1

    .line 168
    invoke-direct {v13, v5, v6, v7}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 170
    .local v13, "ca2":Ljava/util/Calendar;
    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 171
    const/4 v5, 0x2

    invoke-virtual {v13, v5}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 172
    const/4 v5, 0x5

    invoke-virtual {v13, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v10

    .line 178
    .end local v13    # "ca2":Ljava/util/Calendar;
    :goto_0
    new-instance v8, Ljava/util/GregorianCalendar;

    invoke-direct {v8, v12, v11, v10}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 179
    .local v8, "bca":Ljava/util/Calendar;
    new-instance v1, Ljava/util/GregorianCalendar;

    const/16 v5, 0x17

    const/16 v6, 0x3b

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 180
    .local v1, "eca":Ljava/util/Calendar;
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    .line 181
    .local v9, "bdate":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    .line 182
    .local v15, "edate":Ljava/util/Date;
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v19, 0x3e8

    div-long v5, v5, v19

    long-to-int v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->startTime:I

    .line 183
    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v19, 0x3e8

    div-long v5, v5, v19

    long-to-int v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->endTime:I

    .line 185
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 186
    .local v16, "f":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    .line 187
    .local v17, "strDateBegin":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    .line 189
    .local v18, "strDateEnd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->editDateBegin:Landroid/widget/EditText;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v5, v0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->editDateEnd:Landroid/widget/EditText;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 191
    return-void

    .line 174
    .end local v1    # "eca":Ljava/util/Calendar;
    .end local v8    # "bca":Ljava/util/Calendar;
    .end local v9    # "bdate":Ljava/util/Date;
    .end local v15    # "edate":Ljava/util/Date;
    .end local v16    # "f":Ljava/text/SimpleDateFormat;
    .end local v17    # "strDateBegin":Ljava/lang/String;
    .end local v18    # "strDateEnd":Ljava/lang/String;
    :cond_0
    move v12, v2

    .line 175
    move v11, v3

    .line 176
    add-int/lit8 v10, v4, -0x1

    goto :goto_0
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->btnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->btnSearch:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->editDateBegin:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->editDateEnd:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    .line 212
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 213
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 214
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 215
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 216
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$4;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$4;-><init>(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 230
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->floatHeaderView:Landroid/widget/RelativeLayout;

    new-instance v1, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$5;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity$5;-><init>(Lobject/p2pwificam/clientActivity/PlayBackTFActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    return-void
.end method


# virtual methods
.method public callBackRecordFileSearchResult(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 9
    .param p1, "did"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "size"    # I
    .param p4, "bEnd"    # I

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 507
    const-string v4, "tag"

    const-string v5, "CallBack_RecordFileSearchResult"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 509
    const/4 v4, 0x0

    invoke-virtual {p2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 510
    .local v3, "year":Ljava/lang/String;
    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 511
    .local v2, "month":Ljava/lang/String;
    const/16 v4, 0x8

    invoke-virtual {p2, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "date":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, "group":Ljava/lang/String;
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->mExAdapter:Lobject/p2pipcam/adapter/PlaybackTFAdapter;

    invoke-virtual {v4, v1, p2}, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->addGroupAndChild(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    if-ne p4, v6, :cond_0

    .line 515
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 518
    .end local v0    # "date":Ljava/lang/String;
    .end local v1    # "group":Ljava/lang/String;
    .end local v2    # "month":Ljava/lang/String;
    .end local v3    # "year":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 478
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 4
    .param p1, "arg0"    # Landroid/widget/ExpandableListView;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "arg4"    # J

    .prologue
    .line 381
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->mExAdapter:Lobject/p2pipcam/adapter/PlaybackTFAdapter;

    invoke-virtual {v2, p3, p4}, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->getChildFilePath(II)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "filepath":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lobject/p2pwificam/clientActivity/PlayBackActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 384
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "did"

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const-string v2, "filepath"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->startActivity(Landroid/content/Intent;)V

    .line 387
    const v2, 0x7f040001

    const v3, 0x7f040005

    invoke-virtual {p0, v2, v3}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->overridePendingTransition(II)V

    .line 388
    const/4 v2, 0x0

    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 259
    const/4 v6, 0x0

    .line 260
    .local v6, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 309
    :goto_0
    return-void

    .line 262
    :sswitch_0
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->finish()V

    .line 263
    const v0, 0x7f040006

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 266
    :sswitch_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->editDateBegin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    .line 267
    .local v8, "strBd":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-direct {p0, v8, v0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->date(Ljava/lang/String;Z)V

    goto :goto_0

    .line 270
    .end local v8    # "strBd":Ljava/lang/String;
    :sswitch_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->editDateEnd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    .line 271
    .local v9, "strEd":Ljava/lang/String;
    invoke-direct {p0, v9, v4}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->date(Ljava/lang/String;Z)V

    goto :goto_0

    .line 274
    .end local v9    # "strEd":Ljava/lang/String;
    :sswitch_3
    const-string v0, "time"

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->startTime:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->endTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    sget-object v0, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->positionID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    check-cast v6, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 276
    .restart local v6    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v6}, Lobject/p2pipcam/bean/CameraParamsBean;->getStatus()I

    move-result v7

    .line 282
    .local v7, "status":I
    const/4 v0, 0x2

    if-ne v7, v0, :cond_0

    .line 283
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 284
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 285
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f06018a

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 287
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->runnable:Ljava/lang/Runnable;

    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 288
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v4}, Landroid/widget/ExpandableListView;->setDividerHeight(I)V

    .line 289
    new-instance v10, Landroid/view/View;

    invoke-direct {v10, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 290
    .local v10, "v2":Landroid/view/View;
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v10}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    .line 291
    new-instance v0, Lobject/p2pipcam/adapter/PlaybackTFAdapter;

    invoke-direct {v0, p0}, Lobject/p2pipcam/adapter/PlaybackTFAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->mExAdapter:Lobject/p2pipcam/adapter/PlaybackTFAdapter;

    .line 292
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->mExAdapter:Lobject/p2pipcam/adapter/PlaybackTFAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 293
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 297
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    iget v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->startTime:I

    int-to-long v1, v1

    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->endTime:I

    int-to-long v3, v3

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->searchListener:Lcom/easyview/basecamera/ICamera$IRespondListener;

    invoke-virtual/range {v0 .. v5}, Lcom/easyview/basecamera/BaseCamera;->searchRecordList(JJLcom/easyview/basecamera/ICamera$IRespondListener;)V

    goto/16 :goto_0

    .line 301
    .end local v10    # "v2":Landroid/view/View;
    :cond_0
    const v0, 0x7f06018b

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->showToast(I)V

    goto/16 :goto_0

    .line 260
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080019 -> :sswitch_0
        0x7f0801d9 -> :sswitch_1
        0x7f0801da -> :sswitch_2
        0x7f0801db -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 133
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->requestWindowFeature(I)Z

    .line 135
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->getDataFromOther()V

    .line 136
    const v1, 0x7f030043

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->setContentView(I)V

    .line 137
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->findView()V

    .line 138
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 139
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    .line 140
    new-instance v1, Lobject/p2pipcam/adapter/PlaybackTFAdapter;

    invoke-direct {v1, p0}, Lobject/p2pipcam/adapter/PlaybackTFAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->mExAdapter:Lobject/p2pipcam/adapter/PlaybackTFAdapter;

    .line 141
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->mExAdapter:Lobject/p2pipcam/adapter/PlaybackTFAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 142
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v6}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 144
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 145
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 146
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f06018a

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 148
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->runnable:Ljava/lang/Runnable;

    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->TIMEOUT:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->setListener()V

    .line 150
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->tvTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->strName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->initDate()V

    .line 152
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setPlayBackTFInterface(Lobject/p2pwificam/clientActivity/BridgeService$PlayBackTFInterface;)V

    .line 154
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->_camera:Lcom/easyview/basecamera/BaseCamera;

    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->startTime:I

    iget v3, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->endTime:I

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/easyview/basecamera/BaseCamera;->searchRecords(IIILcom/easyview/basecamera/ICamera$IRespondListener;)V

    .line 156
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 369
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 370
    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "arg0"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J

    .prologue
    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public onGroupCollapse(I)V
    .locals 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 394
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->expandGroup:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setSelectedGroup(I)V

    .line 396
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->expandGroup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->count_expand:I

    .line 397
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "count_expand:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->count_expand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return-void
.end method

.method public onGroupExpand(I)V
    .locals 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 402
    iput p1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->the_group_expand_position:I

    .line 403
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the_group_expand_position:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->the_group_expand_position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->expandGroup:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expandGroup.size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->expandGroup:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->expandGroup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->count_expand:I

    .line 407
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "count_expand:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->count_expand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onPause()V

    .line 129
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 11
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 413
    const-string v9, "tag"

    const-string v10, "onScroll: 1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    if-nez p2, :cond_0

    .line 416
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->floatHeaderView:Landroid/widget/RelativeLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 418
    :cond_0
    const-string v9, "tag"

    const-string v10, "onScroll: 2"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v4

    .line 421
    .local v4, "npos":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_5

    .line 422
    const-string v9, "tag"

    const-string v10, "onScroll: 3"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v9, v4}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v5

    .line 424
    .local v5, "pos":J
    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    .line 425
    .local v0, "childPos":I
    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    .line 426
    .local v1, "groupPos":I
    const/4 v9, -0x1

    if-ne v0, v9, :cond_1

    .line 427
    const-string v9, "tag"

    const-string v10, "onScroll: 4"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;

    .line 429
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v10}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v10

    sub-int v10, v4, v10

    .line 428
    invoke-virtual {v9, v10}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 430
    .local v2, "groupView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    iput v9, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->indicatorGroupHeight:I

    .line 432
    .end local v2    # "groupView":Landroid/view/View;
    :cond_1
    const-string v9, "tag"

    const-string v10, "onScroll: 5"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget v9, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->indicatorGroupHeight:I

    if-nez v9, :cond_2

    .line 434
    const-string v9, "tag"

    const-string v10, "onScroll: 6"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    .end local v0    # "childPos":I
    .end local v1    # "groupPos":I
    .end local v5    # "pos":J
    :goto_0
    return-void

    .line 437
    .restart local v0    # "childPos":I
    .restart local v1    # "groupPos":I
    .restart local v5    # "pos":J
    :cond_2
    const-string v9, "tag"

    const-string v10, "onScroll: 7"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget v9, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->count_expand:I

    if-lez v9, :cond_4

    .line 440
    const-string v9, "tag"

    const-string v10, "onScroll: 8"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iput v1, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->the_group_expand_position:I

    .line 442
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->mExAdapter:Lobject/p2pipcam/adapter/PlaybackTFAdapter;

    .line 443
    iget v10, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->the_group_expand_position:I

    invoke-virtual {v9, v10}, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->getGroupTitleAndSum(I)[Ljava/lang/String;

    move-result-object v8

    .line 444
    .local v8, "ss":[Ljava/lang/String;
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->headerTitle:Landroid/widget/TextView;

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->headerSum:Landroid/widget/TextView;

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget v9, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->the_group_expand_position:I

    if-ne v9, v1, :cond_3

    .line 449
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v9, v1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v9

    if-nez v9, :cond_6

    .line 450
    :cond_3
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->floatHeaderView:Landroid/widget/RelativeLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 451
    const-string v9, "tag"

    const-string v10, "onScroll: 9"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    .end local v8    # "ss":[Ljava/lang/String;
    :cond_4
    :goto_1
    const-string v9, "tag"

    const-string v10, "onScroll: 11"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget v9, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->count_expand:I

    if-nez v9, :cond_5

    .line 459
    const-string v9, "tag"

    const-string v10, "onScroll: 12"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->floatHeaderView:Landroid/widget/RelativeLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 463
    .end local v0    # "childPos":I
    .end local v1    # "groupPos":I
    .end local v5    # "pos":J
    :cond_5
    const-string v9, "tag"

    const-string v10, "onScroll: 13"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget v9, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->the_group_expand_position:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_7

    .line 465
    const-string v9, "tag"

    const-string v10, "onScroll: 14"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 453
    .restart local v0    # "childPos":I
    .restart local v1    # "groupPos":I
    .restart local v5    # "pos":J
    .restart local v8    # "ss":[Ljava/lang/String;
    :cond_6
    const-string v9, "tag"

    const-string v10, "onScroll: 10"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->floatHeaderView:Landroid/widget/RelativeLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 468
    .end local v0    # "childPos":I
    .end local v1    # "groupPos":I
    .end local v5    # "pos":J
    .end local v8    # "ss":[Ljava/lang/String;
    :cond_7
    const-string v9, "tag"

    const-string v10, "onScroll: 15"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->getHeight()I

    move-result v7

    .line 470
    .local v7, "showHeight":I
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->floatHeaderView:Landroid/widget/RelativeLayout;

    .line 471
    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 470
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 472
    .local v3, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v9, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->indicatorGroupHeight:I

    sub-int/2addr v9, v7

    neg-int v9, v9

    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 473
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;->floatHeaderView:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I

    .prologue
    .line 484
    return-void
.end method
