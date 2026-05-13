.class final Lcom/typesafe/config/impl/Parseable$ParseableFile;
.super Lcom/typesafe/config/impl/Parseable;
.source "Parseable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/Parseable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParseableFile"
.end annotation


# instance fields
.field private final input:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/typesafe/config/ConfigParseOptions;)V
    .locals 0
    .param p1, "input"    # Ljava/io/File;
    .param p2, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 620
    invoke-direct {p0}, Lcom/typesafe/config/impl/Parseable;-><init>()V

    .line 621
    iput-object p1, p0, Lcom/typesafe/config/impl/Parseable$ParseableFile;->input:Ljava/io/File;

    .line 622
    invoke-virtual {p0, p2}, Lcom/typesafe/config/impl/Parseable$ParseableFile;->postConstruct(Lcom/typesafe/config/ConfigParseOptions;)V

    .line 623
    return-void
.end method


# virtual methods
.method protected createOrigin()Lcom/typesafe/config/ConfigOrigin;
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/typesafe/config/impl/Parseable$ParseableFile;->input:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->newFile(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    return-object v0
.end method

.method guessSyntax()Lcom/typesafe/config/ConfigSyntax;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/typesafe/config/impl/Parseable$ParseableFile;->input:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigImplUtil;->syntaxFromExtension(Ljava/lang/String;)Lcom/typesafe/config/ConfigSyntax;

    move-result-object v0

    return-object v0
.end method

.method protected reader()Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 627
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceLoadsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading config from a file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/impl/Parseable$ParseableFile;->input:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/impl/Parseable$ParseableFile;->trace(Ljava/lang/String;)V

    .line 629
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/typesafe/config/impl/Parseable$ParseableFile;->input:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 630
    .local v0, "stream":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/typesafe/config/impl/Parseable;->access$000(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v1

    return-object v1
.end method

.method relativeTo(Ljava/lang/String;)Lcom/typesafe/config/ConfigParseable;
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;

    .line 641
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "sibling":Ljava/io/File;
    goto :goto_0

    .line 645
    .end local v0    # "sibling":Ljava/io/File;
    :cond_0
    iget-object v0, p0, Lcom/typesafe/config/impl/Parseable$ParseableFile;->input:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/typesafe/config/impl/Parseable$ParseableFile;->relativeTo(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 647
    .restart local v0    # "sibling":Ljava/io/File;
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 648
    return-object v1

    .line 649
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 650
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exists, so loading it as a file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/typesafe/config/impl/Parseable$ParseableFile;->trace(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0}, Lcom/typesafe/config/impl/Parseable$ParseableFile;->options()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/typesafe/config/ConfigParseOptions;->setOriginDescription(Ljava/lang/String;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/typesafe/config/impl/Parseable$ParseableFile;->newFile(Ljava/io/File;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;

    move-result-object v1

    return-object v1

    .line 653
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist, so trying it as a classpath resource"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/typesafe/config/impl/Parseable$ParseableFile;->trace(Ljava/lang/String;)V

    .line 654
    invoke-super {p0, p1}, Lcom/typesafe/config/impl/Parseable;->relativeTo(Ljava/lang/String;)Lcom/typesafe/config/ConfigParseable;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 665
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

    iget-object v1, p0, Lcom/typesafe/config/impl/Parseable$ParseableFile;->input:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
