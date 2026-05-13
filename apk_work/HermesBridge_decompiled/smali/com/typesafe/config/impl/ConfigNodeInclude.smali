.class final Lcom/typesafe/config/impl/ConfigNodeInclude;
.super Lcom/typesafe/config/impl/AbstractConfigNode;
.source "ConfigNodeInclude.java"


# instance fields
.field private final children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/typesafe/config/impl/AbstractConfigNode;",
            ">;"
        }
    .end annotation
.end field

.field private final isRequired:Z

.field private final kind:Lcom/typesafe/config/impl/ConfigIncludeKind;


# direct methods
.method constructor <init>(Ljava/util/Collection;Lcom/typesafe/config/impl/ConfigIncludeKind;Z)V
    .locals 1
    .param p2, "kind"    # Lcom/typesafe/config/impl/ConfigIncludeKind;
    .param p3, "isRequired"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/AbstractConfigNode;",
            ">;",
            "Lcom/typesafe/config/impl/ConfigIncludeKind;",
            "Z)V"
        }
    .end annotation

    .line 11
    .local p1, "children":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    invoke-direct {p0}, Lcom/typesafe/config/impl/AbstractConfigNode;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/typesafe/config/impl/ConfigNodeInclude;->children:Ljava/util/ArrayList;

    .line 13
    iput-object p2, p0, Lcom/typesafe/config/impl/ConfigNodeInclude;->kind:Lcom/typesafe/config/impl/ConfigIncludeKind;

    .line 14
    iput-boolean p3, p0, Lcom/typesafe/config/impl/ConfigNodeInclude;->isRequired:Z

    .line 15
    return-void
.end method


# virtual methods
.method public final children()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/AbstractConfigNode;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigNodeInclude;->children:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected isRequired()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/typesafe/config/impl/ConfigNodeInclude;->isRequired:Z

    return v0
.end method

.method protected kind()Lcom/typesafe/config/impl/ConfigIncludeKind;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigNodeInclude;->kind:Lcom/typesafe/config/impl/ConfigIncludeKind;

    return-object v0
.end method

.method protected name()Ljava/lang/String;
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigNodeInclude;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/typesafe/config/impl/AbstractConfigNode;

    .line 40
    .local v1, "n":Lcom/typesafe/config/impl/AbstractConfigNode;
    instance-of v2, v1, Lcom/typesafe/config/impl/ConfigNodeSimpleValue;

    if-eqz v2, :cond_0

    .line 41
    move-object v0, v1

    check-cast v0, Lcom/typesafe/config/impl/ConfigNodeSimpleValue;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/ConfigNodeSimpleValue;->token()Lcom/typesafe/config/impl/Token;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->getValue(Lcom/typesafe/config/impl/Token;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigValue;->unwrapped()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 43
    .end local v1    # "n":Lcom/typesafe/config/impl/AbstractConfigNode;
    :cond_0
    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected tokens()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/Token;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v0, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/Token;>;"
    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigNodeInclude;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigNode;

    .line 25
    .local v2, "child":Lcom/typesafe/config/impl/AbstractConfigNode;
    invoke-virtual {v2}, Lcom/typesafe/config/impl/AbstractConfigNode;->tokens()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 26
    .end local v2    # "child":Lcom/typesafe/config/impl/AbstractConfigNode;
    goto :goto_0

    .line 27
    :cond_0
    return-object v0
.end method
