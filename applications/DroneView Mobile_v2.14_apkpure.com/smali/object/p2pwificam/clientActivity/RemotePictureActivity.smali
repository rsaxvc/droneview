.class public Lobject/p2pwificam/clientActivity/RemotePictureActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "RemotePictureActivity.java"

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

.field private btnBack:Landroid/widget/Button;

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

.field private isSearch:Z

.field private mExAdapter:Lobject/p2pipcam/adapter/PlaybackTFAdapter;

.field private mHandler:Landroid/os/Handler;

.field private positionID:I

.field private progressDialog:Landroid/app/ProgressDialog;

.field private runnable:Ljava/lang/Runnable;

.field private startTime:I

.field private strDID:Ljava/lang/String;

.field private strName:Ljava/lang/String;

.field private successFlag:Z

.field private the_group_expand_position:I

.field private tvNoVideo:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 53
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->btnBack:Landroid/widget/Button;

    .line 54
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->btnSearch:Landroid/widget/Button;

    .line 55
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->tvNoVideo:Landroid/widget/TextView;

    .line 56
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 57
    const/16 v0, 0xbb8

    iput v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->TIMEOUT:I

    .line 58
    iput v3, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->PARAMS:I

    .line 59
    iput-boolean v2, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->successFlag:Z

    .line 60
    iput v2, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->startTime:I

    .line 61
    iput v2, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->endTime:I

    .line 62
    iput v2, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->positionID:I

    .line 63
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->strName:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->strDID:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->tvTitle:Landroid/widget/TextView;

    .line 66
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->editDateBegin:Landroid/widget/EditText;

    .line 67
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->editDateEnd:Landroid/widget/EditText;

    .line 68
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;

    .line 69
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->mExAdapter:Lobject/p2pipcam/adapter/PlaybackTFAdapter;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->the_group_expand_position:I

    .line 72
    iput v2, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->count_expand:I

    .line 74
    iput-boolean v3, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->isSearch:Z

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->expandGroup:Ljava/util/Map;

    .line 77
    new-instance v0, Lobject/p2pwificam/clientActivity/RemotePictureActivity$1;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity$1;-><init>(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->mHandler:Landroid/os/Handler;

    .line 93
    new-instance v0, Lobject/p2pwificam/clientActivity/RemotePictureActivity$2;

    invoke-direct {v0, p0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity$2;-><init>(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)V

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->runnable:Ljava/lang/Runnable;

    .line 109
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->floatHeaderView:Landroid/widget/RelativeLayout;

    .line 110
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->headerImg:Landroid/widget/ImageView;

    .line 111
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->headerTitle:Landroid/widget/TextView;

    .line 112
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->headerSum:Landroid/widget/TextView;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lobject/p2pwificam/clientActivity/RemotePictureActivity;Z)V
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->successFlag:Z

    return-void
.end method

.method static synthetic access$1(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$10(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->editDateBegin:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$11(Lobject/p2pwificam/clientActivity/RemotePictureActivity;I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->endTime:I

    return-void
.end method

.method static synthetic access$2(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)Lobject/p2pipcam/adapter/PlaybackTFAdapter;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->mExAdapter:Lobject/p2pipcam/adapter/PlaybackTFAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->successFlag:Z

    return v0
.end method

.method static synthetic access$4(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)Landroid/widget/ExpandableListView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$5(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->tvNoVideo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->floatHeaderView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$7(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->the_group_expand_position:I

    return v0
.end method

.method static synthetic access$8(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->editDateEnd:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$9(Lobject/p2pwificam/clientActivity/RemotePictureActivity;I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->startTime:I

    return-void
.end method

.method private date(Ljava/lang/String;Z)V
    .locals 10
    .param p1, "d"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    .line 286
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v9, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 287
    .local v9, "f":Ljava/text/SimpleDateFormat;
    const/4 v7, 0x0

    .line 289
    .local v7, "date":Ljava/util/Date;
    :try_start_0
    invoke-virtual {v9, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 294
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 295
    .local v6, "ca":Ljava/util/Calendar;
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 296
    new-instance v0, Landroid/app/DatePickerDialog;

    .line 297
    new-instance v2, Lobject/p2pwificam/clientActivity/RemotePictureActivity$5;

    invoke-direct {v2, p0, v9, p2}, Lobject/p2pwificam/clientActivity/RemotePictureActivity$5;-><init>(Lobject/p2pwificam/clientActivity/RemotePictureActivity;Ljava/text/SimpleDateFormat;Z)V

    .line 331
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 332
    const/4 v1, 0x5

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    .line 296
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 333
    .local v0, "dialog":Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 334
    .end local v0    # "dialog":Landroid/app/DatePickerDialog;
    .end local v6    # "ca":Ljava/util/Calendar;
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v8

    .line 291
    .local v8, "e":Ljava/text/ParseException;
    invoke-virtual {v8}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 229
    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;

    .line 230
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->btnBack:Landroid/widget/Button;

    .line 231
    const v0, 0x7f0801db

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->btnSearch:Landroid/widget/Button;

    .line 232
    const v0, 0x7f0801e1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->tvNoVideo:Landroid/widget/TextView;

    .line 233
    const v0, 0x7f080145

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->tvTitle:Landroid/widget/TextView;

    .line 234
    const v0, 0x7f0801d9

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->editDateBegin:Landroid/widget/EditText;

    .line 235
    const v0, 0x7f0801da

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->editDateEnd:Landroid/widget/EditText;

    .line 237
    const v0, 0x7f0801dd

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->floatHeaderView:Landroid/widget/RelativeLayout;

    .line 238
    const v0, 0x7f0801de

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->headerImg:Landroid/widget/ImageView;

    .line 239
    const v0, 0x7f0801df

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->headerTitle:Landroid/widget/TextView;

    .line 240
    const v0, 0x7f0801e0

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->headerSum:Landroid/widget/TextView;

    .line 241
    return-void
.end method

.method private getDataFromOther()V
    .locals 6

    .prologue
    .line 182
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "camera_name"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->strName:Ljava/lang/String;

    .line 184
    const-string v3, "cameraid"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->strDID:Ljava/lang/String;

    .line 185
    const-string v3, "camera_pwd"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "strPwd":Ljava/lang/String;
    const-string v3, "camera_user"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "strUser":Ljava/lang/String;
    const-string v3, "positionID"

    iget v4, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->positionID:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->positionID:I

    .line 188
    const-string v3, "tag"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PlayBackTFActivity  strName:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->strName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " strDID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 189
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->strDID:Ljava/lang/String;

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

    .line 188
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void
.end method

.method private getHeight()I
    .locals 9

    .prologue
    .line 456
    iget v4, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->indicatorGroupHeight:I

    .line 457
    .local v4, "showHeight":I
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;

    const/4 v7, 0x0

    iget v8, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->indicatorGroupHeight:I

    invoke-virtual {v6, v7, v8}, Landroid/widget/ExpandableListView;->pointToPosition(II)I

    move-result v1

    .line 458
    .local v1, "nEndPos":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    .line 459
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v6, v1}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    .line 460
    .local v2, "pos":J
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    .line 461
    .local v0, "groupPos":I
    iget v6, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->the_group_expand_position:I

    if-eq v0, v6, :cond_0

    .line 462
    iget-object v6, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;

    .line 463
    iget-object v7, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v7}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v1, v7

    .line 462
    invoke-virtual {v6, v7}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 464
    .local v5, "viewNext":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 467
    .end local v0    # "groupPos":I
    .end local v2    # "pos":J
    .end local v5    # "viewNext":Landroid/view/View;
    :cond_0
    return v4
.end method

.method private initDate()V
    .locals 22

    .prologue
    .line 147
    const/4 v7, 0x0

    .line 148
    .local v7, "byear":I
    const/4 v6, 0x0

    .line 149
    .local v6, "bmonth":I
    const/4 v5, 0x0

    .line 151
    .local v5, "bday":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 152
    .local v9, "calendar":Ljava/util/Calendar;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 153
    .local v14, "eyear":I
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 154
    .local v13, "emonth":I
    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 155
    .local v12, "eday":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_0

    .line 156
    new-instance v8, Ljava/util/GregorianCalendar;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    .line 157
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    const/16 v20, 0x1

    .line 156
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v8, v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 158
    .local v8, "ca2":Ljava/util/Calendar;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 159
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 160
    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    .line 166
    .end local v8    # "ca2":Ljava/util/Calendar;
    :goto_0
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3, v7, v6, v5}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 167
    .local v3, "bca":Ljava/util/Calendar;
    new-instance v10, Ljava/util/GregorianCalendar;

    invoke-direct {v10, v14, v13, v12}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 168
    .local v10, "eca":Ljava/util/Calendar;
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 169
    .local v4, "bdate":Ljava/util/Date;
    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    .line 170
    .local v11, "edate":Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->startTime:I

    .line 171
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->endTime:I

    .line 173
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v18, "yyyy-MM-dd"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 174
    .local v15, "f":Ljava/text/SimpleDateFormat;
    invoke-virtual {v15, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    .line 175
    .local v16, "strDateBegin":Ljava/lang/String;
    invoke-virtual {v15, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    .line 177
    .local v17, "strDateEnd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->editDateBegin:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->editDateEnd:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 179
    return-void

    .line 162
    .end local v3    # "bca":Ljava/util/Calendar;
    .end local v4    # "bdate":Ljava/util/Date;
    .end local v10    # "eca":Ljava/util/Calendar;
    .end local v11    # "edate":Ljava/util/Date;
    .end local v15    # "f":Ljava/text/SimpleDateFormat;
    .end local v16    # "strDateBegin":Ljava/lang/String;
    .end local v17    # "strDateEnd":Ljava/lang/String;
    :cond_0
    move v7, v14

    .line 163
    move v6, v13

    .line 164
    add-int/lit8 v5, v12, -0x1

    goto :goto_0
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->btnBack:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->btnSearch:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->editDateBegin:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->editDateEnd:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    .line 199
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 200
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 201
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 202
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 203
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lobject/p2pwificam/clientActivity/RemotePictureActivity$3;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity$3;-><init>(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 217
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->floatHeaderView:Landroid/widget/RelativeLayout;

    new-instance v1, Lobject/p2pwificam/clientActivity/RemotePictureActivity$4;

    invoke-direct {v1, p0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity$4;-><init>(Lobject/p2pwificam/clientActivity/RemotePictureActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
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

    .line 476
    const-string v4, "tag"

    const-string v5, "CallBack_RecordFileSearchResult"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 478
    const/4 v4, 0x0

    invoke-virtual {p2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, "year":Ljava/lang/String;
    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, "month":Ljava/lang/String;
    const/16 v4, 0x8

    invoke-virtual {p2, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 481
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

    .line 482
    .local v1, "group":Ljava/lang/String;
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->mExAdapter:Lobject/p2pipcam/adapter/PlaybackTFAdapter;

    invoke-virtual {v4, v1, p2}, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->addGroupAndChild(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    if-ne p4, v6, :cond_0

    .line 484
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 487
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
    .line 447
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
    .line 350
    iget-object v2, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->mExAdapter:Lobject/p2pipcam/adapter/PlaybackTFAdapter;

    invoke-virtual {v2, p3, p4}, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->getChildFilePath(II)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "filepath":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lobject/p2pwificam/clientActivity/PlayBackActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "did"

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->strDID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string v2, "filepath"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->startActivity(Landroid/content/Intent;)V

    .line 356
    const v2, 0x7f040001

    const v3, 0x7f040005

    invoke-virtual {p0, v2, v3}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->overridePendingTransition(II)V

    .line 357
    const/4 v2, 0x0

    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 282
    :goto_0
    return-void

    .line 248
    :sswitch_0
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->finish()V

    .line 249
    const v5, 0x7f040006

    const/high16 v6, 0x7f040000

    invoke-virtual {p0, v5, v6}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 252
    :sswitch_1
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->editDateBegin:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "strBd":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-direct {p0, v2, v5}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->date(Ljava/lang/String;Z)V

    goto :goto_0

    .line 256
    .end local v2    # "strBd":Ljava/lang/String;
    :sswitch_2
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->editDateEnd:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "strEd":Ljava/lang/String;
    invoke-direct {p0, v3, v8}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->date(Ljava/lang/String;Z)V

    goto :goto_0

    .line 260
    .end local v3    # "strEd":Ljava/lang/String;
    :sswitch_3
    const-string v5, "time"

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->startTime:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "----"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->endTime:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    sget-object v5, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    iget v6, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->positionID:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    check-cast v0, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 262
    .restart local v0    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getStatus()I

    move-result v1

    .line 265
    .local v1, "status":I
    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    .line 266
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v5, v8}, Landroid/widget/ExpandableListView;->setDividerHeight(I)V

    .line 267
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 268
    .local v4, "v2":Landroid/view/View;
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v5, v4}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    .line 269
    new-instance v5, Lobject/p2pipcam/adapter/PlaybackTFAdapter;

    invoke-direct {v5, p0}, Lobject/p2pipcam/adapter/PlaybackTFAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->mExAdapter:Lobject/p2pipcam/adapter/PlaybackTFAdapter;

    .line 270
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->mExAdapter:Lobject/p2pipcam/adapter/PlaybackTFAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 271
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 273
    iget-object v5, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->strDID:Ljava/lang/String;

    iget v6, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->startTime:I

    iget v7, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->endTime:I

    invoke-static {v5, v6, v7}, Lobject/p2pipcam/nativecaller/NativeCaller;->PPPPGetSDCardRecordFileList(Ljava/lang/String;II)I

    goto/16 :goto_0

    .line 275
    .end local v4    # "v2":Landroid/view/View;
    :cond_0
    const v5, 0x7f06018b

    invoke-virtual {p0, v5}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->showToast(I)V

    goto/16 :goto_0

    .line 246
    :sswitch_data_0
    .sparse-switch
        0x7f080019 -> :sswitch_0
        0x7f0801d9 -> :sswitch_1
        0x7f0801da -> :sswitch_2
        0x7f0801db -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->requestWindowFeature(I)Z

    .line 125
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->getDataFromOther()V

    .line 126
    const v1, 0x7f030043

    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->setContentView(I)V

    .line 127
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->findView()V

    .line 128
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 129
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    .line 130
    new-instance v1, Lobject/p2pipcam/adapter/PlaybackTFAdapter;

    invoke-direct {v1, p0}, Lobject/p2pipcam/adapter/PlaybackTFAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->mExAdapter:Lobject/p2pipcam/adapter/PlaybackTFAdapter;

    .line 131
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->mExAdapter:Lobject/p2pipcam/adapter/PlaybackTFAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 132
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 134
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 135
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 136
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f06018a

    invoke-virtual {p0, v2}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 138
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->runnable:Ljava/lang/Runnable;

    iget v3, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->TIMEOUT:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->setListener()V

    .line 140
    iget-object v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->tvTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->strName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->initDate()V

    .line 142
    invoke-static {p0}, Lobject/p2pwificam/clientActivity/BridgeService;->setPlayBackTFInterface(Lobject/p2pwificam/clientActivity/BridgeService$PlayBackTFInterface;)V

    .line 144
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 338
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 339
    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "arg0"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J

    .prologue
    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public onGroupCollapse(I)V
    .locals 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 363
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->expandGroup:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setSelectedGroup(I)V

    .line 365
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->expandGroup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->count_expand:I

    .line 366
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "count_expand:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->count_expand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void
.end method

.method public onGroupExpand(I)V
    .locals 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 371
    iput p1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->the_group_expand_position:I

    .line 372
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the_group_expand_position:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->the_group_expand_position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->expandGroup:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expandGroup.size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->expandGroup:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->expandGroup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->count_expand:I

    .line 376
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "count_expand:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->count_expand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onPause()V

    .line 119
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 11
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 382
    const-string v9, "tag"

    const-string v10, "onScroll: 1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    if-nez p2, :cond_0

    .line 385
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->floatHeaderView:Landroid/widget/RelativeLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 387
    :cond_0
    const-string v9, "tag"

    const-string v10, "onScroll: 2"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v4

    .line 390
    .local v4, "npos":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_5

    .line 391
    const-string v9, "tag"

    const-string v10, "onScroll: 3"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v9, v4}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v5

    .line 393
    .local v5, "pos":J
    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    .line 394
    .local v0, "childPos":I
    invoke-static {v5, v6}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    .line 395
    .local v1, "groupPos":I
    const/4 v9, -0x1

    if-ne v0, v9, :cond_1

    .line 396
    const-string v9, "tag"

    const-string v10, "onScroll: 4"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;

    .line 398
    iget-object v10, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v10}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v10

    sub-int v10, v4, v10

    .line 397
    invoke-virtual {v9, v10}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 399
    .local v2, "groupView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    iput v9, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->indicatorGroupHeight:I

    .line 401
    .end local v2    # "groupView":Landroid/view/View;
    :cond_1
    const-string v9, "tag"

    const-string v10, "onScroll: 5"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget v9, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->indicatorGroupHeight:I

    if-nez v9, :cond_2

    .line 403
    const-string v9, "tag"

    const-string v10, "onScroll: 6"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .end local v0    # "childPos":I
    .end local v1    # "groupPos":I
    .end local v5    # "pos":J
    :goto_0
    return-void

    .line 406
    .restart local v0    # "childPos":I
    .restart local v1    # "groupPos":I
    .restart local v5    # "pos":J
    :cond_2
    const-string v9, "tag"

    const-string v10, "onScroll: 7"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget v9, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->count_expand:I

    if-lez v9, :cond_4

    .line 409
    const-string v9, "tag"

    const-string v10, "onScroll: 8"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iput v1, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->the_group_expand_position:I

    .line 411
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->mExAdapter:Lobject/p2pipcam/adapter/PlaybackTFAdapter;

    .line 412
    iget v10, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->the_group_expand_position:I

    invoke-virtual {v9, v10}, Lobject/p2pipcam/adapter/PlaybackTFAdapter;->getGroupTitleAndSum(I)[Ljava/lang/String;

    move-result-object v8

    .line 413
    .local v8, "ss":[Ljava/lang/String;
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->headerTitle:Landroid/widget/TextView;

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->headerSum:Landroid/widget/TextView;

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget v9, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->the_group_expand_position:I

    if-ne v9, v1, :cond_3

    .line 418
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->exListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v9, v1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v9

    if-nez v9, :cond_6

    .line 419
    :cond_3
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->floatHeaderView:Landroid/widget/RelativeLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 420
    const-string v9, "tag"

    const-string v10, "onScroll: 9"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .end local v8    # "ss":[Ljava/lang/String;
    :cond_4
    :goto_1
    const-string v9, "tag"

    const-string v10, "onScroll: 11"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget v9, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->count_expand:I

    if-nez v9, :cond_5

    .line 428
    const-string v9, "tag"

    const-string v10, "onScroll: 12"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->floatHeaderView:Landroid/widget/RelativeLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 432
    .end local v0    # "childPos":I
    .end local v1    # "groupPos":I
    .end local v5    # "pos":J
    :cond_5
    const-string v9, "tag"

    const-string v10, "onScroll: 13"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget v9, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->the_group_expand_position:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_7

    .line 434
    const-string v9, "tag"

    const-string v10, "onScroll: 14"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 422
    .restart local v0    # "childPos":I
    .restart local v1    # "groupPos":I
    .restart local v5    # "pos":J
    .restart local v8    # "ss":[Ljava/lang/String;
    :cond_6
    const-string v9, "tag"

    const-string v10, "onScroll: 10"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->floatHeaderView:Landroid/widget/RelativeLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 437
    .end local v0    # "childPos":I
    .end local v1    # "groupPos":I
    .end local v5    # "pos":J
    .end local v8    # "ss":[Ljava/lang/String;
    :cond_7
    const-string v9, "tag"

    const-string v10, "onScroll: 15"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->getHeight()I

    move-result v7

    .line 439
    .local v7, "showHeight":I
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->floatHeaderView:Landroid/widget/RelativeLayout;

    .line 440
    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 439
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 441
    .local v3, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v9, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->indicatorGroupHeight:I

    sub-int/2addr v9, v7

    neg-int v9, v9

    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 442
    iget-object v9, p0, Lobject/p2pwificam/clientActivity/RemotePictureActivity;->floatHeaderView:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I

    .prologue
    .line 453
    return-void
.end method
