.class final Lcom/typesafe/config/impl/ConfigParser$ParseContext;
.super Ljava/lang/Object;
.source "ConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/ConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParseContext"
.end annotation


# instance fields
.field arrayCount:I

.field private final baseOrigin:Lcom/typesafe/config/ConfigOrigin;

.field private final document:Lcom/typesafe/config/impl/ConfigNodeRoot;

.field private final flavor:Lcom/typesafe/config/ConfigSyntax;

.field private final includeContext:Lcom/typesafe/config/ConfigIncludeContext;

.field private final includer:Lcom/typesafe/config/impl/FullIncluder;

.field private lineNumber:I

.field private final pathStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/typesafe/config/impl/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/typesafe/config/ConfigSyntax;Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/impl/ConfigNodeRoot;Lcom/typesafe/config/impl/FullIncluder;Lcom/typesafe/config/ConfigIncludeContext;)V
    .locals 1
    .param p1, "flavor"    # Lcom/typesafe/config/ConfigSyntax;
    .param p2, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p3, "document"    # Lcom/typesafe/config/impl/ConfigNodeRoot;
    .param p4, "includer"    # Lcom/typesafe/config/impl/FullIncluder;
    .param p5, "includeContext"    # Lcom/typesafe/config/ConfigIncludeContext;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->lineNumber:I

    .line 45
    iput-object p3, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->document:Lcom/typesafe/config/impl/ConfigNodeRoot;

    .line 46
    iput-object p1, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->flavor:Lcom/typesafe/config/ConfigSyntax;

    .line 47
    iput-object p2, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->baseOrigin:Lcom/typesafe/config/ConfigOrigin;

    .line 48
    iput-object p4, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->includer:Lcom/typesafe/config/impl/FullIncluder;

    .line 49
    iput-object p5, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->includeContext:Lcom/typesafe/config/ConfigIncludeContext;

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->pathStack:Ljava/util/LinkedList;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->arrayCount:I

    .line 52
    return-void
.end method

