.class final Lcom/typesafe/config/impl/Tokens;
.super Ljava/lang/Object;
.source "Tokens.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/typesafe/config/impl/Tokens$Substitution;,
        Lcom/typesafe/config/impl/Tokens$Comment;,
        Lcom/typesafe/config/impl/Tokens$Problem;,
        Lcom/typesafe/config/impl/Tokens$IgnoredWhitespace;,
        Lcom/typesafe/config/impl/Tokens$UnquotedText;,
        Lcom/typesafe/config/impl/Tokens$Line;,
        Lcom/typesafe/config/impl/Tokens$Value;
    }
.end annotation


# static fields
.field static final CLOSE_CURLY:Lcom/typesafe/config/impl/Token;

.field static final CLOSE_SQUARE:Lcom/typesafe/config/impl/Token;

.field static final COLON:Lcom/typesafe/config/impl/Token;

.field static final COMMA:Lcom/typesafe/config/impl/Token;

.field static final END:Lcom/typesafe/config/impl/Token;

.field static final EQUALS:Lcom/typesafe/config/impl/Token;

.field static final OPEN_CURLY:Lcom/typesafe/config/impl/Token;

.field static final OPEN_SQUARE:Lcom/typesafe/config/impl/Token;

.field static final PLUS_EQUALS:Lcom/typesafe/config/impl/Token;

