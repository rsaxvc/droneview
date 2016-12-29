.class public Lobject/p2pwificam/clientActivity/AlarmTypeActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "AlarmTypeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private BootTextNum:Landroid/widget/TextView;

.field private MessageTextNum:Landroid/widget/TextView;

.field private VisitorTextNum:Landroid/widget/TextView;

.field private bootAlarm:Ljava/lang/String;

.field private bt_relativelayout:Landroid/widget/RelativeLayout;

.field private btnBack:Landroid/widget/ImageButton;

.field private camName:Ljava/lang/String;

.field private did:Ljava/lang/String;

.field private helper:Lobject/p2pipcam/utils/DataBaseHelper;

.field private mdTextNum:Landroid/widget/TextView;

.field private md_relativelayout:Landroid/widget/RelativeLayout;

.field private messageAlarm:Ljava/lang/String;

.field private motionAlarm:Ljava/lang/String;

.field private ms_relativelayout:Landroid/widget/RelativeLayout;

.field private positionID:I

.field private preference:Landroid/content/SharedPreferences;

.field private txtBoot:Landroid/widget/TextView;

.field private txtMessage:Landroid/widget/TextView;

.field private txtMotion:Landroid/widget/TextView;

.field private txtVisitor:Landroid/widget/TextView;

.field private visitorAlarm:Ljava/lang/String;

.field private vs_relativelayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->positionID:I

    .line 34
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 35
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->motionAlarm:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->visitorAlarm:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->messageAlarm:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->bootAlarm:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 144
    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->mdTextNum:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->txtVisitor:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->VisitorTextNum:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->txtMessage:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->MessageTextNum:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->txtBoot:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->BootTextNum:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->btnBack:Landroid/widget/ImageButton;

    .line 155
    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->md_relativelayout:Landroid/widget/RelativeLayout;

    .line 156
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->vs_relativelayout:Landroid/widget/RelativeLayout;

    .line 157
    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->ms_relativelayout:Landroid/widget/RelativeLayout;

    .line 158
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->bt_relativelayout:Landroid/widget/RelativeLayout;

    .line 165
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->md_relativelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->vs_relativelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->ms_relativelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->bt_relativelayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->btnBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    return-void
.end method

