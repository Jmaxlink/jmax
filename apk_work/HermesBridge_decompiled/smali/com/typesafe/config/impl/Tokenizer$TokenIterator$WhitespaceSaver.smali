.class Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;
.super Ljava/lang/Object;
.source "Tokenizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/Tokenizer$TokenIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WhitespaceSaver"
.end annotation


# instance fields
.field private lastTokenWasSimpleValue:Z

.field private whitespace:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;->whitespace:Ljava/lang/StringBuilder;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;->lastTokenWasSimpleValue:Z

    .line 74
    return-void
.end method

.method private createWhitespaceTokenFromSaver(Lcom/typesafe/config/ConfigOrigin;I)Lcom/typesafe/config/impl/Token;
    .locals 3
    .param p1, "baseOrigin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "lineNumber"    # I

    .line 110
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;->whitespace:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 112
    iget-boolean v0, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;->lastTokenWasSimpleValue:Z

    if-eqz v0, :cond_0

    .line 113
    nop

    .line 114
    invoke-static {p1, p2}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->access$100(Lcom/typesafe/config/ConfigOrigin;I)Lcom/typesafe/config/ConfigOrigin;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;->whitespace:Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v0, v1}, Lcom/typesafe/config/impl/Tokens;->newUnquotedText(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    .local v0, "t":Lcom/typesafe/config/impl/Token;
    goto :goto_0

    .line 117
    .end local v0    # "t":Lcom/typesafe/config/impl/Token;
    :cond_0
    invoke-static {p1, p2}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->access$100(Lcom/typesafe/config/ConfigOrigin;I)Lcom/typesafe/config/ConfigOrigin;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;->whitespace:Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-static {v0, v1}, Lcom/typesafe/config/impl/Tokens;->newIgnoredWhitespace(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    .line 120
    .restart local v0    # "t":Lcom/typesafe/config/impl/Token;
    :goto_0
    iget-object v1, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;->whitespace:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 121
    return-object v0

    .line 123
    .end local v0    # "t":Lcom/typesafe/config/impl/Token;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private nextIsASimpleValue(Lcom/typesafe/config/ConfigOrigin;I)Lcom/typesafe/config/impl/Token;
    .locals 2
    .param p1, "baseOrigin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "lineNumber"    # I

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;->createWhitespaceTokenFromSaver(Lcom/typesafe/config/ConfigOrigin;I)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    .line 102
    .local v0, "t":Lcom/typesafe/config/impl/Token;
    iget-boolean v1, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;->lastTokenWasSimpleValue:Z

    if-nez v1, :cond_0

    .line 103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;->lastTokenWasSimpleValue:Z

    .line 105
    :cond_0
    return-object v0
.end method

.method private nextIsNotASimpleValue(Lcom/typesafe/config/ConfigOrigin;I)Lcom/typesafe/config/impl/Token;
    .locals 1
    .param p1, "baseOrigin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "lineNumber"    # I

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;->lastTokenWasSimpleValue:Z

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;->createWhitespaceTokenFromSaver(Lcom/typesafe/config/ConfigOrigin;I)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method add(I)V
    .locals 1
    .param p1, "c"    # I

    .line 77
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;->whitespace:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 78
    return-void
.end method

.method check(Lcom/typesafe/config/impl/Token;Lcom/typesafe/config/ConfigOrigin;I)Lcom/typesafe/config/impl/Token;
    .locals 1
    .param p1, "t"    # Lcom/typesafe/config/impl/Token;
    .param p2, "baseOrigin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p3, "lineNumber"    # I

    .line 81
    invoke-static {p1}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->access$000(Lcom/typesafe/config/impl/Token;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0, p2, p3}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;->nextIsASimpleValue(Lcom/typesafe/config/ConfigOrigin;I)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;->nextIsNotASimpleValue(Lcom/typesafe/config/ConfigOrigin;I)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    return-object v0
.end method
