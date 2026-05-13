.class public final Lio/ktor/server/engine/CommandLineKt;
.super Ljava/lang/Object;
.source "CommandLine.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommandLine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommandLine.kt\nio/ktor/server/engine/CommandLineKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,160:1\n11653#2,9:161\n13579#2:170\n13580#2:172\n11662#2:173\n11653#2,9:174\n13579#2:183\n13580#2:185\n11662#2:186\n1#3:171\n1#3:184\n766#4:187\n857#4,2:188\n1549#4:190\n1620#4,3:191\n766#4:194\n857#4,2:195\n1549#4:197\n1620#4,3:198\n1549#4:201\n1620#4,3:202\n2661#4,7:205\n*S KotlinDebug\n*F\n+ 1 CommandLine.kt\nio/ktor/server/engine/CommandLineKt\n*L\n32#1:161,9\n32#1:170\n32#1:172\n32#1:173\n101#1:174,9\n101#1:183\n101#1:185\n101#1:186\n32#1:171\n101#1:184\n103#1:187\n103#1:188,2\n104#1:190\n104#1:191,3\n106#1:194\n106#1:195,2\n106#1:197\n106#1:198,3\n114#1:201\n114#1:202,3\n114#1:205,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000c\n\u0000\u001a\u001b\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0000\u00a2\u0006\u0002\u0010\u0005\u001a6\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0019\u0008\u0002\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0002\u0008\u000cH\u0000\u00a2\u0006\u0002\u0010\r\u001a\u0019\u0010\u000e\u001a\u00020\u00072\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u000f\u001a\u0012\u0010\u0010\u001a\u00020\u000b*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0001\u001a\"\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0014*\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0016H\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "buildApplicationConfig",
        "Lio/ktor/server/config/ApplicationConfig;",
        "args",
        "",
        "",
        "([Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfig;",
        "buildCommandLineEnvironment",
        "Lio/ktor/server/engine/ApplicationEngineEnvironment;",
        "environmentBuilder",
        "Lkotlin/Function1;",
        "Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "([Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngineEnvironment;",
        "commandLineEnvironment",
        "([Ljava/lang/String;)Lio/ktor/server/engine/ApplicationEngineEnvironment;",
        "loadCommonConfiguration",
        "Lio/ktor/server/engine/BaseApplicationEngine$Configuration;",
        "deploymentConfig",
        "splitPair",
        "Lkotlin/Pair;",
        "ch",
        "",
        "ktor-server-host-common"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final buildApplicationConfig([Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfig;
    .locals 17
    .param p0, "args"    # [Ljava/lang/String;

    const-string v0, "args"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    move-object/from16 v0, p0

    .local v0, "$this$mapNotNull$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 174
    .local v2, "$i$f$mapNotNull":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v0

    .local v4, "$this$mapNotNullTo$iv$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 182
    .local v5, "$i$f$mapNotNullTo":I
    move-object v6, v4

    .local v6, "$this$forEach$iv$iv$iv":[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 183
    .local v7, "$i$f$forEach":I
    array-length v8, v6

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_1

    aget-object v11, v6, v10

    .local v11, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "element$iv$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 182
    .local v13, "$i$a$-forEach-ArraysKt___ArraysKt$mapNotNullTo$1$iv$iv":I
    move-object v14, v12

    .local v14, "it":Ljava/lang/String;
    const/4 v15, 0x0

    .line 101
    .local v15, "$i$a$-mapNotNull-CommandLineKt$buildApplicationConfig$argumentsPairs$1":I
    const/16 v9, 0x3d

    invoke-static {v14, v9}, Lio/ktor/server/engine/CommandLineKt;->splitPair(Ljava/lang/String;C)Lkotlin/Pair;

    move-result-object v9

    .line 182
    .end local v14    # "it":Ljava/lang/String;
    .end local v15    # "$i$a$-mapNotNull-CommandLineKt$buildApplicationConfig$argumentsPairs$1":I
    if-eqz v9, :cond_0

    .line 184
    .local v9, "it$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 182
    .local v14, "$i$a$-let-ArraysKt___ArraysKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v3, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v9    # "it$iv$iv":Ljava/lang/Object;
    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-forEach-ArraysKt___ArraysKt$mapNotNullTo$1$iv$iv":I
    .end local v14    # "$i$a$-let-ArraysKt___ArraysKt$mapNotNullTo$1$1$iv$iv":I
    :cond_0
    nop

    .end local v11    # "element$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 185
    :cond_1
    nop

    .line 186
    .end local v6    # "$this$forEach$iv$iv$iv":[Ljava/lang/Object;
    .end local v7    # "$i$f$forEach":I
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapNotNullTo$iv$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$mapNotNullTo":I
    check-cast v3, Ljava/util/List;

    .line 174
    nop

    .line 101
    .end local v0    # "$this$mapNotNull$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$mapNotNull":I
    move-object v0, v3

    .line 102
    .local v0, "argumentsPairs":Ljava/util/List;
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    .line 103
    nop

    .local v2, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 187
    .local v3, "$i$f$filter":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 188
    .local v6, "$i$f$filterTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "-P:"

    const/4 v10, 0x0

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v11, v8

    check-cast v11, Lkotlin/Pair;

    .local v11, "it":Lkotlin/Pair;
    const/4 v12, 0x0

    .line 103
    .local v12, "$i$a$-filter-CommandLineKt$buildApplicationConfig$commandLineProperties$1":I
    invoke-virtual {v11}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-static {v13, v9, v15, v14, v10}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    .line 188
    .end local v11    # "it":Lkotlin/Pair;
    .end local v12    # "$i$a$-filter-CommandLineKt$buildApplicationConfig$commandLineProperties$1":I
    if-eqz v9, :cond_2

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 189
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    :cond_3
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filterTo":I
    check-cast v4, Ljava/util/List;

    .line 187
    nop

    .end local v2    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$filter":I
    check-cast v4, Ljava/lang/Iterable;

    .line 104
    move-object v2, v4

    .local v2, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 190
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .restart local v4    # "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v2

    .local v6, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 191
    .local v7, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 192
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Lkotlin/Pair;

    .local v12, "it":Lkotlin/Pair;
    const/4 v13, 0x0

    .line 104
    .local v13, "$i$a$-map-CommandLineKt$buildApplicationConfig$commandLineProperties$2":I
    invoke-virtual {v12}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v15, v9

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v14, v15}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v14, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    .line 192
    .end local v12    # "it":Lkotlin/Pair;
    .end local v13    # "$i$a$-map-CommandLineKt$buildApplicationConfig$commandLineProperties$2":I
    invoke-interface {v4, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 193
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    :cond_4
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapTo":I
    check-cast v4, Ljava/util/List;

    .line 190
    nop

    .line 104
    .end local v2    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map":I
    nop

    .line 102
    move-object v2, v4

    .line 106
    .local v2, "commandLineProperties":Ljava/util/List;
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 194
    .local v4, "$i$f$filter":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v3

    .local v7, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 195
    .local v8, "$i$f$filterTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Lkotlin/Pair;

    .restart local v12    # "it":Lkotlin/Pair;
    const/4 v13, 0x0

    .line 106
    .local v13, "$i$a$-filter-CommandLineKt$buildApplicationConfig$configPaths$1":I
    invoke-virtual {v12}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v14

    const-string v15, "-config"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .line 195
    .end local v12    # "it":Lkotlin/Pair;
    .end local v13    # "$i$a$-filter-CommandLineKt$buildApplicationConfig$configPaths$1":I
    if-eqz v12, :cond_5

    invoke-interface {v6, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 196
    .end local v11    # "element$iv$iv":Ljava/lang/Object;
    :cond_6
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$filterTo":I
    check-cast v6, Ljava/util/List;

    .line 194
    nop

    .end local v3    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filter":I
    check-cast v6, Ljava/lang/Iterable;

    .line 106
    move-object v3, v6

    .local v3, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 197
    .local v4, "$i$f$map":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .restart local v6    # "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v3

    .local v7, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 198
    .local v8, "$i$f$mapTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 199
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Lkotlin/Pair;

    .restart local v12    # "it":Lkotlin/Pair;
    const/4 v13, 0x0

    .line 106
    .local v13, "$i$a$-map-CommandLineKt$buildApplicationConfig$configPaths$2":I
    invoke-virtual {v12}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 199
    .end local v12    # "it":Lkotlin/Pair;
    .end local v13    # "$i$a$-map-CommandLineKt$buildApplicationConfig$configPaths$2":I
    invoke-interface {v6, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 200
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    :cond_7
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$mapTo":I
    check-cast v6, Ljava/util/List;

    .line 197
    nop

    .line 106
    .end local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$map":I
    move-object v3, v6

    .line 108
    .local v3, "configPaths":Ljava/util/List;
    new-instance v4, Lio/ktor/server/config/MapApplicationConfig;

    invoke-direct {v4, v2}, Lio/ktor/server/config/MapApplicationConfig;-><init>(Ljava/util/List;)V

    .line 109
    .local v4, "commandLineConfig":Lio/ktor/server/config/MapApplicationConfig;
    invoke-static {}, Lio/ktor/server/engine/EnvironmentUtilsJvmKt;->getConfigFromEnvironment()Lio/ktor/server/config/ApplicationConfig;

    move-result-object v6

    .line 111
    .local v6, "environmentConfig":Lio/ktor/server/config/ApplicationConfig;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 114
    move-object v7, v3

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 201
    .local v8, "$i$f$map":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v7, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v9

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v9, v7

    .local v9, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 202
    .local v10, "$i$f$mapTo":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    goto :goto_5

    .line 113
    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$map":I
    .end local v9    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$mapTo":I
    :pswitch_0
    sget-object v5, Lio/ktor/server/config/ConfigLoader;->Companion:Lio/ktor/server/config/ConfigLoader$Companion;

    sget-object v7, Lio/ktor/server/config/ConfigLoader;->Companion:Lio/ktor/server/config/ConfigLoader$Companion;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lio/ktor/server/config/ConfigLoader$Companion;->load(Lio/ktor/server/config/ConfigLoader$Companion;Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfig;

    move-result-object v5

    move-object/from16 v16, v0

    goto :goto_7

    .line 112
    :pswitch_1
    sget-object v5, Lio/ktor/server/config/ConfigLoader;->Companion:Lio/ktor/server/config/ConfigLoader$Companion;

    sget-object v7, Lio/ktor/server/config/ConfigLoader;->Companion:Lio/ktor/server/config/ConfigLoader$Companion;

    const/4 v8, 0x1

    invoke-static {v5, v7, v10, v8, v10}, Lio/ktor/server/config/ConfigLoader$Companion;->load$default(Lio/ktor/server/config/ConfigLoader$Companion;Lio/ktor/server/config/ConfigLoader$Companion;Ljava/lang/String;ILjava/lang/Object;)Lio/ktor/server/config/ApplicationConfig;

    move-result-object v5

    move-object/from16 v16, v0

    goto :goto_7

    .line 202
    .restart local v5    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v7    # "$this$map$iv":Ljava/lang/Iterable;
    .restart local v8    # "$i$f$map":I
    .restart local v9    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .restart local v10    # "$i$f$mapTo":I
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 203
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Ljava/lang/String;

    .local v13, "it":Ljava/lang/String;
    const/4 v14, 0x0

    .line 114
    .local v14, "$i$a$-map-CommandLineKt$buildApplicationConfig$fileConfig$1":I
    sget-object v15, Lio/ktor/server/config/ConfigLoader;->Companion:Lio/ktor/server/config/ConfigLoader$Companion;

    move-object/from16 v16, v0

    .end local v0    # "argumentsPairs":Ljava/util/List;
    .local v16, "argumentsPairs":Ljava/util/List;
    sget-object v0, Lio/ktor/server/config/ConfigLoader;->Companion:Lio/ktor/server/config/ConfigLoader$Companion;

    invoke-virtual {v15, v0, v13}, Lio/ktor/server/config/ConfigLoader$Companion;->load(Lio/ktor/server/config/ConfigLoader$Companion;Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfig;

    move-result-object v0

    .line 203
    .end local v13    # "it":Ljava/lang/String;
    .end local v14    # "$i$a$-map-CommandLineKt$buildApplicationConfig$fileConfig$1":I
    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    goto :goto_5

    .line 204
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    .end local v16    # "argumentsPairs":Ljava/util/List;
    .restart local v0    # "argumentsPairs":Ljava/util/List;
    :cond_8
    move-object/from16 v16, v0

    .end local v0    # "argumentsPairs":Ljava/util/List;
    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v9    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$mapTo":I
    .restart local v16    # "argumentsPairs":Ljava/util/List;
    move-object v0, v5

    check-cast v0, Ljava/util/List;

    .line 201
    nop

    .end local v7    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$map":I
    check-cast v0, Ljava/lang/Iterable;

    .line 114
    nop

    .local v0, "$this$reduce$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 205
    .local v5, "$i$f$reduce":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 206
    .local v7, "iterator$iv":Ljava/util/Iterator;
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 207
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 208
    .local v8, "accumulator$iv":Ljava/lang/Object;
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 209
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/ktor/server/config/ApplicationConfig;

    .local v9, "second":Lio/ktor/server/config/ApplicationConfig;
    move-object v10, v8

    check-cast v10, Lio/ktor/server/config/ApplicationConfig;

    .local v10, "first":Lio/ktor/server/config/ApplicationConfig;
    const/4 v11, 0x0

    .line 114
    .local v11, "$i$a$-reduce-CommandLineKt$buildApplicationConfig$fileConfig$2":I
    invoke-static {v10, v9}, Lio/ktor/server/config/MergedApplicationConfigKt;->mergeWith(Lio/ktor/server/config/ApplicationConfig;Lio/ktor/server/config/ApplicationConfig;)Lio/ktor/server/config/ApplicationConfig;

    move-result-object v9

    .line 209
    .end local v9    # "second":Lio/ktor/server/config/ApplicationConfig;
    .end local v10    # "first":Lio/ktor/server/config/ApplicationConfig;
    .end local v11    # "$i$a$-reduce-CommandLineKt$buildApplicationConfig$fileConfig$2":I
    move-object v8, v9

    goto :goto_6

    .line 211
    :cond_9
    nop

    .end local v0    # "$this$reduce$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$reduce":I
    .end local v7    # "iterator$iv":Ljava/util/Iterator;
    .end local v8    # "accumulator$iv":Ljava/lang/Object;
    move-object v5, v8

    check-cast v5, Lio/ktor/server/config/ApplicationConfig;

    .line 111
    :goto_7
    move-object v0, v5

    .line 117
    .local v0, "fileConfig":Lio/ktor/server/config/ApplicationConfig;
    invoke-static {v0, v6}, Lio/ktor/server/config/MergedApplicationConfigKt;->mergeWith(Lio/ktor/server/config/ApplicationConfig;Lio/ktor/server/config/ApplicationConfig;)Lio/ktor/server/config/ApplicationConfig;

    move-result-object v5

    move-object v7, v4

    check-cast v7, Lio/ktor/server/config/ApplicationConfig;

    invoke-static {v5, v7}, Lio/ktor/server/config/MergedApplicationConfigKt;->mergeWith(Lio/ktor/server/config/ApplicationConfig;Lio/ktor/server/config/ApplicationConfig;)Lio/ktor/server/config/ApplicationConfig;

    move-result-object v5

    return-object v5

    .line 206
    .local v0, "$this$reduce$iv":Ljava/lang/Iterable;
    .restart local v5    # "$i$f$reduce":I
    .restart local v7    # "iterator$iv":Ljava/util/Iterator;
    :cond_a
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string v9, "Empty collection can\'t be reduced."

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final buildCommandLineEnvironment([Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngineEnvironment;
    .locals 17
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "environmentBuilder"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/engine/ApplicationEngineEnvironmentBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/server/engine/ApplicationEngineEnvironment;"
        }
    .end annotation

    const-string v0, "args"

    move-object/from16 v8, p0

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environmentBuilder"

    move-object/from16 v9, p1

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    move-object/from16 v0, p0

    .local v0, "$this$mapNotNull$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 161
    .local v1, "$i$f$mapNotNull":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapNotNullTo$iv$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 169
    .local v4, "$i$f$mapNotNullTo":I
    move-object v5, v3

    .local v5, "$this$forEach$iv$iv$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 170
    .local v6, "$i$f$forEach":I
    array-length v7, v5

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v7, :cond_1

    aget-object v11, v5, v10

    .local v11, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "element$iv$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 169
    .local v13, "$i$a$-forEach-ArraysKt___ArraysKt$mapNotNullTo$1$iv$iv":I
    move-object v14, v12

    .local v14, "it":Ljava/lang/String;
    const/4 v15, 0x0

    .line 32
    .local v15, "$i$a$-mapNotNull-CommandLineKt$buildCommandLineEnvironment$argumentsPairs$1":I
    move-object/from16 v16, v0

    .end local v0    # "$this$mapNotNull$iv":[Ljava/lang/Object;
    .local v16, "$this$mapNotNull$iv":[Ljava/lang/Object;
    const/16 v0, 0x3d

    invoke-static {v14, v0}, Lio/ktor/server/engine/CommandLineKt;->splitPair(Ljava/lang/String;C)Lkotlin/Pair;

    move-result-object v0

    .line 169
    .end local v14    # "it":Ljava/lang/String;
    .end local v15    # "$i$a$-mapNotNull-CommandLineKt$buildCommandLineEnvironment$argumentsPairs$1":I
    if-eqz v0, :cond_0

    .line 171
    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 169
    .local v14, "$i$a$-let-ArraysKt___ArraysKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 170
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-forEach-ArraysKt___ArraysKt$mapNotNullTo$1$iv$iv":I
    .end local v14    # "$i$a$-let-ArraysKt___ArraysKt$mapNotNullTo$1$1$iv$iv":I
    :cond_0
    nop

    .end local v11    # "element$iv$iv$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v16

    goto :goto_0

    .line 172
    .end local v16    # "$this$mapNotNull$iv":[Ljava/lang/Object;
    .local v0, "$this$mapNotNull$iv":[Ljava/lang/Object;
    :cond_1
    move-object/from16 v16, v0

    .line 173
    .end local v0    # "$this$mapNotNull$iv":[Ljava/lang/Object;
    .end local v5    # "$this$forEach$iv$iv$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$forEach":I
    .restart local v16    # "$this$mapNotNull$iv":[Ljava/lang/Object;
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapNotNullTo$iv$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$mapNotNullTo":I
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .line 161
    nop

    .end local v1    # "$i$f$mapNotNull":I
    .end local v16    # "$this$mapNotNull$iv":[Ljava/lang/Object;
    check-cast v0, Ljava/lang/Iterable;

    .line 32
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    .line 33
    .local v0, "argumentsPairs":Ljava/util/Map;
    invoke-static/range {p0 .. p0}, Lio/ktor/server/engine/CommandLineKt;->buildApplicationConfig([Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfig;

    move-result-object v10

    .line 34
    .local v10, "configuration":Lio/ktor/server/config/ApplicationConfig;
    const-string v1, "ktor.application.id"

    invoke-static {v10, v1}, Lio/ktor/server/config/ApplicationConfigKt;->tryGetString(Lio/ktor/server/config/ApplicationConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "Application"

    :cond_2
    move-object v11, v1

    .line 35
    .local v11, "applicationId":Ljava/lang/String;
    invoke-static {v11}, Lio/ktor/util/logging/KtorSimpleLoggerJvmKt;->KtorSimpleLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v12

    .line 37
    .local v12, "logger":Lorg/slf4j/Logger;
    const-string v1, "-path"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "ktor.deployment.rootPath"

    invoke-static {v10, v1}, Lio/ktor/server/config/ApplicationConfigKt;->tryGetString(Lio/ktor/server/config/ApplicationConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, ""

    :cond_3
    move-object v5, v1

    .line 39
    .local v5, "rootPath":Ljava/lang/String;
    new-instance v13, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;

    move-object v1, v13

    move-object v2, v12

    move-object/from16 v3, p0

    move-object v4, v10

    move-object v6, v0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$environment$1;-><init>(Lorg/slf4j/Logger;[Ljava/lang/String;Lio/ktor/server/config/ApplicationConfig;Ljava/lang/String;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V

    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-static {v13}, Lio/ktor/server/engine/ApplicationEngineEnvironmentKt;->applicationEngineEnvironment(Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngineEnvironment;

    move-result-object v1

    .line 91
    .local v1, "environment":Lio/ktor/server/engine/ApplicationEngineEnvironment;
    return-object v1
.end method

.method public static synthetic buildCommandLineEnvironment$default([Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/ktor/server/engine/ApplicationEngineEnvironment;
    .locals 0

    .line 28
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 30
    sget-object p1, Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$1;->INSTANCE:Lio/ktor/server/engine/CommandLineKt$buildCommandLineEnvironment$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 28
    :cond_0
    invoke-static {p0, p1}, Lio/ktor/server/engine/CommandLineKt;->buildCommandLineEnvironment([Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngineEnvironment;

    move-result-object p0

    return-object p0
.end method

.method public static final commandLineEnvironment([Ljava/lang/String;)Lio/ktor/server/engine/ApplicationEngineEnvironment;
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    const-string v0, "args"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lio/ktor/server/engine/CommandLineKt$commandLineEnvironment$1;->INSTANCE:Lio/ktor/server/engine/CommandLineKt$commandLineEnvironment$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Lio/ktor/server/engine/CommandLineKt;->buildCommandLineEnvironment([Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/ktor/server/engine/ApplicationEngineEnvironment;

    move-result-object v0

    return-object v0
.end method

.method public static final loadCommonConfiguration(Lio/ktor/server/engine/BaseApplicationEngine$Configuration;Lio/ktor/server/config/ApplicationConfig;)V
    .locals 3
    .param p0, "$this$loadCommonConfiguration"    # Lio/ktor/server/engine/BaseApplicationEngine$Configuration;
    .param p1, "deploymentConfig"    # Lio/ktor/server/config/ApplicationConfig;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deploymentConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    const-string v0, "callGroupSize"

    invoke-interface {p1, v0}, Lio/ktor/server/config/ApplicationConfig;->propertyOrNull(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/ktor/server/config/ApplicationConfigValue;->getString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, "it":I
    const/4 v1, 0x0

    .line 138
    .local v1, "$i$a$-let-CommandLineKt$loadCommonConfiguration$1":I
    invoke-virtual {p0, v0}, Lio/ktor/server/engine/BaseApplicationEngine$Configuration;->setCallGroupSize(I)V

    .line 139
    nop

    .line 137
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-CommandLineKt$loadCommonConfiguration$1":I
    :cond_0
    nop

    .line 140
    const-string v0, "connectionGroupSize"

    invoke-interface {p1, v0}, Lio/ktor/server/config/ApplicationConfig;->propertyOrNull(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/ktor/server/config/ApplicationConfigValue;->getString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "it":I
    const/4 v1, 0x0

    .line 141
    .local v1, "$i$a$-let-CommandLineKt$loadCommonConfiguration$2":I
    invoke-virtual {p0, v0}, Lio/ktor/server/engine/BaseApplicationEngine$Configuration;->setConnectionGroupSize(I)V

    .line 142
    nop

    .line 140
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-CommandLineKt$loadCommonConfiguration$2":I
    :cond_1
    nop

    .line 143
    const-string v0, "workerGroupSize"

    invoke-interface {p1, v0}, Lio/ktor/server/config/ApplicationConfig;->propertyOrNull(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/ktor/server/config/ApplicationConfigValue;->getString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "it":I
    const/4 v1, 0x0

    .line 144
    .local v1, "$i$a$-let-CommandLineKt$loadCommonConfiguration$3":I
    invoke-virtual {p0, v0}, Lio/ktor/server/engine/BaseApplicationEngine$Configuration;->setWorkerGroupSize(I)V

    .line 145
    nop

    .line 143
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-CommandLineKt$loadCommonConfiguration$3":I
    :cond_2
    nop

    .line 146
    const-string v0, "shutdownGracePeriod"

    invoke-interface {p1, v0}, Lio/ktor/server/config/ApplicationConfig;->propertyOrNull(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/ktor/server/config/ApplicationConfigValue;->getString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .local v0, "it":J
    const/4 v2, 0x0

    .line 147
    .local v2, "$i$a$-let-CommandLineKt$loadCommonConfiguration$4":I
    invoke-virtual {p0, v0, v1}, Lio/ktor/server/engine/BaseApplicationEngine$Configuration;->setShutdownGracePeriod(J)V

    .line 148
    nop

    .line 146
    .end local v0    # "it":J
    .end local v2    # "$i$a$-let-CommandLineKt$loadCommonConfiguration$4":I
    :cond_3
    nop

    .line 149
    const-string v0, "shutdownTimeout"

    invoke-interface {p1, v0}, Lio/ktor/server/config/ApplicationConfig;->propertyOrNull(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/ktor/server/config/ApplicationConfigValue;->getString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .restart local v0    # "it":J
    const/4 v2, 0x0

    .line 150
    .local v2, "$i$a$-let-CommandLineKt$loadCommonConfiguration$5":I
    invoke-virtual {p0, v0, v1}, Lio/ktor/server/engine/BaseApplicationEngine$Configuration;->setShutdownTimeout(J)V

    .line 151
    nop

    .line 149
    .end local v0    # "it":J
    .end local v2    # "$i$a$-let-CommandLineKt$loadCommonConfiguration$5":I
    :cond_4
    nop

    .line 152
    return-void
.end method

.method public static final splitPair(Ljava/lang/String;C)Lkotlin/Pair;
    .locals 7
    .param p0, "$this$splitPair"    # Ljava/lang/String;
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C)",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v2, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    .local v0, "idx":I
    const/4 v1, 0x0

    .line 155
    .local v1, "$i$a$-let-CommandLineKt$splitPair$1":I
    nop

    .line 156
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 157
    :cond_0
    new-instance v2, Lkotlin/Pair;

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-static {p0, v4}, Lkotlin/text/StringsKt;->drop(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    :goto_0
    nop

    .line 154
    .end local v0    # "idx":I
    .end local v1    # "$i$a$-let-CommandLineKt$splitPair$1":I
    nop

    .line 159
    return-object v2
.end method
