.class Lcom/typesafe/config/impl/SimpleIncluder;
.super Ljava/lang/Object;
.source "SimpleIncluder.java"

# interfaces
.implements Lcom/typesafe/config/impl/FullIncluder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/typesafe/config/impl/SimpleIncluder$Proxy;,
        Lcom/typesafe/config/impl/SimpleIncluder$RelativeNameSource;,
        Lcom/typesafe/config/impl/SimpleIncluder$NameSource;
    }
.end annotation


# instance fields
.field private fallback:Lcom/typesafe/config/ConfigIncluder;


# direct methods
.method constructor <init>(Lcom/typesafe/config/ConfigIncluder;)V
    .locals 0
    .param p1, "fallback"    # Lcom/typesafe/config/ConfigIncluder;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/typesafe/config/impl/SimpleIncluder;->fallback:Lcom/typesafe/config/ConfigIncluder;

    .line 30
    return-void
.end method

.method static clearForInclude(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigParseOptions;
    .locals 2
    .param p0, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/typesafe/config/ConfigParseOptions;->setSyntax(Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/typesafe/config/ConfigParseOptions;->setOriginDescription(Ljava/lang/String;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/typesafe/config/ConfigParseOptions;->setAllowMissing(Z)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    return-object v0
.end method

.method static fromBasename(Lcom/typesafe/config/impl/SimpleIncluder$NameSource;Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigObject;
    .locals 12
    .param p0, "source"    # Lcom/typesafe/config/impl/SimpleIncluder$NameSource;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "options"    # Lcom/typesafe/config/ConfigParseOptions;

    .line 169
    const-string v0, ".conf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, ".json"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, ".properties"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    .line 174
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Lcom/typesafe/config/impl/SimpleIncluder$NameSource;->nameToParseable(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigParseable;

    move-result-object v0

    .line 175
    .local v0, "confHandle":Lcom/typesafe/config/ConfigParseable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, p2}, Lcom/typesafe/config/impl/SimpleIncluder$NameSource;->nameToParseable(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigParseable;

    move-result-object v1

    .line 176
    .local v1, "jsonHandle":Lcom/typesafe/config/ConfigParseable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2, p2}, Lcom/typesafe/config/impl/SimpleIncluder$NameSource;->nameToParseable(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigParseable;

    move-result-object v2

    .line 177
    .local v2, "propsHandle":Lcom/typesafe/config/ConfigParseable;
    const/4 v3, 0x0

    .line 178
    .local v3, "gotSomething":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v4, "fails":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/ConfigException$IO;>;"
    invoke-virtual {p2}, Lcom/typesafe/config/ConfigParseOptions;->getSyntax()Lcom/typesafe/config/ConfigSyntax;

    move-result-object v5

    .line 182
    .local v5, "syntax":Lcom/typesafe/config/ConfigSyntax;
    invoke-static {p1}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->newSimple(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v6

    invoke-static {v6}, Lcom/typesafe/config/impl/SimpleConfigObject;->empty(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigObject;

    move-result-object v6

    .line 183
    .local v6, "obj":Lcom/typesafe/config/ConfigObject;
    const/4 v7, 0x0

    if-eqz v5, :cond_1

    sget-object v8, Lcom/typesafe/config/ConfigSyntax;->CONF:Lcom/typesafe/config/ConfigSyntax;

    if-ne v5, v8, :cond_2

    .line 185
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcom/typesafe/config/ConfigParseable;->options()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/typesafe/config/ConfigParseOptions;->setAllowMissing(Z)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v8

    sget-object v9, Lcom/typesafe/config/ConfigSyntax;->CONF:Lcom/typesafe/config/ConfigSyntax;

    .line 186
    invoke-virtual {v8, v9}, Lcom/typesafe/config/ConfigParseOptions;->setSyntax(Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v8

    .line 185
    invoke-interface {v0, v8}, Lcom/typesafe/config/ConfigParseable;->parse(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigObject;

    move-result-object v8
    :try_end_0
    .catch Lcom/typesafe/config/ConfigException$IO; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v8

    .line 187
    const/4 v3, 0x1

    .line 190
    goto :goto_0

    .line 188
    :catch_0
    move-exception v8

    .line 189
    .local v8, "e":Lcom/typesafe/config/ConfigException$IO;
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    .end local v8    # "e":Lcom/typesafe/config/ConfigException$IO;
    :cond_2
    :goto_0
    if-eqz v5, :cond_3

    sget-object v8, Lcom/typesafe/config/ConfigSyntax;->JSON:Lcom/typesafe/config/ConfigSyntax;

    if-ne v5, v8, :cond_4

    .line 195
    :cond_3
    :try_start_1
    invoke-interface {v1}, Lcom/typesafe/config/ConfigParseable;->options()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v8

    .line 196
    invoke-virtual {v8, v7}, Lcom/typesafe/config/ConfigParseOptions;->setAllowMissing(Z)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v8

    sget-object v9, Lcom/typesafe/config/ConfigSyntax;->JSON:Lcom/typesafe/config/ConfigSyntax;

    invoke-virtual {v8, v9}, Lcom/typesafe/config/ConfigParseOptions;->setSyntax(Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v8

    .line 195
    invoke-interface {v1, v8}, Lcom/typesafe/config/ConfigParseable;->parse(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigObject;

    move-result-object v8

    .line 197
    .local v8, "parsed":Lcom/typesafe/config/ConfigObject;
    invoke-interface {v6, v8}, Lcom/typesafe/config/ConfigObject;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/ConfigObject;

    move-result-object v9
    :try_end_1
    .catch Lcom/typesafe/config/ConfigException$IO; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v9

    .line 198
    const/4 v3, 0x1

    .line 201
    .end local v8    # "parsed":Lcom/typesafe/config/ConfigObject;
    goto :goto_1

    .line 199
    :catch_1
    move-exception v8

    .line 200
    .local v8, "e":Lcom/typesafe/config/ConfigException$IO;
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .end local v8    # "e":Lcom/typesafe/config/ConfigException$IO;
    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    sget-object v8, Lcom/typesafe/config/ConfigSyntax;->PROPERTIES:Lcom/typesafe/config/ConfigSyntax;

    if-ne v5, v8, :cond_6

    .line 206
    :cond_5
    :try_start_2
    invoke-interface {v2}, Lcom/typesafe/config/ConfigParseable;->options()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v8

    .line 207
    invoke-virtual {v8, v7}, Lcom/typesafe/config/ConfigParseOptions;->setAllowMissing(Z)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v8

    sget-object v9, Lcom/typesafe/config/ConfigSyntax;->PROPERTIES:Lcom/typesafe/config/ConfigSyntax;

    invoke-virtual {v8, v9}, Lcom/typesafe/config/ConfigParseOptions;->setSyntax(Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v8

    .line 206
    invoke-interface {v2, v8}, Lcom/typesafe/config/ConfigParseable;->parse(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigObject;

    move-result-object v8

    .line 208
    .local v8, "parsed":Lcom/typesafe/config/ConfigObject;
    invoke-interface {v6, v8}, Lcom/typesafe/config/ConfigObject;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/ConfigObject;

    move-result-object v9
    :try_end_2
    .catch Lcom/typesafe/config/ConfigException$IO; {:try_start_2 .. :try_end_2} :catch_2

    move-object v6, v9

    .line 209
    const/4 v3, 0x1

    .line 212
    .end local v8    # "parsed":Lcom/typesafe/config/ConfigObject;
    goto :goto_2

    .line 210
    :catch_2
    move-exception v8

    .line 211
    .local v8, "e":Lcom/typesafe/config/ConfigException$IO;
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    .end local v8    # "e":Lcom/typesafe/config/ConfigException$IO;
    :cond_6
    :goto_2
    invoke-virtual {p2}, Lcom/typesafe/config/ConfigParseOptions;->getAllowMissing()Z

    move-result v8

    const-string v9, "Did not find \'"

    if-nez v8, :cond_a

    if-nez v3, :cond_a

    .line 216
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceLoadsEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 219
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' with any extension (.conf, .json, .properties); exceptions should have been logged above."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/typesafe/config/impl/ConfigImpl;->trace(Ljava/lang/String;)V

    .line 224
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    .line 229
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Throwable;

    .line 231
    .local v10, "t":Ljava/lang/Throwable;
    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v11, ", "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .end local v10    # "t":Ljava/lang/Throwable;
    goto :goto_3

    .line 234
    :cond_8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 235
    new-instance v9, Lcom/typesafe/config/ConfigException$IO;

    invoke-static {p1}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->newSimple(Ljava/lang/String;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 236
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    invoke-direct {v9, v10, v11, v7}, Lcom/typesafe/config/ConfigException$IO;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 226
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_9
    new-instance v7, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v8, "should not be reached: nothing found but no exceptions thrown"

    invoke-direct {v7, v8}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v7

    .line 238
    :cond_a
    if-nez v3, :cond_c

    .line 239
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceLoadsEnabled()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 240
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' with any extension (.conf, .json, .properties); but \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' is allowed to be missing. Exceptions from load attempts should have been logged above."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/typesafe/config/impl/ConfigImpl;->trace(Ljava/lang/String;)V

    goto :goto_5

    .line 170
    .end local v0    # "confHandle":Lcom/typesafe/config/ConfigParseable;
    .end local v1    # "jsonHandle":Lcom/typesafe/config/ConfigParseable;
    .end local v2    # "propsHandle":Lcom/typesafe/config/ConfigParseable;
    .end local v3    # "gotSomething":Z
    .end local v4    # "fails":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/ConfigException$IO;>;"
    .end local v5    # "syntax":Lcom/typesafe/config/ConfigSyntax;
    .end local v6    # "obj":Lcom/typesafe/config/ConfigObject;
    :cond_b
    :goto_4
    invoke-interface {p0, p1, p2}, Lcom/typesafe/config/impl/SimpleIncluder$NameSource;->nameToParseable(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigParseable;

    move-result-object v0

    .line 172
    .local v0, "p":Lcom/typesafe/config/ConfigParseable;
    invoke-interface {v0}, Lcom/typesafe/config/ConfigParseable;->options()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v1

    invoke-virtual {p2}, Lcom/typesafe/config/ConfigParseOptions;->getAllowMissing()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/typesafe/config/ConfigParseOptions;->setAllowMissing(Z)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/typesafe/config/ConfigParseable;->parse(Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigObject;

    move-result-object v6

    .line 173
    .end local v0    # "p":Lcom/typesafe/config/ConfigParseable;
    .restart local v6    # "obj":Lcom/typesafe/config/ConfigObject;
    nop

    .line 247
    :cond_c
    :goto_5
    return-object v6
.end method

.method static includeFileWithoutFallback(Lcom/typesafe/config/ConfigIncludeContext;Ljava/io/File;)Lcom/typesafe/config/ConfigObject;
    .locals 1
    .param p0, "context"    # Lcom/typesafe/config/ConfigIncludeContext;
    .param p1, "file"    # Ljava/io/File;

    .line 104
    invoke-interface {p0}, Lcom/typesafe/config/ConfigIncludeContext;->parseOptions()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/typesafe/config/ConfigFactory;->parseFileAnySyntax(Ljava/io/File;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    invoke-interface {v0}, Lcom/typesafe/config/Config;->root()Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    return-object v0
.end method

.method static includeResourceWithoutFallback(Lcom/typesafe/config/ConfigIncludeContext;Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;
    .locals 1
    .param p0, "context"    # Lcom/typesafe/config/ConfigIncludeContext;
    .param p1, "resource"    # Ljava/lang/String;

    .line 123
    invoke-interface {p0}, Lcom/typesafe/config/ConfigIncludeContext;->parseOptions()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/typesafe/config/ConfigFactory;->parseResourcesAnySyntax(Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    invoke-interface {v0}, Lcom/typesafe/config/Config;->root()Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    return-object v0
.end method

.method static includeURLWithoutFallback(Lcom/typesafe/config/ConfigIncludeContext;Ljava/net/URL;)Lcom/typesafe/config/ConfigObject;
    .locals 1
    .param p0, "context"    # Lcom/typesafe/config/ConfigIncludeContext;
    .param p1, "url"    # Ljava/net/URL;

    .line 87
    invoke-interface {p0}, Lcom/typesafe/config/ConfigIncludeContext;->parseOptions()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/typesafe/config/ConfigFactory;->parseURL(Ljava/net/URL;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/Config;

    move-result-object v0

    invoke-interface {v0}, Lcom/typesafe/config/Config;->root()Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    return-object v0
.end method

.method static includeWithoutFallback(Lcom/typesafe/config/ConfigIncludeContext;Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;
    .locals 3
    .param p0, "context"    # Lcom/typesafe/config/ConfigIncludeContext;
    .param p1, "name"    # Ljava/lang/String;

    .line 60
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .local v0, "url":Ljava/net/URL;
    goto :goto_0

    .line 61
    .end local v0    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 65
    .local v0, "url":Ljava/net/URL;
    :goto_0
    if-eqz v0, :cond_0

    .line 66
    invoke-static {p0, v0}, Lcom/typesafe/config/impl/SimpleIncluder;->includeURLWithoutFallback(Lcom/typesafe/config/ConfigIncludeContext;Ljava/net/URL;)Lcom/typesafe/config/ConfigObject;

    move-result-object v1

    return-object v1

    .line 68
    :cond_0
    new-instance v1, Lcom/typesafe/config/impl/SimpleIncluder$RelativeNameSource;

    invoke-direct {v1, p0}, Lcom/typesafe/config/impl/SimpleIncluder$RelativeNameSource;-><init>(Lcom/typesafe/config/ConfigIncludeContext;)V

    .line 69
    .local v1, "source":Lcom/typesafe/config/impl/SimpleIncluder$NameSource;
    invoke-interface {p0}, Lcom/typesafe/config/ConfigIncludeContext;->parseOptions()Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/typesafe/config/impl/SimpleIncluder;->fromBasename(Lcom/typesafe/config/impl/SimpleIncluder$NameSource;Ljava/lang/String;Lcom/typesafe/config/ConfigParseOptions;)Lcom/typesafe/config/ConfigObject;

    move-result-object v2

    return-object v2
.end method

.method static makeFull(Lcom/typesafe/config/ConfigIncluder;)Lcom/typesafe/config/impl/FullIncluder;
    .locals 1
    .param p0, "includer"    # Lcom/typesafe/config/ConfigIncluder;

    .line 297
    instance-of v0, p0, Lcom/typesafe/config/impl/FullIncluder;

    if-eqz v0, :cond_0

    .line 298
    move-object v0, p0

    check-cast v0, Lcom/typesafe/config/impl/FullIncluder;

    return-object v0

    .line 300
    :cond_0
    new-instance v0, Lcom/typesafe/config/impl/SimpleIncluder$Proxy;

    invoke-direct {v0, p0}, Lcom/typesafe/config/impl/SimpleIncluder$Proxy;-><init>(Lcom/typesafe/config/ConfigIncluder;)V

    return-object v0
.end method


# virtual methods
.method public include(Lcom/typesafe/config/ConfigIncludeContext;Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;
    .locals 2
    .param p1, "context"    # Lcom/typesafe/config/ConfigIncludeContext;
    .param p2, "name"    # Ljava/lang/String;

    .line 42
    invoke-static {p1, p2}, Lcom/typesafe/config/impl/SimpleIncluder;->includeWithoutFallback(Lcom/typesafe/config/ConfigIncludeContext;Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    .line 46
    .local v0, "obj":Lcom/typesafe/config/ConfigObject;
    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleIncluder;->fallback:Lcom/typesafe/config/ConfigIncluder;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleIncluder;->fallback:Lcom/typesafe/config/ConfigIncluder;

    invoke-interface {v1, p1, p2}, Lcom/typesafe/config/ConfigIncluder;->include(Lcom/typesafe/config/ConfigIncludeContext;Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/typesafe/config/ConfigObject;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/ConfigObject;

    move-result-object v1

    return-object v1

    .line 49
    :cond_0
    return-object v0
.end method

.method public includeFile(Lcom/typesafe/config/ConfigIncludeContext;Ljava/io/File;)Lcom/typesafe/config/ConfigObject;
    .locals 2
    .param p1, "context"    # Lcom/typesafe/config/ConfigIncludeContext;
    .param p2, "file"    # Ljava/io/File;

    .line 92
    invoke-static {p1, p2}, Lcom/typesafe/config/impl/SimpleIncluder;->includeFileWithoutFallback(Lcom/typesafe/config/ConfigIncludeContext;Ljava/io/File;)Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    .line 96
    .local v0, "obj":Lcom/typesafe/config/ConfigObject;
    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleIncluder;->fallback:Lcom/typesafe/config/ConfigIncluder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleIncluder;->fallback:Lcom/typesafe/config/ConfigIncluder;

    instance-of v1, v1, Lcom/typesafe/config/ConfigIncluderFile;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleIncluder;->fallback:Lcom/typesafe/config/ConfigIncluder;

    check-cast v1, Lcom/typesafe/config/ConfigIncluderFile;

    invoke-interface {v1, p1, p2}, Lcom/typesafe/config/ConfigIncluderFile;->includeFile(Lcom/typesafe/config/ConfigIncludeContext;Ljava/io/File;)Lcom/typesafe/config/ConfigObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/typesafe/config/ConfigObject;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/ConfigObject;

    move-result-object v1

    return-object v1

    .line 99
    :cond_0
    return-object v0
.end method

.method public includeResources(Lcom/typesafe/config/ConfigIncludeContext;Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;
    .locals 2
    .param p1, "context"    # Lcom/typesafe/config/ConfigIncludeContext;
    .param p2, "resource"    # Ljava/lang/String;

    .line 109
    invoke-static {p1, p2}, Lcom/typesafe/config/impl/SimpleIncluder;->includeResourceWithoutFallback(Lcom/typesafe/config/ConfigIncludeContext;Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    .line 113
    .local v0, "obj":Lcom/typesafe/config/ConfigObject;
    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleIncluder;->fallback:Lcom/typesafe/config/ConfigIncluder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleIncluder;->fallback:Lcom/typesafe/config/ConfigIncluder;

    instance-of v1, v1, Lcom/typesafe/config/ConfigIncluderClasspath;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleIncluder;->fallback:Lcom/typesafe/config/ConfigIncluder;

    check-cast v1, Lcom/typesafe/config/ConfigIncluderClasspath;

    invoke-interface {v1, p1, p2}, Lcom/typesafe/config/ConfigIncluderClasspath;->includeResources(Lcom/typesafe/config/ConfigIncludeContext;Ljava/lang/String;)Lcom/typesafe/config/ConfigObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/typesafe/config/ConfigObject;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/ConfigObject;

    move-result-object v1

    return-object v1

    .line 117
    :cond_0
    return-object v0
.end method

.method public includeURL(Lcom/typesafe/config/ConfigIncludeContext;Ljava/net/URL;)Lcom/typesafe/config/ConfigObject;
    .locals 2
    .param p1, "context"    # Lcom/typesafe/config/ConfigIncludeContext;
    .param p2, "url"    # Ljava/net/URL;

    .line 75
    invoke-static {p1, p2}, Lcom/typesafe/config/impl/SimpleIncluder;->includeURLWithoutFallback(Lcom/typesafe/config/ConfigIncludeContext;Ljava/net/URL;)Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    .line 79
    .local v0, "obj":Lcom/typesafe/config/ConfigObject;
    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleIncluder;->fallback:Lcom/typesafe/config/ConfigIncluder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleIncluder;->fallback:Lcom/typesafe/config/ConfigIncluder;

    instance-of v1, v1, Lcom/typesafe/config/ConfigIncluderURL;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleIncluder;->fallback:Lcom/typesafe/config/ConfigIncluder;

    check-cast v1, Lcom/typesafe/config/ConfigIncluderURL;

    invoke-interface {v1, p1, p2}, Lcom/typesafe/config/ConfigIncluderURL;->includeURL(Lcom/typesafe/config/ConfigIncludeContext;Ljava/net/URL;)Lcom/typesafe/config/ConfigObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/typesafe/config/ConfigObject;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/ConfigObject;

    move-result-object v1

    return-object v1

    .line 82
    :cond_0
    return-object v0
.end method

.method public withFallback(Lcom/typesafe/config/ConfigIncluder;)Lcom/typesafe/config/ConfigIncluder;
    .locals 2
    .param p1, "fallback"    # Lcom/typesafe/config/ConfigIncluder;

    .line 128
    if-eq p0, p1, :cond_2

    .line 130
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleIncluder;->fallback:Lcom/typesafe/config/ConfigIncluder;

    if-ne v0, p1, :cond_0

    .line 131
    return-object p0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/typesafe/config/impl/SimpleIncluder;->fallback:Lcom/typesafe/config/ConfigIncluder;

    if-eqz v0, :cond_1

    .line 133
    new-instance v0, Lcom/typesafe/config/impl/SimpleIncluder;

    iget-object v1, p0, Lcom/typesafe/config/impl/SimpleIncluder;->fallback:Lcom/typesafe/config/ConfigIncluder;

    invoke-interface {v1, p1}, Lcom/typesafe/config/ConfigIncluder;->withFallback(Lcom/typesafe/config/ConfigIncluder;)Lcom/typesafe/config/ConfigIncluder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/typesafe/config/impl/SimpleIncluder;-><init>(Lcom/typesafe/config/ConfigIncluder;)V

    return-object v0

    .line 135
    :cond_1
    new-instance v0, Lcom/typesafe/config/impl/SimpleIncluder;

    invoke-direct {v0, p1}, Lcom/typesafe/config/impl/SimpleIncluder;-><init>(Lcom/typesafe/config/ConfigIncluder;)V

    return-object v0

    .line 129
    :cond_2
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "trying to create includer cycle"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method
