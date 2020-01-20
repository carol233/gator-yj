.class Lorg/sipdroid/sipua/ui/Sipdroid$2;
.super Ljava/lang/Object;
.source "Sipdroid.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sipdroid/sipua/ui/Sipdroid;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sipdroid/sipua/ui/Sipdroid;


# direct methods
.method constructor <init>(Lorg/sipdroid/sipua/ui/Sipdroid;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lorg/sipdroid/sipua/ui/Sipdroid$2;->this$0:Lorg/sipdroid/sipua/ui/Sipdroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/Sipdroid$2;->this$0:Lorg/sipdroid/sipua/ui/Sipdroid;

    iget-object v1, p0, Lorg/sipdroid/sipua/ui/Sipdroid$2;->this$0:Lorg/sipdroid/sipua/ui/Sipdroid;

    iget-object v1, v1, Lorg/sipdroid/sipua/ui/Sipdroid;->sip_uri_box:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Lorg/sipdroid/sipua/ui/Sipdroid;->call_menu(Landroid/widget/AutoCompleteTextView;)V

    .line 207
    return-void
.end method
