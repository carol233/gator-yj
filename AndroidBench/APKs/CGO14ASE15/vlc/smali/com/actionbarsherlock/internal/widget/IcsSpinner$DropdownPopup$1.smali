.class Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup$1;
.super Ljava/lang/Object;
.source "IcsSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;-><init>(Lcom/actionbarsherlock/internal/widget/IcsSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;

.field final synthetic val$this$0:Lcom/actionbarsherlock/internal/widget/IcsSpinner;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;Lcom/actionbarsherlock/internal/widget/IcsSpinner;)V
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup$1;->this$1:Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;

    iput-object p2, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup$1;->val$this$0:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 653
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup$1;->this$1:Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;

    iget-object v0, v0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->this$0:Lcom/actionbarsherlock/internal/widget/IcsSpinner;

    invoke-virtual {v0, p3}, Lcom/actionbarsherlock/internal/widget/IcsSpinner;->setSelection(I)V

    .line 654
    iget-object v0, p0, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup$1;->this$1:Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsSpinner$DropdownPopup;->dismiss()V

    .line 655
    return-void
.end method
