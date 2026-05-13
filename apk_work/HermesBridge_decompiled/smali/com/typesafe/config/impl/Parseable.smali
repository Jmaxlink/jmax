.class public abstract Lcom/typesafe/config/impl/Parseable;
.super Ljava/lang/Object;
.source "Parseable.java"

# interfaces
.implements Lcom/typesafe/config/ConfigParseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/typesafe/config/impl/Parseable$ParseableProperties;,
        Lcom/typesafe/config/impl/Parseable$ParseableResources;,
        Lcom/typesafe/config/impl/Parseable$ParseableResourceURL;,
        Lcom/typesafe/config/impl/Parseable$ParseableFile;,
        Lcom/typesafe/config/impl/Parseable$ParseableURL;,
        Lcom/typesafe/config/impl/Parseable$ParseableString;,
        Lcom/typesafe/config/impl/Parseable$ParseableReader;,
        Lcom/typesafe/config/impl/Parseable$ParseableNotFound;,
        Lcom/typesafe/config/impl/Parseable$Relativizer;
    }
.end annotation


# static fields
.field private static final MAX_INCLUDE_DEPTH:I = 0x32

.field private static final hoconContentType:Ljava/lang/String; = "application/hocon"

.field private static final jsonContentType:Ljava/lang/String; = "application/json"

.field private static final parseStack:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/LinkedList<",
            "Lcom/typesafe/config/impl/Parseable;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final propertiesContentType:Ljava/lang/String; = "text/x-java-properties"


# instance fields
.field private includeContext:Lcom/typesafe/config/ConfigIncludeContext;

.field private initialOptions:Lcom/typesafe/config/ConfigParseOptions;

.field private initialOrigin:Lcom/typesafe/config/ConfigOrigin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/typesafe/config/impl/Parseable$1;

    invoke-direct {v0}, Lcom/typesafe/config/impl/Parseable$1;-><init>()V

    sput-object v0, Lcom/typesafe/config/impl/Parseable;->parseStack:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;

    .line 36
    invoke-static {p0}, Lcom/typesafe/config/impl/Parseable;->readerFromStream(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/net/URL;Lcom/typesafe/config/ConfigParseOptions;Ljava/lang/String;Lcom/typesafe/config/impl/Parseable$Relativizer;)Lcom/typesafe/config/impl/Parseable;
    .locals 1
    .param p0, "x0"    # Ljava/net/URL;
    .param p1, "x1"    # Lcom/typesafe/config/ConfigParseOptions;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/typesafe/config/impl/Parseable$Relativizer;

    .line 36
    invoke-static {p0, p1, p2, p3}, Lcom/typesafe/config/impl/Parseable;->newResourceURL(Ljava/net/URL;Lcom/typesafe/config/ConfigParseOptions;Ljava/lang/String;Lcom/typesafe/config/impl/Parseable$Relativizer;)Lcom/typesafe/config/impl/Parseable;

    move-result-object v0

    return-object v0
.end method

