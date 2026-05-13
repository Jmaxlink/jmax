.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/PackagePartScopeCache;
.super Ljava/lang/Object;
.source "PackagePartScopeCache.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPackagePartScopeCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PackagePartScopeCache.kt\norg/jetbrains/kotlin/descriptors/runtime/components/PackagePartScopeCache\n+ 2 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,42:1\n73#2,2:43\n1603#3,9:45\n1855#3:54\n1856#3:56\n1612#3:57\n1603#3,9:58\n1855#3:67\n1856#3:69\n1612#3:70\n1#4:55\n1#4:68\n1#4:71\n*S KotlinDebug\n*F\n+ 1 PackagePartScopeCache.kt\norg/jetbrains/kotlin/descriptors/runtime/components/PackagePartScopeCache\n*L\n22#1:43,2\n27#1:45,9\n27#1:54\n27#1:56\n27#1:57\n35#1:58,9\n35#1:67\n35#1:69\n35#1:70\n27#1:55\n35#1:68\n22#1:71\n*E\n"
.end annotation


# instance fields
.field private final cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lkotlin/reflect/jvm/internal/impl/name/ClassId;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;",
            ">;"
        }
    .end annotation
.end field

.field private final kotlinClassFinder:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClassFinder;

.field private final resolver:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClassFinder;)V
    .locals 1
    .param p1, "resolver"    # Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;
    .param p2, "kotlinClassFinder"    # Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClassFinder;

    const-string v0, "resolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinClassFinder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/PackagePartScopeCache;->resolver:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/PackagePartScopeCache;->kotlinClassFinder:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClassFinder;

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/PackagePartScopeCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    return-void
.end method


