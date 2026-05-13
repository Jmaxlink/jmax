.class Lcom/typesafe/config/impl/SimpleConfigList$ResolveModifier;
.super Ljava/lang/Object;
.source "SimpleConfigList.java"

# interfaces
.implements Lcom/typesafe/config/impl/AbstractConfigValue$Modifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/SimpleConfigList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResolveModifier"
.end annotation


# instance fields
.field context:Lcom/typesafe/config/impl/ResolveContext;

.field final source:Lcom/typesafe/config/impl/ResolveSource;


# direct methods
.method constructor <init>(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/ResolveSource;)V
    .locals 0
    .param p1, "context"    # Lcom/typesafe/config/impl/ResolveContext;
    .param p2, "source"    # Lcom/typesafe/config/impl/ResolveSource;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/typesafe/config/impl/SimpleConfigList$ResolveModifier;->context:Lcom/typesafe/config/impl/ResolveContext;

    .line 133
    iput-object p2, p0, Lcom/typesafe/config/impl/SimpleConfigList$ResolveModifier;->source:Lcom/typesafe/config/impl/ResolveSource;

    .line 134
    return-void
.end method


# virtual methods
.method public modifyChildMayThrow(Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "v"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigList$ResolveModifier;->context:Lcom/typesafe/config/impl/ResolveContext;

    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigList$ResolveModifier;->source:Lcom/typesafe/config/impl/ResolveSource;

    invoke-virtual {v0, p2, v1}, Lcom/typesafe/config/impl/ResolveContext;->resolve(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/ResolveSource;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v0

    .line 140
    .local v0, "result":Lcom/typesafe/config/impl/ResolveResult;, "Lcom/typesafe/config/impl/ResolveResult<+Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    iget-object v1, v0, Lcom/typesafe/config/impl/ResolveResult;->context:Lcom/typesafe/config/impl/ResolveContext;

    iput-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigList$ResolveModifier;->context:Lcom/typesafe/config/impl/ResolveContext;

    .line 141
    iget-object v1, v0, Lcom/typesafe/config/impl/ResolveResult;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    return-object v1
.end method
