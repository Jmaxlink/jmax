.class Lcom/typesafe/config/impl/Parseable$ParseableURL;
.super Lcom/typesafe/config/impl/Parseable;
.source "Parseable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/typesafe/config/impl/Parseable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseableURL"
.end annotation


# instance fields
.field private contentType:Ljava/lang/String;

.field protected final input:Ljava/net/URL;


# direct methods
.method protected constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "input"    # Ljava/net/URL;

    .line 488
    invoke-direct {p0}, Lcom/typesafe/config/impl/Parseable;-><init>()V

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/typesafe/config/impl/Parseable$ParseableURL;->contentType:Ljava/lang/String;

    .line 489
    iput-object p1, p0, Lcom/typesafe/config/impl/Parseable$ParseableURL;->input:Ljava/net/URL;

    .line 491
    return-void
.end method

.method constructor <init>(Ljava/net/URL;Lcom/typesafe/config/ConfigParseOptions;)V
    .locals 0
    .param p1, "input"    # Ljava/net/URL;
    .param p2, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 494
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/Parseable$ParseableURL;-><init>(Ljava/net/URL;)V

    .line 495
    invoke-virtual {p0, p2}, Lcom/typesafe/config/impl/Parseable$ParseableURL;->postConstruct(Lcom/typesafe/config/ConfigParseOptions;)V

    .line 496
    return-void
.end method

