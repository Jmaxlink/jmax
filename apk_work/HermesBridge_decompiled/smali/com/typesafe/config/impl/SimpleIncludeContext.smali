.class Lcom/typesafe/config/impl/SimpleIncludeContext;
.super Ljava/lang/Object;
.source "SimpleIncludeContext.java"

# interfaces
.implements Lcom/typesafe/config/ConfigIncludeContext;


# instance fields
.field private final options:Lcom/typesafe/config/ConfigParseOptions;

.field private final parseable:Lcom/typesafe/config/impl/Parseable;


# direct methods
.method constructor <init>(Lcom/typesafe/config/impl/Parseable;)V
    .locals 1
    .param p1, "parseable"    # Lcom/typesafe/config/impl/Parseable;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/typesafe/config/impl/SimpleIncludeContext;->parseable:Lcom/typesafe/config/impl/Parseable;

    .line 17
    invoke-virtual {p1}, Lcom/typesafe/config/impl/Parseable;->options()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleIncluder;->clearForInclude(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/typesafe/config/impl/SimpleIncludeContext;->options:Lcom/typesafe/config/ConfigParseOptions;

    .line 18
    return-void
.end method

.method private constructor <init>(Lcom/typesafe/config/impl/Parseable;Lcom/typesafe/config/ConfigParseOptions;)V
    .locals 0
    .param p1, "parseable"    # Lcom/typesafe/config/impl/Parseable;
    .param p2, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/typesafe/config/impl/SimpleIncludeContext;->parseable:Lcom/typesafe/config/impl/Parseable;

    .line 22
    iput-object p2, p0, Lcom/typesafe/config/impl/SimpleIncludeContext;->options:Lcom/typesafe/config/ConfigParseOptions;

    .line 23
    return-void
.end method


# virtual methods
.method public parseOptions()Lcom/typesafe/config/ConfigParseOptions;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleIncludeContext;->options:Lcom/typesafe/config/ConfigParseOptions;

    return-object v0
.end method

.method public relativeTo(Ljava/lang/String;)Lcom/typesafe/config/ConfigParseable;
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceLoadsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looking for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' relative to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleIncludeContext;->parseable:Lcom/typesafe/config/impl/Parseable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigImpl;->trace(Ljava/lang/String;)V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleIncludeContext;->parseable:Lcom/typesafe/config/impl/Parseable;

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleIncludeContext;->parseable:Lcom/typesafe/config/impl/Parseable;

    invoke-virtual {v0, p1}, Lcom/typesafe/config/impl/Parseable;->relativeTo(Ljava/lang/String;)Lcom/typesafe/config/ConfigParseable;

    move-result-object v0

    return-object v0

    .line 39
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public setParseOptions(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigIncludeContext;
    .locals 4
    .param p1, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 49
    new-instance v0, Lcom/typesafe/config/impl/SimpleIncludeContext;

    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleIncludeContext;->parseable:Lcom/typesafe/config/impl/Parseable;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/typesafe/config/ConfigParseOptions;->setSyntax(Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/typesafe/config/ConfigParseOptions;->setOriginDescription(Ljava/lang/String;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/typesafe/config/impl/SimpleIncludeContext;-><init>(Lcom/typesafe/config/impl/Parseable;Lcom/typesafe/config/ConfigParseOptions;)V

    return-object v0
.end method

.method withParseable(Lcom/typesafe/config/impl/Parseable;)Lcom/typesafe/config/impl/SimpleIncludeContext;
    .locals 1
    .param p1, "parseable"    # Lcom/typesafe/config/impl/Parseable;

    .line 26
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleIncludeContext;->parseable:Lcom/typesafe/config/impl/Parseable;

    if-ne p1, v0, :cond_0

    .line 27
    return-object p0

    .line 29
    :cond_0
    new-instance v0, Lcom/typesafe/config/impl/SimpleIncludeContext;

    invoke-direct {v0, p1}, Lcom/typesafe/config/impl/SimpleIncludeContext;-><init>(Lcom/typesafe/config/impl/Parseable;)V

    return-object v0
.end method
