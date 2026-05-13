.class final Lcom/typesafe/config/impl/SimpleConfigObject$ResolveModifier;
.super Ljava/lang/Object;
.source "SimpleConfigObject.java"

# interfaces
.implements Lcom/typesafe/config/impl/AbstractConfigValue$Modifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/SimpleConfigObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResolveModifier"
.end annotation


# instance fields
.field context:Lcom/typesafe/config/impl/ResolveContext;

.field final originalRestrict:Lcom/typesafe/config/impl/Path;

.field final source:Lcom/typesafe/config/impl/ResolveSource;


# direct methods
.method constructor <init>(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/ResolveSource;)V
    .locals 1
    .param p1, "context"    # Lcom/typesafe/config/impl/ResolveContext;
    .param p2, "source"    # Lcom/typesafe/config/impl/ResolveSource;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-object p1, p0, Lcom/typesafe/config/impl/SimpleConfigObject$ResolveModifier;->context:Lcom/typesafe/config/impl/ResolveContext;

    .line 356
    iput-object p2, p0, Lcom/typesafe/config/impl/SimpleConfigObject$ResolveModifier;->source:Lcom/typesafe/config/impl/ResolveSource;

    .line 357
    invoke-virtual {p1}, Lcom/typesafe/config/impl/ResolveContext;->restrictToChild()Lcom/typesafe/config/impl/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigObject$ResolveModifier;->originalRestrict:Lcom/typesafe/config/impl/Path;

    .line 358
    return-void
.end method


# virtual methods
.method public modifyChildMayThrow(Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "v"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve;
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigObject$ResolveModifier;->context:Lcom/typesafe/config/impl/ResolveContext;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/ResolveContext;->isRestrictedToChild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigObject$ResolveModifier;->context:Lcom/typesafe/config/impl/ResolveContext;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/ResolveContext;->restrictToChild()Lcom/typesafe/config/impl/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/typesafe/config/impl/Path;->first()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigObject$ResolveModifier;->context:Lcom/typesafe/config/impl/ResolveContext;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/ResolveContext;->restrictToChild()Lcom/typesafe/config/impl/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/typesafe/config/impl/Path;->remainder()Lcom/typesafe/config/impl/Path;

    move-result-object v0

    .line 365
    .local v0, "remainder":Lcom/typesafe/config/impl/Path;
    if-eqz v0, :cond_0

    .line 366
    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigObject$ResolveModifier;->context:Lcom/typesafe/config/impl/ResolveContext;

    invoke-virtual {v1, v0}, Lcom/typesafe/config/impl/ResolveContext;->restrict(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/ResolveContext;

    move-result-object v1

    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfigObject$ResolveModifier;->source:Lcom/typesafe/config/impl/ResolveSource;

    invoke-virtual {v1, p2, v2}, Lcom/typesafe/config/impl/ResolveContext;->resolve(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/ResolveSource;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v1

    .line 368
    .local v1, "result":Lcom/typesafe/config/impl/ResolveResult;, "Lcom/typesafe/config/impl/ResolveResult<+Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    iget-object v2, v1, Lcom/typesafe/config/impl/ResolveResult;->context:Lcom/typesafe/config/impl/ResolveContext;

    invoke-virtual {v2}, Lcom/typesafe/config/impl/ResolveContext;->unrestricted()Lcom/typesafe/config/impl/ResolveContext;

    move-result-object v2

    iget-object v3, p0, Lcom/typesafe/config/impl/SimpleConfigObject$ResolveModifier;->originalRestrict:Lcom/typesafe/config/impl/Path;

    invoke-virtual {v2, v3}, Lcom/typesafe/config/impl/ResolveContext;->restrict(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/ResolveContext;

    move-result-object v2

    iput-object v2, p0, Lcom/typesafe/config/impl/SimpleConfigObject$ResolveModifier;->context:Lcom/typesafe/config/impl/ResolveContext;

    .line 369
    iget-object v2, v1, Lcom/typesafe/config/impl/ResolveResult;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    return-object v2

    .line 372
    .end local v1    # "result":Lcom/typesafe/config/impl/ResolveResult;, "Lcom/typesafe/config/impl/ResolveResult<+Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    :cond_0
    return-object p2

    .line 376
    .end local v0    # "remainder":Lcom/typesafe/config/impl/Path;
    :cond_1
    return-object p2

    .line 380
    :cond_2
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleConfigObject$ResolveModifier;->context:Lcom/typesafe/config/impl/ResolveContext;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/ResolveContext;->unrestricted()Lcom/typesafe/config/impl/ResolveContext;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigObject$ResolveModifier;->source:Lcom/typesafe/config/impl/ResolveSource;

    invoke-virtual {v0, p2, v1}, Lcom/typesafe/config/impl/ResolveContext;->resolve(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/ResolveSource;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v0

    .line 381
    .local v0, "result":Lcom/typesafe/config/impl/ResolveResult;, "Lcom/typesafe/config/impl/ResolveResult<+Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    iget-object v1, v0, Lcom/typesafe/config/impl/ResolveResult;->context:Lcom/typesafe/config/impl/ResolveContext;

    invoke-virtual {v1}, Lcom/typesafe/config/impl/ResolveContext;->unrestricted()Lcom/typesafe/config/impl/ResolveContext;

    move-result-object v1

    iget-object v2, p0, Lcom/typesafe/config/impl/SimpleConfigObject$ResolveModifier;->originalRestrict:Lcom/typesafe/config/impl/Path;

    invoke-virtual {v1, v2}, Lcom/typesafe/config/impl/ResolveContext;->restrict(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/ResolveContext;

    move-result-object v1

    iput-object v1, p0, Lcom/typesafe/config/impl/SimpleConfigObject$ResolveModifier;->context:Lcom/typesafe/config/impl/ResolveContext;

    .line 382
    iget-object v1, v0, Lcom/typesafe/config/impl/ResolveResult;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    return-object v1
.end method
