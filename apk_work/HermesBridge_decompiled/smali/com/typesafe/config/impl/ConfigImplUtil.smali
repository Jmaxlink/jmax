.class public final Lcom/typesafe/config/impl/ConfigImplUtil;
.super Ljava/lang/Object;
.source "ConfigImplUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static envVariableAsProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "variable"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/typesafe/config/ConfigException;
        }
    .end annotation

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "strippedPrefix":Ljava/lang/String;
    const/4 v2, 0x0

    .line 261
    .local v2, "underscores":I
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    const-string v6, "Environment variable contains an un-mapped number of underscores."

    const/4 v7, 0x4

    const/4 v8, 0x3

    if-ge v5, v4, :cond_3

    aget-char v9, v3, v5

    .line 262
    .local v9, "c":C
    const/16 v10, 0x5f

    if-ne v9, v10, :cond_0

    .line 263
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 265
    :cond_0
    if-lez v2, :cond_1

    if-ge v2, v7, :cond_1

    .line 266
    invoke-static {v2}, Lcom/typesafe/config/impl/ConfigImplUtil;->underscoreMappings(I)C

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 267
    :cond_1
    if-gt v2, v8, :cond_2

    .line 270
    :goto_1
    const/4 v2, 0x0

    .line 271
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    .end local v9    # "c":C
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 268
    .restart local v9    # "c":C
    :cond_2
    new-instance v3, Lcom/typesafe/config/ConfigException$BadPath;

    invoke-direct {v3, p0, v6}, Lcom/typesafe/config/ConfigException$BadPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 275
    .end local v9    # "c":C
    :cond_3
    if-lez v2, :cond_4

    if-ge v2, v7, :cond_4

    .line 276
    invoke-static {v2}, Lcom/typesafe/config/impl/ConfigImplUtil;->underscoreMappings(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 277
    :cond_4
    if-gt v2, v8, :cond_5

    .line 281
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 278
    :cond_5
    new-instance v3, Lcom/typesafe/config/ConfigException$BadPath;

    invoke-direct {v3, p0, v6}, Lcom/typesafe/config/ConfigException$BadPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method static equalsHandlingNull(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 26
    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    .line 27
    return v0

    .line 28
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    .line 29
    return v0

    .line 30
    :cond_1
    if-ne p0, p1, :cond_2

    .line 31
    const/4 v0, 0x1

    return v0

    .line 33
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static extractInitializerError(Ljava/lang/ExceptionInInitializerError;)Lcom/typesafe/config/ConfigException;
    .locals 2
    .param p0, "e"    # Ljava/lang/ExceptionInInitializerError;

    .line 173
    invoke-virtual {p0}, Ljava/lang/ExceptionInInitializerError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 174
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/typesafe/config/ConfigException;

    if-eqz v1, :cond_0

    .line 175
    move-object v1, v0

    check-cast v1, Lcom/typesafe/config/ConfigException;

    return-object v1

    .line 177
    :cond_0
    throw p0
.end method

.method static isC0Control(I)Z
    .locals 1
    .param p0, "codepoint"    # I

    .line 37
    if-ltz p0, :cond_0

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isWhitespace(I)Z
    .locals 1
    .param p0, "codepoint"    # I

    .line 105
    sparse-switch p0, :sswitch_data_0

    .line 119
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    return v0

    .line 117
    :sswitch_0
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
        0xa0 -> :sswitch_0
        0x2007 -> :sswitch_0
        0x202f -> :sswitch_0
        0xfeff -> :sswitch_0
    .end sparse-switch
.end method

.method public static joinPath(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 202
    .local p0, "elements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigImplUtil;->joinPath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs joinPath([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "elements"    # [Ljava/lang/String;

    .line 198
    new-instance v0, Lcom/typesafe/config/impl/Path;

    invoke-direct {v0, p0}, Lcom/typesafe/config/impl/Path;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/typesafe/config/impl/Path;->render()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readOrigin(Ljava/io/ObjectInputStream;)Lcom/typesafe/config/ConfigOrigin;
    .locals 1
    .param p0, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/typesafe/config/impl/SerializedConfigValue;->readOrigin(Ljava/io/DataInput;Lcom/typesafe/config/impl/SimpleConfigOrigin;)Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v0

    return-object v0
.end method

.method public static renderJsonString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 44
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 45
    .local v3, "c":C
    sparse-switch v3, :sswitch_data_0

    .line 68
    invoke-static {v3}, Lcom/typesafe/config/impl/ConfigImplUtil;->isC0Control(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "\\u%04x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 50
    :sswitch_0
    const-string v4, "\\\\"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    goto :goto_1

    .line 47
    :sswitch_1
    const-string v4, "\\\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    goto :goto_1

    .line 62
    :sswitch_2
    const-string v4, "\\r"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    goto :goto_1

    .line 59
    :sswitch_3
    const-string v4, "\\f"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    goto :goto_1

    .line 53
    :sswitch_4
    const-string v4, "\\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    goto :goto_1

    .line 65
    :sswitch_5
    const-string v4, "\\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    goto :goto_1

    .line 56
    :sswitch_6
    const-string v4, "\\b"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    goto :goto_1

    .line 71
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_6
        0x9 -> :sswitch_5
        0xa -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_2
        0x22 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method static renderStringUnquotedIfPossible(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImplUtil;->renderJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 87
    .local v0, "first":I
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-nez v1, :cond_6

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1

    goto :goto_2

    .line 90
    :cond_1
    const-string v2, "include"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "true"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "false"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 91
    const-string v2, "null"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "//"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 95
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 96
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 97
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_3

    if-eq v3, v1, :cond_3

    .line 98
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImplUtil;->renderJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 95
    .end local v3    # "c":C
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v2    # "i":I
    :cond_4
    return-object p0

    .line 92
    :cond_5
    :goto_1
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImplUtil;->renderJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 88
    :cond_6
    :goto_2
    invoke-static {p0}, Lcom/typesafe/config/impl/ConfigImplUtil;->renderJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static splitPath(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 206
    invoke-static {p0}, Lcom/typesafe/config/impl/Path;->newPath(Ljava/lang/String;)Lcom/typesafe/config/impl/Path;

    move-result-object v0

    .line 207
    .local v0, "p":Lcom/typesafe/config/impl/Path;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v1, "elements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/typesafe/config/impl/Path;->first()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {v0}, Lcom/typesafe/config/impl/Path;->remainder()Lcom/typesafe/config/impl/Path;

    move-result-object v0

    goto :goto_0

    .line 212
    :cond_0
    return-object v1
.end method

.method public static syntaxFromExtension(Ljava/lang/String;)Lcom/typesafe/config/ConfigSyntax;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .line 291
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 292
    return-object v0

    .line 293
    :cond_0
    const-string v1, ".json"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    sget-object v0, Lcom/typesafe/config/ConfigSyntax;->JSON:Lcom/typesafe/config/ConfigSyntax;

    return-object v0

    .line 295
    :cond_1
    const-string v1, ".conf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 296
    sget-object v0, Lcom/typesafe/config/ConfigSyntax;->CONF:Lcom/typesafe/config/ConfigSyntax;

    return-object v0

    .line 297
    :cond_2
    const-string v1, ".properties"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 298
    sget-object v0, Lcom/typesafe/config/ConfigSyntax;->PROPERTIES:Lcom/typesafe/config/ConfigSyntax;

    return-object v0

    .line 300
    :cond_3
    return-object v0
.end method

.method static toCamelCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "originalName"    # Ljava/lang/String;

    .line 225
    const-string v0, "-+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "words":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 227
    .local v1, "nameBuilder":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 228
    .local v5, "word":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 229
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 231
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .end local v5    # "word":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static underscoreMappings(I)C
    .locals 1
    .param p0, "num"    # I

    .line 247
    packed-switch p0, :pswitch_data_0

    .line 251
    const/4 v0, 0x0

    return v0

    .line 250
    :pswitch_0
    const/16 v0, 0x5f

    return v0

    .line 249
    :pswitch_1
    const/16 v0, 0x2d

    return v0

    .line 248
    :pswitch_2
    const/16 v0, 0x2e

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static unicodeTrim(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 130
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 131
    return-object p0

    .line 133
    :cond_0
    const/4 v1, 0x0

    .line 134
    .local v1, "start":I
    :goto_0
    const/16 v2, 0xa

    const/16 v3, 0x20

    if-ge v1, v0, :cond_3

    .line 135
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 136
    .local v4, "c":C
    if-eq v4, v3, :cond_2

    if-ne v4, v2, :cond_1

    goto :goto_1

    .line 139
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    .line 140
    .local v5, "cp":I
    invoke-static {v5}, Lcom/typesafe/config/impl/ConfigImplUtil;->isWhitespace(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 141
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2

    .line 137
    .end local v5    # "cp":I
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 145
    .end local v4    # "c":C
    :goto_2
    goto :goto_0

    .line 147
    :cond_3
    move v4, v0

    .line 148
    .local v4, "end":I
    :goto_3
    if-le v4, v1, :cond_7

    .line 149
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 150
    .local v5, "c":C
    if-eq v5, v3, :cond_6

    if-ne v5, v2, :cond_4

    goto :goto_5

    .line 155
    :cond_4
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 156
    add-int/lit8 v6, v4, -0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 157
    .local v6, "cp":I
    const/4 v7, 0x2

    .local v7, "delta":I
    goto :goto_4

    .line 159
    .end local v6    # "cp":I
    .end local v7    # "delta":I
    :cond_5
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 160
    .restart local v6    # "cp":I
    const/4 v7, 0x1

    .line 162
    .restart local v7    # "delta":I
    :goto_4
    invoke-static {v6}, Lcom/typesafe/config/impl/ConfigImplUtil;->isWhitespace(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 163
    sub-int/2addr v4, v7

    goto :goto_6

    .line 151
    .end local v6    # "cp":I
    .end local v7    # "delta":I
    :cond_6
    :goto_5
    add-int/lit8 v4, v4, -0x1

    .line 167
    .end local v5    # "c":C
    :goto_6
    goto :goto_3

    .line 168
    :cond_7
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static urlToFile(Ljava/net/URL;)Ljava/io/File;
    .locals 3
    .param p0, "url"    # Ljava/net/URL;

    .line 185
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 190
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 186
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 189
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static writeOrigin(Ljava/io/ObjectOutputStream;Lcom/typesafe/config/ConfigOrigin;)V
    .locals 3
    .param p0, "out"    # Ljava/io/ObjectOutputStream;
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, p1

    check-cast v1, Lcom/typesafe/config/impl/SimpleConfigOrigin;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/typesafe/config/impl/SerializedConfigValue;->writeOrigin(Ljava/io/DataOutput;Lcom/typesafe/config/impl/SimpleConfigOrigin;Lcom/typesafe/config/impl/SimpleConfigOrigin;)V

    .line 222
    return-void
.end method
