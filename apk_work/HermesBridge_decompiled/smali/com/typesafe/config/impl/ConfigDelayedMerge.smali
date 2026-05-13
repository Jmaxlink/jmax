.class final Lcom/typesafe/config/impl/ConfigDelayedMerge;
.super Lcom/typesafe/config/impl/AbstractConfigValue;
.source "ConfigDelayedMerge.java"

# interfaces
.implements Lcom/typesafe/config/impl/Unmergeable;
.implements Lcom/typesafe/config/impl/ReplaceableMergeStack;


# instance fields
.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)V
    .locals 3
    .param p1, "origin"    # Lcom/typesafe/config/ConfigOrigin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/ConfigOrigin;",
            "Ljava/util/List<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p2, "stack":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-direct {p0, p1}, Lcom/typesafe/config/impl/AbstractConfigValue;-><init>(Lcom/typesafe/config/ConfigOrigin;)V

    .line 32
    iput-object p2, p0, Lcom/typesafe/config/impl/ConfigDelayedMerge;->stack:Ljava/util/List;

    .line 33
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 37
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 38
    .local v1, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    instance-of v2, v1, Lcom/typesafe/config/impl/ConfigDelayedMerge;

    if-nez v2, :cond_0

    instance-of v2, v1, Lcom/typesafe/config/impl/ConfigDelayedMergeObject;

    if-nez v2, :cond_0

    .line 41
    .end local v1    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    goto :goto_0

    .line 39
    .restart local v1    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_0
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v2, "placed nested DelayedMerge in a ConfigDelayedMerge, should have consolidated stack"

    invoke-direct {v0, v2}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    .end local v1    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_1
    return-void

    .line 34
    :cond_2
    new-instance v0, Lcom/typesafe/config/ConfigException$BugOrBroken;

    const-string v1, "creating empty delayed merge value"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static makeReplacement(Lcom/typesafe/config/impl/ResolveContext;Ljava/util/List;I)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 4
    .param p0, "context"    # Lcom/typesafe/config/impl/ResolveContext;
    .param p2, "skipping"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/impl/ResolveContext;",
            "Ljava/util/List<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;I)",
            "Lcom/typesafe/config/impl/AbstractConfigValue;"
        }
    .end annotation

    .line 162
    .local p1, "stack":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, p2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 164
    .local v0, "subStack":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v1

    const-string v2, "Nothing else in the merge stack, replacing with null"

    invoke-static {v1, v2}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 167
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 170
    :cond_1
    const/4 v1, 0x0

    .line 171
    .local v1, "merged":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 172
    .local v3, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    if-nez v1, :cond_2

    .line 173
    move-object v1, v3

    goto :goto_1

    .line 175
    :cond_2
    invoke-virtual {v1, v3}, Lcom/typesafe/config/impl/AbstractConfigValue;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v1

    .line 176
    .end local v3    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :goto_1
    goto :goto_0

    .line 177
    :cond_3
    return-object v1
.end method

