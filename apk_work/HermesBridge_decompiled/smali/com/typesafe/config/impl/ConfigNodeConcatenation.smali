.class final Lcom/typesafe/config/impl/ConfigNodeConcatenation;
.super Lcom/typesafe/config/impl/ConfigNodeComplexValue;
.source "ConfigNodeConcatenation.java"


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/AbstractConfigNode;",
            ">;)V"
        }
    .end annotation

    .line 7
    .local p1, "children":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/ConfigNodeComplexValue;-><init>(Ljava/util/Collection;)V

    .line 8
    return-void
.end method


# virtual methods
.method protected bridge synthetic newNode(Ljava/util/Collection;)Lcom/typesafe/config/impl/ConfigNodeComplexValue;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigNodeConcatenation;->newNode(Ljava/util/Collection;)Lcom/typesafe/config/impl/ConfigNodeConcatenation;

    move-result-object p1

    return-object p1
.end method

.method protected newNode(Ljava/util/Collection;)Lcom/typesafe/config/impl/ConfigNodeConcatenation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/AbstractConfigNode;",
            ">;)",
            "Lcom/typesafe/config/impl/ConfigNodeConcatenation;"
        }
    .end annotation

    .line 12
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    new-instance v0, Lcom/typesafe/config/impl/ConfigNodeConcatenation;

    invoke-direct {v0, p1}, Lcom/typesafe/config/impl/ConfigNodeConcatenation;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
