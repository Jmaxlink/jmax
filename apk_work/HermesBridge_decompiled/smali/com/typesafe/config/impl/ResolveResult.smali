.class final Lcom/typesafe/config/impl/ResolveResult;
.super Ljava/lang/Object;
.source "ResolveResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/typesafe/config/impl/AbstractConfigValue;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final context:Lcom/typesafe/config/impl/ResolveContext;

.field public final value:Lcom/typesafe/config/impl/AbstractConfigValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/AbstractConfigValue;)V
    .locals 0
    .param p1, "context"    # Lcom/typesafe/config/impl/ResolveContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/impl/ResolveContext;",
            "TV;)V"
        }
    .end annotation

    .line 10
    .local p0, "this":Lcom/typesafe/config/impl/ResolveResult;, "Lcom/typesafe/config/impl/ResolveResult<TV;>;"
    .local p2, "value":Lcom/typesafe/config/impl/AbstractConfigValue;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/typesafe/config/impl/ResolveResult;->context:Lcom/typesafe/config/impl/ResolveContext;

    .line 12
    iput-object p2, p0, Lcom/typesafe/config/impl/ResolveResult;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 13
    return-void
.end method

.method static make(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveResult;
    .locals 1
    .param p0, "context"    # Lcom/typesafe/config/impl/ResolveContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">(",
            "Lcom/typesafe/config/impl/ResolveContext;",
            "TV;)",
            "Lcom/typesafe/config/impl/ResolveResult<",
            "TV;>;"
        }
    .end annotation

    .line 16
    .local p1, "value":Lcom/typesafe/config/impl/AbstractConfigValue;, "TV;"
    new-instance v0, Lcom/typesafe/config/impl/ResolveResult;

    invoke-direct {v0, p0, p1}, Lcom/typesafe/config/impl/ResolveResult;-><init>(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/AbstractConfigValue;)V

    return-object v0
.end method


# virtual methods
.method asObjectResult()Lcom/typesafe/config/impl/ResolveResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/typesafe/config/impl/ResolveResult<",
            "Lcom/typesafe/config/impl/AbstractConfigObject;",
            ">;"
        }
    .end annotation

    .line 22
    .local p0, "this":Lcom/typesafe/config/impl/ResolveResult;, "Lcom/typesafe/config/impl/ResolveResult<TV;>;"
    iget-object v0, p0, Lcom/typesafe/config/impl/ResolveResult;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    instance-of v0, v0, Lcom/typesafe/config/impl/AbstractConfigObject;

    if-eqz v0, :cond_0

    .line 24
    move-object v0, p0

    .line 25
    .local v0, "o":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Lcom/typesafe/config/impl/ResolveResult;

    return-object v1

    .line 23
    .end local v0    # "o":Ljava/lang/Object;
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting a resolve result to be an object, but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/typesafe/config/impl/ResolveResult;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method asValueResult()Lcom/typesafe/config/impl/ResolveResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/typesafe/config/impl/ResolveResult<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;"
        }
    .end annotation

    .line 31
    .local p0, "this":Lcom/typesafe/config/impl/ResolveResult;, "Lcom/typesafe/config/impl/ResolveResult<TV;>;"
    move-object v0, p0

    .line 32
    .local v0, "o":Ljava/lang/Object;
    move-object v1, v0

    check-cast v1, Lcom/typesafe/config/impl/ResolveResult;

    return-object v1
.end method

.method popTrace()Lcom/typesafe/config/impl/ResolveResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/typesafe/config/impl/ResolveResult<",
            "TV;>;"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/typesafe/config/impl/ResolveResult;, "Lcom/typesafe/config/impl/ResolveResult<TV;>;"
    iget-object v0, p0, Lcom/typesafe/config/impl/ResolveResult;->context:Lcom/typesafe/config/impl/ResolveContext;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/ResolveContext;->popTrace()Lcom/typesafe/config/impl/ResolveContext;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/impl/ResolveResult;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    invoke-static {v0, v1}, Lcom/typesafe/config/impl/ResolveResult;->make(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    .local p0, "this":Lcom/typesafe/config/impl/ResolveResult;, "Lcom/typesafe/config/impl/ResolveResult<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResolveResult("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/impl/ResolveResult;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