.method private static createValueUnderPath(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 10
    .param p0, "path"    # Lcom/typesafe/config/impl/Path;
    .param p1, "value"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/typesafe/config/impl/Path;->first()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/typesafe/config/impl/Path;->remainder()Lcom/typesafe/config/impl/Path;

    move-result-object v2

    .line 131
    .local v2, "remaining":Lcom/typesafe/config/impl/Path;
    :goto_0
    if-eqz v1, :cond_1

    .line 132
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    if-nez v2, :cond_0

    .line 134
    goto :goto_1

    .line 136
    :cond_0
    invoke-virtual {v2}, Lcom/typesafe/config/impl/Path;->first()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {v2}, Lcom/typesafe/config/impl/Path;->remainder()Lcom/typesafe/config/impl/Path;

    move-result-object v2

    goto :goto_0

    .line 145
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 146
    .local v3, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 147
    .local v4, "deepest":Ljava/lang/String;
    new-instance v5, Lcom/typesafe/config/impl/SimpleConfigObject;

    invoke-virtual {p1}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->withComments(Ljava/util/List;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v6

    .line 148
    invoke-static {v4, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lcom/typesafe/config/impl/SimpleConfigObject;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;)V

    .line 150
    .local v5, "o":Lcom/typesafe/config/impl/AbstractConfigObject;
    :goto_2
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 151
    nop

    .line 152
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    .line 151
    invoke-static {v6, v5}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    .line 153
    .local v6, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    new-instance v8, Lcom/typesafe/config/impl/SimpleConfigObject;

    invoke-virtual {p1}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->withComments(Ljava/util/List;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Lcom/typesafe/config/impl/SimpleConfigObject;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;)V

    move-object v5, v8

    .line 154
    .end local v6    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    goto :goto_2

    .line 156
    :cond_2
    return-object v5
.end method

.method private fullCurrentPath()Lcom/typesafe/config/impl/Path;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->pathStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/typesafe/config/impl/Path;

    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->pathStack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/impl/Path;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 90
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "Bug in parser; tried to get current path when at root"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private lineOrigin()Lcom/typesafe/config/impl/SimpleConfigOrigin;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->baseOrigin:Lcom/typesafe/config/ConfigOrigin;

    check-cast v0, Lcom/typesafe/config/impl/SimpleConfigOrigin;

    iget v1, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->lineNumber:I

    invoke-virtual {v0, v1}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->withLineNumber(I)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    return-object v0
.end method

.method private parseArray(Lcom/typesafe/config/impl/ConfigNodeArray;)Lcom/typesafe/config/impl/SimpleConfigList;
    .locals 9
    .param p1, "n"    # Lcom/typesafe/config/impl/ConfigNodeArray;

    .line 352
    iget v0, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->arrayCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->arrayCount:I

    .line 354
    invoke-direct {p0}, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->lineOrigin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    .line 355
    .local v0, "arrayOrigin":Lcom/typesafe/config/impl/SimpleConfigOrigin;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    const/4 v2, 0x0

    .line 358
    .local v2, "lastWasNewLine":Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v3, "comments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 362
    .local v4, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-virtual {p1}, Lcom/typesafe/config/impl/ConfigNodeArray;->children()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/typesafe/config/impl/AbstractConfigNode;

    .line 363
    .local v6, "node":Lcom/typesafe/config/impl/AbstractConfigNode;
    instance-of v7, v6, Lcom/typesafe/config/impl/ConfigNodeComment;

    if-eqz v7, :cond_0

    .line 364
    move-object v7, v6

    check-cast v7, Lcom/typesafe/config/impl/ConfigNodeComment;

    invoke-virtual {v7}, Lcom/typesafe/config/impl/ConfigNodeComment;->commentText()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    const/4 v2, 0x0

    goto :goto_2

    .line 366
    :cond_0
    instance-of v7, v6, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    if-eqz v7, :cond_3

    move-object v7, v6

    check-cast v7, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-virtual {v7}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token()Lcom/typesafe/config/impl/Token;

    move-result-object v7

    invoke-static {v7}, Lcom/typesafe/config/impl/Tokens;->isNewline(Lcom/typesafe/config/impl/Token;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 367
    iget v7, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->lineNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->lineNumber:I

    .line 368
    if-eqz v2, :cond_1

    if-nez v4, :cond_1

    .line 369
    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 370
    :cond_1
    if-eqz v4, :cond_2

    .line 371
    invoke-virtual {v4}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7, v8}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->appendComments(Ljava/util/List;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/typesafe/config/impl/AbstractConfigValue;->withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 373
    const/4 v4, 0x0

    .line 375
    :cond_2
    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    .line 376
    :cond_3
    instance-of v7, v6, Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    if-eqz v7, :cond_5

    .line 377
    const/4 v2, 0x0

    .line 378
    if-eqz v4, :cond_4

    .line 379
    invoke-virtual {v4}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7, v8}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->appendComments(Ljava/util/List;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/typesafe/config/impl/AbstractConfigValue;->withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 382
    :cond_4
    move-object v7, v6

    check-cast v7, Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    invoke-direct {p0, v7, v3}, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->parseValue(Lcom/typesafe/config/impl/AbstractConfigNodeValue;Ljava/util/List;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v4

    .line 384
    .end local v6    # "node":Lcom/typesafe/config/impl/AbstractConfigNode;
    :cond_5
    :goto_2
    goto :goto_0

    .line 386
    :cond_6
    if-eqz v4, :cond_7

    .line 387
    invoke-virtual {v4}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v6}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->appendComments(Ljava/util/List;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/typesafe/config/impl/AbstractConfigValue;->withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_7
    iget v5, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->arrayCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->arrayCount:I

    .line 390
    new-instance v5, Lcom/typesafe/config/impl/SimpleConfigList;

    invoke-direct {v5, v0, v1}, Lcom/typesafe/config/impl/SimpleConfigList;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)V

    return-object v5
.end method

.method private parseConcatenation(Lcom/typesafe/config/impl/ConfigNodeConcatenation;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 6
    .param p1, "n"    # Lcom/typesafe/config/impl/ConfigNodeConcatenation;

    .line 59
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->flavor:Lcom/typesafe/config/ConfigSyntax;

    sget-object v1, Lcom/typesafe/config/ConfigSyntax;->JSON:Lcom/typesafe/config/ConfigSyntax;

    if-eq v0, v1, :cond_2

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/typesafe/config/impl/ConfigNodeConcatenation;->children()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-virtual {p1}, Lcom/typesafe/config/impl/ConfigNodeConcatenation;->children()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigNode;

    .line 65
    .local v2, "node":Lcom/typesafe/config/impl/AbstractConfigNode;
    const/4 v3, 0x0

    .line 66
    .local v3, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    instance-of v4, v2, Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    if-eqz v4, :cond_0

    .line 67
    move-object v4, v2

    check-cast v4, Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->parseValue(Lcom/typesafe/config/impl/AbstractConfigNodeValue;Ljava/util/List;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v3

    .line 68
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .end local v2    # "node":Lcom/typesafe/config/impl/AbstractConfigNode;
    .end local v3    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_0
    goto :goto_0

    .line 72
    :cond_1
    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigConcatenation;->concatenate(Ljava/util/List;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v1

    return-object v1

    .line 60
    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    :cond_2
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "Found a concatenation node in JSON"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->parseError(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/typesafe/config/ConfigException;

    move-result-object v0

    return-object v0
.end method

.method private parseError(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/typesafe/config/ConfigException;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 84
    new-instance v0, Lcom/typesafe/config/ConfigException$Parse;

    invoke-direct {p0}, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->lineOrigin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/typesafe/config/ConfigException$Parse;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private parseInclude(Ljava/util/Map;Lcom/typesafe/config/impl/ConfigNodeInclude;)V
    .locals 8
    .param p2, "n"    # Lcom/typesafe/config/impl/ConfigNodeInclude;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;",
            "Lcom/typesafe/config/impl/ConfigNodeInclude;",
            ")V"
        }
    .end annotation

    .line 160
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-virtual {p2}, Lcom/typesafe/config/impl/ConfigNodeInclude;->isRequired()Z

    move-result v0

    .line 161
    .local v0, "isRequired":Z
    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->includeContext:Lcom/typesafe/config/ConfigIncludeContext;

    iget-object v2, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->includeContext:Lcom/typesafe/config/ConfigIncludeContext;

    invoke-interface {v2}, Lcom/typesafe/config/ConfigIncludeContext;->parseOptions()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v2

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lcom/typesafe/config/ConfigParseOptions;->setAllowMissing(Z)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/typesafe/config/ConfigIncludeContext;->setParseOptions(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigIncludeContext;

    move-result-object v1

    .line 164
    .local v1, "cic":Lcom/typesafe/config/ConfigIncludeContext;
    sget-object v2, Lcom/typesafe/config/impl/ConfigParser$1;->$SwitchMap$com$typesafe$config$impl$ConfigIncludeKind:[I

    invoke-virtual {p2}, Lcom/typesafe/config/impl/ConfigNodeInclude;->kind()Lcom/typesafe/config/impl/ConfigIncludeKind;

    move-result-object v3

    invoke-virtual {v3}, Lcom/typesafe/config/impl/ConfigIncludeKind;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 190
    new-instance v2, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v3, "should not be reached"

    invoke-direct {v2, v3}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :pswitch_0
    iget-object v2, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->includer:Lcom/typesafe/config/impl/FullIncluder;

    .line 186
    invoke-virtual {p2}, Lcom/typesafe/config/impl/ConfigNodeInclude;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/typesafe/config/impl/FullIncluder;->include(Lcom/typesafe/config/ConfigIncludeContext;Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigObject;

    .line 187
    .local v2, "obj":Lcom/typesafe/config/impl/AbstractConfigObject;
    goto :goto_0

    .line 181
    .end local v2    # "obj":Lcom/typesafe/config/impl/AbstractConfigObject;
    :pswitch_1
    iget-object v2, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->includer:Lcom/typesafe/config/impl/FullIncluder;

    invoke-virtual {p2}, Lcom/typesafe/config/impl/ConfigNodeInclude;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/typesafe/config/impl/FullIncluder;->includeResources(Lcom/typesafe/config/ConfigIncludeContext;Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigObject;

    .line 182
    .restart local v2    # "obj":Lcom/typesafe/config/impl/AbstractConfigObject;
    goto :goto_0

    .line 176
    .end local v2    # "obj":Lcom/typesafe/config/impl/AbstractConfigObject;
    :pswitch_2
    iget-object v2, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->includer:Lcom/typesafe/config/impl/FullIncluder;

    new-instance v3, Ljava/io/File;

    .line 177
    invoke-virtual {p2}, Lcom/typesafe/config/impl/ConfigNodeInclude;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-interface {v2, v1, v3}, Lcom/typesafe/config/impl/FullIncluder;->includeFile(Lcom/typesafe/config/ConfigIncludeContext;Ljava/io/File;)Lcom/typesafe/config/ConfigObject;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigObject;

    .line 178
    .restart local v2    # "obj":Lcom/typesafe/config/impl/AbstractConfigObject;
    goto :goto_0

    .line 168
    .end local v2    # "obj":Lcom/typesafe/config/impl/AbstractConfigObject;
    :pswitch_3
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p2}, Lcom/typesafe/config/impl/ConfigNodeInclude;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .local v2, "url":Ljava/net/URL;
    nop

    .line 172
    iget-object v3, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->includer:Lcom/typesafe/config/impl/FullIncluder;

    invoke-interface {v3, v1, v2}, Lcom/typesafe/config/impl/FullIncluder;->includeURL(Lcom/typesafe/config/ConfigIncludeContext;Ljava/net/URL;)Lcom/typesafe/config/ConfigObject;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/impl/AbstractConfigObject;

    .line 173
    .local v3, "obj":Lcom/typesafe/config/impl/AbstractConfigObject;
    move-object v2, v3

    .line 196
    .end local v3    # "obj":Lcom/typesafe/config/impl/AbstractConfigObject;
    .local v2, "obj":Lcom/typesafe/config/impl/AbstractConfigObject;
    :goto_0
    iget v3, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->arrayCount:I

    if-lez v3, :cond_1

    invoke-virtual {v2}, Lcom/typesafe/config/impl/AbstractConfigObject;->resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;

    move-result-object v3

    sget-object v4, Lcom/typesafe/config/impl/ResolveStatus;->RESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 197
    :cond_0
    const-string v3, "Due to current limitations of the config parser, when an include statement is nested inside a list value, ${} substitutions inside the included file cannot be resolved correctly. Either move the include outside of the list value or remove the ${} statements from the included file."

    invoke-direct {p0, v3}, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v3

    throw v3

    .line 201
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->pathStack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 202
    invoke-direct {p0}, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->fullCurrentPath()Lcom/typesafe/config/impl/Path;

    move-result-object v3

    .line 203
    .local v3, "prefix":Lcom/typesafe/config/impl/Path;
    invoke-virtual {v2, v3}, Lcom/typesafe/config/impl/AbstractConfigObject;->relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v2

    .line 206
    .end local v3    # "prefix":Lcom/typesafe/config/impl/Path;
    :cond_2
    invoke-virtual {v2}, Lcom/typesafe/config/impl/AbstractConfigObject;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 207
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/typesafe/config/impl/AbstractConfigObject;->get(Ljava/lang/Object;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v5

    .line 208
    .local v5, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 209
    .local v6, "existing":Lcom/typesafe/config/impl/AbstractConfigValue;
    if-eqz v6, :cond_3

    .line 210
    invoke-virtual {v5, v6}, Lcom/typesafe/config/impl/AbstractConfigValue;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v7

    invoke-interface {p1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 212
    :cond_3
    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    .end local v6    # "existing":Lcom/typesafe/config/impl/AbstractConfigValue;
    :goto_3
    goto :goto_2

    .line 215
    :cond_4
    return-void

    .line 169
    .end local v2    # "obj":Lcom/typesafe/config/impl/AbstractConfigObject;
    :catch_0
    move-exception v2

    .line 170
    .local v2, "e":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "include url() specifies an invalid URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/typesafe/config/impl/ConfigNodeInclude;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->parseError(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/typesafe/config/ConfigException;

    move-result-object v3

    throw v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseObject(Lcom/typesafe/config/impl/ConfigNodeObject;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 17
    .param p1, "n"    # Lcom/typesafe/config/impl/ConfigNodeObject;

    .line 218
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 219
    .local v1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-direct/range {p0 .. p0}, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->lineOrigin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v2

    .line 220
    .local v2, "objectOrigin":Lcom/typesafe/config/impl/SimpleConfigOrigin;
    const/4 v3, 0x0

    .line 222
    .local v3, "lastWasNewline":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/typesafe/config/impl/ConfigNodeObject;->children()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 223
    .local v4, "nodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v5, "comments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_12

    .line 225
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/typesafe/config/impl/AbstractConfigNode;

    .line 226
    .local v7, "node":Lcom/typesafe/config/impl/AbstractConfigNode;
    instance-of v8, v7, Lcom/typesafe/config/impl/ConfigNodeComment;

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    .line 227
    const/4 v3, 0x0

    .line 228
    move-object v8, v7

    check-cast v8, Lcom/typesafe/config/impl/ConfigNodeComment;

    invoke-virtual {v8}, Lcom/typesafe/config/impl/ConfigNodeComment;->commentText()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 229
    :cond_0
    instance-of v8, v7, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    if-eqz v8, :cond_2

    move-object v8, v7

    check-cast v8, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-virtual {v8}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token()Lcom/typesafe/config/impl/Token;

    move-result-object v8

    invoke-static {v8}, Lcom/typesafe/config/impl/Tokens;->isNewline(Lcom/typesafe/config/impl/Token;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 230
    iget v8, v0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->lineNumber:I

    add-int/2addr v8, v9

    iput v8, v0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->lineNumber:I

    .line 231
    if-eqz v3, :cond_1

    .line 233
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 235
    :cond_1
    const/4 v3, 0x1

    goto/16 :goto_8

    .line 236
    :cond_2
    iget-object v8, v0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->flavor:Lcom/typesafe/config/ConfigSyntax;

    sget-object v10, Lcom/typesafe/config/ConfigSyntax;->JSON:Lcom/typesafe/config/ConfigSyntax;

    if-eq v8, v10, :cond_3

    instance-of v8, v7, Lcom/typesafe/config/impl/ConfigNodeInclude;

    if-eqz v8, :cond_3

    .line 237
    move-object v8, v7

    check-cast v8, Lcom/typesafe/config/impl/ConfigNodeInclude;

    invoke-direct {v0, v1, v8}, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->parseInclude(Ljava/util/Map;Lcom/typesafe/config/impl/ConfigNodeInclude;)V

    .line 238
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 239
    :cond_3
    instance-of v8, v7, Lcom/typesafe/config/impl/ConfigNodeField;

    if-eqz v8, :cond_11

    .line 240
    const/4 v3, 0x0

    .line 241
    move-object v8, v7

    check-cast v8, Lcom/typesafe/config/impl/ConfigNodeField;

    invoke-virtual {v8}, Lcom/typesafe/config/impl/ConfigNodeField;->path()Lcom/typesafe/config/impl/ConfigNodePath;

    move-result-object v8

    invoke-virtual {v8}, Lcom/typesafe/config/impl/ConfigNodePath;->value()Lcom/typesafe/config/impl/Path;

    move-result-object v8

    .line 242
    .local v8, "path":Lcom/typesafe/config/impl/Path;
    move-object v10, v7

    check-cast v10, Lcom/typesafe/config/impl/ConfigNodeField;

    invoke-virtual {v10}, Lcom/typesafe/config/impl/ConfigNodeField;->comments()Ljava/util/List;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 245
    iget-object v10, v0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->pathStack:Ljava/util/LinkedList;

    invoke-virtual {v10, v8}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 246
    move-object v10, v7

    check-cast v10, Lcom/typesafe/config/impl/ConfigNodeField;

    invoke-virtual {v10}, Lcom/typesafe/config/impl/ConfigNodeField;->separator()Lcom/typesafe/config/impl/Token;

    move-result-object v10

    sget-object v11, Lcom/typesafe/config/impl/Tokens;->PLUS_EQUALS:Lcom/typesafe/config/impl/Token;

    if-ne v10, v11, :cond_5

    .line 251
    iget v10, v0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->arrayCount:I

    if-gtz v10, :cond_4

    .line 259
    iget v10, v0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->arrayCount:I

    add-int/2addr v10, v9

    iput v10, v0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->arrayCount:I

    goto :goto_1

    .line 252
    :cond_4
    const-string v9, "Due to current limitations of the config parser, += does not work nested inside a list. += expands to a ${} substitution and the path in ${} cannot currently refer to list elements. You might be able to move the += outside of the list and then refer to it from inside the list with ${}."

    invoke-direct {v0, v9}, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v9

    throw v9

    .line 265
    :cond_5
    :goto_1
    move-object v10, v7

    check-cast v10, Lcom/typesafe/config/impl/ConfigNodeField;

    invoke-virtual {v10}, Lcom/typesafe/config/impl/ConfigNodeField;->value()Lcom/typesafe/config/impl/AbstractConfigNodeValue;

    move-result-object v10

    .line 268
    .local v10, "valueNode":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    invoke-direct {v0, v10, v5}, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->parseValue(Lcom/typesafe/config/impl/AbstractConfigNodeValue;Ljava/util/List;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v11

    .line 270
    .local v11, "newValue":Lcom/typesafe/config/impl/AbstractConfigValue;
    move-object v12, v7

    check-cast v12, Lcom/typesafe/config/impl/ConfigNodeField;

    invoke-virtual {v12}, Lcom/typesafe/config/impl/ConfigNodeField;->separator()Lcom/typesafe/config/impl/Token;

    move-result-object v12

    sget-object v13, Lcom/typesafe/config/impl/Tokens;->PLUS_EQUALS:Lcom/typesafe/config/impl/Token;

    if-ne v12, v13, :cond_6

    .line 271
    iget v12, v0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->arrayCount:I

    sub-int/2addr v12, v9

    iput v12, v0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->arrayCount:I

    .line 273
    new-instance v12, Ljava/util/ArrayList;

    const/4 v13, 0x2

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 274
    .local v12, "concat":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    new-instance v13, Lcom/typesafe/config/impl/ConfigReference;

    invoke-virtual {v11}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v14

    new-instance v15, Lcom/typesafe/config/impl/SubstitutionExpression;

    .line 275
    move/from16 v16, v3

    .end local v3    # "lastWasNewline":Z
    .local v16, "lastWasNewline":Z
    invoke-direct/range {p0 .. p0}, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->fullCurrentPath()Lcom/typesafe/config/impl/Path;

    move-result-object v3

    invoke-direct {v15, v3, v9}, Lcom/typesafe/config/impl/SubstitutionExpression;-><init>(Lcom/typesafe/config/impl/Path;Z)V

    invoke-direct {v13, v14, v15}, Lcom/typesafe/config/impl/ConfigReference;-><init>(Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/impl/SubstitutionExpression;)V

    move-object v3, v13

    .line 276
    .local v3, "previousRef":Lcom/typesafe/config/impl/AbstractConfigValue;
    new-instance v13, Lcom/typesafe/config/impl/SimpleConfigList;

    invoke-virtual {v11}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v14

    .line 277
    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/typesafe/config/impl/SimpleConfigList;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)V

    .line 278
    .local v13, "list":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-static {v12}, Lcom/typesafe/config/impl/ConfigConcatenation;->concatenate(Ljava/util/List;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v11

    goto :goto_2

    .line 270
    .end local v12    # "concat":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    .end local v13    # "list":Lcom/typesafe/config/impl/AbstractConfigValue;
    .end local v16    # "lastWasNewline":Z
    .local v3, "lastWasNewline":Z
    :cond_6
    move/from16 v16, v3

    .line 284
    .end local v3    # "lastWasNewline":Z
    .restart local v16    # "lastWasNewline":Z
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v9

    if-ge v6, v3, :cond_b

    .line 285
    add-int/lit8 v6, v6, 0x1

    .line 286
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v6, v3, :cond_b

    .line 287
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/typesafe/config/impl/ConfigNodeComment;

    if-eqz v3, :cond_7

    .line 288
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/impl/ConfigNodeComment;

    .line 289
    .local v3, "comment":Lcom/typesafe/config/impl/ConfigNodeComment;
    invoke-virtual {v11}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v12

    .line 290
    invoke-virtual {v3}, Lcom/typesafe/config/impl/ConfigNodeComment;->commentText()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 289
    invoke-virtual {v12, v13}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->appendComments(Ljava/util/List;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/typesafe/config/impl/AbstractConfigValue;->withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v11

    .line 291
    goto :goto_5

    .line 292
    .end local v3    # "comment":Lcom/typesafe/config/impl/ConfigNodeComment;
    :cond_7
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    if-eqz v3, :cond_a

    .line 293
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    .line 294
    .local v3, "curr":Lcom/typesafe/config/impl/ConfigNodeSingleToken;
    invoke-virtual {v3}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token()Lcom/typesafe/config/impl/Token;

    move-result-object v12

    sget-object v13, Lcom/typesafe/config/impl/Tokens;->COMMA:Lcom/typesafe/config/impl/Token;

    if-eq v12, v13, :cond_9

    invoke-virtual {v3}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token()Lcom/typesafe/config/impl/Token;

    move-result-object v12

    invoke-static {v12}, Lcom/typesafe/config/impl/Tokens;->isIgnoredWhitespace(Lcom/typesafe/config/impl/Token;)Z

    move-result v12

    if-eqz v12, :cond_8

    goto :goto_4

    .line 297
    :cond_8
    add-int/lit8 v6, v6, -0x1

    .line 298
    goto :goto_5

    .line 300
    .end local v3    # "curr":Lcom/typesafe/config/impl/ConfigNodeSingleToken;
    :cond_9
    :goto_4
    nop

    .line 304
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 301
    :cond_a
    add-int/lit8 v6, v6, -0x1

    .line 302
    nop

    .line 308
    :cond_b
    :goto_5
    iget-object v3, v0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->pathStack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    .line 310
    invoke-virtual {v8}, Lcom/typesafe/config/impl/Path;->first()Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/typesafe/config/impl/Path;->remainder()Lcom/typesafe/config/impl/Path;

    move-result-object v12

    .line 313
    .local v12, "remaining":Lcom/typesafe/config/impl/Path;
    if-nez v12, :cond_e

    .line 314
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 315
    .local v13, "existing":Lcom/typesafe/config/impl/AbstractConfigValue;
    if-eqz v13, :cond_d

    .line 321
    iget-object v14, v0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->flavor:Lcom/typesafe/config/ConfigSyntax;

    sget-object v15, Lcom/typesafe/config/ConfigSyntax;->JSON:Lcom/typesafe/config/ConfigSyntax;

    if-eq v14, v15, :cond_c

    .line 327
    invoke-virtual {v11, v13}, Lcom/typesafe/config/impl/AbstractConfigValue;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v11

    goto :goto_6

    .line 322
    :cond_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "JSON does not allow duplicate fields: \'"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, "\' was already seen at "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 325
    invoke-virtual {v13}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v14

    invoke-virtual {v14}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->description()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 322
    invoke-direct {v0, v9}, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v9

    throw v9

    .line 330
    :cond_d
    :goto_6
    invoke-interface {v1, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .end local v13    # "existing":Lcom/typesafe/config/impl/AbstractConfigValue;
    goto :goto_7

    .line 332
    :cond_e
    iget-object v13, v0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->flavor:Lcom/typesafe/config/ConfigSyntax;

    sget-object v14, Lcom/typesafe/config/ConfigSyntax;->JSON:Lcom/typesafe/config/ConfigSyntax;

    if-eq v13, v14, :cond_10

    .line 337
    invoke-static {v12, v11}, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->createValueUnderPath(Lcom/typesafe/config/impl/Path;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v13

    .line 339
    .local v13, "obj":Lcom/typesafe/config/impl/AbstractConfigObject;
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 340
    .local v14, "existing":Lcom/typesafe/config/impl/AbstractConfigValue;
    if-eqz v14, :cond_f

    .line 341
    invoke-virtual {v13, v14}, Lcom/typesafe/config/impl/AbstractConfigObject;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v13

    .line 343
    :cond_f
    invoke-interface {v1, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .end local v3    # "key":Ljava/lang/String;
    .end local v7    # "node":Lcom/typesafe/config/impl/AbstractConfigNode;
    .end local v8    # "path":Lcom/typesafe/config/impl/Path;
    .end local v10    # "valueNode":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    .end local v11    # "newValue":Lcom/typesafe/config/impl/AbstractConfigValue;
    .end local v12    # "remaining":Lcom/typesafe/config/impl/Path;
    .end local v13    # "obj":Lcom/typesafe/config/impl/AbstractConfigObject;
    .end local v14    # "existing":Lcom/typesafe/config/impl/AbstractConfigValue;
    :goto_7
    move/from16 v3, v16

    goto :goto_8

    .line 333
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v7    # "node":Lcom/typesafe/config/impl/AbstractConfigNode;
    .restart local v8    # "path":Lcom/typesafe/config/impl/Path;
    .restart local v10    # "valueNode":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    .restart local v11    # "newValue":Lcom/typesafe/config/impl/AbstractConfigValue;
    .restart local v12    # "remaining":Lcom/typesafe/config/impl/Path;
    :cond_10
    new-instance v9, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v13, "somehow got multi-element path in JSON mode"

    invoke-direct {v9, v13}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v9

    .line 224
    .end local v7    # "node":Lcom/typesafe/config/impl/AbstractConfigNode;
    .end local v8    # "path":Lcom/typesafe/config/impl/Path;
    .end local v10    # "valueNode":Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    .end local v11    # "newValue":Lcom/typesafe/config/impl/AbstractConfigValue;
    .end local v12    # "remaining":Lcom/typesafe/config/impl/Path;
    .end local v16    # "lastWasNewline":Z
    .local v3, "lastWasNewline":Z
    :cond_11
    :goto_8
    add-int/2addr v6, v9

    goto/16 :goto_0

    .line 348
    .end local v6    # "i":I
    :cond_12
    new-instance v6, Lcom/typesafe/config/impl/SimpleConfigObject;

    invoke-direct {v6, v2, v1}, Lcom/typesafe/config/impl/SimpleConfigObject;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/Map;)V

    return-object v6
.end method

.method private parseValue(Lcom/typesafe/config/impl/AbstractConfigNodeValue;Ljava/util/List;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 4
    .param p1, "n"    # Lcom/typesafe/config/impl/AbstractConfigNodeValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/impl/AbstractConfigNodeValue;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/typesafe/config/impl/AbstractConfigValue;"
        }
    .end annotation

    .line 98
    .local p2, "comments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v0, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->arrayCount:I

    .line 100
    .local v0, "startingArrayCount":I
    instance-of v1, p1, Lcom/typesafe/config/impl/ConfigNodeSimpleValue;

    if-eqz v1, :cond_0

    .line 101
    move-object v1, p1

    check-cast v1, Lcom/typesafe/config/impl/ConfigNodeSimpleValue;

    invoke-virtual {v1}, Lcom/typesafe/config/impl/ConfigNodeSimpleValue;->value()Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v1

    .local v1, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    goto :goto_0

    .line 102
    .end local v1    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_0
    instance-of v1, p1, Lcom/typesafe/config/impl/ConfigNodeObject;

    if-eqz v1, :cond_1

    .line 103
    move-object v1, p1

    check-cast v1, Lcom/typesafe/config/impl/ConfigNodeObject;

    invoke-direct {p0, v1}, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->parseObject(Lcom/typesafe/config/impl/ConfigNodeObject;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v1

    .restart local v1    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    goto :goto_0

    .line 104
    .end local v1    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_1
    instance-of v1, p1, Lcom/typesafe/config/impl/ConfigNodeArray;

    if-eqz v1, :cond_2

    .line 105
    move-object v1, p1

    check-cast v1, Lcom/typesafe/config/impl/ConfigNodeArray;

    invoke-direct {p0, v1}, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->parseArray(Lcom/typesafe/config/impl/ConfigNodeArray;)Lcom/typesafe/config/impl/SimpleConfigList;

    move-result-object v1

    .restart local v1    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    goto :goto_0

    .line 106
    .end local v1    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_2
    instance-of v1, p1, Lcom/typesafe/config/impl/ConfigNodeConcatenation;

    if-eqz v1, :cond_5

    .line 107
    move-object v1, p1

    check-cast v1, Lcom/typesafe/config/impl/ConfigNodeConcatenation;

    invoke-direct {p0, v1}, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->parseConcatenation(Lcom/typesafe/config/impl/ConfigNodeConcatenation;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v1

    .line 112
    .restart local v1    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :goto_0
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 113
    invoke-virtual {v1}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->prependComments(Ljava/util/List;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/typesafe/config/impl/AbstractConfigValue;->withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v1

    .line 114
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 117
    :cond_3
    iget v2, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->arrayCount:I

    if-ne v2, v0, :cond_4

    .line 120
    return-object v1

    .line 118
    :cond_4
    new-instance v2, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v3, "Bug in config parser: unbalanced array count"

    invoke-direct {v2, v3}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    .end local v1    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting a value but got wrong node type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->parseError(Ljava/lang/String;)Lcom/typesafe/config/ConfigException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method parse()Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 7

    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, "result":Lcom/typesafe/config/impl/AbstractConfigValue;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v1, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 397
    .local v2, "lastWasNewLine":Z
    iget-object v3, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->document:Lcom/typesafe/config/impl/ConfigNodeRoot;

    invoke-virtual {v3}, Lcom/typesafe/config/impl/ConfigNodeRoot;->children()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/typesafe/config/impl/AbstractConfigNode;

    .line 398
    .local v4, "node":Lcom/typesafe/config/impl/AbstractConfigNode;
    instance-of v5, v4, Lcom/typesafe/config/impl/ConfigNodeComment;

    if-eqz v5, :cond_0

    .line 399
    move-object v5, v4

    check-cast v5, Lcom/typesafe/config/impl/ConfigNodeComment;

    invoke-virtual {v5}, Lcom/typesafe/config/impl/ConfigNodeComment;->commentText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    const/4 v2, 0x0

    goto :goto_3

    .line 401
    :cond_0
    instance-of v5, v4, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    if-eqz v5, :cond_3

    .line 402
    move-object v5, v4

    check-cast v5, Lcom/typesafe/config/impl/ConfigNodeSingleToken;

    invoke-virtual {v5}, Lcom/typesafe/config/impl/ConfigNodeSingleToken;->token()Lcom/typesafe/config/impl/Token;

    move-result-object v5

    .line 403
    .local v5, "t":Lcom/typesafe/config/impl/Token;
    invoke-static {v5}, Lcom/typesafe/config/impl/Tokens;->isNewline(Lcom/typesafe/config/impl/Token;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 404
    iget v6, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->lineNumber:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->lineNumber:I

    .line 405
    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 406
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 407
    :cond_1
    if-eqz v0, :cond_2

    .line 408
    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v6}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->appendComments(Ljava/util/List;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/typesafe/config/impl/AbstractConfigValue;->withOrigin(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    .line 409
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 410
    goto :goto_4

    .line 412
    :cond_2
    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    .line 414
    .end local v5    # "t":Lcom/typesafe/config/impl/Token;
    :cond_3
    instance-of v5, v4, Lcom/typesafe/config/impl/ConfigNodeComplexValue;

    if-eqz v5, :cond_4

    .line 415
    move-object v5, v4

    check-cast v5, Lcom/typesafe/config/impl/ConfigNodeComplexValue;

    invoke-direct {p0, v5, v1}, Lcom/typesafe/config/impl/ConfigParser$ParseContext;->parseValue(Lcom/typesafe/config/impl/AbstractConfigNodeValue;Ljava/util/List;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    .line 416
    const/4 v2, 0x0

    goto :goto_3

    .line 414
    :cond_4
    :goto_2
    nop

    .line 418
    .end local v4    # "node":Lcom/typesafe/config/impl/AbstractConfigNode;
    :goto_3
    goto :goto_0

    .line 419
    :cond_5
    :goto_4
    return-object v0
.end method
