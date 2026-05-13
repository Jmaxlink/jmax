.class Lcom/typesafe/config/impl/SimpleConfigList$2;
.super Ljava/lang/Object;
.source "SimpleConfigList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/typesafe/config/impl/SimpleConfigList;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/typesafe/config/ConfigValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/typesafe/config/impl/SimpleConfigList;

.field final synthetic val$i:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/typesafe/config/impl/SimpleConfigList;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/typesafe/config/impl/SimpleConfigList;

    .line 278
    iput-object p1, p0, Lcom/typesafe/config/impl/SimpleConfigList$2;->this$0:Lcom/typesafe/config/impl/SimpleConfigList;

    iput-object p2, p0, Lcom/typesafe/config/impl/SimpleConfigList$2;->val$i:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList$2;->val$i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/typesafe/config/ConfigValue;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList$2;->val$i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/ConfigValue;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 278
    invoke-virtual {p0}, Lcom/typesafe/config/impl/SimpleConfigList$2;->next()Lcom/typesafe/config/ConfigValue;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 291
    const-string v0, "iterator().remove"

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigList;->access$000(Ljava/lang/String;)Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method
