.class Lcom/typesafe/config/impl/SimpleConfigList$1;
.super Lcom/typesafe/config/impl/AbstractConfigValue$NoExceptionsModifier;
.source "SimpleConfigList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/typesafe/config/impl/SimpleConfigList;->relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/SimpleConfigList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/typesafe/config/impl/SimpleConfigList;

.field final synthetic val$prefix:Lcom/typesafe/config/impl/Path;


# direct methods
.method constructor <init>(Lcom/typesafe/config/impl/SimpleConfigList;Lcom/typesafe/config/impl/Path;)V
    .locals 0
    .param p1, "this$0"    # Lcom/typesafe/config/impl/SimpleConfigList;

    .line 172
    iput-object p1, p0, Lcom/typesafe/config/impl/SimpleConfigList$1;->this$0:Lcom/typesafe/config/impl/SimpleConfigList;

    iput-object p2, p0, Lcom/typesafe/config/impl/SimpleConfigList$1;->val$prefix:Lcom/typesafe/config/impl/Path;

    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigValue$NoExceptionsModifier;-><init>(Lcom/typesafe/config/impl/AbstractConfigValue;)V

    return-void
.end method


# virtual methods
.method public modifyChild(Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "v"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 175
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList$1;->val$prefix:Lcom/typesafe/config/impl/Path;

    invoke-virtual {p2, v0}, Lcom/typesafe/config/impl/AbstractConfigValue;->relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    return-object v0
.end method