.method static render(Ljava/util/List;Ljava/lang/StringBuilder;IZLjava/lang/String;Lcom/typesafe/config/ConfigRenderOptions;)V
    .locals 9
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # I
    .param p3, "atRoot"    # Z
    .param p4, "atKey"    # Ljava/lang/String;
    .param p5, "options"    # Lcom/typesafe/config/ConfigRenderOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "IZ",
            "Ljava/lang/String;",
            "Lcom/typesafe/config/ConfigRenderOptions;",
            ")V"
        }
    .end annotation

    .line 281
    .local p0, "stack":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-virtual {p5}, Lcom/typesafe/config/ConfigRenderOptions;->getComments()Z

    move-result v0

    .line 282
    .local v0, "commentMerge":Z
    if-eqz v0, :cond_0

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# unresolved merge of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " values follows (\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    if-nez p4, :cond_0

    .line 285
    invoke-static {p1, p2, p5}, Lcom/typesafe/config/impl/ConfigDelayedMerge;->indent(Ljava/lang/StringBuilder;ILcom/typesafe/config/ConfigRenderOptions;)V

    .line 286
    const-string v1, "# this unresolved merge will not be parseable because it\'s at the root of the object\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-static {p1, p2, p5}, Lcom/typesafe/config/impl/ConfigDelayedMerge;->indent(Ljava/lang/StringBuilder;ILcom/typesafe/config/ConfigRenderOptions;)V

    .line 288
    const-string v1, "# the HOCON format has no way to list multiple root objects in a single file\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v1, "reversed":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 294
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 296
    const/4 v2, 0x0

    .line 297
    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "\n"

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 298
    .local v4, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    if-eqz v0, :cond_2

    .line 299
    invoke-static {p1, p2, p5}, Lcom/typesafe/config/impl/ConfigDelayedMerge;->indent(Ljava/lang/StringBuilder;ILcom/typesafe/config/ConfigRenderOptions;)V

    .line 300
    const-string v6, " from "

    const-string v7, "#     unmerged value "

    if-eqz p4, :cond_1

    .line 301
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 302
    invoke-static {p4}, Lcom/typesafe/config/impl/ConfigImplUtil;->renderJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 301
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 304
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 307
    invoke-virtual {v4}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v6

    invoke-virtual {v6}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->description()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v4}, Lcom/typesafe/config/impl/AbstractConfigValue;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v6

    invoke-virtual {v6}, Lcom/typesafe/config/impl/SimpleConfigOrigin;->comments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 311
    .local v7, "comment":Ljava/lang/String;
    invoke-static {p1, p2, p5}, Lcom/typesafe/config/impl/ConfigDelayedMerge;->indent(Ljava/lang/StringBuilder;ILcom/typesafe/config/ConfigRenderOptions;)V

    .line 312
    const-string v8, "# "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .end local v7    # "comment":Ljava/lang/String;
    goto :goto_2

    .line 317
    :cond_2
    invoke-static {p1, p2, p5}, Lcom/typesafe/config/impl/ConfigDelayedMerge;->indent(Ljava/lang/StringBuilder;ILcom/typesafe/config/ConfigRenderOptions;)V

    .line 319
    if-eqz p4, :cond_4

    .line 320
    invoke-static {p4}, Lcom/typesafe/config/impl/ConfigImplUtil;->renderJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {p5}, Lcom/typesafe/config/ConfigRenderOptions;->getFormatted()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 322
    const-string v5, " : "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 324
    :cond_3
    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_4
    :goto_3
    invoke-virtual {v4, p1, p2, p3, p5}, Lcom/typesafe/config/impl/AbstractConfigValue;->render(Ljava/lang/StringBuilder;IZLcom/typesafe/config/ConfigRenderOptions;)V

    .line 327
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {p5}, Lcom/typesafe/config/ConfigRenderOptions;->getFormatted()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 329
    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 330
    .end local v4    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_5
    goto/16 :goto_0

    .line 332
    :cond_6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 333
    invoke-virtual {p5}, Lcom/typesafe/config/ConfigRenderOptions;->getFormatted()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 334
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 335
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :cond_7
    if-eqz v0, :cond_8

    .line 338
    invoke-static {p1, p2, p5}, Lcom/typesafe/config/impl/ConfigDelayedMerge;->indent(Ljava/lang/StringBuilder;ILcom/typesafe/config/ConfigRenderOptions;)V

    .line 339
    const-string v3, "# ) end of unresolved merge\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_8
    return-void
.end method

