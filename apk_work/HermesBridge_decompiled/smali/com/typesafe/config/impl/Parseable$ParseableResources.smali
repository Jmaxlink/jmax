.class final Lcom/typesafe/config/impl/Parseable$ParseableResources;
.super Lcom/typesafe/config/impl/Parseable;
.source "Parseable.java"

# interfaces
.implements Lcom/typesafe/config/impl/Parseable$Relativizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/Parseable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParseableResources"
.end annotation


# instance fields
.field private final resource:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)V
    .locals 0
    .param p1, "resource"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 704
    invoke-direct {p0}, Lcom/typesafe/config/impl/Parseable;-><init>()V

    .line 705
    iput-object p1, p0, Lcom/typesafe/config/impl/Parseable$ParseableResources;->resource:Ljava/lang/String;

    .line 706
    invoke-virtual {p0, p2}, Lcom/typesafe/config/impl/Parseable$ParseableResources;->postConstruct(Lcom/typesafe/config/ConfigParseOptions;)V

    .line 707
    return-void
.end method

.method static parent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "resource"    # Ljava/lang/String;

    .line 756
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 757
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 758
    const/4 v1, 0x0

    return-object v1

    .line 760
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected createOrigin()Lcom/typesafe/config/ConfigOrigin;
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/typesafe/config/impl/Parseable$ParseableResources;->resource:Ljava/lang/String;

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->newResource(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    return-object v0
.end method

.method guessSyntax()Lcom/typesafe/config/ConfigSyntax;
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/typesafe/config/impl/Parseable$ParseableResources;->resource:Ljava/lang/String;

    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigImplUtil;->syntaxFromExtension(Ljava/lang/String;)Lcom/typesafe/config/ConfigSyntax;

    move-result-object v0

    return-object v0
.end method

.method protected rawParseValue(Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 6
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "finalOptions"    # Lcom/typesafe/config/ConfigParseOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 717
    invoke-virtual {p2}, Lcom/typesafe/config/ConfigParseOptions;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 718
    .local v0, "loader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_4

    .line 721
    iget-object v1, p0, Lcom/typesafe/config/impl/Parseable$ParseableResources;->resource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 722
    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    .line 723
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceLoadsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 724
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading config from class loader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but there were no resources called "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/typesafe/config/impl/Parseable$ParseableResources;->resource:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/typesafe/config/impl/Parseable$ParseableResources;->trace(Ljava/lang/String;)V

    .line 726
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resource not found on classpath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/typesafe/config/impl/Parseable$ParseableResources;->resource:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 728
    :cond_1
    invoke-static {p1}, Lcom/typesafe/config/impl/SimpleConfigObject;->empty(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object v2

    .line 729
    .local v2, "merged":Lcom/typesafe/config/impl/AbstractConfigObject;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 730
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URL;

    .line 732
    .local v3, "url":Ljava/net/URL;
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceLoadsEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 733
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading config from resource \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/typesafe/config/impl/Parseable$ParseableResources;->resource:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from class loader "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/typesafe/config/impl/Parseable$ParseableResources;->trace(Ljava/lang/String;)V

    .line 736
    :cond_2
    iget-object v4, p0, Lcom/typesafe/config/impl/Parseable$ParseableResources;->resource:Ljava/lang/String;

    invoke-static {v3, p2, v4, p0}, Lcom/typesafe/config/impl/Parseable;->access$100(Ljava/net/URL;Lcom/typesafe/config/ConfigParseOptions;Ljava/lang/String;Lcom/typesafe/config/impl/Parseable$Relativizer;)Lcom/typesafe/config/impl/Parseable;

    move-result-object v4

    .line 738
    .local v4, "element":Lcom/typesafe/config/impl/Parseable;
    invoke-virtual {v4}, Lcom/typesafe/config/impl/Parseable;->parseValue()Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v5

    .line 740
    .local v5, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-virtual {v2, v5}, Lcom/typesafe/config/impl/AbstractConfigObject;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v2

    .line 741
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "element":Lcom/typesafe/config/impl/Parseable;
    .end local v5    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    goto :goto_0

    .line 743
    :cond_3
    return-object v2

    .line 719
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    .end local v2    # "merged":Lcom/typesafe/config/impl/AbstractConfigObject;
    :cond_4
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v2, "null class loader; pass in a class loader or use Thread.currentThread().setContextClassLoader()"

    invoke-direct {v1, v2}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected bridge synthetic rawParseValue(Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 701
    invoke-virtual {p0, p1, p2}, Lcom/typesafe/config/impl/Parseable$ParseableResources;->rawParseValue(Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object p1

    return-object p1
.end method

.method protected reader()Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 711
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "reader() should not be called on resources"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public relativeTo(Ljava/lang/String;)Lcom/typesafe/config/ConfigParseable;
    .locals 4
    .param p1, "sibling"    # Ljava/lang/String;

    .line 766
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 769
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/typesafe/config/impl/Parseable$ParseableResources;->options()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/typesafe/config/ConfigParseOptions;->setOriginDescription(Ljava/lang/String;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/typesafe/config/impl/Parseable$ParseableResources;->newResources(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;

    move-result-object v0

    return-object v0

    .line 776
    :cond_0
    iget-object v1, p0, Lcom/typesafe/config/impl/Parseable$ParseableResources;->resource:Ljava/lang/String;

    invoke-static {v1}, Lcom/typesafe/config/impl/Parseable$ParseableResources;->parent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 777
    .local v1, "parent":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 778
    invoke-virtual {p0}, Lcom/typesafe/config/impl/Parseable$ParseableResources;->options()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/typesafe/config/ConfigParseOptions;->setOriginDescription(Ljava/lang/String;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/typesafe/config/impl/Parseable$ParseableResources;->newResources(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;

    move-result-object v0

    return-object v0

    .line 780
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/typesafe/config/impl/Parseable$ParseableResources;->options()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v3

    .line 781
    invoke-virtual {v3, v2}, Lcom/typesafe/config/ConfigParseOptions;->setOriginDescription(Ljava/lang/String;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v2

    .line 780
    invoke-static {v0, v2}, Lcom/typesafe/config/impl/Parseable$ParseableResources;->newResources(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/impl/Parseable$ParseableResources;->resource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