# virtual methods
.method public final getPackagePartScope(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 23
    .param p1, "fileClass"    # Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "fileClass"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/PackagePartScopeCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v2, Ljava/util/concurrent/ConcurrentMap;

    .local v2, "$this$getOrPut$iv":Ljava/util/concurrent/ConcurrentMap;
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->getClassId()Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v3

    .local v3, "key$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 43
    .local v4, "$i$f$getOrPut":I
    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    .line 44
    const/4 v5, 0x0

    .line 23
    .local v5, "$i$a$-getOrPut-PackagePartScopeCache$getPackagePartScope$1":I
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->getClassId()Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v6

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getPackageFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v6

    const-string v7, "fileClass.classId.packageFqName"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .local v6, "fqName":Lkotlin/reflect/jvm/internal/impl/name/FqName;
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->getClassHeader()Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;

    move-result-object v7

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;->getKind()Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    move-result-object v7

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;->MULTIFILE_CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader$Kind;

    if-ne v7, v8, :cond_2

    .line 27
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClass;->getClassHeader()Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;

    move-result-object v7

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/header/KotlinClassHeader;->getMultifilePartNames()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 45
    .local v8, "$i$f$mapNotNull":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/Collection;

    .local v9, "destination$iv$iv":Ljava/util/Collection;
    move-object v10, v7

    .local v10, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 53
    .local v11, "$i$f$mapNotNullTo":I
    move-object v12, v10

    .local v12, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 54
    .local v13, "$i$f$forEach":I
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .local v15, "element$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    .local v16, "element$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 53
    .local v17, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object/from16 v18, v16

    check-cast v18, Ljava/lang/String;

    .local v18, "partName":Ljava/lang/String;
    const/16 v19, 0x0

    .line 28
    .local v19, "$i$a$-mapNotNull-PackagePartScopeCache$getPackagePartScope$1$parts$1":I
    invoke-static/range {v18 .. v18}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->byInternalName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmClassName;->getFqNameForTopLevelClassMaybeWithDollars()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v20

    move/from16 v21, v4

    .end local v4    # "$i$f$getOrPut":I
    .local v21, "$i$f$getOrPut":I
    invoke-static/range {v20 .. v20}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->topLevel(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v4

    move/from16 v20, v5

    .end local v5    # "$i$a$-getOrPut-PackagePartScopeCache$getPackagePartScope$1":I
    .local v20, "$i$a$-getOrPut-PackagePartScopeCache$getPackagePartScope$1":I
    const-string v5, "topLevel(JvmClassName.by\u2026velClassMaybeWithDollars)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .local v4, "classId":Lkotlin/reflect/jvm/internal/impl/name/ClassId;
    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/PackagePartScopeCache;->kotlinClassFinder:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/ReflectKotlinClassFinder;

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder;

    move-object/from16 v22, v7

    .end local v7    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .local v22, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    iget-object v7, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/PackagePartScopeCache;->resolver:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;->getComponents()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    move-result-object v7

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->getConfiguration()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;

    move-result-object v7

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/utils/DeserializationHelpersKt;->jvmMetadataVersionOrDefault(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;)Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    move-result-object v7

    invoke-static {v5, v4, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinderKt;->findKotlinClass(Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinder;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;

    move-result-object v4

    .line 53
    .end local v4    # "classId":Lkotlin/reflect/jvm/internal/impl/name/ClassId;
    .end local v18    # "partName":Ljava/lang/String;
    .end local v19    # "$i$a$-mapNotNull-PackagePartScopeCache$getPackagePartScope$1$parts$1":I
    if-eqz v4, :cond_0

    .line 55
    .local v4, "it$iv$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 53
    .local v5, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 54
    .end local v4    # "it$iv$iv":Ljava/lang/Object;
    .end local v5    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    .end local v16    # "element$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    :cond_0
    move/from16 v5, v20

    move/from16 v4, v21

    move-object/from16 v7, v22

    .end local v15    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 56
    .end local v20    # "$i$a$-getOrPut-PackagePartScopeCache$getPackagePartScope$1":I
    .end local v21    # "$i$f$getOrPut":I
    .end local v22    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .local v4, "$i$f$getOrPut":I
    .local v5, "$i$a$-getOrPut-PackagePartScopeCache$getPackagePartScope$1":I
    .restart local v7    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    :cond_1
    move/from16 v21, v4

    move/from16 v20, v5

    move-object/from16 v22, v7

    .line 57
    .end local v4    # "$i$f$getOrPut":I
    .end local v5    # "$i$a$-getOrPut-PackagePartScopeCache$getPackagePartScope$1":I
    .end local v7    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v12    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v13    # "$i$f$forEach":I
    .restart local v20    # "$i$a$-getOrPut-PackagePartScopeCache$getPackagePartScope$1":I
    .restart local v21    # "$i$f$getOrPut":I
    .restart local v22    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    nop

    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$mapNotNullTo":I
    move-object v4, v9

    check-cast v4, Ljava/util/List;

    .line 45
    nop

    .end local v8    # "$i$f$mapNotNull":I
    .end local v22    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    goto :goto_1

    .line 31
    .end local v20    # "$i$a$-getOrPut-PackagePartScopeCache$getPackagePartScope$1":I
    .end local v21    # "$i$f$getOrPut":I
    .restart local v4    # "$i$f$getOrPut":I
    .restart local v5    # "$i$a$-getOrPut-PackagePartScopeCache$getPackagePartScope$1":I
    :cond_2
    move/from16 v21, v4

    move/from16 v20, v5

    .end local v4    # "$i$f$getOrPut":I
    .end local v5    # "$i$a$-getOrPut-PackagePartScopeCache$getPackagePartScope$1":I
    .restart local v20    # "$i$a$-getOrPut-PackagePartScopeCache$getPackagePartScope$1":I
    .restart local v21    # "$i$f$getOrPut":I
    invoke-static/range {p1 .. p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 25
    :goto_1
    nop

    .line 33
    .local v4, "parts":Ljava/util/List;
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EmptyPackageFragmentDescriptor;

    iget-object v7, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/PackagePartScopeCache;->resolver:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;->getComponents()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;

    move-result-object v7

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationComponents;->getModuleDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    move-result-object v7

    invoke-direct {v5, v7, v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EmptyPackageFragmentDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/FqName;)V

    .line 35
    .local v5, "packageFragment":Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EmptyPackageFragmentDescriptor;
    move-object v7, v4

    check-cast v7, Ljava/lang/Iterable;

    .restart local v7    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 58
    .restart local v8    # "$i$f$mapNotNull":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/Collection;

    .restart local v9    # "destination$iv$iv":Ljava/util/Collection;
    move-object v10, v7

    .restart local v10    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 66
    .restart local v11    # "$i$f$mapNotNullTo":I
    move-object v12, v10

    .restart local v12    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 67
    .restart local v13    # "$i$f$forEach":I
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .restart local v15    # "element$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    .restart local v16    # "element$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 66
    .restart local v17    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object/from16 v18, v4

    .end local v4    # "parts":Ljava/util/List;
    .local v18, "parts":Ljava/util/List;
    move-object/from16 v4, v16

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;

    .local v4, "part":Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;
    const/16 v19, 0x0

    .line 36
    .local v19, "$i$a$-mapNotNull-PackagePartScopeCache$getPackagePartScope$1$scopes$1":I
    move-object/from16 v22, v7

    .end local v7    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .restart local v22    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    iget-object v7, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/PackagePartScopeCache;->resolver:Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    move-object v0, v5

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;

    invoke-virtual {v7, v0, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;->createKotlinPackagePartScope(Lkotlin/reflect/jvm/internal/impl/descriptors/PackageFragmentDescriptor;Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v0

    .line 66
    .end local v4    # "part":Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinJvmBinaryClass;
    .end local v19    # "$i$a$-mapNotNull-PackagePartScopeCache$getPackagePartScope$1$scopes$1":I
    if-eqz v0, :cond_3

    .line 68
    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 66
    .local v4, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v9, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    .end local v16    # "element$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v4, v18

    move-object/from16 v7, v22

    .end local v15    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_2

    .line 69
    .end local v18    # "parts":Ljava/util/List;
    .end local v22    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .local v4, "parts":Ljava/util/List;
    .restart local v7    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    :cond_4
    move-object/from16 v18, v4

    move-object/from16 v22, v7

    .line 70
    .end local v4    # "parts":Ljava/util/List;
    .end local v7    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v12    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v13    # "$i$f$forEach":I
    .restart local v18    # "parts":Ljava/util/List;
    .restart local v22    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    nop

    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$mapNotNullTo":I
    move-object v0, v9

    check-cast v0, Ljava/util/List;

    .line 58
    nop

    .end local v8    # "$i$f$mapNotNull":I
    .end local v22    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    check-cast v0, Ljava/lang/Iterable;

    .line 37
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 35
    nop

    .line 39
    .local v0, "scopes":Ljava/util/List;
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;->Companion:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope$Companion;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v0

    check-cast v8, Ljava/lang/Iterable;

    invoke-virtual {v4, v7, v8}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope$Companion;->create(Ljava/lang/String;Ljava/lang/Iterable;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v0

    .line 44
    .end local v0    # "scopes":Ljava/util/List;
    .end local v5    # "packageFragment":Lkotlin/reflect/jvm/internal/impl/descriptors/impl/EmptyPackageFragmentDescriptor;
    .end local v6    # "fqName":Lkotlin/reflect/jvm/internal/impl/name/FqName;
    .end local v18    # "parts":Ljava/util/List;
    .end local v20    # "$i$a$-getOrPut-PackagePartScopeCache$getPackagePartScope$1":I
    nop

    .line 71
    .local v0, "default$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 44
    .local v4, "$i$a$-let-MapsKt__MapsJVMKt$getOrPut$1$iv":I
    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    move-object v5, v0

    goto :goto_3

    .line 43
    .end local v0    # "default$iv":Ljava/lang/Object;
    .end local v21    # "$i$f$getOrPut":I
    .local v4, "$i$f$getOrPut":I
    :cond_5
    move/from16 v21, v4

    .end local v4    # "$i$f$getOrPut":I
    .restart local v21    # "$i$f$getOrPut":I
    :cond_6
    :goto_3
    nop

    .line 22
    .end local v2    # "$this$getOrPut$iv":Ljava/util/concurrent/ConcurrentMap;
    .end local v3    # "key$iv":Ljava/lang/Object;
    .end local v21    # "$i$f$getOrPut":I
    const-string v0, "cache.getOrPut(fileClass\u2026ileClass)\", scopes)\n    }"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    .line 40
    return-object v5
.end method