.method private static acceptContentType(Lcom/typesafe/config/ConfigParseOptions;)Ljava/lang/String;
    .locals 3
    .param p0, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 504
    invoke-virtual {p0}, Lcom/typesafe/config/ConfigParseOptions;->getSyntax()Lcom/typesafe/config/ConfigSyntax;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 505
    return-object v1

    .line 507
    :cond_0
    sget-object v0, Lcom/typesafe/config/impl/Parseable$3;->$SwitchMap$com$typesafe$config$ConfigSyntax:[I

    invoke-virtual {p0}, Lcom/typesafe/config/ConfigParseOptions;->getSyntax()Lcom/typesafe/config/ConfigSyntax;

    move-result-object v2

    invoke-virtual {v2}, Lcom/typesafe/config/ConfigSyntax;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 517
    return-object v1

    .line 513
    :pswitch_0
    const-string v0, "text/x-java-properties"

    return-object v0

    .line 511
    :pswitch_1
    const-string v0, "application/hocon"

    return-object v0

    .line 509
    :pswitch_2
    const-string v0, "application/json"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method contentType()Lcom/typesafe/config/ConfigSyntax;
    .locals 3

    .line 571
    iget-object v0, p0, Lcom/typesafe/config/impl/Parseable$ParseableURL;->contentType:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 572
    iget-object v0, p0, Lcom/typesafe/config/impl/Parseable$ParseableURL;->contentType:Ljava/lang/String;

    const-string v2, "application/json"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    sget-object v0, Lcom/typesafe/config/ConfigSyntax;->JSON:Lcom/typesafe/config/ConfigSyntax;

    return-object v0

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/typesafe/config/impl/Parseable$ParseableURL;->contentType:Ljava/lang/String;

    const-string v2, "text/x-java-properties"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    sget-object v0, Lcom/typesafe/config/ConfigSyntax;->PROPERTIES:Lcom/typesafe/config/ConfigSyntax;

    return-object v0

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/typesafe/config/impl/Parseable$ParseableURL;->contentType:Ljava/lang/String;

    const-string v2, "application/hocon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 577
    sget-object v0, Lcom/typesafe/config/ConfigSyntax;->CONF:Lcom/typesafe/config/ConfigSyntax;

    return-object v0

    .line 579
    :cond_2
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceLoadsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/typesafe/config/impl/Parseable$ParseableURL;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' isn\'t a known content type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/impl/Parseable$ParseableURL;->trace(Ljava/lang/String;)V

    .line 581
    :cond_3
    return-object v1

    .line 584
    :cond_4
    return-object v1
.end method

.method protected createOrigin()Lcom/typesafe/config/ConfigOrigin;
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/typesafe/config/impl/Parseable$ParseableURL;->input:Ljava/net/URL;

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->newURL(Ljava/net/URL;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    return-object v0
.end method

.method guessSyntax()Lcom/typesafe/config/ConfigSyntax;
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/typesafe/config/impl/Parseable$ParseableURL;->input:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

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

    .line 500
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "reader() without options should not be called on ParseableURL"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected reader(Lcom/typesafe/config/ConfigParseOptions;)Ljava/io/Reader;
    .locals 5
    .param p1, "options"    # Lcom/typesafe/config/ConfigParseOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 523
    :try_start_0
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceLoadsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading config from a URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/typesafe/config/impl/Parseable$ParseableURL;->input:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/impl/Parseable$ParseableURL;->trace(Ljava/lang/String;)V

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/typesafe/config/impl/Parseable$ParseableURL;->input:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 528
    .local v0, "connection":Ljava/net/URLConnection;
    invoke-static {p1}, Lcom/typesafe/config/impl/Parseable$ParseableURL;->acceptContentType(Lcom/typesafe/config/ConfigParseOptions;)Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, "acceptContent":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 530
    const-string v2, "Accept"

    invoke-virtual {v0, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :cond_1
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 536
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/typesafe/config/impl/Parseable$ParseableURL;->contentType:Ljava/lang/String;

    .line 537
    iget-object v2, p0, Lcom/typesafe/config/impl/Parseable$ParseableURL;->contentType:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 538
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceLoadsEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL sets Content-Type: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/typesafe/config/impl/Parseable$ParseableURL;->contentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/typesafe/config/impl/Parseable$ParseableURL;->trace(Ljava/lang/String;)V

    .line 540
    :cond_2
    iget-object v2, p0, Lcom/typesafe/config/impl/Parseable$ParseableURL;->contentType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/typesafe/config/impl/Parseable$ParseableURL;->contentType:Ljava/lang/String;

    .line 541
    iget-object v2, p0, Lcom/typesafe/config/impl/Parseable$ParseableURL;->contentType:Ljava/lang/String;

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 542
    .local v2, "semi":I
    if-ltz v2, :cond_3

    .line 543
    iget-object v3, p0, Lcom/typesafe/config/impl/Parseable$ParseableURL;->contentType:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/typesafe/config/impl/Parseable$ParseableURL;->contentType:Ljava/lang/String;

    .line 546
    .end local v2    # "semi":I
    :cond_3
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 548
    .local v2, "stream":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/typesafe/config/impl/Parseable;->access$000(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 559
    .end local v0    # "connection":Ljava/net/URLConnection;
    .end local v1    # "acceptContent":Ljava/lang/String;
    .end local v2    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot load config from URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/typesafe/config/impl/Parseable$ParseableURL;->input:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 549
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 558
    .local v0, "fnf":Ljava/io/FileNotFoundException;
    throw v0
.end method

.method relativeTo(Ljava/lang/String;)Lcom/typesafe/config/ConfigParseable;
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .line 590
    iget-object v0, p0, Lcom/typesafe/config/impl/Parseable$ParseableURL;->input:Ljava/net/URL;

    invoke-static {v0, p1}, Lcom/typesafe/config/impl/Parseable$ParseableURL;->relativeTo(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 591
    .local v0, "url":Ljava/net/URL;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 592
    return-object v1

    .line 593
    :cond_0
    invoke-virtual {p0}, Lcom/typesafe/config/impl/Parseable$ParseableURL;->options()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/typesafe/config/ConfigParseOptions;->setOriginDescription(Ljava/lang/String;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/typesafe/config/impl/Parseable$ParseableURL;->newURL(Ljava/net/URL;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 603
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

    iget-object v1, p0, Lcom/typesafe/config/impl/Parseable$ParseableURL;->input:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

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
