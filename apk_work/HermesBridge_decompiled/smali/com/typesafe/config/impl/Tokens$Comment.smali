.class abstract Lcom/typesafe/config/impl/Tokens$Comment;
.super Lcom/typesafe/config/impl/Token;
.source "Tokens.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/Tokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Comment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/typesafe/config/impl/Tokens$Comment$HashComment;,
        Lcom/typesafe/config/impl/Tokens$Comment$DoubleSlashComment;
    }
.end annotation


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V
    .locals 1
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "text"    # Ljava/lang/String;

    .line 231
    sget-object v0, Lcom/typesafe/config/impl/TokenType;->COMMENT:Lcom/typesafe/config/impl/TokenType;

    invoke-direct {p0, v0, p1}, Lcom/typesafe/config/impl/Token;-><init>(Lcom/typesafe/config/impl/TokenType;Lcom/typesafe/config/ConfigOrigin;)V

    .line 232
    iput-object p2, p0, Lcom/typesafe/config/impl/Tokens$Comment;->text:Ljava/lang/String;

    .line 233
    return-void
.end method

.method static synthetic access$000(Lcom/typesafe/config/impl/Tokens$Comment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/typesafe/config/impl/Tokens$Comment;

    .line 227
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokens$Comment;->text:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 272
    instance-of v0, p1, Lcom/typesafe/config/impl/Tokens$Comment;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 277
    invoke-super {p0, p1}, Lcom/typesafe/config/impl/Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/typesafe/config/impl/Tokens$Comment;

    iget-object v0, v0, Lcom/typesafe/config/impl/Tokens$Comment;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/typesafe/config/impl/Tokens$Comment;->text:Ljava/lang/String;

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

.method public hashCode()I
    .locals 2

    .line 282
    invoke-super {p0}, Lcom/typesafe/config/impl/Token;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x29

    mul-int/lit8 v0, v0, 0x29

    .line 283
    .local v0, "h":I
    iget-object v1, p0, Lcom/typesafe/config/impl/Tokens$Comment;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x29

    .line 284
    .end local v0    # "h":I
    .local v1, "h":I
    return v1
.end method

.method text()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokens$Comment;->text:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\'#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-object v1, p0, Lcom/typesafe/config/impl/Tokens$Comment;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, "\' (COMMENT)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