.field static final START:Lcom/typesafe/config/impl/Token;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 447
    sget-object v0, Lcom/typesafe/config/impl/TokenType;->START:Lcom/typesafe/config/impl/TokenType;

    const-string v1, "start of file"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/typesafe/config/impl/Token;->newWithoutOrigin(Lcom/typesafe/config/impl/TokenType;Ljava/lang/String;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/Tokens;->START:Lcom/typesafe/config/impl/Token;

    .line 448
    sget-object v0, Lcom/typesafe/config/impl/TokenType;->END:Lcom/typesafe/config/impl/TokenType;

    const-string v1, "end of file"

    invoke-static {v0, v1, v2}, Lcom/typesafe/config/impl/Token;->newWithoutOrigin(Lcom/typesafe/config/impl/TokenType;Ljava/lang/String;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/Tokens;->END:Lcom/typesafe/config/impl/Token;

    .line 449
    sget-object v0, Lcom/typesafe/config/impl/TokenType;->COMMA:Lcom/typesafe/config/impl/TokenType;

    const-string v1, "\',\'"

    const-string v2, ","

    invoke-static {v0, v1, v2}, Lcom/typesafe/config/impl/Token;->newWithoutOrigin(Lcom/typesafe/config/impl/TokenType;Ljava/lang/String;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/Tokens;->COMMA:Lcom/typesafe/config/impl/Token;

    .line 450
    sget-object v0, Lcom/typesafe/config/impl/TokenType;->EQUALS:Lcom/typesafe/config/impl/TokenType;

    const-string v1, "\'=\'"

    const-string v2, "="

    invoke-static {v0, v1, v2}, Lcom/typesafe/config/impl/Token;->newWithoutOrigin(Lcom/typesafe/config/impl/TokenType;Ljava/lang/String;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/Tokens;->EQUALS:Lcom/typesafe/config/impl/Token;

    .line 451
    sget-object v0, Lcom/typesafe/config/impl/TokenType;->COLON:Lcom/typesafe/config/impl/TokenType;

    const-string v1, "\':\'"

    const-string v2, ":"

    invoke-static {v0, v1, v2}, Lcom/typesafe/config/impl/Token;->newWithoutOrigin(Lcom/typesafe/config/impl/TokenType;Ljava/lang/String;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/Tokens;->COLON:Lcom/typesafe/config/impl/Token;

    .line 452
    sget-object v0, Lcom/typesafe/config/impl/TokenType;->OPEN_CURLY:Lcom/typesafe/config/impl/TokenType;

    const-string v1, "\'{\'"

    const-string v2, "{"

    invoke-static {v0, v1, v2}, Lcom/typesafe/config/impl/Token;->newWithoutOrigin(Lcom/typesafe/config/impl/TokenType;Ljava/lang/String;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/Tokens;->OPEN_CURLY:Lcom/typesafe/config/impl/Token;

    .line 453
    sget-object v0, Lcom/typesafe/config/impl/TokenType;->CLOSE_CURLY:Lcom/typesafe/config/impl/TokenType;

    const-string v1, "\'}\'"

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Lcom/typesafe/config/impl/Token;->newWithoutOrigin(Lcom/typesafe/config/impl/TokenType;Ljava/lang/String;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/Tokens;->CLOSE_CURLY:Lcom/typesafe/config/impl/Token;

    .line 454
    sget-object v0, Lcom/typesafe/config/impl/TokenType;->OPEN_SQUARE:Lcom/typesafe/config/impl/TokenType;

    const-string v1, "\'[\'"

    const-string v2, "["

    invoke-static {v0, v1, v2}, Lcom/typesafe/config/impl/Token;->newWithoutOrigin(Lcom/typesafe/config/impl/TokenType;Ljava/lang/String;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/Tokens;->OPEN_SQUARE:Lcom/typesafe/config/impl/Token;

    .line 455
    sget-object v0, Lcom/typesafe/config/impl/TokenType;->CLOSE_SQUARE:Lcom/typesafe/config/impl/TokenType;

    const-string v1, "\']\'"

    const-string v2, "]"

    invoke-static {v0, v1, v2}, Lcom/typesafe/config/impl/Token;->newWithoutOrigin(Lcom/typesafe/config/impl/TokenType;Ljava/lang/String;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/Tokens;->CLOSE_SQUARE:Lcom/typesafe/config/impl/Token;

    .line 456
    sget-object v0, Lcom/typesafe/config/impl/TokenType;->PLUS_EQUALS:Lcom/typesafe/config/impl/TokenType;

    const-string v1, "\'+=\'"

    const-string v2, "+="

    invoke-static {v0, v1, v2}, Lcom/typesafe/config/impl/Token;->newWithoutOrigin(Lcom/typesafe/config/impl/TokenType;Ljava/lang/String;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    sput-object v0, Lcom/typesafe/config/impl/Tokens;->PLUS_EQUALS:Lcom/typesafe/config/impl/Token;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCommentText(Lcom/typesafe/config/impl/Token;)Ljava/lang/String;
    .locals 3
    .param p0, "token"    # Lcom/typesafe/config/impl/Token;

    .line 401
    instance-of v0, p0, Lcom/typesafe/config/impl/Tokens$Comment;

    if-eqz v0, :cond_0

    .line 402
    move-object v0, p0

    check-cast v0, Lcom/typesafe/config/impl/Tokens$Comment;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/Tokens$Comment;->text()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 404
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tried to get comment text from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getProblemCause(Lcom/typesafe/config/impl/Token;)Ljava/lang/Throwable;
    .locals 3
    .param p0, "token"    # Lcom/typesafe/config/impl/Token;

    .line 389
    instance-of v0, p0, Lcom/typesafe/config/impl/Tokens$Problem;

    if-eqz v0, :cond_0

    .line 390
    move-object v0, p0

    check-cast v0, Lcom/typesafe/config/impl/Tokens$Problem;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/Tokens$Problem;->cause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    .line 392
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tried to get problem cause from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getProblemMessage(Lcom/typesafe/config/impl/Token;)Ljava/lang/String;
    .locals 3
    .param p0, "token"    # Lcom/typesafe/config/impl/Token;

    .line 372
    instance-of v0, p0, Lcom/typesafe/config/impl/Tokens$Problem;

    if-eqz v0, :cond_0

    .line 373
    move-object v0, p0

    check-cast v0, Lcom/typesafe/config/impl/Tokens$Problem;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/Tokens$Problem;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 375
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tried to get problem message from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getProblemSuggestQuotes(Lcom/typesafe/config/impl/Token;)Z
    .locals 3
    .param p0, "token"    # Lcom/typesafe/config/impl/Token;

    .line 380
    instance-of v0, p0, Lcom/typesafe/config/impl/Tokens$Problem;

    if-eqz v0, :cond_0

    .line 381
    move-object v0, p0

    check-cast v0, Lcom/typesafe/config/impl/Tokens$Problem;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/Tokens$Problem;->suggestQuotes()Z

    move-result v0

    return v0

    .line 383
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tried to get problem suggestQuotes from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getProblemWhat(Lcom/typesafe/config/impl/Token;)Ljava/lang/String;
    .locals 3
    .param p0, "token"    # Lcom/typesafe/config/impl/Token;

    .line 364
    instance-of v0, p0, Lcom/typesafe/config/impl/Tokens$Problem;

    if-eqz v0, :cond_0

    .line 365
    move-object v0, p0

    check-cast v0, Lcom/typesafe/config/impl/Tokens$Problem;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/Tokens$Problem;->what()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 367
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tried to get problem what from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getSubstitutionOptional(Lcom/typesafe/config/impl/Token;)Z
    .locals 3
    .param p0, "token"    # Lcom/typesafe/config/impl/Token;

    .line 439
    instance-of v0, p0, Lcom/typesafe/config/impl/Tokens$Substitution;

    if-eqz v0, :cond_0

    .line 440
    move-object v0, p0

    check-cast v0, Lcom/typesafe/config/impl/Tokens$Substitution;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/Tokens$Substitution;->optional()Z

    move-result v0

    return v0

    .line 442
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tried to get substitution optionality from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getSubstitutionPathExpression(Lcom/typesafe/config/impl/Token;)Ljava/util/List;
    .locals 3
    .param p0, "token"    # Lcom/typesafe/config/impl/Token;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/impl/Token;",
            ")",
            "Ljava/util/List<",
            "Lcom/typesafe/config/impl/Token;",
            ">;"
        }
    .end annotation

    .line 430
    instance-of v0, p0, Lcom/typesafe/config/impl/Tokens$Substitution;

    if-eqz v0, :cond_0

    .line 431
    move-object v0, p0

    check-cast v0, Lcom/typesafe/config/impl/Tokens$Substitution;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/Tokens$Substitution;->value()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 433
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tried to get substitution from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getUnquotedText(Lcom/typesafe/config/impl/Token;)Ljava/lang/String;
    .locals 3
    .param p0, "token"    # Lcom/typesafe/config/impl/Token;

    .line 413
    instance-of v0, p0, Lcom/typesafe/config/impl/Tokens$UnquotedText;

    if-eqz v0, :cond_0

    .line 414
    move-object v0, p0

    check-cast v0, Lcom/typesafe/config/impl/Tokens$UnquotedText;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/Tokens$UnquotedText;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 416
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tried to get unquoted text from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getValue(Lcom/typesafe/config/impl/Token;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 3
    .param p0, "token"    # Lcom/typesafe/config/impl/Token;

    .line 343
    instance-of v0, p0, Lcom/typesafe/config/impl/Tokens$Value;

    if-eqz v0, :cond_0

    .line 344
    move-object v0, p0

    check-cast v0, Lcom/typesafe/config/impl/Tokens$Value;

    invoke-virtual {v0}, Lcom/typesafe/config/impl/Tokens$Value;->value()Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    return-object v0

    .line 346
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tried to get value of non-value token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static isComment(Lcom/typesafe/config/impl/Token;)Z
    .locals 1
    .param p0, "token"    # Lcom/typesafe/config/impl/Token;

    .line 397
    instance-of v0, p0, Lcom/typesafe/config/impl/Tokens$Comment;

    return v0
.end method

.method static isIgnoredWhitespace(Lcom/typesafe/config/impl/Token;)Z
    .locals 1
    .param p0, "token"    # Lcom/typesafe/config/impl/Token;

    .line 422
    instance-of v0, p0, Lcom/typesafe/config/impl/Tokens$IgnoredWhitespace;

    return v0
.end method

.method static isNewline(Lcom/typesafe/config/impl/Token;)Z
    .locals 1
    .param p0, "token"    # Lcom/typesafe/config/impl/Token;

    .line 356
    instance-of v0, p0, Lcom/typesafe/config/impl/Tokens$Line;

    return v0
.end method

.method static isProblem(Lcom/typesafe/config/impl/Token;)Z
    .locals 1
    .param p0, "token"    # Lcom/typesafe/config/impl/Token;

    .line 360
    instance-of v0, p0, Lcom/typesafe/config/impl/Tokens$Problem;

    return v0
.end method

.method static isSubstitution(Lcom/typesafe/config/impl/Token;)Z
    .locals 1
    .param p0, "token"    # Lcom/typesafe/config/impl/Token;

    .line 426
    instance-of v0, p0, Lcom/typesafe/config/impl/Tokens$Substitution;

    return v0
.end method

.method static isUnquotedText(Lcom/typesafe/config/impl/Token;)Z
    .locals 1
    .param p0, "token"    # Lcom/typesafe/config/impl/Token;

    .line 409
    instance-of v0, p0, Lcom/typesafe/config/impl/Tokens$UnquotedText;

    return v0
.end method

.method static isValue(Lcom/typesafe/config/impl/Token;)Z
    .locals 1
    .param p0, "token"    # Lcom/typesafe/config/impl/Token;

    .line 339
    instance-of v0, p0, Lcom/typesafe/config/impl/Tokens$Value;

    return v0
.end method

.method static isValueWithType(Lcom/typesafe/config/impl/Token;Lcom/typesafe/config/ConfigValueType;)Z
    .locals 1
    .param p0, "t"    # Lcom/typesafe/config/impl/Token;
    .param p1, "valueType"    # Lcom/typesafe/config/ConfigValueType;

    .line 352
    invoke-static {p0}, Lcom/typesafe/config/impl/Tokens;->isValue(Lcom/typesafe/config/impl/Token;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/typesafe/config/impl/Tokens;->getValue(Lcom/typesafe/config/impl/Token;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static newBoolean(Lcom/typesafe/config/ConfigOrigin;Z)Lcom/typesafe/config/impl/Token;
    .locals 3
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p1, "value"    # Z

    .line 519
    new-instance v0, Lcom/typesafe/config/impl/ConfigBoolean;

    invoke-direct {v0, p0, p1}, Lcom/typesafe/config/impl/ConfigBoolean;-><init>(Lcom/typesafe/config/ConfigOrigin;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/typesafe/config/impl/Tokens;->newValue(Lcom/typesafe/config/impl/AbstractConfigValue;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    return-object v0
.end method

.method static newCommentDoubleSlash(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;
    .locals 1
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p1, "text"    # Ljava/lang/String;

    .line 468
    new-instance v0, Lcom/typesafe/config/impl/Tokens$Comment$DoubleSlashComment;

    invoke-direct {v0, p0, p1}, Lcom/typesafe/config/impl/Tokens$Comment$DoubleSlashComment;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    return-object v0
.end method

.method static newCommentHash(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;
    .locals 1
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p1, "text"    # Ljava/lang/String;

    .line 472
    new-instance v0, Lcom/typesafe/config/impl/Tokens$Comment$HashComment;

    invoke-direct {v0, p0, p1}, Lcom/typesafe/config/impl/Tokens$Comment$HashComment;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    return-object v0
.end method

.method static newDouble(Lcom/typesafe/config/ConfigOrigin;DLjava/lang/String;)Lcom/typesafe/config/impl/Token;
    .locals 1
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p1, "value"    # D
    .param p3, "origText"    # Ljava/lang/String;

    .line 505
    invoke-static {p0, p1, p2, p3}, Lcom/typesafe/config/impl/ConfigNumber;->newNumber(Lcom/typesafe/config/ConfigOrigin;DLjava/lang/String;)Lcom/typesafe/config/impl/ConfigNumber;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/typesafe/config/impl/Tokens;->newValue(Lcom/typesafe/config/impl/AbstractConfigValue;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    return-object v0
.end method

.method static newIgnoredWhitespace(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;
    .locals 1
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p1, "s"    # Ljava/lang/String;

    .line 480
    new-instance v0, Lcom/typesafe/config/impl/Tokens$IgnoredWhitespace;

    invoke-direct {v0, p0, p1}, Lcom/typesafe/config/impl/Tokens$IgnoredWhitespace;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    return-object v0
.end method

.method static newInt(Lcom/typesafe/config/ConfigOrigin;ILjava/lang/String;)Lcom/typesafe/config/impl/Token;
    .locals 2
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p1, "value"    # I
    .param p2, "origText"    # Ljava/lang/String;

    .line 499
    int-to-long v0, p1

    invoke-static {p0, v0, v1, p2}, Lcom/typesafe/config/impl/ConfigNumber;->newNumber(Lcom/typesafe/config/ConfigOrigin;JLjava/lang/String;)Lcom/typesafe/config/impl/ConfigNumber;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/typesafe/config/impl/Tokens;->newValue(Lcom/typesafe/config/impl/AbstractConfigValue;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    return-object v0
.end method

.method static newLine(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/Token;
    .locals 1
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;

    .line 459
    new-instance v0, Lcom/typesafe/config/impl/Tokens$Line;

    invoke-direct {v0, p0}, Lcom/typesafe/config/impl/Tokens$Line;-><init>(Lcom/typesafe/config/ConfigOrigin;)V

    return-object v0
.end method

.method static newLong(Lcom/typesafe/config/ConfigOrigin;JLjava/lang/String;)Lcom/typesafe/config/impl/Token;
    .locals 1
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p1, "value"    # J
    .param p3, "origText"    # Ljava/lang/String;

    .line 510
    invoke-static {p0, p1, p2, p3}, Lcom/typesafe/config/impl/ConfigNumber;->newNumber(Lcom/typesafe/config/ConfigOrigin;JLjava/lang/String;)Lcom/typesafe/config/impl/ConfigNumber;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/typesafe/config/impl/Tokens;->newValue(Lcom/typesafe/config/impl/AbstractConfigValue;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    return-object v0
.end method

.method static newNull(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/Token;
    .locals 2
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;

    .line 515
    new-instance v0, Lcom/typesafe/config/impl/ConfigNull;

    invoke-direct {v0, p0}, Lcom/typesafe/config/impl/ConfigNull;-><init>(Lcom/typesafe/config/ConfigOrigin;)V

    const-string v1, "null"

    invoke-static {v0, v1}, Lcom/typesafe/config/impl/Tokens;->newValue(Lcom/typesafe/config/impl/AbstractConfigValue;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    return-object v0
.end method

.method static newProblem(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Throwable;)Lcom/typesafe/config/impl/Token;
    .locals 7
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "suggestQuotes"    # Z
    .param p4, "cause"    # Ljava/lang/Throwable;

    .line 464
    new-instance v6, Lcom/typesafe/config/impl/Tokens$Problem;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/typesafe/config/impl/Tokens$Problem;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Throwable;)V

    return-object v6
.end method

.method static newString(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;
    .locals 1
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "origText"    # Ljava/lang/String;

    .line 495
    new-instance v0, Lcom/typesafe/config/impl/ConfigString$Quoted;

    invoke-direct {v0, p0, p1}, Lcom/typesafe/config/impl/ConfigString$Quoted;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/typesafe/config/impl/Tokens;->newValue(Lcom/typesafe/config/impl/AbstractConfigValue;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    return-object v0
.end method

.method static newSubstitution(Lcom/typesafe/config/ConfigOrigin;ZLjava/util/List;)Lcom/typesafe/config/impl/Token;
    .locals 1
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p1, "optional"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/ConfigOrigin;",
            "Z",
            "Ljava/util/List<",
            "Lcom/typesafe/config/impl/Token;",
            ">;)",
            "Lcom/typesafe/config/impl/Token;"
        }
    .end annotation

    .line 484
    .local p2, "expression":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/Token;>;"
    new-instance v0, Lcom/typesafe/config/impl/Tokens$Substitution;

    invoke-direct {v0, p0, p1, p2}, Lcom/typesafe/config/impl/Tokens$Substitution;-><init>(Lcom/typesafe/config/ConfigOrigin;ZLjava/util/List;)V

    return-object v0
.end method

.method static newUnquotedText(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;
    .locals 1
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p1, "s"    # Ljava/lang/String;

    .line 476
    new-instance v0, Lcom/typesafe/config/impl/Tokens$UnquotedText;

    invoke-direct {v0, p0, p1}, Lcom/typesafe/config/impl/Tokens$UnquotedText;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    return-object v0
.end method

.method static newValue(Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/Token;
    .locals 1
    .param p0, "value"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 488
    new-instance v0, Lcom/typesafe/config/impl/Tokens$Value;

    invoke-direct {v0, p0}, Lcom/typesafe/config/impl/Tokens$Value;-><init>(Lcom/typesafe/config/impl/AbstractConfigValue;)V

    return-object v0
.end method

.method static newValue(Lcom/typesafe/config/impl/AbstractConfigValue;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;
    .locals 1
    .param p0, "value"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .param p1, "origText"    # Ljava/lang/String;

    .line 491
    new-instance v0, Lcom/typesafe/config/impl/Tokens$Value;

    invoke-direct {v0, p0, p1}, Lcom/typesafe/config/impl/Tokens$Value;-><init>(Lcom/typesafe/config/impl/AbstractConfigValue;Ljava/lang/String;)V

    return-object v0
.end method
