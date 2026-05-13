.class final Lcom/typesafe/config/impl/ConfigNodeComment;
.super Lcom/typesafe/config/impl/ConfigNodeSingleToken;
.source "ConfigNodeComment.java"


# direct methods
.method constructor <init>(Lcom/typesafe/config/impl/Token;)V
    .locals 2
    .param p1, "comment"    # Lcom/typesafe/config/impl/Token;

    .line 8
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;-><init>(Lcom/typesafe/config/impl/Token;)V

    .line 9
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token:Lcom/typesafe/config/impl/Token;

    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->isComment(Lcom/typesafe/config/impl/Token;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "Tried to create a ConfigNodeComment from a non-comment token"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected commentText()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token:Lcom/typesafe/config/impl/Token;

    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->getCommentText(Lcom/typesafe/config/impl/Token;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
