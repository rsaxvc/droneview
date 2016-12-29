.class public Lobject/p2pwificam/clientActivity/EventSettingActivity;
.super Lobject/p2pwificam/clientActivity/BaseActivity;
.source "EventSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnCancel:Landroid/widget/ImageButton;

.field private btnOk:Landroid/widget/Button;

.field private spinCounts:Landroid/widget/Spinner;

.field private spinDays:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;-><init>()V

    .line 16
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/EventSettingActivity;->btnOk:Landroid/widget/Button;

    .line 17
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/EventSettingActivity;->btnCancel:Landroid/widget/ImageButton;

    .line 18
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/EventSettingActivity;->spinDays:Landroid/widget/Spinner;

    .line 19
    iput-object v0, p0, Lobject/p2pwificam/clientActivity/EventSettingActivity;->spinCounts:Landroid/widget/Spinner;

    .line 14
    return-void
.end method

.method private findView()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 67
    const v3, 0x7f08010b

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/EventSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/EventSettingActivity;->btnOk:Landroid/widget/Button;

    .line 68
    const v3, 0x7f08010a

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/EventSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/EventSettingActivity;->btnCancel:Landroid/widget/ImageButton;

    .line 69
    const v3, 0x7f08010f

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/EventSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/EventSettingActivity;->spinDays:Landroid/widget/Spinner;

    .line 70
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/EventSettingActivity;->btnOk:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/EventSettingActivity;->btnCancel:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "7"

    aput-object v5, v4, v6

    const-string v5, "30"

    aput-object v5, v4, v7

    const-string v5, "90"

    aput-object v5, v4, v8

    const-string v5, "365"

    aput-object v5, v4, v9

    invoke-direct {v0, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 74
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 75
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/EventSettingActivity;->spinDays:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 76
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->get_event_reserve_days(Landroid/content/Context;)I

    move-result v2

    .line 77
    .local v2, "days":I
    const/4 v3, 0x7

    if-gt v2, v3, :cond_0

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/EventSettingActivity;->spinDays:Landroid/widget/Spinner;

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 82
    :goto_0
    const v3, 0x7f080110

    invoke-virtual {p0, v3}, Lobject/p2pwificam/clientActivity/EventSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lobject/p2pwificam/clientActivity/EventSettingActivity;->spinCounts:Landroid/widget/Spinner;

    .line 83
    new-instance v0, Landroid/widget/ArrayAdapter;

    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x1090008

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "100"

    aput-object v5, v4, v6

    const-string v5, "200"

    aput-object v5, v4, v7

    const-string v5, "400"

    aput-object v5, v4, v8

    const-string v5, "800"

    aput-object v5, v4, v9

    invoke-direct {v0, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 84
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 85
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/EventSettingActivity;->spinCounts:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 86
    invoke-static {p0}, Lobject/p2pipcam/utils/Pub;->get_event_max_count(Landroid/content/Context;)I

    move-result v1

    .line 87
    .local v1, "counts":I
    const/16 v3, 0x64

    if-gt v1, v3, :cond_3

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/EventSettingActivity;->spinCounts:Landroid/widget/Spinner;

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 92
    :goto_1
    return-void

    .line 78
    .end local v1    # "counts":I
    :cond_0
    const/16 v3, 0x1e

    if-gt v2, v3, :cond_1

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/EventSettingActivity;->spinDays:Landroid/widget/Spinner;

    invoke-virtual {v3, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 79
    :cond_1
    const/16 v3, 0x5a

    if-gt v2, v3, :cond_2

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/EventSettingActivity;->spinDays:Landroid/widget/Spinner;

    invoke-virtual {v3, v8}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 80
    :cond_2
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/EventSettingActivity;->spinDays:Landroid/widget/Spinner;

    invoke-virtual {v3, v9}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 88
    .restart local v1    # "counts":I
    :cond_3
    const/16 v3, 0xc8

    if-gt v2, v3, :cond_4

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/EventSettingActivity;->spinCounts:Landroid/widget/Spinner;

    invoke-virtual {v3, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 89
    :cond_4
    const/16 v3, 0x190

    if-gt v2, v3, :cond_5

    iget-object v3, p0, Lobject/p2pwificam/clientActivity/EventSettingActivity;->spinCounts:Landroid/widget/Spinner;

    invoke-virtual {v3, v8}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 90
    :cond_5
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/EventSettingActivity;->spinCounts:Landroid/widget/Spinner;

    invoke-virtual {v3, v9}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v7, 0x7f040006

    const/high16 v6, 0x7f040000

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 38
    :pswitch_0
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/EventSettingActivity;->spinDays:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 39
    .local v2, "index":I
    const/4 v1, 0x7

    .line 40
    .local v1, "days":I
    if-nez v2, :cond_0

    const/4 v1, 0x7

    .line 44
    :goto_1
    invoke-static {p0, v1}, Lobject/p2pipcam/utils/Pub;->set_event_reserve_days(Landroid/content/Context;I)V

    .line 46
    iget-object v3, p0, Lobject/p2pwificam/clientActivity/EventSettingActivity;->spinCounts:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 47
    const/16 v0, 0x64

    .line 48
    .local v0, "counts":I
    if-nez v2, :cond_3

    const/16 v0, 0x64

    .line 52
    :goto_2
    invoke-static {p0, v0}, Lobject/p2pipcam/utils/Pub;->set_event_max_count(Landroid/content/Context;I)V

    .line 54
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/EventSettingActivity;->finish()V

    .line 55
    invoke-virtual {p0, v7, v6}, Lobject/p2pwificam/clientActivity/EventSettingActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 41
    .end local v0    # "counts":I
    :cond_0
    if-ne v2, v4, :cond_1

    const/16 v1, 0x1e

    goto :goto_1

    .line 42
    :cond_1
    if-ne v2, v5, :cond_2

    const/16 v1, 0x5a

    goto :goto_1

    .line 43
    :cond_2
    const/16 v1, 0x16d

    goto :goto_1

    .line 49
    .restart local v0    # "counts":I
    :cond_3
    if-ne v2, v4, :cond_4

    const/16 v0, 0xc8

    goto :goto_2

    .line 50
    :cond_4
    if-ne v2, v5, :cond_5

    const/16 v0, 0x190

    goto :goto_2

    .line 51
    :cond_5
    const/16 v0, 0x320

    goto :goto_2

    .line 59
    .end local v0    # "counts":I
    .end local v1    # "days":I
    .end local v2    # "index":I
    :pswitch_1
    invoke-virtual {p0}, Lobject/p2pwificam/clientActivity/EventSettingActivity;->finish()V

    .line 60
    invoke-virtual {p0, v7, v6}, Lobject/p2pwificam/clientActivity/EventSettingActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x7f08010a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lobject/p2pwificam/clientActivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/EventSettingActivity;->requestWindowFeature(I)Z

    .line 25
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lobject/p2pwificam/clientActivity/EventSettingActivity;->setContentView(I)V

    .line 26
    invoke-direct {p0}, Lobject/p2pwificam/clientActivity/EventSettingActivity;->findView()V

    .line 27
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onDestroy()V

    .line 96
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 30
    const v0, 0x7f040006

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v0, v1}, Lobject/p2pwificam/clientActivity/EventSettingActivity;->overridePendingTransition(II)V

    .line 31
    invoke-super {p0}, Lobject/p2pwificam/clientActivity/BaseActivity;->onPause()V

    .line 32
    return-void
.end method
