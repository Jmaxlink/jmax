.class final Lcom/typesafe/config/impl/PathBuilder;
.super Ljava/lang/Object;
.source "PathBuilder.java"


# instance fields
.field private final keys:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private result:Lcom/typesafe/config/impl/Path;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/typesafe/config/impl/PathBuilder;->keys:Ljava/util/Stack;

    .line 17
    return-void
.end method

.method private checkCanAppend()V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/typesafe/config/impl/PathBuilder;->result:Lcom/typesafe/config/impl/Path;

    if-nez v0, :cond_0

    .line 23
    return-void

    .line 21
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "Adding to PathBuilder after getting result"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method appendKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Lcom/typesafe/config/impl/PathBuilder;->checkCanAppend()V

    .line 28
    iget-object v0, p0, Lcom/typesafe/config/impl/PathBuilder;->keys:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method appendPath(Lcom/typesafe/config/impl/Path;)V
    .locals 3
    .param p1, "path"    # Lcom/typesafe/config/impl/Path;

    .line 32
    invoke-direct {p0}, Lcom/typesafe/config/impl/PathBuilder;->checkCanAppend()V

    .line 34
    invoke-virtual {p1}, Lcom/typesafe/config/impl/Path;->first()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "first":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/typesafe/config/impl/Path;->remainder()Lcom/typesafe/config/impl/Path;

    move-result-object v1

    .line 37
    .local v1, "remainder":Lcom/typesafe/config/impl/Path;
    :goto_0
    iget-object v2, p0, Lcom/typesafe/config/impl/PathBuilder;->keys:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {v1}, Lcom/typesafe/config/impl/Path;->first()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {v1}, Lcom/typesafe/config/impl/Path;->remainder()Lcom/typesafe/config/impl/Path;

    move-result-object v1

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method result()Lcom/typesafe/config/impl/Path;
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/typesafe/config/impl/PathBuilder;->result:Lcom/typesafe/config/impl/Path;

    if-nez v0, :cond_1

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "remainder":Lcom/typesafe/config/impl/Path;
    :goto_0
    iget-object v1, p0, Lcom/typesafe/config/impl/PathBuilder;->keys:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/typesafe/config/impl/PathBuilder;->keys:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 54
    .local v1, "key":Ljava/lang/String;
    new-instance v2, Lcom/typesafe/config/impl/Path;

    invoke-direct {v2, v1, v0}, Lcom/typesafe/config/impl/Path;-><init>(Ljava/lang/String;Lcom/typesafe/config/impl/Path;)V

    move-object v0, v2

    .line 55
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 56
    :cond_0
    iput-object v0, p0, Lcom/typesafe/config/impl/PathBuilder;->result:Lcom/typesafe/config/impl/Path;

    .line 58
    .end local v0    # "remainder":Lcom/typesafe/config/impl/Path;
    :cond_1
    iget-object v0, p0, Lcom/typesafe/config/impl/PathBuilder;->result:Lcom/typesafe/config/impl/Path;

    return-object v0
.end method
