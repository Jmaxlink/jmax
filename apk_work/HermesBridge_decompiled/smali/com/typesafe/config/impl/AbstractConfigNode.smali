.class abstract Lcom/typesafe/config/impl/AbstractConfigNode;
.super Ljava/lang/Object;
.source "AbstractConfigNode.java"

# interfaces
.implements Lcom/typesafe/config/parser/ConfigNode;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 22
    instance-of v0, p1, Lcom/typesafe/config/impl/AbstractConfigNode;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigNode;->render()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/typesafe/config/impl/AbstractConfigNode;

    invoke-virtual {v1}, Lcom/typesafe/config/impl/AbstractConfigNode;->render()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigNode;->render()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final render()Ljava/lang/String;
    .locals 5

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .local v0, "origText":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/typesafe/config/impl/AbstractConfigNode;->tokens()Ljava/util/Collection;

    move-result-object v1

    .line 14
    .local v1, "tokens":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/typesafe/config/impl/Token;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/impl/Token;

    .line 15
    .local v3, "t":Lcom/typesafe/config/impl/Token;
    invoke-virtual {v3}, Lcom/typesafe/config/impl/Token;->tokenText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .end local v3    # "t":Lcom/typesafe/config/impl/Token;
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method abstract tokens()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/Token;",
            ">;"
        }
    .end annotation
.end method
