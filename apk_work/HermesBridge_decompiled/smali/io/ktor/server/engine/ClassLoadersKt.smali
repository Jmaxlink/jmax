.class public final Lio/ktor/server/engine/ClassLoadersKt;
.super Ljava/lang/Object;
.source "ClassLoaders.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClassLoaders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClassLoaders.kt\nio/ktor/server/engine/ClassLoadersKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,79:1\n1549#2:80\n1620#2,3:81\n1446#2,2:84\n1549#2:86\n1620#2,3:87\n1448#2,3:90\n1045#2:93\n1360#2:94\n1446#2,5:95\n1655#2,8:100\n1282#3,2:108\n1#4:110\n*S KotlinDebug\n*F\n+ 1 ClassLoaders.kt\nio/ktor/server/engine/ClassLoadersKt\n*L\n57#1:80\n57#1:81,3\n58#1:84,2\n60#1:86\n60#1:87,3\n58#1:90,3\n61#1:93\n63#1:94\n63#1:95,5\n64#1:100,8\n68#1:108,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\u001a\u0012\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0000\u001a\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u0006\u0012\u0002\u0008\u00030\u0006H\u0002\u001a\u0014\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0008*\u00020\u0003H\u0002\u001a\u0014\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0008*\u00020\u0003H\u0002\u00a8\u0006\n"
    }
    d2 = {
        "allURLs",
        "",
        "Ljava/net/URL;",
        "Ljava/lang/ClassLoader;",
        "findURLClassPathField",
        "Ljava/lang/reflect/Field;",
        "Ljava/lang/Class;",
        "urlClassPath",
        "",
        "urlClassPathByPackagesList",
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
.method public static final allURLs(Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 3
    .param p0, "$this$allURLs"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Set<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lio/ktor/server/engine/ClassLoadersKt;->allURLs(Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 13
    .local v0, "parentUrls":Ljava/util/Set;
    :cond_1
    instance-of v1, p0, Ljava/net/URLClassLoader;

    if-eqz v1, :cond_2

    .line 14
    move-object v1, p0

    check-cast v1, Ljava/net/URLClassLoader;

    invoke-virtual {v1}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v1

    const-string v2, "urLs"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 15
    .local v1, "urls":Ljava/util/Set;
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 18
    .end local v1    # "urls":Ljava/util/Set;
    :cond_2
    invoke-static {p0}, Lio/ktor/server/engine/ClassLoadersKt;->urlClassPath(Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3

    return-object v0

    .line 19
    .local v1, "ucp":Ljava/util/List;
    :cond_3
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v0, v2}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method private static final findURLClassPathField(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 11
    .param p0, "$this$findURLClassPathField"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "declaredFields"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    .local v0, "$this$firstOrNull$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 108
    .local v1, "$i$f$firstOrNull":I
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v2, :cond_2

    aget-object v6, v0, v4

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/reflect/Field;

    .local v7, "it":Ljava/lang/reflect/Field;
    const/4 v8, 0x0

    .line 68
    .local v8, "$i$a$-firstOrNull-ClassLoadersKt$findURLClassPathField$1":I
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ucp"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "URLClassPath"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    move v9, v3

    .line 108
    .end local v7    # "it":Ljava/lang/reflect/Field;
    .end local v8    # "$i$a$-firstOrNull-ClassLoadersKt$findURLClassPathField$1":I
    :goto_1
    if-eqz v9, :cond_1

    goto :goto_2

    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 109
    :cond_2
    move-object v6, v5

    .line 68
    .end local v0    # "$this$firstOrNull$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_2
    check-cast v6, Ljava/lang/reflect/Field;

    if-eqz v6, :cond_3

    move-object v0, v6

    .line 110
    .local v0, "it":Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    .line 68
    .local v1, "$i$a$-let-ClassLoadersKt$findURLClassPathField$2":I
    return-object v0

    .line 69
    .end local v0    # "it":Ljava/lang/reflect/Field;
    .end local v1    # "$i$a$-let-ClassLoadersKt$findURLClassPathField$2":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lio/ktor/server/engine/ClassLoadersKt;->findURLClassPathField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    return-object v0

    :cond_5
    :goto_3
    return-object v5
.end method

.method private static final urlClassPath(Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 8
    .param p0, "$this$urlClassPath"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 29
    nop

    .line 30
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lio/ktor/server/engine/ClassLoadersKt;->findURLClassPathField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 32
    .local v1, "ucpField":Ljava/lang/reflect/Field;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v0

    .line 35
    .local v3, "ucpInstance":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getURLs"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-nez v4, :cond_2

    return-object v0

    .line 37
    .local v4, "getURLsMethod":Ljava/lang/reflect/Method;
    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 39
    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/net/URL;

    .line 41
    .local v2, "urls":[Ljava/net/URL;
    if-eqz v2, :cond_3

    invoke-static {v2}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-object v0

    .line 42
    .end local v1    # "ucpField":Ljava/lang/reflect/Field;
    .end local v2    # "urls":[Ljava/net/URL;
    .end local v3    # "ucpInstance":Ljava/lang/Object;
    .end local v4    # "getURLsMethod":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v1

    .line 43
    .local v1, "_":Ljava/lang/Throwable;
    nop

    .line 44
    :try_start_1
    invoke-static {p0}, Lio/ktor/server/engine/ClassLoadersKt;->urlClassPathByPackagesList(Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 45
    :catchall_1
    move-exception v2

    .line 46
    .local v2, "_":Ljava/lang/Throwable;
    nop

    .line 43
    .end local v2    # "_":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method private static final urlClassPathByPackagesList(Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 29
    .param p0, "$this$urlClassPathByPackagesList"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 57
    move-object/from16 v0, p0

    new-instance v1, Lio/ktor/server/engine/ClassLoaderDelegate;

    invoke-direct {v1, v0}, Lio/ktor/server/engine/ClassLoaderDelegate;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v1}, Lio/ktor/server/engine/ClassLoaderDelegate;->packagesList$ktor_server_host_common()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 80
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v1

    .local v5, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 81
    .local v6, "$i$f$mapTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 82
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v15, v8

    check-cast v15, Ljava/lang/String;

    .local v15, "it":Ljava/lang/String;
    const/16 v16, 0x0

    .line 57
    .local v16, "$i$a$-map-ClassLoadersKt$urlClassPathByPackagesList$allPackagePaths$1":I
    const/4 v13, 0x4

    const/4 v14, 0x0

    const/16 v10, 0x2e

    const/16 v11, 0x2f

    const/4 v12, 0x0

    move-object v9, v15

    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 82
    .end local v15    # "it":Ljava/lang/String;
    .end local v16    # "$i$a$-map-ClassLoadersKt$urlClassPathByPackagesList$allPackagePaths$1":I
    invoke-interface {v3, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo":I
    check-cast v3, Ljava/util/List;

    .line 80
    nop

    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$map":I
    check-cast v3, Ljava/lang/Iterable;

    .line 58
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .local v1, "destination$iv":Ljava/util/Collection;
    move-object v2, v3

    .local v2, "$this$flatMapTo$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 84
    .local v3, "$i$f$flatMapTo":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 85
    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .local v7, "packageName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 59
    .local v8, "$i$a$-flatMapTo-ClassLoadersKt$urlClassPathByPackagesList$allPackagePaths$2":I
    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v15, 0x1

    new-array v10, v15, [C

    const/16 v11, 0x2f

    const/4 v14, 0x0

    aput-char v11, v10, v14

    const/4 v13, 0x6

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v14, v16

    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 60
    .local v9, "segments":Ljava/util/List;
    new-instance v10, Lkotlin/ranges/IntRange;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v15, v11}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v10, Ljava/lang/Iterable;

    .local v10, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 86
    .local v11, "$i$f$map":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v10, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v12, Ljava/util/Collection;

    .local v12, "destination$iv$iv":Ljava/util/Collection;
    move-object v13, v10

    .local v13, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v14, 0x0

    .line 87
    .local v14, "$i$f$mapTo":I
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    move-object/from16 v16, v15

    check-cast v16, Lkotlin/collections/IntIterator;

    invoke-virtual/range {v16 .. v16}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v16

    .line 88
    .local v16, "item$iv$iv":I
    move/from16 v18, v16

    .local v18, "it":I
    const/16 v19, 0x0

    .line 60
    .local v19, "$i$a$-map-ClassLoadersKt$urlClassPathByPackagesList$allPackagePaths$2$1":I
    move-object/from16 v17, v2

    move/from16 v4, v18

    const/4 v2, 0x0

    .end local v2    # "$this$flatMapTo$iv":Ljava/lang/Iterable;
    .end local v18    # "it":I
    .local v4, "it":I
    .local v17, "$this$flatMapTo$iv":Ljava/lang/Iterable;
    invoke-interface {v9, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v18

    move-object/from16 v20, v18

    check-cast v20, Ljava/lang/Iterable;

    const-string v18, "/"

    move-object/from16 v21, v18

    check-cast v21, Ljava/lang/CharSequence;

    const/16 v27, 0x3e

    const/16 v28, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v20 .. v28}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 88
    .end local v4    # "it":I
    .end local v19    # "$i$a$-map-ClassLoadersKt$urlClassPathByPackagesList$allPackagePaths$2$1":I
    invoke-interface {v12, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v17

    const/16 v4, 0xa

    goto :goto_2

    .line 89
    .end local v16    # "item$iv$iv":I
    .end local v17    # "$this$flatMapTo$iv":Ljava/lang/Iterable;
    .restart local v2    # "$this$flatMapTo$iv":Ljava/lang/Iterable;
    :cond_1
    move-object/from16 v17, v2

    .end local v2    # "$this$flatMapTo$iv":Ljava/lang/Iterable;
    .end local v12    # "destination$iv$iv":Ljava/util/Collection;
    .end local v13    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v14    # "$i$f$mapTo":I
    .restart local v17    # "$this$flatMapTo$iv":Ljava/lang/Iterable;
    move-object v2, v12

    check-cast v2, Ljava/util/List;

    .line 86
    nop

    .end local v10    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$map":I
    check-cast v2, Ljava/util/Collection;

    .line 60
    invoke-static {v2, v7}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 85
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "$i$a$-flatMapTo-ClassLoadersKt$urlClassPathByPackagesList$allPackagePaths$2":I
    .end local v9    # "segments":Ljava/util/List;
    check-cast v2, Ljava/lang/Iterable;

    .line 90
    .local v2, "list$iv":Ljava/lang/Iterable;
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    move-object/from16 v2, v17

    const/16 v4, 0xa

    goto/16 :goto_1

    .line 92
    .end local v6    # "element$iv":Ljava/lang/Object;
    .end local v17    # "$this$flatMapTo$iv":Ljava/lang/Iterable;
    .local v2, "$this$flatMapTo$iv":Ljava/lang/Iterable;
    :cond_2
    move-object/from16 v17, v2

    .end local v1    # "destination$iv":Ljava/util/Collection;
    .end local v2    # "$this$flatMapTo$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$flatMapTo":I
    check-cast v1, Ljava/lang/Iterable;

    .line 61
    nop

    .local v1, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 93
    .local v2, "$i$f$sortedBy":I
    new-instance v3, Lio/ktor/server/engine/ClassLoadersKt$urlClassPathByPackagesList$$inlined$sortedBy$1;

    invoke-direct {v3}, Lio/ktor/server/engine/ClassLoadersKt$urlClassPathByPackagesList$$inlined$sortedBy$1;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .end local v1    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$sortedBy":I
    check-cast v1, Ljava/util/Collection;

    .line 61
    nop

    .line 57
    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 63
    .local v1, "allPackagePaths":Ljava/util/List;
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$flatMap$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 94
    .local v3, "$i$f$flatMap":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 95
    .local v6, "$i$f$flatMapTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 96
    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .local v9, "path":Ljava/lang/String;
    const/4 v10, 0x0

    .line 63
    .local v10, "$i$a$-flatMap-ClassLoadersKt$urlClassPathByPackagesList$1":I
    invoke-virtual {v0, v9}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v11

    if-eqz v11, :cond_3

    const-string v12, "getResources(path)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v11

    const-string v12, "list(this)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/util/List;

    if-nez v11, :cond_4

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 96
    .end local v9    # "path":Ljava/lang/String;
    .end local v10    # "$i$a$-flatMap-ClassLoadersKt$urlClassPathByPackagesList$1":I
    :cond_4
    move-object v9, v11

    check-cast v9, Ljava/lang/Iterable;

    .line 97
    .local v9, "list$iv$iv":Ljava/lang/Iterable;
    invoke-static {v4, v9}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_3

    .line 99
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    .end local v9    # "list$iv$iv":Ljava/lang/Iterable;
    :cond_5
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$flatMapTo":I
    check-cast v4, Ljava/util/List;

    .line 94
    nop

    .end local v2    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$flatMap":I
    check-cast v4, Ljava/lang/Iterable;

    .line 64
    move-object v2, v4

    .local v2, "$this$distinctBy$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 100
    .local v3, "$i$f$distinctBy":I
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 101
    .local v4, "set$iv":Ljava/util/HashSet;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v5, "list$iv":Ljava/util/ArrayList;
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 103
    .local v7, "e$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/net/URL;

    .local v8, "it":Ljava/net/URL;
    const/4 v9, 0x0

    .line 64
    .local v9, "$i$a$-distinctBy-ClassLoadersKt$urlClassPathByPackagesList$2":I
    invoke-virtual {v8}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v10

    const-string v11, "it.path"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v11, 0x21

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static {v10, v11, v13, v12, v13}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 103
    .end local v8    # "it":Ljava/net/URL;
    .end local v9    # "$i$a$-distinctBy-ClassLoadersKt$urlClassPathByPackagesList$2":I
    nop

    .line 104
    .local v8, "key$iv":Ljava/lang/Object;
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 105
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 107
    .end local v7    # "e$iv":Ljava/lang/Object;
    .end local v8    # "key$iv":Ljava/lang/Object;
    :cond_7
    move-object v2, v5

    check-cast v2, Ljava/util/List;

    .line 63
    .end local v2    # "$this$distinctBy$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$distinctBy":I
    .end local v4    # "set$iv":Ljava/util/HashSet;
    .end local v5    # "list$iv":Ljava/util/ArrayList;
    return-object v2
.end method
