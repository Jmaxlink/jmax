.class Lcom/typesafe/config/impl/Tokenizer$TokenIterator;
.super Ljava/lang/Object;
.source "Tokenizer.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/Tokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TokenIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/typesafe/config/impl/Token;",
        ">;"
    }
.end annotation


# static fields
.field static final firstNumberChars:Ljava/lang/String; = "0123456789-"

.field static final notInUnquotedText:Ljava/lang/String; = "$\"{}[]:=,+#`^?!@*&\\"

.field static final numberChars:Ljava/lang/String; = "0123456789eE+-."


# instance fields
.field private final allowComments:Z

.field private final buffer:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final input:Ljava/io/Reader;

.field private lineNumber:I

.field private lineOrigin:Lcom/typesafe/config/ConfigOrigin;

.field private final origin:Lcom/typesafe/config/impl/SimpleConfigOrigin;

.field private final tokens:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/typesafe/config/impl/Token;",
            ">;"
        }
    .end annotation
.end field

.field private final whitespaceSaver:Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;


# direct methods
.method constructor <init>(Lcom/typesafe/config/ConfigOrigin;Ljava/io/Reader;Z)V
    .locals 2
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "input"    # Ljava/io/Reader;
    .param p3, "allowComments"    # Z

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    move-object v0, p1

    check-cast v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;

    iput-object v0, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->origin:Lcom/typesafe/config/impl/SimpleConfigOrigin;

    .line 138
    iput-object p2, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->input:Ljava/io/Reader;

    .line 139
    iput-boolean p3, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->allowComments:Z

    .line 140
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->buffer:Ljava/util/LinkedList;

    .line 141
    const/4 v0, 0x1

    iput v0, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->lineNumber:I

    .line 142
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->origin:Lcom/typesafe/config/impl/SimpleConfigOrigin;

    iget v1, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->lineNumber:I

    invoke-virtual {v0, v1}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->withLineNumber(I)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    iput-object v0, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->lineOrigin:Lcom/typesafe/config/ConfigOrigin;

    .line 143
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->tokens:Ljava/util/Queue;

    .line 144
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->tokens:Ljava/util/Queue;

    sget-object v1, Lcom/typesafe/config/impl/Tokens;->START:Lcom/typesafe/config/impl/Token;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;

    invoke-direct {v0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;-><init>()V

    iput-object v0, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->whitespaceSaver:Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/typesafe/config/impl/Token;)Z
    .locals 1
    .param p0, "x0"    # Lcom/typesafe/config/impl/Token;

    .line 63
    invoke-static {p0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->isSimpleValue(Lcom/typesafe/config/impl/Token;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/typesafe/config/ConfigOrigin;I)Lcom/typesafe/config/ConfigOrigin;
    .locals 1
    .param p0, "x0"    # Lcom/typesafe/config/ConfigOrigin;
    .param p1, "x1"    # I

    .line 63
    invoke-static {p0, p1}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->lineOrigin(Lcom/typesafe/config/ConfigOrigin;I)Lcom/typesafe/config/ConfigOrigin;

    move-result-object v0

    return-object v0
.end method

.method private appendTripleQuotedString(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "sbOrig"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/typesafe/config/impl/Tokenizer$ProblemException;
        }
    .end annotation

    .line 452
    const/4 v0, 0x0

    .line 454
    .local v0, "consecutiveQuotes":I
    :goto_0
    invoke-direct {p0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->nextCharRaw()I

    move-result v1

    .line 456
    .local v1, "c":I
    const/16 v2, 0x22

    if-ne v1, v2, :cond_0

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 458
    :cond_0
    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 461
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 462
    invoke-direct {p0, v1}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->putBack(I)V

    .line 463
    nop

    .line 478
    .end local v1    # "c":I
    return-void

    .line 465
    .restart local v1    # "c":I
    :cond_1
    const/4 v0, 0x0

    .line 466
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 468
    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 470
    iget v2, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->lineNumber:I

    .line 471
    iget-object v2, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->origin:Lcom/typesafe/config/impl/SimpleConfigOrigin;

    iget v3, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->lineNumber:I

    invoke-virtual {v2, v3}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->withLineNumber(I)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v2

    iput-object v2, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->lineOrigin:Lcom/typesafe/config/ConfigOrigin;

    .line 475
    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 477
    .end local v1    # "c":I
    goto :goto_0

    .line 467
    .restart local v1    # "c":I
    :cond_3
    const-string v2, "End of input but triple-quoted string was still open"

    invoke-direct {p0, v2}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->problem(Ljava/lang/String;)Lcom/typesafe/config/impl/Tokenizer$ProblemException;

    move-result-object v2

    throw v2
.end method

.method private static isSimpleValue(Lcom/typesafe/config/impl/Token;)Z
    .locals 1
    .param p0, "t"    # Lcom/typesafe/config/impl/Token;

    .line 651
    invoke-static {p0}, Lcom/typesafe/config/impl/Tokens;->isSubstitution(Lcom/typesafe/config/impl/Token;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/typesafe/config/impl/Tokens;->isUnquotedText(Lcom/typesafe/config/impl/Token;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 652
    invoke-static {p0}, Lcom/typesafe/config/impl/Tokens;->isValue(Lcom/typesafe/config/impl/Token;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 655
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 653
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static isWhitespace(I)Z
    .locals 1
    .param p0, "c"    # I

    .line 176
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImplUtil;->isWhitespace(I)Z

    move-result v0

    return v0
.end method

.method static isWhitespaceNotNewline(I)Z
    .locals 1
    .param p0, "c"    # I

    .line 180
    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImplUtil;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static lineOrigin(Lcom/typesafe/config/ConfigOrigin;I)Lcom/typesafe/config/ConfigOrigin;
    .locals 1
    .param p0, "baseOrigin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p1, "lineNumber"    # I

    .line 268
    move-object v0, p0

    check-cast v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;

    invoke-virtual {v0, p1}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->withLineNumber(I)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    return-object v0
.end method

.method private nextCharAfterWhitespace(Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;)I
    .locals 2
    .param p1, "saver"    # Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;

    .line 211
    nop

    :goto_0
    invoke-direct {p0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->nextCharRaw()I

    move-result v0

    .line 213
    .local v0, "c":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 214
    return v1

    .line 216
    :cond_0
    invoke-static {v0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->isWhitespaceNotNewline(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    invoke-virtual {p1, v0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;->add(I)V

    .line 218
    goto :goto_0

    .line 220
    :cond_1
    return v0
.end method

.method private nextCharRaw()I
    .locals 5

    .line 154
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->buffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->input:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/typesafe/config/ConfigException$IO;

    iget-object v2, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->origin:Lcom/typesafe/config/impl/SimpleConfigOrigin;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 159
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/typesafe/config/ConfigException$IO;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 162
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->buffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 163
    .local v0, "c":I
    return v0
.end method

.method private static problem(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/Tokenizer$ProblemException;
    .locals 2
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p1, "message"    # Ljava/lang/String;

    .line 263
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->problem(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/typesafe/config/impl/Tokenizer$ProblemException;

    move-result-object v0

    return-object v0
.end method

.method private static problem(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/typesafe/config/impl/Tokenizer$ProblemException;
    .locals 1
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 250
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->problem(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Throwable;)Lcom/typesafe/config/impl/Tokenizer$ProblemException;

    move-result-object v0

    return-object v0
.end method

.method private static problem(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Throwable;)Lcom/typesafe/config/impl/Tokenizer$ProblemException;
    .locals 2
    .param p0, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "suggestQuotes"    # Z
    .param p4, "cause"    # Ljava/lang/Throwable;

    .line 255
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 258
    new-instance v0, Lcom/typesafe/config/impl/Tokenizer$ProblemException;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/typesafe/config/impl/Tokens;->newProblem(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Throwable;)Lcom/typesafe/config/impl/Token;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/impl/Tokenizer$ProblemException;-><init>(Lcom/typesafe/config/impl/Token;)V

    return-object v0

    .line 256
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "internal error, creating bad ProblemException"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private problem(Ljava/lang/String;)Lcom/typesafe/config/impl/Tokenizer$ProblemException;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 227
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->problem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/typesafe/config/impl/Tokenizer$ProblemException;

    move-result-object v0

    return-object v0
.end method

.method private problem(Ljava/lang/String;Ljava/lang/String;)Lcom/typesafe/config/impl/Tokenizer$ProblemException;
    .locals 1
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->problem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/typesafe/config/impl/Tokenizer$ProblemException;

    move-result-object v0

    return-object v0
.end method

.method private problem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/typesafe/config/impl/Tokenizer$ProblemException;
    .locals 1
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 239
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->lineOrigin:Lcom/typesafe/config/ConfigOrigin;

    invoke-static {v0, p1, p2, p3}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->problem(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/typesafe/config/impl/Tokenizer$ProblemException;

    move-result-object v0

    return-object v0
.end method

.method private problem(Ljava/lang/String;Ljava/lang/String;Z)Lcom/typesafe/config/impl/Tokenizer$ProblemException;
    .locals 1
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "suggestQuotes"    # Z

    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->problem(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Throwable;)Lcom/typesafe/config/impl/Tokenizer$ProblemException;

    move-result-object v0

    return-object v0
.end method

.method private problem(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Throwable;)Lcom/typesafe/config/impl/Tokenizer$ProblemException;
    .locals 1
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "suggestQuotes"    # Z
    .param p4, "cause"    # Ljava/lang/Throwable;

    .line 244
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->lineOrigin:Lcom/typesafe/config/ConfigOrigin;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->problem(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Throwable;)Lcom/typesafe/config/impl/Tokenizer$ProblemException;

    move-result-object v0

    return-object v0
.end method

.method private pullComment(I)Lcom/typesafe/config/impl/Token;
    .locals 5
    .param p1, "firstChar"    # I

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "doubleSlash":Z
    const/16 v1, 0x2f

    if-ne p1, v1, :cond_1

    .line 276
    invoke-direct {p0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->nextCharRaw()I

    move-result v2

    .line 277
    .local v2, "discard":I
    if-ne v2, v1, :cond_0

    .line 279
    const/4 v0, 0x1

    goto :goto_0

    .line 278
    :cond_0
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v3, "called pullComment but // not seen"

    invoke-direct {v1, v3}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    .end local v2    # "discard":I
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-direct {p0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->nextCharRaw()I

    move-result v2

    .line 285
    .local v2, "c":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    goto :goto_2

    .line 292
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 294
    .end local v2    # "c":I
    goto :goto_1

    .line 286
    .restart local v2    # "c":I
    :cond_3
    :goto_2
    invoke-direct {p0, v2}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->putBack(I)V

    .line 287
    if-eqz v0, :cond_4

    .line 288
    iget-object v3, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->lineOrigin:Lcom/typesafe/config/ConfigOrigin;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/typesafe/config/impl/Tokens;->newCommentDoubleSlash(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v3

    return-object v3

    .line 290
    :cond_4
    iget-object v3, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->lineOrigin:Lcom/typesafe/config/ConfigOrigin;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/typesafe/config/impl/Tokens;->newCommentHash(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v3

    return-object v3
.end method

.method private pullEscapeSequence(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "sbOrig"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/typesafe/config/impl/Tokenizer$ProblemException;
        }
    .end annotation

    .line 387
    invoke-direct {p0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->nextCharRaw()I

    move-result v0

    .line 388
    .local v0, "escaped":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 393
    const/16 v2, 0x5c

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 396
    sparse-switch v0, :sswitch_data_0

    .line 441
    nop

    .line 442
    invoke-static {v0}, Lcom/typesafe/config/impl/Tokenizer;->access$200(I)Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-static {v0}, Lcom/typesafe/config/impl/Tokenizer;->access$200(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 443
    const-string v3, "backslash followed by \'%s\', this is not a valid escape sequence (quoted strings use JSON escaping, so use double-backslash \\\\ for literal backslash)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 441
    invoke-direct {p0, v1, v2}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->problem(Ljava/lang/String;Ljava/lang/String;)Lcom/typesafe/config/impl/Tokenizer$ProblemException;

    move-result-object v1

    throw v1

    .line 423
    :sswitch_0
    const/4 v2, 0x4

    new-array v3, v2, [C

    .line 424
    .local v3, "a":[C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 425
    invoke-direct {p0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->nextCharRaw()I

    move-result v5

    .line 426
    .local v5, "c":I
    if-eq v5, v1, :cond_0

    .line 428
    int-to-char v6, v5

    aput-char v6, v3, v4

    .line 424
    .end local v5    # "c":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 427
    .restart local v5    # "c":I
    :cond_0
    const-string v1, "End of input but expecting 4 hex digits for \\uXXXX escape"

    invoke-direct {p0, v1}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->problem(Ljava/lang/String;)Lcom/typesafe/config/impl/Tokenizer$ProblemException;

    move-result-object v1

    throw v1

    .line 430
    .end local v4    # "i":I
    .end local v5    # "c":I
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([C)V

    .line 431
    .local v1, "digits":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 433
    const/16 v2, 0x10

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    nop

    .line 439
    .end local v1    # "digits":Ljava/lang/String;
    .end local v3    # "a":[C
    goto :goto_1

    .line 434
    .restart local v1    # "digits":Ljava/lang/String;
    .restart local v3    # "a":[C
    :catch_0
    move-exception v2

    .line 435
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v4, "Malformed hex digits after \\u escape in string: \'%s\'"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4, v2}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->problem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/typesafe/config/impl/Tokenizer$ProblemException;

    move-result-object v4

    throw v4

    .line 419
    .end local v1    # "digits":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "a":[C
    :sswitch_1
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    goto :goto_1

    .line 416
    :sswitch_2
    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 417
    goto :goto_1

    .line 413
    :sswitch_3
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 414
    goto :goto_1

    .line 410
    :sswitch_4
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 411
    goto :goto_1

    .line 407
    :sswitch_5
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    goto :goto_1

    .line 401
    :sswitch_6
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 402
    goto :goto_1

    .line 404
    :sswitch_7
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 405
    goto :goto_1

    .line 398
    :sswitch_8
    const/16 v1, 0x22

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    nop

    .line 447
    :goto_1
    return-void

    .line 389
    :cond_2
    const-string v1, "End of input but backslash in string had nothing after it"

    invoke-direct {p0, v1}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->problem(Ljava/lang/String;)Lcom/typesafe/config/impl/Tokenizer$ProblemException;

    move-result-object v1

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_8
        0x2f -> :sswitch_7
        0x5c -> :sswitch_6
        0x62 -> :sswitch_5
        0x66 -> :sswitch_4
        0x6e -> :sswitch_3
        0x72 -> :sswitch_2
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private pullNextToken(Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;)Lcom/typesafe/config/impl/Token;
    .locals 6
    .param p1, "saver"    # Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/typesafe/config/impl/Tokenizer$ProblemException;
        }
    .end annotation

    .line 579
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->nextCharAfterWhitespace(Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;)I

    move-result v0

    .line 580
    .local v0, "c":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 581
    sget-object v1, Lcom/typesafe/config/impl/Tokens;->END:Lcom/typesafe/config/impl/Token;

    return-object v1

    .line 582
    :cond_0
    const/16 v1, 0xa

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 584
    iget-object v1, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->lineOrigin:Lcom/typesafe/config/ConfigOrigin;

    invoke-static {v1}, Lcom/typesafe/config/impl/Tokens;->newLine(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/Token;

    move-result-object v1

    .line 585
    .local v1, "line":Lcom/typesafe/config/impl/Token;
    iget v3, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->lineNumber:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->lineNumber:I

    .line 586
    iget-object v2, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->origin:Lcom/typesafe/config/impl/SimpleConfigOrigin;

    iget v3, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->lineNumber:I

    invoke-virtual {v2, v3}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->withLineNumber(I)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v2

    iput-object v2, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->lineOrigin:Lcom/typesafe/config/ConfigOrigin;

    .line 587
    return-object v1

    .line 590
    .end local v1    # "line":Lcom/typesafe/config/impl/Token;
    :cond_1
    invoke-direct {p0, v0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->startOfComment(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 591
    invoke-direct {p0, v0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->pullComment(I)Lcom/typesafe/config/impl/Token;

    move-result-object v1

    .local v1, "t":Lcom/typesafe/config/impl/Token;
    goto/16 :goto_1

    .line 593
    .end local v1    # "t":Lcom/typesafe/config/impl/Token;
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 625
    const/4 v1, 0x0

    .restart local v1    # "t":Lcom/typesafe/config/impl/Token;
    goto :goto_0

    .line 613
    .end local v1    # "t":Lcom/typesafe/config/impl/Token;
    :sswitch_0
    sget-object v1, Lcom/typesafe/config/impl/Tokens;->CLOSE_CURLY:Lcom/typesafe/config/impl/Token;

    .line 614
    .restart local v1    # "t":Lcom/typesafe/config/impl/Token;
    goto :goto_0

    .line 610
    .end local v1    # "t":Lcom/typesafe/config/impl/Token;
    :sswitch_1
    sget-object v1, Lcom/typesafe/config/impl/Tokens;->OPEN_CURLY:Lcom/typesafe/config/impl/Token;

    .line 611
    .restart local v1    # "t":Lcom/typesafe/config/impl/Token;
    goto :goto_0

    .line 619
    .end local v1    # "t":Lcom/typesafe/config/impl/Token;
    :sswitch_2
    sget-object v1, Lcom/typesafe/config/impl/Tokens;->CLOSE_SQUARE:Lcom/typesafe/config/impl/Token;

    .line 620
    .restart local v1    # "t":Lcom/typesafe/config/impl/Token;
    goto :goto_0

    .line 616
    .end local v1    # "t":Lcom/typesafe/config/impl/Token;
    :sswitch_3
    sget-object v1, Lcom/typesafe/config/impl/Tokens;->OPEN_SQUARE:Lcom/typesafe/config/impl/Token;

    .line 617
    .restart local v1    # "t":Lcom/typesafe/config/impl/Token;
    goto :goto_0

    .line 607
    .end local v1    # "t":Lcom/typesafe/config/impl/Token;
    :sswitch_4
    sget-object v1, Lcom/typesafe/config/impl/Tokens;->EQUALS:Lcom/typesafe/config/impl/Token;

    .line 608
    .restart local v1    # "t":Lcom/typesafe/config/impl/Token;
    goto :goto_0

    .line 601
    .end local v1    # "t":Lcom/typesafe/config/impl/Token;
    :sswitch_5
    sget-object v1, Lcom/typesafe/config/impl/Tokens;->COLON:Lcom/typesafe/config/impl/Token;

    .line 602
    .restart local v1    # "t":Lcom/typesafe/config/impl/Token;
    goto :goto_0

    .line 604
    .end local v1    # "t":Lcom/typesafe/config/impl/Token;
    :sswitch_6
    sget-object v1, Lcom/typesafe/config/impl/Tokens;->COMMA:Lcom/typesafe/config/impl/Token;

    .line 605
    .restart local v1    # "t":Lcom/typesafe/config/impl/Token;
    goto :goto_0

    .line 622
    .end local v1    # "t":Lcom/typesafe/config/impl/Token;
    :sswitch_7
    invoke-direct {p0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->pullPlusEquals()Lcom/typesafe/config/impl/Token;

    move-result-object v1

    .line 623
    .restart local v1    # "t":Lcom/typesafe/config/impl/Token;
    goto :goto_0

    .line 598
    .end local v1    # "t":Lcom/typesafe/config/impl/Token;
    :sswitch_8
    invoke-direct {p0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->pullSubstitution()Lcom/typesafe/config/impl/Token;

    move-result-object v1

    .line 599
    .restart local v1    # "t":Lcom/typesafe/config/impl/Token;
    goto :goto_0

    .line 595
    .end local v1    # "t":Lcom/typesafe/config/impl/Token;
    :sswitch_9
    invoke-direct {p0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->pullQuotedString()Lcom/typesafe/config/impl/Token;

    move-result-object v1

    .line 596
    .restart local v1    # "t":Lcom/typesafe/config/impl/Token;
    nop

    .line 629
    :goto_0
    if-nez v1, :cond_5

    .line 630
    const-string v3, "0123456789-"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_3

    .line 631
    invoke-direct {p0, v0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->pullNumber(I)Lcom/typesafe/config/impl/Token;

    move-result-object v1

    goto :goto_1

    .line 632
    :cond_3
    const-string v3, "$\"{}[]:=,+#`^?!@*&\\"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_4

    .line 636
    invoke-direct {p0, v0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->putBack(I)V

    .line 637
    invoke-direct {p0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->pullUnquotedText()Lcom/typesafe/config/impl/Token;

    move-result-object v1

    goto :goto_1

    .line 633
    :cond_4
    invoke-static {v0}, Lcom/typesafe/config/impl/Tokenizer;->access$200(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reserved character \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/typesafe/config/impl/Tokenizer;->access$200(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is not allowed outside quotes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v2}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->problem(Ljava/lang/String;Ljava/lang/String;Z)Lcom/typesafe/config/impl/Tokenizer$ProblemException;

    move-result-object v2

    throw v2

    .line 642
    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 646
    return-object v1

    .line 643
    :cond_6
    new-instance v2, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v3, "bug: failed to generate next token"

    invoke-direct {v2, v3}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_9
        0x24 -> :sswitch_8
        0x2b -> :sswitch_7
        0x2c -> :sswitch_6
        0x3a -> :sswitch_5
        0x3d -> :sswitch_4
        0x5b -> :sswitch_3
        0x5d -> :sswitch_2
        0x7b -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private pullNumber(I)Lcom/typesafe/config/impl/Token;
    .locals 10
    .param p1, "firstChar"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/typesafe/config/impl/Tokenizer$ProblemException;
        }
    .end annotation

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 353
    const/4 v1, 0x0

    .line 354
    .local v1, "containedDecimalOrE":Z
    invoke-direct {p0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->nextCharRaw()I

    move-result v2

    .line 355
    .local v2, "c":I
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const-string v3, "0123456789eE+-."

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_2

    .line 356
    const/16 v3, 0x2e

    if-eq v2, v3, :cond_0

    const/16 v3, 0x65

    if-eq v2, v3, :cond_0

    const/16 v3, 0x45

    if-ne v2, v3, :cond_1

    .line 357
    :cond_0
    const/4 v1, 0x1

    .line 358
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 359
    invoke-direct {p0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->nextCharRaw()I

    move-result v2

    goto :goto_0

    .line 363
    :cond_2
    invoke-direct {p0, v2}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->putBack(I)V

    .line 364
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, "s":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 368
    :try_start_0
    iget-object v4, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->lineOrigin:Lcom/typesafe/config/ConfigOrigin;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v4, v5, v6, v3}, Lcom/typesafe/config/impl/Tokens;->newDouble(Lcom/typesafe/config/ConfigOrigin;DLjava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v4

    return-object v4

    .line 371
    :cond_3
    iget-object v4, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->lineOrigin:Lcom/typesafe/config/ConfigOrigin;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v4, v5, v6, v3}, Lcom/typesafe/config/impl/Tokens;->newLong(Lcom/typesafe/config/ConfigOrigin;JLjava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 373
    :catch_0
    move-exception v4

    .line 375
    .local v4, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_5

    aget-char v8, v5, v7

    .line 376
    .local v8, "u":C
    const-string v9, "$\"{}[]:=,+#`^?!@*&\\"

    invoke-virtual {v9, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-gez v9, :cond_4

    .line 375
    .end local v8    # "u":C
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 377
    .restart local v8    # "u":C
    :cond_4
    invoke-static {v8}, Lcom/typesafe/config/impl/Tokenizer;->access$200(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reserved character \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v8}, Lcom/typesafe/config/impl/Tokenizer;->access$200(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is not allowed outside quotes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {p0, v5, v6, v7}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->problem(Ljava/lang/String;Ljava/lang/String;Z)Lcom/typesafe/config/impl/Tokenizer$ProblemException;

    move-result-object v5

    throw v5

    .line 382
    .end local v8    # "u":C
    :cond_5
    iget-object v5, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->lineOrigin:Lcom/typesafe/config/ConfigOrigin;

    invoke-static {v5, v3}, Lcom/typesafe/config/impl/Tokens;->newUnquotedText(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v5

    return-object v5
.end method

.method private pullPlusEquals()Lcom/typesafe/config/impl/Token;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/typesafe/config/impl/Tokenizer$ProblemException;
        }
    .end annotation

    .line 526
    invoke-direct {p0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->nextCharRaw()I

    move-result v0

    .line 527
    .local v0, "c":I
    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    .line 531
    sget-object v1, Lcom/typesafe/config/impl/Tokens;->PLUS_EQUALS:Lcom/typesafe/config/impl/Token;

    return-object v1

    .line 528
    :cond_0
    invoke-static {v0}, Lcom/typesafe/config/impl/Tokenizer;->access$200(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'+\' not followed by =, \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/typesafe/config/impl/Tokenizer;->access$200(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' not allowed after \'+\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->problem(Ljava/lang/String;Ljava/lang/String;Z)Lcom/typesafe/config/impl/Tokenizer$ProblemException;

    move-result-object v1

    throw v1
.end method

.method private pullQuotedString()Lcom/typesafe/config/impl/Token;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/typesafe/config/impl/Tokenizer$ProblemException;
        }
    .end annotation

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    .local v1, "sbOrig":Ljava/lang/StringBuilder;
    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 492
    :goto_0
    invoke-direct {p0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->nextCharRaw()I

    move-result v3

    .line 493
    .local v3, "c":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 496
    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    .line 497
    invoke-direct {p0, v0, v1}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->pullEscapeSequence(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    goto :goto_2

    .line 498
    :cond_0
    if-ne v3, v2, :cond_3

    .line 499
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 500
    nop

    .line 511
    .end local v3    # "c":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 512
    invoke-direct {p0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->nextCharRaw()I

    move-result v3

    .line 513
    .local v3, "third":I
    if-ne v3, v2, :cond_1

    .line 514
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 515
    invoke-direct {p0, v0, v1}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->appendTripleQuotedString(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 517
    :cond_1
    invoke-direct {p0, v3}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->putBack(I)V

    .line 521
    .end local v3    # "third":I
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->lineOrigin:Lcom/typesafe/config/ConfigOrigin;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/typesafe/config/impl/Tokens;->newString(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v2

    return-object v2

    .line 501
    .local v3, "c":I
    :cond_3
    invoke-static {v3}, Lcom/typesafe/config/impl/ConfigImplUtil;->isC0Control(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 505
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 508
    .end local v3    # "c":I
    :goto_2
    goto :goto_0

    .line 502
    .restart local v3    # "c":I
    :cond_4
    invoke-static {v3}, Lcom/typesafe/config/impl/Tokenizer;->access$200(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON does not allow unescaped "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/typesafe/config/impl/Tokenizer;->access$200(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in quoted strings, use a backslash escape"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->problem(Ljava/lang/String;Ljava/lang/String;)Lcom/typesafe/config/impl/Tokenizer$ProblemException;

    move-result-object v2

    throw v2

    .line 494
    :cond_5
    const-string v2, "End of input but string quote was still open"

    invoke-direct {p0, v2}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->problem(Ljava/lang/String;)Lcom/typesafe/config/impl/Tokenizer$ProblemException;

    move-result-object v2

    throw v2
.end method

.method private pullSubstitution()Lcom/typesafe/config/impl/Token;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/typesafe/config/impl/Tokenizer$ProblemException;
        }
    .end annotation

    .line 536
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->lineOrigin:Lcom/typesafe/config/ConfigOrigin;

    .line 537
    .local v0, "origin":Lcom/typesafe/config/ConfigOrigin;
    invoke-direct {p0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->nextCharRaw()I

    move-result v1

    .line 538
    .local v1, "c":I
    const/16 v2, 0x7b

    if-ne v1, v2, :cond_4

    .line 543
    const/4 v2, 0x0

    .line 544
    .local v2, "optional":Z
    invoke-direct {p0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->nextCharRaw()I

    move-result v1

    .line 545
    const/16 v3, 0x3f

    if-ne v1, v3, :cond_0

    .line 546
    const/4 v2, 0x1

    goto :goto_0

    .line 548
    :cond_0
    invoke-direct {p0, v1}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->putBack(I)V

    .line 551
    :goto_0
    new-instance v3, Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;

    invoke-direct {v3}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;-><init>()V

    .line 552
    .local v3, "saver":Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v4, "expression":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/Token;>;"
    :goto_1
    invoke-direct {p0, v3}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->pullNextToken(Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;)Lcom/typesafe/config/impl/Token;

    move-result-object v5

    .line 561
    .local v5, "t":Lcom/typesafe/config/impl/Token;
    sget-object v6, Lcom/typesafe/config/impl/Tokens;->CLOSE_CURLY:Lcom/typesafe/config/impl/Token;

    if-ne v5, v6, :cond_1

    .line 563
    nop

    .line 575
    invoke-static {v0, v2, v4}, Lcom/typesafe/config/impl/Tokens;->newSubstitution(Lcom/typesafe/config/ConfigOrigin;ZLjava/util/List;)Lcom/typesafe/config/impl/Token;

    move-result-object v6

    return-object v6

    .line 564
    :cond_1
    sget-object v6, Lcom/typesafe/config/impl/Tokens;->END:Lcom/typesafe/config/impl/Token;

    if-eq v5, v6, :cond_3

    .line 568
    iget v6, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->lineNumber:I

    invoke-virtual {v3, v5, v0, v6}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;->check(Lcom/typesafe/config/impl/Token;Lcom/typesafe/config/ConfigOrigin;I)Lcom/typesafe/config/impl/Token;

    move-result-object v6

    .line 569
    .local v6, "whitespace":Lcom/typesafe/config/impl/Token;
    if-eqz v6, :cond_2

    .line 570
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    :cond_2
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    .end local v6    # "whitespace":Lcom/typesafe/config/impl/Token;
    goto :goto_1

    .line 565
    :cond_3
    const-string v6, "Substitution ${ was not closed with a }"

    invoke-static {v0, v6}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->problem(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/Tokenizer$ProblemException;

    move-result-object v6

    throw v6

    .line 539
    .end local v2    # "optional":Z
    .end local v3    # "saver":Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;
    .end local v4    # "expression":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/Token;>;"
    .end local v5    # "t":Lcom/typesafe/config/impl/Token;
    :cond_4
    invoke-static {v1}, Lcom/typesafe/config/impl/Tokenizer;->access$200(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'$\' not followed by {, \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/typesafe/config/impl/Tokenizer;->access$200(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' not allowed after \'$\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->problem(Ljava/lang/String;Ljava/lang/String;Z)Lcom/typesafe/config/impl/Tokenizer$ProblemException;

    move-result-object v2

    throw v2
.end method

.method private pullUnquotedText()Lcom/typesafe/config/impl/Token;
    .locals 5

    .line 309
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->lineOrigin:Lcom/typesafe/config/ConfigOrigin;

    .line 310
    .local v0, "origin":Lcom/typesafe/config/ConfigOrigin;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->nextCharRaw()I

    move-result v2

    .line 313
    .local v2, "c":I
    :goto_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 314
    goto :goto_1

    .line 315
    :cond_0
    const-string v3, "$\"{}[]:=,+#`^?!@*&\\"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1

    .line 316
    goto :goto_1

    .line 317
    :cond_1
    invoke-static {v2}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->isWhitespace(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 318
    goto :goto_1

    .line 319
    :cond_2
    invoke-direct {p0, v2}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->startOfComment(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 320
    nop

    .line 344
    :goto_1
    invoke-direct {p0, v2}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->putBack(I)V

    .line 346
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "s":Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/typesafe/config/impl/Tokens;->newUnquotedText(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)Lcom/typesafe/config/impl/Token;

    move-result-object v4

    return-object v4

    .line 322
    .end local v3    # "s":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6

    .line 329
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 330
    .restart local v3    # "s":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 331
    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/typesafe/config/impl/Tokens;->newBoolean(Lcom/typesafe/config/ConfigOrigin;Z)Lcom/typesafe/config/impl/Token;

    move-result-object v4

    return-object v4

    .line 332
    :cond_4
    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 333
    invoke-static {v0}, Lcom/typesafe/config/impl/Tokens;->newNull(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/Token;

    move-result-object v4

    return-object v4

    .line 332
    .end local v3    # "s":Ljava/lang/String;
    :cond_5
    goto :goto_2

    .line 334
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_7

    .line 335
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 336
    .restart local v3    # "s":Ljava/lang/String;
    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 337
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/typesafe/config/impl/Tokens;->newBoolean(Lcom/typesafe/config/ConfigOrigin;Z)Lcom/typesafe/config/impl/Token;

    move-result-object v4

    return-object v4

    .line 334
    .end local v3    # "s":Ljava/lang/String;
    :cond_7
    :goto_2
    nop

    .line 340
    :cond_8
    invoke-direct {p0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->nextCharRaw()I

    move-result v2

    goto :goto_0
.end method

.method private putBack(I)V
    .locals 2
    .param p1, "c"    # I

    .line 168
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->buffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->buffer:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 173
    return-void

    .line 169
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "bug: putBack() three times, undesirable look-ahead"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private queueNextToken()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/typesafe/config/impl/Tokenizer$ProblemException;
        }
    .end annotation

    .line 660
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->whitespaceSaver:Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;

    invoke-direct {p0, v0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->pullNextToken(Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;)Lcom/typesafe/config/impl/Token;

    move-result-object v0

    .line 661
    .local v0, "t":Lcom/typesafe/config/impl/Token;
    iget-object v1, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->whitespaceSaver:Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;

    iget-object v2, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->origin:Lcom/typesafe/config/impl/SimpleConfigOrigin;

    iget v3, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->lineNumber:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator$WhitespaceSaver;->check(Lcom/typesafe/config/impl/Token;Lcom/typesafe/config/ConfigOrigin;I)Lcom/typesafe/config/impl/Token;

    move-result-object v1

    .line 662
    .local v1, "whitespace":Lcom/typesafe/config/impl/Token;
    if-eqz v1, :cond_0

    .line 663
    iget-object v2, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->tokens:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 665
    :cond_0
    iget-object v2, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->tokens:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 666
    return-void
.end method

.method private startOfComment(I)Z
    .locals 4
    .param p1, "c"    # I

    .line 184
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 185
    return v1

    .line 187
    :cond_0
    iget-boolean v0, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->allowComments:Z

    if-eqz v0, :cond_4

    .line 188
    const/16 v0, 0x23

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 189
    return v2

    .line 190
    :cond_1
    const/16 v0, 0x2f

    if-ne p1, v0, :cond_3

    .line 191
    invoke-direct {p0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->nextCharRaw()I

    move-result v3

    .line 193
    .local v3, "maybeSecondSlash":I
    invoke-direct {p0, v3}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->putBack(I)V

    .line 194
    if-ne v3, v0, :cond_2

    .line 195
    return v2

    .line 197
    :cond_2
    return v1

    .line 200
    .end local v3    # "maybeSecondSlash":I
    :cond_3
    return v1

    .line 203
    :cond_4
    return v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->tokens:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Lcom/typesafe/config/impl/Token;
    .locals 4

    .line 675
    iget-object v0, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->tokens:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/Token;

    .line 676
    .local v0, "t":Lcom/typesafe/config/impl/Token;
    iget-object v1, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->tokens:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/typesafe/config/impl/Tokens;->END:Lcom/typesafe/config/impl/Token;

    if-eq v0, v1, :cond_1

    .line 678
    :try_start_0
    invoke-direct {p0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->queueNextToken()V
    :try_end_0
    .catch Lcom/typesafe/config/impl/Tokenizer$ProblemException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    goto :goto_0

    .line 679
    :catch_0
    move-exception v1

    .line 680
    .local v1, "e":Lcom/typesafe/config/impl/Tokenizer$ProblemException;
    iget-object v2, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->tokens:Ljava/util/Queue;

    invoke-virtual {v1}, Lcom/typesafe/config/impl/Tokenizer$ProblemException;->problem()Lcom/typesafe/config/impl/Token;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 682
    .end local v1    # "e":Lcom/typesafe/config/impl/Tokenizer$ProblemException;
    :goto_0
    iget-object v1, p0, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->tokens:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 683
    :cond_0
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v2, "bug: tokens queue should not be empty here"

    invoke-direct {v1, v2}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v1

    .line 686
    :cond_1
    :goto_1
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/typesafe/config/impl/Tokenizer$TokenIterator;->next()Lcom/typesafe/config/impl/Token;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 691
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Does not make sense to remove items from token stream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