.method private getDataFromOther()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 103
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 104
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "cameraid"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->did:Ljava/lang/String;

    .line 105
    const-string v4, "camera_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->camName:Ljava/lang/String;

    .line 106
    const-string v4, "positionID"

    iget v5, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->positionID:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->positionID:I

    .line 107
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 109
    .local v1, "flag":Ljava/lang/Boolean;
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    invoke-virtual {v4}, Lobject/p2pipcam/utils/DataBaseHelper;->fetchAllAlarmCameras()Landroid/database/Cursor;

    move-result-object v0

    .line 110
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 111
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 123
    :cond_1
    if-eqz v0, :cond_2

    .line 124
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_2
    const-string v4, "AlarmTypeActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "motionAlarm =="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->motionAlarm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v4, "AlarmTypeActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "visitorAlarm =="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->visitorAlarm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v4, "AlarmTypeActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "messageAlarm =="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->messageAlarm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v4, "AlarmTypeActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bootAlarm =="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->bootAlarm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->motionAlarm:Ljava/lang/String;

    if-nez v4, :cond_3

    const-string v4, "0"

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->motionAlarm:Ljava/lang/String;

    .line 135
    :cond_3
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->visitorAlarm:Ljava/lang/String;

    if-nez v4, :cond_4

    const-string v4, "0"

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->visitorAlarm:Ljava/lang/String;

    .line 136
    :cond_4
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->messageAlarm:Ljava/lang/String;

    if-nez v4, :cond_5

    const-string v4, "0"

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->messageAlarm:Ljava/lang/String;

    .line 137
    :cond_5
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->bootAlarm:Ljava/lang/String;

    if-nez v4, :cond_6

    const-string v4, "0"

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->bootAlarm:Ljava/lang/String;

    .line 140
    :cond_6
    return-void

    .line 112
    :cond_7
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "id":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->motionAlarm:Ljava/lang/String;

    .line 115
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->visitorAlarm:Ljava/lang/String;

    .line 116
    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->messageAlarm:Ljava/lang/String;

    .line 117
    const/4 v4, 0x5

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->bootAlarm:Ljava/lang/String;

    .line 118
    iget-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->did:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private setView()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 63
    new-array v1, v7, [Landroid/widget/TextView;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->mdTextNum:Landroid/widget/TextView;

    aput-object v4, v1, v6

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->VisitorTextNum:Landroid/widget/TextView;

    aput-object v4, v1, v5

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->MessageTextNum:Landroid/widget/TextView;

    aput-object v4, v1, v8

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->BootTextNum:Landroid/widget/TextView;

    aput-object v4, v1, v9

    .line 64
    .local v1, "TextNum":[Landroid/widget/TextView;
    new-array v0, v7, [Landroid/widget/TextView;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->txtMotion:Landroid/widget/TextView;

    aput-object v4, v0, v6

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->txtVisitor:Landroid/widget/TextView;

    aput-object v4, v0, v5

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->txtMessage:Landroid/widget/TextView;

    aput-object v4, v0, v8

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->txtBoot:Landroid/widget/TextView;

    aput-object v4, v0, v9

    .line 66
    .local v0, "TextName":[Landroid/widget/TextView;
    new-array v2, v7, [Ljava/lang/String;

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->motionAlarm:Ljava/lang/String;

    aput-object v4, v2, v6

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->visitorAlarm:Ljava/lang/String;

    aput-object v4, v2, v5

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->messageAlarm:Ljava/lang/String;

    aput-object v4, v2, v8

    iget-object v4, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->bootAlarm:Ljava/lang/String;

    aput-object v4, v2, v9

    .line 68
    .local v2, "alarm":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v7, :cond_0

    .line 90
    return-void

    .line 70
    :cond_0
    aget-object v4, v2, v3

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 73
    aget-object v4, v1, v3

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    aget-object v4, v0, v3

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 80
    :cond_1
    aget-object v4, v1, v3

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    aget-object v4, v1, v3

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    aget-object v4, v0, v3

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public alarm()V
    .locals 10

    .prologue
    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    const/4 v2, 0x0

    .line 255
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 256
    .local v3, "pwd":Ljava/lang/String;
    const/4 v6, 0x0

    .line 257
    .local v6, "user":Ljava/lang/String;
    const/4 v5, 0x0

    .line 258
    .local v5, "uid":Ljava/lang/String;
    const/4 v4, 0x0

    .line 260
    .local v4, "status":I
    const-string v7, "AlarmTypeActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "positionID =="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->positionID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    sget-object v7, Lobject/p2pipcam/system/SystemValue;->arrayList:Ljava/util/ArrayList;

    iget v8, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->positionID:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    check-cast v0, Lobject/p2pipcam/bean/CameraParamsBean;

    .line 263
    .restart local v0    # "bean":Lobject/p2pipcam/bean/CameraParamsBean;
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getDid()Ljava/lang/String;

    move-result-object v5

    .line 264
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getName()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getPwd()Ljava/lang/String;

    move-result-object v3

    .line 266
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getUser()Ljava/lang/String;

    move-result-object v6

    .line 267
    invoke-virtual {v0}, Lobject/p2pipcam/bean/CameraParamsBean;->getStatus()I

    move-result v4

    .line 270
    const-string v7, "AlarmTypeActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "uid =="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v7, "AlarmTypeActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "name =="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v7, "AlarmTypeActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "pwd =="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v7, "AlarmTypeActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "user =="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v7, "AlarmTypeActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "status =="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v7, 0x2

    if-ne v4, v7, :cond_0

    .line 277
    new-instance v1, Landroid/content/Intent;

    const-class v7, Lobject/p2pwificam/clientActivity/PlayBackTFActivity;

    invoke-direct {v1, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .local v1, "intentVid":Landroid/content/Intent;
    const-string v7, "camera_name"

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string v7, "cameraid"

    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v7, "camera_pwd"

    invoke-virtual {v1, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v7, "camera_user"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v7, "positionID"

    iget v8, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->positionID:I

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0, v1}, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->startActivity(Landroid/content/Intent;)V

    .line 284
    const v7, 0x7f040001

    .line 285
    const v8, 0x7f040005

    .line 284
    invoke-virtual {p0, v7, v8}, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->overridePendingTransition(II)V

    .line 292
    .end local v1    # "intentVid":Landroid/content/Intent;
    :goto_0
    return-void

    .line 287
    :cond_0
    const v7, 0x7f06018b

    invoke-virtual {p0, v7}, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->showToast(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 248
    :goto_0
    return-void

    .line 181
    :sswitch_0
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->finish()V

    .line 182
    const v0, 0x7f040006

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 185
    :sswitch_1
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->mdTextNum:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->mdTextNum:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->txtMotion:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    const-string v0, "0"

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->motionAlarm:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->did:Ljava/lang/String;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->motionAlarm:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lobject/p2pipcam/utils/DataBaseHelper;->updateCameraAlarm(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 192
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->alarm()V

    goto :goto_0

    .line 196
    :sswitch_2
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->VisitorTextNum:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->VisitorTextNum:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->txtVisitor:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    const-string v0, "0"

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->visitorAlarm:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->did:Ljava/lang/String;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->visitorAlarm:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lobject/p2pipcam/utils/DataBaseHelper;->updateCameraAlarm(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 204
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->alarm()V

    goto :goto_0

    .line 211
    :sswitch_3
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->MessageTextNum:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->MessageTextNum:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->txtMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    const-string v0, "0"

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->messageAlarm:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->did:Ljava/lang/String;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->messageAlarm:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lobject/p2pipcam/utils/DataBaseHelper;->updateCameraAlarm(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 216
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->alarm()V

    goto :goto_0

    .line 223
    :sswitch_4
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->BootTextNum:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->BootTextNum:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->txtBoot:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->alarm()V

    .line 228
    const-string v0, "0"

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->bootAlarm:Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    iget-object v1, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->did:Ljava/lang/String;

    iget-object v2, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->bootAlarm:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lobject/p2pipcam/utils/DataBaseHelper;->updateCameraAlarm(Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 178
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080019 -> :sswitch_0
        0x7f080036 -> :sswitch_1
        0x7f080039 -> :sswitch_2
        0x7f08003d -> :sswitch_3
        0x7f080041 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {p0}, Lobject/p2pipcam/utils/DataBaseHelper;->getInstance(Landroid/content/Context;)Lobject/p2pipcam/utils/DataBaseHelper;

    move-result-object v0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 52
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->getDataFromOther()V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->requestWindowFeature(I)Z

    .line 55
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->setContentView(I)V

    .line 57
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->findView()V

    .line 58
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->setView()V

    .line 59
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 96
    iget-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lobject/p2pwificam/clientActivity/AlarmTypeActivity;->helper:Lobject/p2pipcam/utils/DataBaseHelper;

    .line 100
    :cond_0
    return-void
.end method
