.class Lcom/actionbarsherlock/widget/SearchView$2;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/widget/SearchView;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView$2;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$2;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$100(Lcom/actionbarsherlock/widget/SearchView;)V

    .line 164
    return-void
.end method
