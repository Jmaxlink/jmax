.class final Lcom/typesafe/config/impl/Tokenizer;
.super Ljava/lang/Object;
.source "Tokenizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/typesafe/config/impl/Tokenizer$TokenIterator;,
        Lcom/typesafe/config/impl/Tokenizer$ProblemException;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .line 18
    invoke-static {p0}, Lcom/typesafe/config/impl/Tokenizer;->asString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static asString(I)Ljava/lang/String;
    .locals 2
    .param p0, "codepoint"    # I

    .line 35
    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    .line 36
    const-string v0, "newline"

    return-object v0

    .line 37
    :cond_0
    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    .line 38
    const-string v0, "tab"

    return-object v0

    .line 39
    :cond_1
    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    .line 40
    const-string v0, "end of file"

    return-object v0

    .line 41
    :cond_2
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImplUtil;->isC0Control(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 42
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "control character 0x%x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 44
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%c"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static render(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/typesafe/config/impl/Token;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 56
    .local p0, "tokens":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/typesafe/config/impl/Token;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v0, "renderedText":Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/typesafe/config/impl/Token;

    invoke-virtual {v1}, Lcom/typesafe/config/impl/Token;->tokenText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static tokenize(Lcom/typesafe/config/ConfigOrigin;Ljava/io/Reader;Lcom/typesafe/config/ConfigSyntax;)Ljava/util/Iterator;
    .locals 2
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p1, "input"    # Ljava/io/Reader;
    .param p2, "flavor"    # Lcom/typesafe/config/ConfigSyntax;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/ConfigOrigin;",
            "Ljava/io/Reader;",
            "Lcom/typesafe/config/ConfigSyntax;",
            ")",
            "Ljava/util/Iterator<",
            "Lcom/typesafe/config/impl/Token;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;

    sget-object v1, Lcom/typesafe/config/ConfigSyntax;->JSON:Lcom/typesafe/config/ConfigSyntax;

    if-eq p2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, p0, p1, v1}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/io/Reader;Z)V

    return-object v0
.end method