.method static resolveSubstitutions(Lcom/typesafe/config/impl/ReplaceableMergeStack;Ljava/util/List;Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/ResolveSource;)Lcom/typesafe/config/impl/ResolveResult;
    .locals 12
    .param p0, "replaceable"    # Lcom/typesafe/config/impl/ReplaceableMergeStack;
    .param p2, "context"    # Lcom/typesafe/config/impl/ResolveContext;
    .param p3, "source"    # Lcom/typesafe/config/impl/ResolveSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/impl/ReplaceableMergeStack;",
            "Ljava/util/List<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;",
            "Lcom/typesafe/config/impl/ResolveContext;",
            "Lcom/typesafe/config/impl/ResolveSource;",
            ")",
            "Lcom/typesafe/config/impl/ResolveResult<",
            "+",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve;
        }
    .end annotation

    .line 66
    .local p1, "stack":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p2}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delayed merge stack has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " items:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "count":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 70
    .local v3, "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-virtual {p2}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v4

    add-int/2addr v4, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 71
    nop

    .end local v3    # "v":Lcom/typesafe/config/impl/AbstractConfigValue;
    add-int/lit8 v0, v0, 0x1

    .line 72
    goto :goto_0

    .line 81
    .end local v0    # "count":I
    :cond_0
    move-object v0, p2

    .line 82
    .local v0, "newContext":Lcom/typesafe/config/impl/ResolveContext;
    const/4 v2, 0x0

    .line 83
    .local v2, "count":I
    const/4 v3, 0x0

    .line 84
    .local v3, "merged":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 89
    .local v5, "end":Lcom/typesafe/config/impl/AbstractConfigValue;
    instance-of v6, v5, Lcom/typesafe/config/impl/ReplaceableMergeStack;

    if-nez v6, :cond_d

    .line 91
    instance-of v6, v5, Lcom/typesafe/config/impl/Unmergeable;

    if-eqz v6, :cond_4

    .line 94
    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0, p2, v6}, Lcom/typesafe/config/impl/ReplaceableMergeStack;->makeReplacement(Lcom/typesafe/config/impl/ResolveContext;I)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v6

    .line 96
    .local v6, "remainder":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 97
    invoke-virtual {v0}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "remainder portion: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 105
    :cond_1
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 106
    invoke-virtual {v0}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v7

    const-string v8, "building sourceForEnd"

    invoke-static {v7, v8}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 110
    :cond_2
    move-object v7, p0

    check-cast v7, Lcom/typesafe/config/impl/AbstractConfigValue;

    invoke-virtual {p3, v7, v6}, Lcom/typesafe/config/impl/ResolveSource;->replaceWithinCurrentParent(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveSource;

    move-result-object v7

    .line 112
    .local v7, "sourceForEnd":Lcom/typesafe/config/impl/ResolveSource;
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 113
    invoke-virtual {v0}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  sourceForEnd before reset parents but after replace: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 116
    :cond_3
    invoke-virtual {v7}, Lcom/typesafe/config/impl/ResolveSource;->resetParents()Lcom/typesafe/config/impl/ResolveSource;

    move-result-object v6

    .line 117
    .end local v7    # "sourceForEnd":Lcom/typesafe/config/impl/ResolveSource;
    .local v6, "sourceForEnd":Lcom/typesafe/config/impl/ResolveSource;
    goto :goto_2

    .line 118
    .end local v6    # "sourceForEnd":Lcom/typesafe/config/impl/ResolveSource;
    :cond_4
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 119
    invoke-virtual {v0}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v6

    const-string v7, "will resolve end against the original source with parent pushed"

    invoke-static {v6, v7}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 122
    :cond_5
    invoke-virtual {p3, p0}, Lcom/typesafe/config/impl/ResolveSource;->pushParent(Lcom/typesafe/config/impl/Container;)Lcom/typesafe/config/impl/ResolveSource;

    move-result-object v6

    .line 125
    .restart local v6    # "sourceForEnd":Lcom/typesafe/config/impl/ResolveSource;
    :goto_2
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 126
    invoke-virtual {v0}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sourceForEnd      ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 129
    :cond_6
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 130
    invoke-virtual {v0}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resolving highest-priority item in delayed merge "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " against "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " endWasRemoved="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eq p3, v6, :cond_7

    move v9, v1

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 132
    :cond_8
    invoke-virtual {v0, v5, v6}, Lcom/typesafe/config/impl/ResolveContext;->resolve(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/ResolveSource;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v7

    .line 133
    .local v7, "result":Lcom/typesafe/config/impl/ResolveResult;, "Lcom/typesafe/config/impl/ResolveResult<+Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    iget-object v8, v7, Lcom/typesafe/config/impl/ResolveResult;->value:Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 134
    .local v8, "resolvedEnd":Lcom/typesafe/config/impl/AbstractConfigValue;
    iget-object v0, v7, Lcom/typesafe/config/impl/ResolveResult;->context:Lcom/typesafe/config/impl/ResolveContext;

    .line 136
    if-eqz v8, :cond_b

    .line 137
    if-nez v3, :cond_9

    .line 138
    move-object v3, v8

    goto :goto_4

    .line 140
    :cond_9
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 141
    invoke-virtual {v0}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v9

    add-int/2addr v9, v1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "merging "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " with fallback "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 142
    :cond_a
    invoke-virtual {v3, v8}, Lcom/typesafe/config/impl/AbstractConfigValue;->withFallback(Lcom/typesafe/config/ConfigMergeable;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v3

    .line 146
    :cond_b
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 148
    invoke-static {}, Lcom/typesafe/config/impl/ConfigImpl;->traceSubstitutionsEnabled()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 149
    invoke-virtual {v0}, Lcom/typesafe/config/impl/ResolveContext;->depth()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "stack merged, yielding: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/typesafe/config/impl/ConfigImpl;->trace(ILjava/lang/String;)V

    .line 150
    .end local v5    # "end":Lcom/typesafe/config/impl/AbstractConfigValue;
    .end local v6    # "sourceForEnd":Lcom/typesafe/config/impl/ResolveSource;
    .end local v7    # "result":Lcom/typesafe/config/impl/ResolveResult;, "Lcom/typesafe/config/impl/ResolveResult<+Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    .end local v8    # "resolvedEnd":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_c
    goto/16 :goto_1

    .line 90
    .restart local v5    # "end":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_d
    new-instance v1, Lcom/typesafe/config/ConfigException$BugOrBroken;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A delayed merge should not contain another one: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/typesafe/config/ConfigException$BugOrBroken;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    .end local v5    # "end":Lcom/typesafe/config/impl/AbstractConfigValue;
    :cond_e
    invoke-static {v0, v3}, Lcom/typesafe/config/impl/ResolveResult;->make(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v1

    return-object v1
.end method

.method static stackIgnoresFallbacks(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;)Z"
        }
    .end annotation

    .line 211
    .local p0, "stack":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 212
    .local v0, "last":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-virtual {v0}, Lcom/typesafe/config/impl/AbstractConfigValue;->ignoresFallbacks()Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 247
    instance-of v0, p1, Lcom/typesafe/config/impl/ConfigDelayedMerge;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 253
    instance-of v0, p1, Lcom/typesafe/config/impl/ConfigDelayedMerge;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 254
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMerge;->canEqual(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDelayedMerge;->stack:Ljava/util/List;

    move-object v2, p1

    check-cast v2, Lcom/typesafe/config/impl/ConfigDelayedMerge;

    iget-object v2, v2, Lcom/typesafe/config/impl/ConfigDelayedMerge;->stack:Ljava/util/List;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDelayedMerge;->stack:Ljava/util/List;

    move-object v2, p1

    check-cast v2, Lcom/typesafe/config/impl/ConfigDelayedMerge;

    iget-object v2, v2, Lcom/typesafe/config/impl/ConfigDelayedMerge;->stack:Ljava/util/List;

    .line 256
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 254
    :goto_0
    return v1

    .line 258
    :cond_2
    return v1
.end method

.method public hasDescendant(Lcom/typesafe/config/impl/AbstractConfigValue;)Z
    .locals 1
    .param p1, "descendant"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 197
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDelayedMerge;->stack:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMerge;->hasDescendantInList(Ljava/util/List;Lcom/typesafe/config/impl/AbstractConfigValue;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDelayedMerge;->stack:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected ignoresFallbacks()Z
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDelayedMerge;->stack:Ljava/util/List;

    invoke-static {v0}, Lcom/typesafe/config/impl/ConfigDelayedMerge;->stackIgnoresFallbacks(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public makeReplacement(Lcom/typesafe/config/impl/ResolveContext;I)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 1
    .param p1, "context"    # Lcom/typesafe/config/impl/ResolveContext;
    .param p2, "skipping"    # I

    .line 157
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDelayedMerge;->stack:Ljava/util/List;

    invoke-static {p1, v0, p2}, Lcom/typesafe/config/impl/ConfigDelayedMerge;->makeReplacement(Lcom/typesafe/config/impl/ResolveContext;Ljava/util/List;I)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic mergedWithNonObject(Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMerge;->mergedWithNonObject(Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ConfigDelayedMerge;

    move-result-object p1

    return-object p1
.end method

.method protected mergedWithNonObject(Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/ConfigDelayedMerge;
    .locals 1
    .param p1, "fallback"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 237
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDelayedMerge;->stack:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMerge;->mergedWithNonObject(Ljava/util/Collection;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/ConfigDelayedMerge;

    return-object v0
.end method

.method protected bridge synthetic mergedWithObject(Lcom/typesafe/config/impl/AbstractConfigObject;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMerge;->mergedWithObject(Lcom/typesafe/config/impl/AbstractConfigObject;)Lcom/typesafe/config/impl/ConfigDelayedMerge;

    move-result-object p1

    return-object p1
.end method

.method protected final mergedWithObject(Lcom/typesafe/config/impl/AbstractConfigObject;)Lcom/typesafe/config/impl/ConfigDelayedMerge;
    .locals 1
    .param p1, "fallback"    # Lcom/typesafe/config/impl/AbstractConfigObject;

    .line 232
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDelayedMerge;->stack:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMerge;->mergedWithObject(Ljava/util/Collection;Lcom/typesafe/config/impl/AbstractConfigObject;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/ConfigDelayedMerge;

    return-object v0
.end method

.method protected bridge synthetic mergedWithTheUnmergeable(Lcom/typesafe/config/impl/Unmergeable;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMerge;->mergedWithTheUnmergeable(Lcom/typesafe/config/impl/Unmergeable;)Lcom/typesafe/config/impl/ConfigDelayedMerge;

    move-result-object p1

    return-object p1
.end method

.method protected final mergedWithTheUnmergeable(Lcom/typesafe/config/impl/Unmergeable;)Lcom/typesafe/config/impl/ConfigDelayedMerge;
    .locals 1
    .param p1, "fallback"    # Lcom/typesafe/config/impl/Unmergeable;

    .line 227
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDelayedMerge;->stack:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMerge;->mergedWithTheUnmergeable(Ljava/util/Collection;Lcom/typesafe/config/impl/Unmergeable;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v0

    check-cast v0, Lcom/typesafe/config/impl/ConfigDelayedMerge;

    return-object v0
.end method

.method protected newCopy(Lcom/typesafe/config/ConfigOrigin;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 2
    .param p1, "newOrigin"    # Lcom/typesafe/config/ConfigOrigin;

    .line 222
    new-instance v0, Lcom/typesafe/config/impl/ConfigDelayedMerge;

    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigDelayedMerge;->stack:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/typesafe/config/impl/ConfigDelayedMerge;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)V

    return-object v0
.end method

.method bridge synthetic relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/typesafe/config/impl/ConfigDelayedMerge;->relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/ConfigDelayedMerge;

    move-result-object p1

    return-object p1
.end method

.method relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/ConfigDelayedMerge;
    .locals 4
    .param p1, "prefix"    # Lcom/typesafe/config/impl/Path;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v0, "newStack":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    iget-object v1, p0, Lcom/typesafe/config/impl/ConfigDelayedMerge;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 204
    .local v2, "o":Lcom/typesafe/config/impl/AbstractConfigValue;
    invoke-virtual {v2, p1}, Lcom/typesafe/config/impl/AbstractConfigValue;->relativized(Lcom/typesafe/config/impl/Path;)Lcom/typesafe/config/impl/AbstractConfigValue;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v2    # "o":Lcom/typesafe/config/impl/AbstractConfigValue;
    goto :goto_0

    .line 206
    :cond_0
    new-instance v1, Lcom/typesafe/config/impl/ConfigDelayedMerge;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigDelayedMerge;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/typesafe/config/impl/ConfigDelayedMerge;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)V

    return-object v1
.end method

.method protected render(Ljava/lang/StringBuilder;IZLcom/typesafe/config/ConfigRenderOptions;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # I
    .param p3, "atRoot"    # Z
    .param p4, "options"    # Lcom/typesafe/config/ConfigRenderOptions;

    .line 275
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/typesafe/config/impl/ConfigDelayedMerge;->render(Ljava/lang/StringBuilder;IZLjava/lang/String;Lcom/typesafe/config/ConfigRenderOptions;)V

    .line 276
    return-void
.end method

.method protected render(Ljava/lang/StringBuilder;IZLjava/lang/String;Lcom/typesafe/config/ConfigRenderOptions;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # I
    .param p3, "atRoot"    # Z
    .param p4, "atKey"    # Ljava/lang/String;
    .param p5, "options"    # Lcom/typesafe/config/ConfigRenderOptions;

    .line 270
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDelayedMerge;->stack:Ljava/util/List;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/typesafe/config/impl/ConfigDelayedMerge;->render(Ljava/util/List;Ljava/lang/StringBuilder;IZLjava/lang/String;Lcom/typesafe/config/ConfigRenderOptions;)V

    .line 271
    return-void
.end method

.method public replaceChild(Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;)Lcom/typesafe/config/impl/AbstractConfigValue;
    .locals 3
    .param p1, "child"    # Lcom/typesafe/config/impl/AbstractConfigValue;
    .param p2, "replacement"    # Lcom/typesafe/config/impl/AbstractConfigValue;

    .line 188
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDelayedMerge;->stack:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/typesafe/config/impl/ConfigDelayedMerge;->replaceChildInList(Ljava/util/List;Lcom/typesafe/config/impl/AbstractConfigValue;Lcom/typesafe/config/impl/AbstractConfigValue;)Ljava/util/List;

    move-result-object v0

    .line 189
    .local v0, "newStack":Ljava/util/List;, "Ljava/util/List<Lcom/typesafe/config/impl/AbstractConfigValue;>;"
    if-nez v0, :cond_0

    .line 190
    const/4 v1, 0x0

    return-object v1

    .line 192
    :cond_0
    new-instance v1, Lcom/typesafe/config/impl/ConfigDelayedMerge;

    invoke-virtual {p0}, Lcom/typesafe/config/impl/ConfigDelayedMerge;->origin()Lcom/typesafe/config/impl/SimpleConfigOrigin;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/typesafe/config/impl/ConfigDelayedMerge;-><init>(Lcom/typesafe/config/ConfigOrigin;Ljava/util/List;)V

    return-object v1
.end method

.method resolveStatus()Lcom/typesafe/config/impl/ResolveStatus;
    .locals 1

    .line 183
    sget-object v0, Lcom/typesafe/config/impl/ResolveStatus;->UNRESOLVED:Lcom/typesafe/config/impl/ResolveStatus;

    return-object v0
.end method

.method resolveSubstitutions(Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/ResolveSource;)Lcom/typesafe/config/impl/ResolveResult;
    .locals 1
    .param p1, "context"    # Lcom/typesafe/config/impl/ResolveContext;
    .param p2, "source"    # Lcom/typesafe/config/impl/ResolveSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/typesafe/config/impl/ResolveContext;",
            "Lcom/typesafe/config/impl/ResolveSource;",
            ")",
            "Lcom/typesafe/config/impl/ResolveResult<",
            "+",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/typesafe/config/impl/AbstractConfigValue$NotPossibleToResolve;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDelayedMerge;->stack:Ljava/util/List;

    invoke-static {p0, v0, p1, p2}, Lcom/typesafe/config/impl/ConfigDelayedMerge;->resolveSubstitutions(Lcom/typesafe/config/impl/ReplaceableMergeStack;Ljava/util/List;Lcom/typesafe/config/impl/ResolveContext;Lcom/typesafe/config/impl/ResolveSource;)Lcom/typesafe/config/impl/ResolveResult;

    move-result-object v0

    return-object v0
.end method

.method public unmergedValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/typesafe/config/impl/AbstractConfigValue;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/typesafe/config/impl/ConfigDelayedMerge;->stack:Ljava/util/List;

    return-object v0
.end method

.method public unwrapped()Ljava/lang/Object;
    .locals 2

    .line 52
    new-instance v0, Lcom/typesafe/config/ConfigException$NotResolved;

    const-string v1, "called unwrapped() on value with unresolved substitutions, need to Config#resolve() first, see API docs"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$NotResolved;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public valueType()Lcom/typesafe/config/ConfigValueType;
    .locals 2

    .line 46
    new-instance v0, Lcom/typesafe/config/ConfigException$NotResolved;

    const-string v1, "called valueType() on value with unresolved substitutions, need to Config#resolve() first, see API docs"

    invoke-direct {v0, v1}, Lcom/typesafe/config/ConfigException$NotResolved;-><init>(Ljava/lang/String;)V

    throw v0
.end method
