.class public final Lcom/typesafe/config/ConfigParseOptions;
.super Ljava/lang/Object;
.source "ConfigParseOptions.java"


# instance fields
.field final allowMissing:Z

.field final classLoader:Ljava/lang/ClassLoader;

.field final includer:Lcom/typesafe/config/ConfigIncluder;

.field final originDescription:Ljava/lang/String;

.field final syntax:Lcom/typesafe/config/ConfigSyntax;


# direct methods
.method private constructor <init>(Lcom/typesafe/config/ConfigSyntax;Ljava/lang/String;ZLcom/typesafe/config/ConfigIncluder;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "syntax"    # Lcom/typesafe/config/ConfigSyntax;
    .param p2, "originDescription"    # Ljava/lang/String;
    .param p3, "allowMissing"    # Z
    .param p4, "includer"    # Lcom/typesafe/config/ConfigIncluder;
    .param p5, "classLoader"    # Ljava/lang/ClassLoader;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/typesafe/config/ConfigParseOptions;->syntax:Lcom/typesafe/config/ConfigSyntax;

    .line 35
    iput-object p2, p0, Lcom/typesafe/config/ConfigParseOptions;->originDescription:Ljava/lang/String;

    .line 36
    iput-boolean p3, p0, Lcom/typesafe/config/ConfigParseOptions;->allowMissing:Z

    .line 37
    iput-object p4, p0, Lcom/typesafe/config/ConfigParseOptions;->includer:Lcom/typesafe/config/ConfigIncluder;

    .line 38
    iput-object p5, p0, Lcom/typesafe/config/ConfigParseOptions;->classLoader:Ljava/lang/ClassLoader;

    .line 39
    return-void
.end method

.method public static defaults()Lcom/typesafe/config/ConfigParseOptions;
    .locals 7

    .line 48
    new-instance v6, Lcom/typesafe/config/ConfigParseOptions;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/typesafe/config/ConfigParseOptions;-><init>(Lcom/typesafe/config/ConfigSyntax;Ljava/lang/String;ZLcom/typesafe/config/ConfigIncluder;Ljava/lang/ClassLoader;)V

    return-object v6
.end method


# virtual methods
.method public appendIncluder(Lcom/typesafe/config/ConfigIncluder;)Lcom/typesafe/config/ConfigParseOptions;
    .locals 2
    .param p1, "includer"    # Lcom/typesafe/config/ConfigIncluder;

    .line 194
    if-eqz p1, :cond_2

    .line 196
    iget-object v0, p0, Lcom/typesafe/config/ConfigParseOptions;->includer:Lcom/typesafe/config/ConfigIncluder;

    if-ne v0, p1, :cond_0

    .line 197
    return-object p0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/typesafe/config/ConfigParseOptions;->includer:Lcom/typesafe/config/ConfigIncluder;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/typesafe/config/ConfigParseOptions;->includer:Lcom/typesafe/config/ConfigIncluder;

    invoke-interface {v0, p1}, Lcom/typesafe/config/ConfigIncluder;->withFallback(Lcom/typesafe/config/ConfigIncluder;)Lcom/typesafe/config/ConfigIncluder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/typesafe/config/ConfigParseOptions;->setIncluder(Lcom/typesafe/config/ConfigIncluder;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    return-object v0

    .line 201
    :cond_1
    invoke-virtual {p0, p1}, Lcom/typesafe/config/ConfigParseOptions;->setIncluder(Lcom/typesafe/config/ConfigIncluder;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    return-object v0

    .line 195
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null includer passed to appendIncluder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllowMissing()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/typesafe/config/ConfigParseOptions;->allowMissing:Z

    return v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/typesafe/config/ConfigParseOptions;->classLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    .line 238
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/typesafe/config/ConfigParseOptions;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getIncluder()Lcom/typesafe/config/ConfigIncluder;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/typesafe/config/ConfigParseOptions;->includer:Lcom/typesafe/config/ConfigIncluder;

    return-object v0
.end method

.method public getOriginDescription()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/typesafe/config/ConfigParseOptions;->originDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getSyntax()Lcom/typesafe/config/ConfigSyntax;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/typesafe/config/ConfigParseOptions;->syntax:Lcom/typesafe/config/ConfigSyntax;

    return-object v0
.end method

.method public prependIncluder(Lcom/typesafe/config/ConfigIncluder;)Lcom/typesafe/config/ConfigParseOptions;
    .locals 2
    .param p1, "includer"    # Lcom/typesafe/config/ConfigIncluder;

    .line 175
    if-eqz p1, :cond_2

    .line 177
    iget-object v0, p0, Lcom/typesafe/config/ConfigParseOptions;->includer:Lcom/typesafe/config/ConfigIncluder;

    if-ne v0, p1, :cond_0

    .line 178
    return-object p0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/typesafe/config/ConfigParseOptions;->includer:Lcom/typesafe/config/ConfigIncluder;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/typesafe/config/ConfigParseOptions;->includer:Lcom/typesafe/config/ConfigIncluder;

    invoke-interface {p1, v0}, Lcom/typesafe/config/ConfigIncluder;->withFallback(Lcom/typesafe/config/ConfigIncluder;)Lcom/typesafe/config/ConfigIncluder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/typesafe/config/ConfigParseOptions;->setIncluder(Lcom/typesafe/config/ConfigIncluder;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    return-object v0

    .line 182
    :cond_1
    invoke-virtual {p0, p1}, Lcom/typesafe/config/ConfigParseOptions;->setIncluder(Lcom/typesafe/config/ConfigIncluder;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    return-object v0

    .line 176
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null includer passed to prependIncluder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAllowMissing(Z)Lcom/typesafe/config/ConfigParseOptions;
    .locals 7
    .param p1, "allowMissing"    # Z

    .line 135
    iget-boolean v0, p0, Lcom/typesafe/config/ConfigParseOptions;->allowMissing:Z

    if-ne v0, p1, :cond_0

    .line 136
    return-object p0

    .line 138
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigParseOptions;

    iget-object v2, p0, Lcom/typesafe/config/ConfigParseOptions;->syntax:Lcom/typesafe/config/ConfigSyntax;

    iget-object v3, p0, Lcom/typesafe/config/ConfigParseOptions;->originDescription:Ljava/lang/String;

    iget-object v5, p0, Lcom/typesafe/config/ConfigParseOptions;->includer:Lcom/typesafe/config/ConfigIncluder;

    iget-object v6, p0, Lcom/typesafe/config/ConfigParseOptions;->classLoader:Ljava/lang/ClassLoader;

    move-object v1, v0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/typesafe/config/ConfigParseOptions;-><init>(Lcom/typesafe/config/ConfigSyntax;Ljava/lang/String;ZLcom/typesafe/config/ConfigIncluder;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)Lcom/typesafe/config/ConfigParseOptions;
    .locals 7
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 222
    iget-object v0, p0, Lcom/typesafe/config/ConfigParseOptions;->classLoader:Ljava/lang/ClassLoader;

    if-ne v0, p1, :cond_0

    .line 223
    return-object p0

    .line 225
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigParseOptions;

    iget-object v2, p0, Lcom/typesafe/config/ConfigParseOptions;->syntax:Lcom/typesafe/config/ConfigSyntax;

    iget-object v3, p0, Lcom/typesafe/config/ConfigParseOptions;->originDescription:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/typesafe/config/ConfigParseOptions;->allowMissing:Z

    iget-object v5, p0, Lcom/typesafe/config/ConfigParseOptions;->includer:Lcom/typesafe/config/ConfigIncluder;

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/typesafe/config/ConfigParseOptions;-><init>(Lcom/typesafe/config/ConfigSyntax;Ljava/lang/String;ZLcom/typesafe/config/ConfigIncluder;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public setIncluder(Lcom/typesafe/config/ConfigIncluder;)Lcom/typesafe/config/ConfigParseOptions;
    .locals 7
    .param p1, "includer"    # Lcom/typesafe/config/ConfigIncluder;

    .line 158
    iget-object v0, p0, Lcom/typesafe/config/ConfigParseOptions;->includer:Lcom/typesafe/config/ConfigIncluder;

    if-ne v0, p1, :cond_0

    .line 159
    return-object p0

    .line 161
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigParseOptions;

    iget-object v2, p0, Lcom/typesafe/config/ConfigParseOptions;->syntax:Lcom/typesafe/config/ConfigSyntax;

    iget-object v3, p0, Lcom/typesafe/config/ConfigParseOptions;->originDescription:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/typesafe/config/ConfigParseOptions;->allowMissing:Z

    iget-object v6, p0, Lcom/typesafe/config/ConfigParseOptions;->classLoader:Ljava/lang/ClassLoader;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/typesafe/config/ConfigParseOptions;-><init>(Lcom/typesafe/config/ConfigSyntax;Ljava/lang/String;ZLcom/typesafe/config/ConfigIncluder;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public setOriginDescription(Ljava/lang/String;)Lcom/typesafe/config/ConfigParseOptions;
    .locals 7
    .param p1, "originDescription"    # Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/typesafe/config/ConfigParseOptions;->originDescription:Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 100
    return-object p0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/typesafe/config/ConfigParseOptions;->originDescription:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/typesafe/config/ConfigParseOptions;->originDescription:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    return-object p0

    .line 105
    :cond_1
    new-instance v0, Lcom/typesafe/config/ConfigParseOptions;

    iget-object v2, p0, Lcom/typesafe/config/ConfigParseOptions;->syntax:Lcom/typesafe/config/ConfigSyntax;

    iget-boolean v4, p0, Lcom/typesafe/config/ConfigParseOptions;->allowMissing:Z

    iget-object v5, p0, Lcom/typesafe/config/ConfigParseOptions;->includer:Lcom/typesafe/config/ConfigIncluder;

    iget-object v6, p0, Lcom/typesafe/config/ConfigParseOptions;->classLoader:Ljava/lang/ClassLoader;

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/typesafe/config/ConfigParseOptions;-><init>(Lcom/typesafe/config/ConfigSyntax;Ljava/lang/String;ZLcom/typesafe/config/ConfigIncluder;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public setSyntax(Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/ConfigParseOptions;
    .locals 7
    .param p1, "syntax"    # Lcom/typesafe/config/ConfigSyntax;

    .line 60
    iget-object v0, p0, Lcom/typesafe/config/ConfigParseOptions;->syntax:Lcom/typesafe/config/ConfigSyntax;

    if-ne v0, p1, :cond_0

    .line 61
    return-object p0

    .line 63
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigParseOptions;

    iget-object v3, p0, Lcom/typesafe/config/ConfigParseOptions;->originDescription:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/typesafe/config/ConfigParseOptions;->allowMissing:Z

    iget-object v5, p0, Lcom/typesafe/config/ConfigParseOptions;->includer:Lcom/typesafe/config/ConfigIncluder;

    iget-object v6, p0, Lcom/typesafe/config/ConfigParseOptions;->classLoader:Ljava/lang/ClassLoader;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/typesafe/config/ConfigParseOptions;-><init>(Lcom/typesafe/config/ConfigSyntax;Ljava/lang/String;ZLcom/typesafe/config/ConfigIncluder;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public setSyntaxFromFilename(Ljava/lang/String;)Lcom/typesafe/config/ConfigParseOptions;
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .line 75
    invoke-static {p1}, Lcom/typesafe/config/impl/ConfigImplUtil;->syntaxFromExtension(Ljava/lang/String;)Lcom/typesafe/config/ConfigSyntax;

    move-result-object v0

    .line 76
    .local v0, "syntax":Lcom/typesafe/config/ConfigSyntax;
    invoke-virtual {p0, v0}, Lcom/typesafe/config/ConfigParseOptions;->setSyntax(Lcom/typesafe/config/ConfigSyntax;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v1

    return-object v1
.end method

.method withFallbackOriginDescription(Ljava/lang/String;)Lcom/typesafe/config/ConfigParseOptions;
    .locals 1
    .param p1, "originDescription"    # Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/typesafe/config/ConfigParseOptions;->originDescription:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0, p1}, Lcom/typesafe/config/ConfigParseOptions;->setOriginDescription(Ljava/lang/String;)Lcom/typesafe/config/ConfigParseOptions;

    move-result-object v0

    return-object v0

    .line 122
    :cond_0
    return-object p0
.end method
