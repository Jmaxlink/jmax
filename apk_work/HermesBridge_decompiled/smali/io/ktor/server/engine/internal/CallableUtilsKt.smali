.class public final Lio/ktor/server/engine/internal/CallableUtilsKt;
.super Ljava/lang/Object;
.source "CallableUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCallableUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CallableUtils.kt\nio/ktor/server/engine/internal/CallableUtilsKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,126:1\n3792#2:127\n4307#2,2:128\n1603#3,9:130\n1855#3:139\n1856#3:141\n1612#3:142\n766#3:143\n857#3,2:144\n2624#3,3:146\n766#3:149\n857#3,2:150\n766#3:152\n857#3:153\n1726#3,3:154\n858#3:157\n819#3:158\n847#3,2:159\n1208#3,2:161\n1238#3,4:163\n1#4:140\n*S KotlinDebug\n*F\n+ 1 CallableUtils.kt\nio/ktor/server/engine/internal/CallableUtilsKt\n*L\n30#1:127\n30#1:128,2\n31#1:130,9\n31#1:139\n31#1:141\n31#1:142\n32#1:143\n32#1:144,2\n35#1:146,3\n62#1:149\n62#1:150,2\n79#1:152\n79#1:153\n80#1:154,3\n79#1:157\n94#1:158\n94#1:159,2\n94#1:161,2\n94#1:163,4\n31#1:140\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a7\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002\u00a2\u0006\u0002\u0010\t\u001a \u0010\n\u001a\u00020\u0004*\u00020\u00022\n\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u000c2\u0006\u0010\u0007\u001a\u00020\u0008H\u0002\u001a$\u0010\r\u001a\u00020\u000e*\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0008H\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "callFunctionWithInjection",
        "R",
        "Lio/ktor/server/application/ApplicationEnvironment;",
        "instance",
        "",
        "entryPoint",
        "Lkotlin/reflect/KFunction;",
        "application",
        "Lio/ktor/server/application/Application;",
        "(Lio/ktor/server/application/ApplicationEnvironment;Ljava/lang/Object;Lkotlin/reflect/KFunction;Lio/ktor/server/application/Application;)Ljava/lang/Object;",
        "createModuleContainer",
        "applicationEntryClass",
        "Lkotlin/reflect/KClass;",
        "executeModuleFunction",
        "",
        "classLoader",
        "Ljava/lang/ClassLoader;",
        "fqName",
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
.method private static final callFunctionWithInjection(Lio/ktor/server/application/ApplicationEnvironment;Ljava/lang/Object;Lkotlin/reflect/KFunction;Lio/ktor/server/application/Application;)Ljava/lang/Object;
    .locals 14
    .param p0, "$this$callFunctionWithInjection"    # Lio/ktor/server/application/ApplicationEnvironment;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "entryPoint"    # Lkotlin/reflect/KFunction;
    .param p3, "application"    # Lio/ktor/server/application/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/server/application/ApplicationEnvironment;",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KFunction<",
            "+TR;>;",
            "Lio/ktor/server/application/Application;",
            ")TR;"
        }
    .end annotation

    .line 94
    invoke-interface/range {p2 .. p2}, Lkotlin/reflect/KFunction;->getParameters()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$filterNot$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 158
    .local v1, "$i$f$filterNot":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 159
    .local v4, "$i$f$filterNotTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lkotlin/reflect/KParameter;

    .local v7, "it":Lkotlin/reflect/KParameter;
    const/4 v8, 0x0

    .line 94
    .local v8, "$i$a$-filterNot-CallableUtilsKt$callFunctionWithInjection$args$1":I
    invoke-interface {v7}, Lkotlin/reflect/KParameter;->isOptional()Z

    move-result v7

    .line 159
    .end local v7    # "it":Lkotlin/reflect/KParameter;
    .end local v8    # "$i$a$-filterNot-CallableUtilsKt$callFunctionWithInjection$args$1":I
    if-nez v7, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterNotTo":I
    check-cast v2, Ljava/util/List;

    .line 158
    nop

    .end local v0    # "$this$filterNot$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filterNot":I
    check-cast v2, Ljava/lang/Iterable;

    .line 94
    move-object v0, v2

    .local v0, "$this$associateBy$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 161
    .local v1, "$i$f$associateBy":I
    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    .line 162
    .local v2, "capacity$iv":I
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    .local v3, "destination$iv$iv":Ljava/util/Map;
    move-object v4, v0

    .local v4, "$this$associateByTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 163
    .local v5, "$i$f$associateByTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 164
    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lkotlin/reflect/KParameter;

    .local v8, "it":Lkotlin/reflect/KParameter;
    const/4 v9, 0x0

    .line 95
    .local v9, "$i$a$-associateBy-CallableUtilsKt$callFunctionWithInjection$args$2":I
    nop

    .line 164
    .end local v8    # "it":Lkotlin/reflect/KParameter;
    .end local v9    # "$i$a$-associateBy-CallableUtilsKt$callFunctionWithInjection$args$2":I
    move-object v9, v7

    check-cast v9, Lkotlin/reflect/KParameter;

    .local v9, "parameter":Lkotlin/reflect/KParameter;
    const/4 v10, 0x0

    .line 97
    .local v10, "$i$a$-associateBy-CallableUtilsKt$callFunctionWithInjection$args$3":I
    nop

    .line 98
    invoke-interface {v9}, Lkotlin/reflect/KParameter;->getKind()Lkotlin/reflect/KParameter$Kind;

    move-result-object v11

    sget-object v12, Lkotlin/reflect/KParameter$Kind;->INSTANCE:Lkotlin/reflect/KParameter$Kind;

    if-ne v11, v12, :cond_2

    move-object v11, p1

    goto :goto_2

    .line 99
    :cond_2
    invoke-static {v9}, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->isApplicationEnvironment(Lkotlin/reflect/KParameter;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v11, p0

    goto :goto_2

    .line 100
    :cond_3
    invoke-static {v9}, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->isApplication(Lkotlin/reflect/KParameter;)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object/from16 v11, p3

    .line 97
    :goto_2
    nop

    .line 164
    .end local v9    # "parameter":Lkotlin/reflect/KParameter;
    .end local v10    # "$i$a$-associateBy-CallableUtilsKt$callFunctionWithInjection$args$3":I
    invoke-interface {v3, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 101
    .restart local v9    # "parameter":Lkotlin/reflect/KParameter;
    .restart local v10    # "$i$a$-associateBy-CallableUtilsKt$callFunctionWithInjection$args$3":I
    :cond_4
    invoke-interface {v9}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/KType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    const-string v8, "Application"

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v6, v8, v11, v12, v13}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 103
    invoke-interface {v9}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/KType;

    move-result-object v6

    invoke-static {v6}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getJavaType(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;

    move-result-object v6

    instance-of v8, v6, Ljava/lang/Class;

    if-eqz v8, :cond_5

    check-cast v6, Ljava/lang/Class;

    goto :goto_3

    :cond_5
    move-object v6, v13

    :goto_3
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    :cond_6
    move-object v6, v13

    .line 104
    .local v6, "classLoader":Ljava/lang/ClassLoader;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    .line 105
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Parameter type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/KType;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":{"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "} is not supported.Application is loaded as "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 107
    invoke-static {}, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->getApplicationClassInstance()Ljava/lang/Class;

    move-result-object v13

    .line 105
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 107
    nop

    .line 105
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 107
    invoke-static {}, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->getApplicationClassInstance()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    .line 105
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x7d

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 104
    invoke-direct {v8, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 110
    .end local v6    # "classLoader":Ljava/lang/ClassLoader;
    :cond_7
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 111
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Parameter type \'"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v9}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/KType;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "\' of parameter \'"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 112
    invoke-interface {v9}, Lkotlin/reflect/KParameter;->getName()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_8

    const-string v11, "<receiver>"

    .line 111
    :cond_8
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 112
    nop

    .line 111
    const-string v11, "\' is not supported"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 110
    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 166
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    .end local v9    # "parameter":Lkotlin/reflect/KParameter;
    .end local v10    # "$i$a$-associateBy-CallableUtilsKt$callFunctionWithInjection$args$3":I
    :cond_9
    nop

    .line 162
    .end local v3    # "destination$iv$iv":Ljava/util/Map;
    .end local v4    # "$this$associateByTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$associateByTo":I
    nop

    .line 94
    .end local v0    # "$this$associateBy$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$associateBy":I
    .end local v2    # "capacity$iv":I
    move-object v1, v3

    .line 118
    .local v1, "args":Ljava/util/Map;
    nop

    .line 119
    move-object/from16 v2, p2

    :try_start_0
    invoke-interface {v2, v1}, Lkotlin/reflect/KFunction;->callBy(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 120
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 121
    .local v0, "cause":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_a

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    :cond_a
    throw v3
.end method

.method private static final createModuleContainer(Lio/ktor/server/application/ApplicationEnvironment;Lkotlin/reflect/KClass;Lio/ktor/server/application/Application;)Ljava/lang/Object;
    .locals 19
    .param p0, "$this$createModuleContainer"    # Lio/ktor/server/application/ApplicationEnvironment;
    .param p1, "applicationEntryClass"    # Lkotlin/reflect/KClass;
    .param p2, "application"    # Lio/ktor/server/application/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationEnvironment;",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lio/ktor/server/application/Application;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 76
    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/KClass;->getObjectInstance()Ljava/lang/Object;

    move-result-object v0

    .line 77
    .local v0, "objectInstance":Ljava/lang/Object;
    if-eqz v0, :cond_0

    return-object v0

    .line 79
    :cond_0
    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/KClass;->getConstructors()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 152
    .local v2, "$i$f$filter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 153
    .local v5, "$i$f$filterTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lkotlin/reflect/KFunction;

    .local v8, "it":Lkotlin/reflect/KFunction;
    const/4 v9, 0x0

    .line 80
    .local v9, "$i$a$-filter-CallableUtilsKt$createModuleContainer$constructors$1":I
    invoke-interface {v8}, Lkotlin/reflect/KFunction;->getParameters()Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    .local v10, "$this$all$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 154
    .local v11, "$i$f$all":I
    instance-of v12, v10, Ljava/util/Collection;

    const/4 v13, 0x1

    if-eqz v12, :cond_2

    move-object v12, v10

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_3

    .line 155
    :cond_2
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .local v14, "element$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Lkotlin/reflect/KParameter;

    .local v15, "p":Lkotlin/reflect/KParameter;
    const/16 v16, 0x0

    .line 80
    .local v16, "$i$a$-all-CallableUtilsKt$createModuleContainer$constructors$1$1":I
    invoke-interface {v15}, Lkotlin/reflect/KParameter;->isOptional()Z

    move-result v17

    const/16 v18, 0x0

    if-nez v17, :cond_5

    invoke-static {v15}, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->isApplicationEnvironment(Lkotlin/reflect/KParameter;)Z

    move-result v17

    if-nez v17, :cond_5

    invoke-static {v15}, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->isApplication(Lkotlin/reflect/KParameter;)Z

    move-result v17

    if-eqz v17, :cond_4

    goto :goto_1

    :cond_4
    move/from16 v15, v18

    goto :goto_2

    :cond_5
    :goto_1
    move v15, v13

    .line 155
    .end local v15    # "p":Lkotlin/reflect/KParameter;
    .end local v16    # "$i$a$-all-CallableUtilsKt$createModuleContainer$constructors$1$1":I
    :goto_2
    if-nez v15, :cond_3

    move/from16 v13, v18

    goto :goto_3

    .line 156
    .end local v14    # "element$iv":Ljava/lang/Object;
    :cond_6
    nop

    .line 80
    .end local v10    # "$this$all$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$all":I
    :goto_3
    nop

    .line 153
    .end local v8    # "it":Lkotlin/reflect/KFunction;
    .end local v9    # "$i$a$-filter-CallableUtilsKt$createModuleContainer$constructors$1":I
    if-eqz v13, :cond_1

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    :cond_7
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filterTo":I
    check-cast v3, Ljava/util/List;

    .line 152
    nop

    .line 79
    .end local v1    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$filter":I
    move-object v1, v3

    .line 83
    .local v1, "constructors":Ljava/util/List;
    invoke-static {v1}, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->bestFunction(Ljava/util/List;)Lkotlin/reflect/KFunction;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 86
    .local v2, "constructor":Lkotlin/reflect/KFunction;
    const/4 v3, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-static {v4, v3, v2, v5}, Lio/ktor/server/engine/internal/CallableUtilsKt;->callFunctionWithInjection(Lio/ktor/server/application/ApplicationEnvironment;Ljava/lang/Object;Lkotlin/reflect/KFunction;Lio/ktor/server/application/Application;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 84
    .end local v2    # "constructor":Lkotlin/reflect/KFunction;
    :cond_8
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There are no applicable constructors found in class "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v6, p1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final executeModuleFunction(Lio/ktor/server/application/ApplicationEnvironment;Ljava/lang/ClassLoader;Ljava/lang/String;Lio/ktor/server/application/Application;)V
    .locals 24
    .param p0, "$this$executeModuleFunction"    # Lio/ktor/server/application/ApplicationEnvironment;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "fqName"    # Ljava/lang/String;
    .param p3, "application"    # Lio/ktor/server/application/Application;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v0, "<this>"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classLoader"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "application"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    const-string v0, ".#"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    const-string v0, "this as java.lang.String).toCharArray()"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->lastIndexOfAny$default(Ljava/lang/CharSequence;[CIZILjava/lang/Object;)I

    move-result v5

    .line 20
    .local v5, "name":I
    const/4 v0, -0x1

    const-string v6, "Module function cannot be found for the fully qualified name \'"

    if-eq v5, v0, :cond_15

    .line 24
    const/4 v8, 0x0

    invoke-virtual {v3, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v9, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v0

    .line 25
    .local v9, "className":Ljava/lang/String;
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v10, "this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v0

    .line 26
    .local v10, "functionName":Ljava/lang/String;
    invoke-static {v2, v9}, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->loadClassOrNull(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_14

    move-object v11, v0

    .line 29
    .local v11, "clazz":Ljava/lang/Class;
    invoke-virtual {v11}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v12, "clazz.methods"

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    .line 30
    nop

    .local v0, "$this$filter$iv":[Ljava/lang/Object;
    const/4 v12, 0x0

    .line 127
    .local v12, "$i$f$filter":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    check-cast v13, Ljava/util/Collection;

    .local v13, "destination$iv$iv":Ljava/util/Collection;
    move-object v14, v0

    .local v14, "$this$filterTo$iv$iv":[Ljava/lang/Object;
    const/4 v15, 0x0

    .line 128
    .local v15, "$i$f$filterTo":I
    array-length v7, v14

    :goto_0
    if-ge v8, v7, :cond_2

    aget-object v2, v14, v8

    .local v2, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/reflect/Method;

    .local v18, "it":Ljava/lang/reflect/Method;
    const/16 v19, 0x0

    .line 30
    .local v19, "$i$a$-filter-CallableUtilsKt$executeModuleFunction$staticFunctions$1":I
    move-object/from16 v20, v0

    .end local v0    # "$this$filter$iv":[Ljava/lang/Object;
    .local v20, "$this$filter$iv":[Ljava/lang/Object;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v17, 0x1

    goto :goto_1

    :cond_0
    const/16 v17, 0x0

    .line 128
    .end local v18    # "it":Ljava/lang/reflect/Method;
    .end local v19    # "$i$a$-filter-CallableUtilsKt$executeModuleFunction$staticFunctions$1":I
    :goto_1
    if-eqz v17, :cond_1

    invoke-interface {v13, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v2    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p1

    move-object/from16 v0, v20

    goto :goto_0

    .line 129
    .end local v20    # "$this$filter$iv":[Ljava/lang/Object;
    .restart local v0    # "$this$filter$iv":[Ljava/lang/Object;
    :cond_2
    move-object/from16 v20, v0

    .end local v0    # "$this$filter$iv":[Ljava/lang/Object;
    .end local v13    # "destination$iv$iv":Ljava/util/Collection;
    .end local v14    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .end local v15    # "$i$f$filterTo":I
    .restart local v20    # "$this$filter$iv":[Ljava/lang/Object;
    move-object v0, v13

    check-cast v0, Ljava/util/List;

    .line 127
    nop

    .end local v12    # "$i$f$filter":I
    .end local v20    # "$this$filter$iv":[Ljava/lang/Object;
    check-cast v0, Ljava/lang/Iterable;

    .line 31
    nop

    .local v0, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 130
    .local v2, "$i$f$mapNotNull":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v0

    .local v8, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 138
    .local v12, "$i$f$mapNotNullTo":I
    move-object v13, v8

    .local v13, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v14, 0x0

    .line 139
    .local v14, "$i$f$forEach":I
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .local v18, "element$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v18

    .local v19, "element$iv$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 138
    .local v20, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object/from16 v21, v0

    .end local v0    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .local v21, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/reflect/Method;

    .local v0, "it":Ljava/lang/reflect/Method;
    const/16 v22, 0x0

    .line 31
    .local v22, "$i$a$-mapNotNull-CallableUtilsKt$executeModuleFunction$staticFunctions$2":I
    move/from16 v23, v2

    .end local v2    # "$i$f$mapNotNull":I
    .local v23, "$i$f$mapNotNull":I
    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/ReflectJvmMapping;->getKotlinFunction(Ljava/lang/reflect/Method;)Lkotlin/reflect/KFunction;

    move-result-object v0

    .line 138
    .end local v0    # "it":Ljava/lang/reflect/Method;
    .end local v22    # "$i$a$-mapNotNull-CallableUtilsKt$executeModuleFunction$staticFunctions$2":I
    if-eqz v0, :cond_3

    .line 140
    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 138
    .local v2, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v7, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v2    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    .end local v19    # "element$iv$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    :cond_3
    move-object/from16 v0, v21

    move/from16 v2, v23

    .end local v18    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_2

    .line 141
    .end local v21    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v23    # "$i$f$mapNotNull":I
    .local v0, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .local v2, "$i$f$mapNotNull":I
    :cond_4
    move-object/from16 v21, v0

    move/from16 v23, v2

    .line 142
    .end local v0    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$mapNotNull":I
    .end local v13    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v14    # "$i$f$forEach":I
    .restart local v21    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .restart local v23    # "$i$f$mapNotNull":I
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$mapNotNullTo":I
    move-object v0, v7

    check-cast v0, Ljava/util/List;

    .line 130
    nop

    .end local v21    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v23    # "$i$f$mapNotNull":I
    check-cast v0, Ljava/lang/Iterable;

    .line 32
    nop

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 143
    .local v2, "$i$f$filter":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .restart local v7    # "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v0

    .local v8, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 144
    .local v12, "$i$f$filterTo":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .local v14, "element$iv$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Lkotlin/reflect/KFunction;

    .local v15, "it":Lkotlin/reflect/KFunction;
    const/16 v18, 0x0

    .line 32
    .local v18, "$i$a$-filter-CallableUtilsKt$executeModuleFunction$staticFunctions$3":I
    invoke-static {v15}, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->isApplicableFunction(Lkotlin/reflect/KFunction;)Z

    move-result v15

    .line 144
    .end local v15    # "it":Lkotlin/reflect/KFunction;
    .end local v18    # "$i$a$-filter-CallableUtilsKt$executeModuleFunction$staticFunctions$3":I
    if-eqz v15, :cond_5

    invoke-interface {v7, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 145
    .end local v14    # "element$iv$iv":Ljava/lang/Object;
    :cond_6
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$filterTo":I
    check-cast v7, Ljava/util/List;

    .line 143
    nop

    .line 32
    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$filter":I
    nop

    .line 29
    move-object v2, v7

    .line 34
    .local v2, "staticFunctions":Ljava/util/List;
    invoke-static {v2}, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->bestFunction(Ljava/util/List;)Lkotlin/reflect/KFunction;

    move-result-object v0

    if-eqz v0, :cond_c

    .local v0, "moduleFunction":Lkotlin/reflect/KFunction;
    const/4 v7, 0x0

    .line 35
    .local v7, "$i$a$-let-CallableUtilsKt$executeModuleFunction$1":I
    invoke-interface {v0}, Lkotlin/reflect/KFunction;->getParameters()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .local v8, "$this$none$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 146
    .local v12, "$i$f$none":I
    instance-of v13, v8, Ljava/util/Collection;

    if-eqz v13, :cond_7

    move-object v13, v8

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v19, v2

    move/from16 v20, v5

    const/4 v2, 0x1

    goto :goto_6

    .line 147
    :cond_7
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .local v14, "element$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Lkotlin/reflect/KParameter;

    .local v15, "it":Lkotlin/reflect/KParameter;
    const/16 v18, 0x0

    .line 35
    .local v18, "$i$a$-none-CallableUtilsKt$executeModuleFunction$1$1":I
    move-object/from16 v19, v2

    .end local v2    # "staticFunctions":Ljava/util/List;
    .local v19, "staticFunctions":Ljava/util/List;
    invoke-interface {v15}, Lkotlin/reflect/KParameter;->getKind()Lkotlin/reflect/KParameter$Kind;

    move-result-object v2

    move/from16 v20, v5

    .end local v5    # "name":I
    .local v20, "name":I
    sget-object v5, Lkotlin/reflect/KParameter$Kind;->INSTANCE:Lkotlin/reflect/KParameter$Kind;

    if-ne v2, v5, :cond_8

    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    .line 147
    .end local v15    # "it":Lkotlin/reflect/KParameter;
    .end local v18    # "$i$a$-none-CallableUtilsKt$executeModuleFunction$1$1":I
    :goto_5
    if-eqz v2, :cond_9

    const/4 v2, 0x0

    goto :goto_6

    :cond_9
    move-object/from16 v2, v19

    move/from16 v5, v20

    goto :goto_4

    .line 148
    .end local v14    # "element$iv":Ljava/lang/Object;
    .end local v19    # "staticFunctions":Ljava/util/List;
    .end local v20    # "name":I
    .restart local v2    # "staticFunctions":Ljava/util/List;
    .restart local v5    # "name":I
    :cond_a
    move-object/from16 v19, v2

    move/from16 v20, v5

    .end local v2    # "staticFunctions":Ljava/util/List;
    .end local v5    # "name":I
    .restart local v19    # "staticFunctions":Ljava/util/List;
    .restart local v20    # "name":I
    const/4 v2, 0x1

    .line 35
    .end local v8    # "$this$none$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$none":I
    :goto_6
    if-eqz v2, :cond_b

    .line 36
    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v4}, Lio/ktor/server/engine/internal/CallableUtilsKt;->callFunctionWithInjection(Lio/ktor/server/application/ApplicationEnvironment;Ljava/lang/Object;Lkotlin/reflect/KFunction;Lio/ktor/server/application/Application;)Ljava/lang/Object;

    .line 37
    return-void

    .line 39
    :cond_b
    nop

    .end local v0    # "moduleFunction":Lkotlin/reflect/KFunction;
    .end local v7    # "$i$a$-let-CallableUtilsKt$executeModuleFunction$1":I
    goto :goto_7

    .line 34
    .end local v19    # "staticFunctions":Ljava/util/List;
    .end local v20    # "name":I
    .restart local v2    # "staticFunctions":Ljava/util/List;
    .restart local v5    # "name":I
    :cond_c
    move-object/from16 v19, v2

    move/from16 v20, v5

    .end local v2    # "staticFunctions":Ljava/util/List;
    .end local v5    # "name":I
    .restart local v19    # "staticFunctions":Ljava/util/List;
    .restart local v20    # "name":I
    :goto_7
    nop

    .line 41
    nop

    .line 42
    :try_start_0
    const-class v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 43
    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const-string v2, "clazz.declaredConstructors"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->single([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 44
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v2, :cond_d

    .line 48
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    const/4 v2, 0x0

    :try_start_2
    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v7, "null cannot be cast to non-null type kotlin.Function1<io.ktor.server.application.Application, kotlin.Unit>"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v7, 0x1

    :try_start_3
    invoke-static {v5, v7}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 51
    .local v5, "function":Lkotlin/jvm/functions/Function1;
    invoke-interface {v5, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void

    .line 54
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v5    # "function":Lkotlin/jvm/functions/Function1;
    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    move v7, v2

    const/4 v2, 0x0

    goto :goto_9

    .line 45
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;
    :cond_d
    const/4 v2, 0x0

    const/4 v7, 0x1

    new-instance v5, Lio/ktor/server/engine/internal/ReloadingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Module function with captured variables cannot be instantiated \'"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v12, 0x27

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lio/ktor/server/engine/internal/ReloadingException;-><init>(Ljava/lang/String;)V

    .end local v9    # "className":Ljava/lang/String;
    .end local v10    # "functionName":Ljava/lang/String;
    .end local v11    # "clazz":Ljava/lang/Class;
    .end local v19    # "staticFunctions":Ljava/util/List;
    .end local v20    # "name":I
    .end local p0    # "$this$executeModuleFunction":Lio/ktor/server/application/ApplicationEnvironment;
    .end local p1    # "classLoader":Ljava/lang/ClassLoader;
    .end local p2    # "fqName":Ljava/lang/String;
    .end local p3    # "application":Lio/ktor/server/application/Application;
    throw v5
    :try_end_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_3} :catch_2

    .line 54
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v9    # "className":Ljava/lang/String;
    .restart local v10    # "functionName":Ljava/lang/String;
    .restart local v11    # "clazz":Ljava/lang/Class;
    .restart local v19    # "staticFunctions":Ljava/util/List;
    .restart local v20    # "name":I
    .restart local p0    # "$this$executeModuleFunction":Lio/ktor/server/application/ApplicationEnvironment;
    .restart local p1    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p2    # "fqName":Ljava/lang/String;
    .restart local p3    # "application":Lio/ktor/server/application/Application;
    :catch_2
    move-exception v0

    goto :goto_9

    .line 42
    :cond_e
    const/4 v2, 0x0

    const/4 v7, 0x1

    goto :goto_9

    .line 54
    :catch_3
    move-exception v0

    const/4 v2, 0x0

    :goto_8
    const/4 v7, 0x1

    .line 58
    :goto_9
    invoke-static {v11}, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->takeIfNotFacade(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 63
    .local v0, "kclass":Lkotlin/reflect/KClass;
    nop

    .line 61
    invoke-static {v0}, Lkotlin/reflect/full/KClasses;->getFunctions(Lkotlin/reflect/KClass;)Ljava/util/Collection;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 62
    nop

    .local v5, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 149
    .local v8, "$i$f$filter":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    check-cast v12, Ljava/util/Collection;

    .local v12, "destination$iv$iv":Ljava/util/Collection;
    move-object v13, v5

    .local v13, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v14, 0x0

    .line 150
    .local v14, "$i$f$filterTo":I
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_11

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "element$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v2

    check-cast v17, Lkotlin/reflect/KFunction;

    .local v17, "it":Lkotlin/reflect/KFunction;
    const/16 v18, 0x0

    .line 62
    .local v18, "$i$a$-filter-CallableUtilsKt$executeModuleFunction$2":I
    invoke-interface/range {v17 .. v17}, Lkotlin/reflect/KFunction;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-static/range {v17 .. v17}, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->isApplicableFunction(Lkotlin/reflect/KFunction;)Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, 0x1

    goto :goto_b

    :cond_f
    const/4 v7, 0x0

    .line 150
    .end local v17    # "it":Lkotlin/reflect/KFunction;
    .end local v18    # "$i$a$-filter-CallableUtilsKt$executeModuleFunction$2":I
    :goto_b
    if-eqz v7, :cond_10

    invoke-interface {v12, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_10
    const/4 v2, 0x0

    const/4 v7, 0x1

    goto :goto_a

    .line 151
    .end local v2    # "element$iv$iv":Ljava/lang/Object;
    :cond_11
    nop

    .end local v12    # "destination$iv$iv":Ljava/util/Collection;
    .end local v13    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v14    # "$i$f$filterTo":I
    move-object v2, v12

    check-cast v2, Ljava/util/List;

    .line 149
    nop

    .line 62
    .end local v5    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$filter":I
    nop

    .line 63
    invoke-static {v2}, Lio/ktor/server/engine/internal/AutoReloadUtilsKt;->bestFunction(Ljava/util/List;)Lkotlin/reflect/KFunction;

    move-result-object v2

    if-eqz v2, :cond_12

    .local v2, "moduleFunction":Lkotlin/reflect/KFunction;
    const/4 v5, 0x0

    .line 64
    .local v5, "$i$a$-let-CallableUtilsKt$executeModuleFunction$3":I
    invoke-static {v1, v0, v4}, Lio/ktor/server/engine/internal/CallableUtilsKt;->createModuleContainer(Lio/ktor/server/application/ApplicationEnvironment;Lkotlin/reflect/KClass;Lio/ktor/server/application/Application;)Ljava/lang/Object;

    move-result-object v6

    .line 65
    .local v6, "instance":Ljava/lang/Object;
    invoke-static {v1, v6, v2, v4}, Lio/ktor/server/engine/internal/CallableUtilsKt;->callFunctionWithInjection(Lio/ktor/server/application/ApplicationEnvironment;Ljava/lang/Object;Lkotlin/reflect/KFunction;Lio/ktor/server/application/Application;)Ljava/lang/Object;

    .line 66
    return-void

    .line 69
    .end local v2    # "moduleFunction":Lkotlin/reflect/KFunction;
    .end local v5    # "$i$a$-let-CallableUtilsKt$executeModuleFunction$3":I
    .end local v6    # "instance":Ljava/lang/Object;
    :cond_12
    new-instance v2, Ljava/lang/ClassNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v7, 0x27

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    .end local v0    # "kclass":Lkotlin/reflect/KClass;
    :cond_13
    const/16 v7, 0x27

    new-instance v0, Lio/ktor/server/engine/internal/ReloadingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lio/ktor/server/engine/internal/ReloadingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    .end local v11    # "clazz":Ljava/lang/Class;
    .end local v19    # "staticFunctions":Ljava/util/List;
    .end local v20    # "name":I
    .local v5, "name":I
    :cond_14
    const/16 v7, 0x27

    new-instance v0, Lio/ktor/server/engine/internal/ReloadingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lio/ktor/server/engine/internal/ReloadingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    .end local v9    # "className":Ljava/lang/String;
    .end local v10    # "functionName":Ljava/lang/String;
    :cond_15
    const/16 v7, 0x27

    new-instance v0, Lio/ktor/server/engine/internal/ReloadingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lio/ktor/server/engine/internal/ReloadingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