.method private static convertResourceName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 808
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 810
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 812
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 813
    .local v1, "className":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 814
    .local v3, "i":I
    if-gez v3, :cond_1

    .line 816
    return-object p1

    .line 819
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 820
    .local v4, "packageName":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 821
    .local v2, "packagePath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static doNotClose(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 1
    .param p0, "input"    # Ljava/io/Reader;

    .line 347
    new-instance v0, Lcom/typesafe/config/impl/Parseable$2;

    invoke-direct {v0, p0}, Lcom/typesafe/config/impl/Parseable$2;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method private fixupOptions(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigParseOptions;
    .locals 3
    .param p1, "baseOptions"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 61
    invoke-virtual {p1}, Lcom/typesafe/config/ConfigParseOptions;->getSyntax()Lcom/typesafe/config/ConfigSyntax;

    move-result-object v0

    .line 62
    .local v0, "syntax":Lcom/typesafe/config/ConfigSyntax;
    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/typesafe/config/impl/Parseable;->guessSyntax()Lcom/typesafe/config/ConfigSyntax;

    move-result-object v0

    .line 65
    :cond_0
    if-nez v0, :cond_1

    .line 66
    sget-object v0, Lcom/typesafe/config/ConfigSyntax;->CONF:Lcom/typesafe/config/ConfigSyntax;

    .line 68
    :cond_1
    invoke-virtual {p1, v0}, Lcom/typesafe/config/ConfigParseOptions;->setSyntax(Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v1

    .line 71
    .local v1, "modified":Lcom/typesafe/config/ConfigParseOptions;
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->defaultIncluder()Lcom/typesafe/config/ConfigIncluder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/typesafe/config/ConfigParseOptions;->appendIncluder(Lcom/typesafe/config/ConfigIncluder;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lcom/typesafe/config/ConfigParseOptions;->getIncluder()Lcom/typesafe/config/ConfigIncluder;

    move-result-object v2

    invoke-static {v2}, Lcom/typesafe/config/impl/SimpleIncluder;->makeFull(Lcom/typesafe/config/ConfigIncluder;)Lcom/typesafe/config/impl/FullIncluder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/typesafe/config/ConfigParseOptions;->setIncluder(Lcom/typesafe/config/ConfigIncluder;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v1

    .line 75
    return-object v1
.end method

.method static forceParsedToObject(Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/AbstractConfigObject;
    .locals 5
    .param p0, "value"    # Lcom/typesafe/config/ConfigValue;

    .line 132
    instance-of v0, p0, Lcom/typesafe/config/impl/AbstractConfigObject;

    if-eqz v0, :cond_0

    .line 133
    move-object v0, p0

    check-cast v0, Lcom/typesafe/config/impl/AbstractConfigObject;

    return-object v0

    .line 135
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$WrongType;

    invoke-interface {p0}, Lcom/typesafe/config/ConfigValue;->origin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v1

    .line 136
    invoke-interface {p0}, Lcom/typesafe/config/ConfigValue;->valueType()Lcom/typesafe/config/ConfigValueType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/typesafe/config/ConfigValueType;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, "object at file root"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/typesafe/config/ConfigException$WrongType;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static newFile(Ljava/io/File;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;
    .locals 1
    .param p0, "input"    # Ljava/io/File;
    .param p1, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 670
    new-instance v0, Lcom/typesafe/config/impl/Parseable$ParseableFile;

    invoke-direct {v0, p0, p1}, Lcom/typesafe/config/impl/Parseable$ParseableFile;-><init>(Ljava/io/File;Lcom/typesafe/config/ConfigParseOptions;)V

    return-object v0
.end method

.method public static newNotFound(Ljava/lang/String;Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;
    .locals 1
    .param p0, "whatNotFound"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 419
    new-instance v0, Lcom/typesafe/config/impl/Parseable$ParseableNotFound;

    invoke-direct {v0, p0, p1, p2}, Lcom/typesafe/config/impl/Parseable$ParseableNotFound;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)V

    return-object v0
.end method

.method public static newProperties(Ljava/util/Properties;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;
    .locals 1
    .param p0, "properties"    # Ljava/util/Properties;
    .param p1, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 871
    new-instance v0, Lcom/typesafe/config/impl/Parseable$ParseableProperties;

    invoke-direct {v0, p0, p1}, Lcom/typesafe/config/impl/Parseable$ParseableProperties;-><init>(Ljava/util/Properties;Lcom/typesafe/config/ConfigParseOptions;)V

    return-object v0
.end method

.method public static newReader(Ljava/io/Reader;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;
    .locals 2
    .param p0, "reader"    # Ljava/io/Reader;
    .param p1, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 447
    new-instance v0, Lcom/typesafe/config/impl/Parseable$ParseableReader;

    invoke-static {p0}, Lcom/typesafe/config/impl/Parseable;->doNotClose(Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/typesafe/config/impl/Parseable$ParseableReader;-><init>(Ljava/io/Reader;Lcom/typesafe/config/ConfigParseOptions;)V

    return-object v0
.end method

.method private static newResourceURL(Ljava/net/URL;Lcom/typesafe/config/ConfigParseOptions;Ljava/lang/String;Lcom/typesafe/config/impl/Parseable$Relativizer;)Lcom/typesafe/config/impl/Parseable;
    .locals 1
    .param p0, "input"    # Ljava/net/URL;
    .param p1, "options"    # Lcom/typesafe/config/ConfigParseOptions;
    .param p2, "resource"    # Ljava/lang/String;
    .param p3, "relativizer"    # Lcom/typesafe/config/impl/Parseable$Relativizer;

    .line 698
    new-instance v0, Lcom/typesafe/config/impl/Parseable$ParseableResourceURL;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/typesafe/config/impl/Parseable$ParseableResourceURL;-><init>(Ljava/net/URL;Lcom/typesafe/config/ConfigParseOptions;Ljava/lang/String;Lcom/typesafe/config/impl/Parseable$Relativizer;)V

    return-object v0
.end method

.method public static newResources(Ljava/lang/Class;Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;
    .locals 2
    .param p1, "resource"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/typesafe/config/ConfigParseOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Lcom/typesafe/config/ConfigParseOptions;",
            ")",
            "Lcom/typesafe/config/impl/Parseable;"
        }
    .end annotation

    .line 797
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lcom/typesafe/config/impl/Parseable;->convertResourceName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 798
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/typesafe/config/ConfigParseOptions;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v1

    .line 797
    invoke-static {v0, v1}, Lcom/typesafe/config/impl/Parseable;->newResources(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;

    move-result-object v0

    return-object v0
.end method

.method public static newResources(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;
    .locals 2
    .param p0, "resource"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 827
    invoke-virtual {p1}, Lcom/typesafe/config/ConfigParseOptions;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 830
    new-instance v0, Lcom/typesafe/config/impl/Parseable$ParseableResources;

    invoke-direct {v0, p0, p1}, Lcom/typesafe/config/impl/Parseable$ParseableResources;-><init>(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)V

    return-object v0

    .line 828
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "null class loader; pass in a class loader or use Thread.currentThread().setContextClassLoader()"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newString(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 477
    new-instance v0, Lcom/typesafe/config/impl/Parseable$ParseableString;

    invoke-direct {v0, p0, p1}, Lcom/typesafe/config/impl/Parseable$ParseableString;-><init>(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)V

    return-object v0
.end method

.method public static newURL(Ljava/net/URL;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;
    .locals 2
    .param p0, "input"    # Ljava/net/URL;
    .param p1, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 610
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImplUtil;->urlToFile(Ljava/net/URL;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/typesafe/config/impl/Parseable;->newFile(Ljava/io/File;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;

    move-result-object v0

    return-object v0

    .line 613
    :cond_0
    new-instance v0, Lcom/typesafe/config/impl/Parseable$ParseableURL;

    invoke-direct {v0, p0, p1}, Lcom/typesafe/config/impl/Parseable$ParseableURL;-><init>(Ljava/net/URL;Lcom/typesafe/config/ConfigParseOptions;)V

    return-object v0
.end method

.method private final parseDocument(Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/parser/ConfigDocument;
    .locals 5
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "finalOptions"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 214
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/typesafe/config/impl/Parseable;->rawParseDocument(Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/parser/ConfigDocument;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p2}, Lcom/typesafe/config/ConfigParseOptions;->getAllowMissing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    new-instance v2, Lcom/typesafe/config/impl/ConfigNodeObject;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v3}, Lcom/typesafe/config/impl/ConfigNodeObject;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v2, Lcom/typesafe/config/impl/SimpleConfigDocument;

    new-instance v3, Lcom/typesafe/config/impl/ConfigNodeRoot;

    invoke-direct {v3, v1, p1}, Lcom/typesafe/config/impl/ConfigNodeRoot;-><init>(Ljava/util/Collection;Lcom/typesafe/config/ConfigOrigin;)V

    invoke-direct {v2, v3, p2}, Lcom/typesafe/config/impl/SimpleConfigDocument;-><init>(Lcom/typesafe/config/impl/ConfigNodeRoot;Lcom/typesafe/config/ConfigParseOptions;)V

    return-object v2

    .line 221
    .end local v1    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/typesafe/config/impl/AbstractConfigNode;>;"
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/typesafe/config/ConfigOrigin;->description()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 222
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-static {v1}, Lcom/typesafe/config/impl/Parseable;->trace(Ljava/lang/String;)V

    .line 223
    new-instance v1, Lcom/typesafe/config/ConfigException$IO;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Lcom/typesafe/config/ConfigException$IO;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final parseValue(Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 5
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "finalOptions"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 180
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/typesafe/config/impl/Parseable;->rawParseValue(Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p2}, Lcom/typesafe/config/ConfigParseOptions;->getAllowMissing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Allowing Missing File, this can be turned off by setting ConfigParseOptions.allowMissing = false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/typesafe/config/impl/Parseable;->trace(Ljava/lang/String;)V

    .line 185
    invoke-static {p1}, Lcom/typesafe/config/impl/SimpleConfigObject;->emptyMissing(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object v1

    return-object v1

    .line 187
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/typesafe/config/ConfigOrigin;->description()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 188
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-static {v1}, Lcom/typesafe/config/impl/Parseable;->trace(Ljava/lang/String;)V

    .line 189
    new-instance v1, Lcom/typesafe/config/ConfigException$IO;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Lcom/typesafe/config/ConfigException$IO;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private rawParseDocument(Ljava/io/Reader;Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/parser/ConfigDocument;
    .locals 3
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p3, "finalOptions"    # Lcom/typesafe/config/ConfigParseOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    invoke-virtual {p3}, Lcom/typesafe/config/ConfigParseOptions;->getSyntax()Lcom/typesafe/config/ConfigSyntax;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/typesafe/config/impl/Tokenizer;->tokenize(Lcom/typesafe/config/ConfigOrigin;Ljava/io/Reader;Lcom/typesafe/config/ConfigSyntax;)Ljava/util/Iterator;

    move-result-object v0

    .line 297
    .local v0, "tokens":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/typesafe/config/impl/Token;>;"
    new-instance v1, Lcom/typesafe/config/impl/SimpleConfigDocument;

    invoke-static {v0, p2, p3}, Lcom/typesafe/config/impl/ConfigDocumentParser;->parse(Ljava/util/Iterator;Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/ConfigNodeRoot;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Lcom/typesafe/config/impl/SimpleConfigDocument;-><init>(Lcom/typesafe/config/impl/ConfigNodeRoot;Lcom/typesafe/config/ConfigParseOptions;)V

    return-object v1
.end method

.method private rawParseValue(Ljava/io/Reader;Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 3
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p3, "finalOptions"    # Lcom/typesafe/config/ConfigParseOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    invoke-virtual {p3}, Lcom/typesafe/config/ConfigParseOptions;->getSyntax()Lcom/typesafe/config/ConfigSyntax;

    move-result-object v0

    sget-object v1, Lcom/typesafe/config/ConfigSyntax;->PROPERTIES:Lcom/typesafe/config/ConfigSyntax;

    if-ne v0, v1, :cond_0

    .line 259
    invoke-static {p1, p2}, Lcom/typesafe/config/impl/PropertiesParser;->parse(Ljava/io/Reader;Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    return-object v0

    .line 261
    :cond_0
    invoke-virtual {p3}, Lcom/typesafe/config/ConfigParseOptions;->getSyntax()Lcom/typesafe/config/ConfigSyntax;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/typesafe/config/impl/Tokenizer;->tokenize(Lcom/typesafe/config/ConfigOrigin;Ljava/io/Reader;Lcom/typesafe/config/ConfigSyntax;)Ljava/util/Iterator;

    move-result-object v0

    .line 262
    .local v0, "tokens":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/typesafe/config/impl/Token;>;"
    invoke-static {v0, p2, p3}, Lcom/typesafe/config/impl/ConfigDocumentParser;->parse(Ljava/util/Iterator;Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/ConfigNodeRoot;

    move-result-object v1

    .line 263
    .local v1, "document":Lcom/typesafe/config/impl/ConfigNodeRoot;
    invoke-virtual {p0}, Lcom/typesafe/config/impl/Parseable;->includeContext()Lcom/typesafe/config/ConfigIncludeContext;

    move-result-object v2

    invoke-static {v1, p2, p3, v2}, Lcom/typesafe/config/impl/ConfigParser;->parse(Lcom/typesafe/config/impl/ConfigNodeRoot;Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/ConfigParseOptions;Lcom/typesafe/config/ConfigIncludeContext;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v2

    return-object v2
.end method

.method private static readerFromStream(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;

    .line 330
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/typesafe/config/impl/Parseable;->readerFromStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method private static readerFromStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;

    .line 339
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 340
    .local v0, "reader":Ljava/io/Reader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 341
    .end local v0    # "reader":Ljava/io/Reader;
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v2, "Java runtime does not support UTF-8"

    invoke-direct {v1, v2, v0}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static relativeTo(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "filename"    # Ljava/lang/String;

    .line 381
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    .local v0, "child":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 384
    return-object v2

    .line 386
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 388
    .local v1, "parent":Ljava/io/File;
    if-nez v1, :cond_1

    .line 389
    return-object v2

    .line 391
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method static relativeTo(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "filename"    # Ljava/lang/String;

    .line 357
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 358
    return-object v1

    .line 361
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    .line 362
    .local v0, "siblingURI":Ljava/net/URI;
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 368
    .local v2, "relative":Ljava/net/URI;
    invoke-virtual {v0, v2}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .local v1, "resolved":Ljava/net/URL;
    return-object v1

    .line 375
    .end local v0    # "siblingURI":Ljava/net/URI;
    .end local v1    # "resolved":Ljava/net/URL;
    .end local v2    # "relative":Ljava/net/URI;
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return-object v1

    .line 373
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 374
    .local v0, "e":Ljava/net/URISyntaxException;
    return-object v1

    .line 371
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :catch_2
    move-exception v0

    .line 372
    .local v0, "e":Ljava/net/MalformedURLException;
    return-object v1
.end method

.method protected static trace(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceLoadsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImpl;->trace(Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method contentType()Lcom/typesafe/config/ConfigSyntax;
    .locals 1

    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract createOrigin()Lcom/typesafe/config/ConfigOrigin;
.end method

.method guessSyntax()Lcom/typesafe/config/ConfigSyntax;
    .locals 1

    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method includeContext()Lcom/typesafe/config/ConfigIncludeContext;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/typesafe/config/impl/Parseable;->includeContext:Lcom/typesafe/config/ConfigIncludeContext;

    return-object v0
.end method

.method public options()Lcom/typesafe/config/ConfigParseOptions;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/typesafe/config/impl/Parseable;->initialOptions:Lcom/typesafe/config/ConfigParseOptions;

    return-object v0
.end method

.method public final origin()Lcom/typesafe/config/ConfigOrigin;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/typesafe/config/impl/Parseable;->initialOrigin:Lcom/typesafe/config/ConfigOrigin;

    return-object v0
.end method

.method public parse()Lcom/typesafe/config/ConfigObject;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/typesafe/config/impl/Parseable;->options()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/typesafe/config/impl/Parseable;->parseValue(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/impl/Parseable;->forceParsedToObject(Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigObject;
    .locals 5
    .param p1, "baseOptions"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 143
    sget-object v0, Lcom/typesafe/config/impl/Parseable;->parseStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 144
    .local v0, "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/typesafe/config/impl/Parseable;>;"
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_2

    .line 150
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 152
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/Parseable;->parseValue(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v1

    invoke-static {v1}, Lcom/typesafe/config/impl/Parseable;->forceParsedToObject(Lcom/typesafe/config/ConfigValue;)Lcom/typesafe/config/impl/AbstractConfigObject;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 155
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    sget-object v2, Lcom/typesafe/config/impl/Parseable;->parseStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 152
    :cond_0
    return-object v1

    .line 154
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 155
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    sget-object v2, Lcom/typesafe/config/impl/Parseable;->parseStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 158
    :cond_1
    throw v1

    .line 145
    :cond_2
    new-instance v1, Lcom/typesafe/config/ConfigException$Parse;

    iget-object v2, p0, Lcom/typesafe/config/impl/Parseable;->initialOrigin:Lcom/typesafe/config/ConfigOrigin;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "include statements nested more than 50 times, you probably have a cycle in your includes. Trace: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/typesafe/config/ConfigException$Parse;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;)V

    throw v1
.end method

.method public parseConfigDocument()Lcom/typesafe/config/parser/ConfigDocument;
    .locals 1

    .line 305
    invoke-virtual {p0}, Lcom/typesafe/config/impl/Parseable;->options()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/typesafe/config/impl/Parseable;->parseDocument(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/parser/ConfigDocument;

    move-result-object v0

    return-object v0
.end method

.method final parseDocument(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/parser/ConfigDocument;
    .locals 3
    .param p1, "baseOptions"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 200
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/Parseable;->fixupOptions(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    .line 204
    .local v0, "options":Lcom/typesafe/config/ConfigParseOptions;
    invoke-virtual {v0}, Lcom/typesafe/config/ConfigParseOptions;->getOriginDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/typesafe/config/ConfigParseOptions;->getOriginDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->newSimple(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v1

    .local v1, "origin":Lcom/typesafe/config/ConfigOrigin;
    goto :goto_0

    .line 207
    .end local v1    # "origin":Lcom/typesafe/config/ConfigOrigin;
    :cond_0
    iget-object v1, p0, Lcom/typesafe/config/impl/Parseable;->initialOrigin:Lcom/typesafe/config/ConfigOrigin;

    .line 208
    .restart local v1    # "origin":Lcom/typesafe/config/ConfigOrigin;
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/typesafe/config/impl/Parseable;->parseDocument(Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/parser/ConfigDocument;

    move-result-object v2

    return-object v2
.end method

.method parseValue()Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 1

    .line 309
    invoke-virtual {p0}, Lcom/typesafe/config/impl/Parseable;->options()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/typesafe/config/impl/Parseable;->parseValue(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    return-object v0
.end method

.method final parseValue(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 3
    .param p1, "baseOptions"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 166
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/Parseable;->fixupOptions(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    .line 170
    .local v0, "options":Lcom/typesafe/config/ConfigParseOptions;
    invoke-virtual {v0}, Lcom/typesafe/config/ConfigParseOptions;->getOriginDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/typesafe/config/ConfigParseOptions;->getOriginDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->newSimple(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v1

    .local v1, "origin":Lcom/typesafe/config/ConfigOrigin;
    goto :goto_0

    .line 173
    .end local v1    # "origin":Lcom/typesafe/config/ConfigOrigin;
    :cond_0
    iget-object v1, p0, Lcom/typesafe/config/impl/Parseable;->initialOrigin:Lcom/typesafe/config/ConfigOrigin;

    .line 174
    .restart local v1    # "origin":Lcom/typesafe/config/ConfigOrigin;
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/typesafe/config/impl/Parseable;->parseValue(Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v2

    return-object v2
.end method

.method protected postConstruct(Lcom/typesafe/config/ConfigParseOptions;)V
    .locals 1
    .param p1, "baseOptions"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 79
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/Parseable;->fixupOptions(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/typesafe/config/impl/Parseable;->initialOptions:Lcom/typesafe/config/ConfigParseOptions;

    .line 81
    new-instance v0, Lcom/typesafe/config/impl/SimpleIncludeContext;

    invoke-direct {v0, p0}, Lcom/typesafe/config/impl/SimpleIncludeContext;-><init>(Lcom/typesafe/config/impl/Parseable;)V

    iput-object v0, p0, Lcom/typesafe/config/impl/Parseable;->includeContext:Lcom/typesafe/config/ConfigIncludeContext;

    .line 83
    iget-object v0, p0, Lcom/typesafe/config/impl/Parseable;->initialOptions:Lcom/typesafe/config/ConfigParseOptions;

    invoke-virtual {v0}, Lcom/typesafe/config/ConfigParseOptions;->getOriginDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/typesafe/config/impl/Parseable;->initialOptions:Lcom/typesafe/config/ConfigParseOptions;

    invoke-virtual {v0}, Lcom/typesafe/config/ConfigParseOptions;->getOriginDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->newSimple(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    iput-object v0, p0, Lcom/typesafe/config/impl/Parseable;->initialOrigin:Lcom/typesafe/config/ConfigOrigin;

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/typesafe/config/impl/Parseable;->createOrigin()Lcom/typesafe/config/ConfigOrigin;

    move-result-object v0

    iput-object v0, p0, Lcom/typesafe/config/impl/Parseable;->initialOrigin:Lcom/typesafe/config/ConfigOrigin;

    .line 87
    :goto_0
    return-void
.end method

.method protected rawParseDocument(Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/parser/ConfigDocument;
    .locals 4
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "finalOptions"    # Lcom/typesafe/config/ConfigParseOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    invoke-virtual {p0, p2}, Lcom/typesafe/config/impl/Parseable;->reader(Lcom/typesafe/config/ConfigParseOptions;)Ljava/io/Reader;

    move-result-object v0

    .line 274
    .local v0, "reader":Ljava/io/Reader;
    invoke-virtual {p0}, Lcom/typesafe/config/impl/Parseable;->contentType()Lcom/typesafe/config/ConfigSyntax;

    move-result-object v1

    .line 277
    .local v1, "contentType":Lcom/typesafe/config/ConfigSyntax;
    if-eqz v1, :cond_1

    .line 278
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceLoadsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/typesafe/config/ConfigParseOptions;->getSyntax()Lcom/typesafe/config/ConfigSyntax;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overriding syntax "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/typesafe/config/ConfigParseOptions;->getSyntax()Lcom/typesafe/config/ConfigSyntax;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with Content-Type which specified "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/typesafe/config/impl/Parseable;->trace(Ljava/lang/String;)V

    .line 282
    :cond_0
    invoke-virtual {p2, v1}, Lcom/typesafe/config/ConfigParseOptions;->setSyntax(Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v2

    .local v2, "optionsWithContentType":Lcom/typesafe/config/ConfigParseOptions;
    goto :goto_0

    .line 284
    .end local v2    # "optionsWithContentType":Lcom/typesafe/config/ConfigParseOptions;
    :cond_1
    move-object v2, p2

    .line 288
    .restart local v2    # "optionsWithContentType":Lcom/typesafe/config/ConfigParseOptions;
    :goto_0
    :try_start_0
    invoke-direct {p0, v0, p1, v2}, Lcom/typesafe/config/impl/Parseable;->rawParseDocument(Ljava/io/Reader;Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/parser/ConfigDocument;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 288
    return-object v3

    .line 290
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 291
    throw v3
.end method

.method protected rawParseValue(Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 4
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .param p2, "finalOptions"    # Lcom/typesafe/config/ConfigParseOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    invoke-virtual {p0, p2}, Lcom/typesafe/config/impl/Parseable;->reader(Lcom/typesafe/config/ConfigParseOptions;)Ljava/io/Reader;

    move-result-object v0

    .line 236
    .local v0, "reader":Ljava/io/Reader;
    invoke-virtual {p0}, Lcom/typesafe/config/impl/Parseable;->contentType()Lcom/typesafe/config/ConfigSyntax;

    move-result-object v1

    .line 239
    .local v1, "contentType":Lcom/typesafe/config/ConfigSyntax;
    if-eqz v1, :cond_1

    .line 240
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceLoadsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/typesafe/config/ConfigParseOptions;->getSyntax()Lcom/typesafe/config/ConfigSyntax;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overriding syntax "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/typesafe/config/ConfigParseOptions;->getSyntax()Lcom/typesafe/config/ConfigSyntax;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with Content-Type which specified "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/typesafe/config/impl/Parseable;->trace(Ljava/lang/String;)V

    .line 244
    :cond_0
    invoke-virtual {p2, v1}, Lcom/typesafe/config/ConfigParseOptions;->setSyntax(Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v2

    .local v2, "optionsWithContentType":Lcom/typesafe/config/ConfigParseOptions;
    goto :goto_0

    .line 246
    .end local v2    # "optionsWithContentType":Lcom/typesafe/config/ConfigParseOptions;
    :cond_1
    move-object v2, p2

    .line 250
    .restart local v2    # "optionsWithContentType":Lcom/typesafe/config/ConfigParseOptions;
    :goto_0
    :try_start_0
    invoke-direct {p0, v0, p1, v2}, Lcom/typesafe/config/impl/Parseable;->rawParseValue(Ljava/io/Reader;Lcom/typesafe/config/ConfigOrigin;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 250
    return-object v3

    .line 252
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 253
    throw v3
.end method

.method protected abstract reader()Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected reader(Lcom/typesafe/config/ConfigParseOptions;)Ljava/io/Reader;
    .locals 1
    .param p1, "options"    # Lcom/typesafe/config/ConfigParseOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/typesafe/config/impl/Parseable;->reader()Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method relativeTo(Ljava/lang/String;)Lcom/typesafe/config/ConfigParseable;
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .line 121
    move-object v0, p1

    .line 122
    .local v0, "resource":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/typesafe/config/impl/Parseable;->options()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/typesafe/config/ConfigParseOptions;->setOriginDescription(Ljava/lang/String;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/typesafe/config/impl/Parseable;->newResources(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/impl/Parseable;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 326
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
