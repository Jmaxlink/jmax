.class Lcom/typesafe/config/impl/ConfigNodeSingleToken;
.super Lcom/typesafe/config/impl/AbstractConfigNode;
.source "ConfigNodeSingleToken.java"


# instance fields
.field final token:Lcom/typesafe/config/impl/Token;


# direct methods
.method constructor <init>(Lcom/typesafe/config/impl/Token;)V
    .locals 0
    .param p1, "t"    # Lcom/typesafe/config/impl/Token;

    .line 11
    invoke-direct {p0}, Lcom/typesafe/config/impl/AbstractConfigNode;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token:Lcom/typesafe/config/impl/Token;

    .line 13
    return-void
.end method


# virtual methods
.method protected token()Lcom/typesafe/config/impl/Token;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token:Lcom/typesafe/config/impl/Token;

    return-object v0
.end method

.method protected tokens()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/Token;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token:Lcom/typesafe/config/impl/Token;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
