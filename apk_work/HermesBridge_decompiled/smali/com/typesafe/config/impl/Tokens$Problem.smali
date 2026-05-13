.class Lcom/typesafe/config/impl/Tokens$Problem;
.super Lcom/typesafe/config/impl/Token;
.source "Tokens.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/Tokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Problem"
.end annotation


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private final message:Ljava/lang/String;

.field private final suggestQuotes:Z

.field private final what:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Throwable;)V
    .locals 1
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "what"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "suggestQuotes"    # Z
    .param p5, "cause"    # Ljava/lang/Throwable;

    .line 167
    sget-object v0, Lcom/typesafe/config/impl/TokenType;->PROBLEM:Lcom/typesafe/config/impl/TokenType;

    invoke-direct {p0, v0, p1}, Lcom/typesafe/config/impl/Token;-><init>(Lcom/typesafe/config/impl/TokenType;Lcom/typesafe/config/ConfigOrigin;)V

    .line 168
    iput-object p2, p0, Lcom/typesafe/config/impl/Tokens$Problem;->what:Ljava/lang/String;

    .line 169
    iput-object p3, p0, Lcom/typesafe/config/impl/Tokens$Problem;->message:Ljava/lang/String;

    .line 170
    iput-boolean p4, p0, Lcom/typesafe/config/impl/Tokens$Problem;->suggestQuotes:Z

    .line 171
    iput-object p5, p0, Lcom/typesafe/config/impl/Tokens$Problem;->cause:Ljava/lang/Throwable;

    .line 172
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 204
    instance-of v0, p1, Lcom/typesafe/config/impl/Tokens$Problem;

    return v0
.end method

.method cause()Ljava/lang/Throwable;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokens$Problem;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 209
    invoke-super {p0, p1}, Lcom/typesafe/config/impl/Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/typesafe/config/impl/Tokens$Problem;

    iget-object v0, v0, Lcom/typesafe/config/impl/Tokens$Problem;->what:Ljava/lang/String;

    iget-object v1, p0, Lcom/typesafe/config/impl/Tokens$Problem;->what:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/typesafe/config/impl/Tokens$Problem;

    iget-object v0, v0, Lcom/typesafe/config/impl/Tokens$Problem;->message:Ljava/lang/String;

    iget-object v1, p0, Lcom/typesafe/config/impl/Tokens$Problem;->message:Ljava/lang/String;

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/typesafe/config/impl/Tokens$Problem;

    iget-boolean v0, v0, Lcom/typesafe/config/impl/Tokens$Problem;->suggestQuotes:Z

    iget-boolean v1, p0, Lcom/typesafe/config/impl/Tokens$Problem;->suggestQuotes:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/typesafe/config/impl/Tokens$Problem;

    iget-object v0, v0, Lcom/typesafe/config/impl/Tokens$Problem;->cause:Ljava/lang/Throwable;

    iget-object v1, p0, Lcom/typesafe/config/impl/Tokens$Problem;->cause:Ljava/lang/Throwable;

    .line 212
    invoke-static {v0, v1}, Lcom/typesafe/config/impl/ConfigImplUtil;->equalsHandlingNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 209
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 217
    invoke-super {p0}, Lcom/typesafe/config/impl/Token;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x29

    mul-int/lit8 v0, v0, 0x29

    .line 218
    .local v0, "h":I
    iget-object v1, p0, Lcom/typesafe/config/impl/Tokens$Problem;->what:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x29

    .line 219
    .end local v0    # "h":I
    .local v1, "h":I
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokens$Problem;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x29

    .line 220
    .end local v1    # "h":I
    .restart local v0    # "h":I
    iget-boolean v1, p0, Lcom/typesafe/config/impl/Tokens$Problem;->suggestQuotes:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x29

    .line 221
    .end local v0    # "h":I
    .restart local v1    # "h":I
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokens$Problem;->cause:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokens$Problem;->cause:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x29

    .line 223
    :cond_0
    return v1
.end method

.method message()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokens$Problem;->message:Ljava/lang/String;

    return-object v0
.end method

.method suggestQuotes()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/typesafe/config/impl/Tokens$Problem;->suggestQuotes:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    iget-object v2, p0, Lcom/typesafe/config/impl/Tokens$Problem;->what:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v1, p0, Lcom/typesafe/config/impl/Tokens$Problem;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method what()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokens$Problem;->what:Ljava/lang/String;

    return-object v0
.end method
