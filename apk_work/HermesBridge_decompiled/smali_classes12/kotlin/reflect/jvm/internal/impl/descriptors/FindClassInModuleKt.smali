.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt;
.super Ljava/lang/Object;
.source "findClassInModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nfindClassInModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 findClassInModule.kt\norg/jetbrains/kotlin/descriptors/FindClassInModuleKt\n*L\n1#1,66:1\n43#1,2:67\n*S KotlinDebug\n*F\n+ 1 findClassInModule.kt\norg/jetbrains/kotlin/descriptors/FindClassInModuleKt\n*L\n23#1:67,2\n*E\n"
.end annotation


# direct methods
.method public static final findClassAcrossModuleDependencies(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
    .locals 2
    .param p0, "$this$findClassAcrossModuleDependencies"    # Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    .param p1, "classId"    # Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt;->findClassifierAcrossModuleDependencies(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final findClassifierAcrossModuleDependencies(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    .locals 18
    .param p0, "$this$findClassifierAcrossModuleDependencies"    # Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    .param p1, "classId"    # Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    move-object/from16 v0, p0

    .local v0, "$this$withResolutionAnchor$iv":Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    const/4 v3, 0x0

    .line 67
    .local v3, "$i$f$withResolutionAnchor":I
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/ResolutionAnchorProviderKt;->getResolutionAnchorIfAny(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    move-result-object v4

    .line 68
    .local v4, "anchor$iv":Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    const-string v5, "name"

    const/4 v6, 0x1

    const-string v7, "segments.first()"

    const-string v8, "classId.relativeClassName.pathSegments()"

    const-string v9, "classId.packageFqName"

    if-nez v4, :cond_5

    move-object v11, v0

    .local v11, "$this$findClassifierAcrossModuleDependencies_u24lambda_u240":Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    const/4 v12, 0x0

    .line 24
    .local v12, "$i$a$-withResolutionAnchor-FindClassInModuleKt$findClassifierAcrossModuleDependencies$1":I
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getPackageFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v13

    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11, v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getPackage(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;

    move-result-object v9

    .line 25
    .local v9, "packageViewDescriptor":Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getRelativeClassName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v13

    invoke-virtual {v13}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->pathSegments()Ljava/util/List;

    move-result-object v13

    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v13

    .line 26
    .local v8, "segments":Ljava/util/List;
    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v13

    .line 27
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 28
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FROM_DESERIALIZATION:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;

    .line 26
    invoke-interface {v13, v14, v7}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v7

    if-nez v7, :cond_0

    .line 29
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 30
    .local v7, "topLevelClass":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    :cond_0
    move-object v13, v7

    .line 31
    .local v13, "result":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    invoke-interface {v8, v6, v14}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 32
    .local v14, "name":Lkotlin/reflect/jvm/internal/impl/name/Name;
    instance-of v15, v13, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-nez v15, :cond_1

    const/4 v10, 0x0

    goto/16 :goto_7

    .line 33
    :cond_1
    move-object v15, v13

    check-cast v15, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-interface {v15}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getUnsubstitutedInnerClassesScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v15

    .line 34
    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v16, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FROM_DESERIALIZATION:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object/from16 v10, v16

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;

    invoke-interface {v15, v14, v10}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v10

    instance-of v15, v10, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v15, :cond_2

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    .line 33
    :goto_1
    if-eqz v10, :cond_3

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-object v13, v10

    .end local v14    # "name":Lkotlin/reflect/jvm/internal/impl/name/Name;
    goto :goto_0

    .line 35
    .restart local v14    # "name":Lkotlin/reflect/jvm/internal/impl/name/Name;
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 37
    .end local v14    # "name":Lkotlin/reflect/jvm/internal/impl/name/Name;
    :cond_4
    move-object v10, v13

    goto/16 :goto_7

    .line 68
    .end local v7    # "topLevelClass":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    .end local v8    # "segments":Ljava/util/List;
    .end local v9    # "packageViewDescriptor":Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;
    .end local v11    # "$this$findClassifierAcrossModuleDependencies_u24lambda_u240":Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    .end local v12    # "$i$a$-withResolutionAnchor-FindClassInModuleKt$findClassifierAcrossModuleDependencies$1":I
    .end local v13    # "result":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    :cond_5
    move-object v10, v4

    .local v10, "$this$findClassifierAcrossModuleDependencies_u24lambda_u240":Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    const/4 v11, 0x0

    .line 24
    .local v11, "$i$a$-withResolutionAnchor-FindClassInModuleKt$findClassifierAcrossModuleDependencies$1":I
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getPackageFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v12

    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10, v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getPackage(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;

    move-result-object v12

    .line 25
    .local v12, "packageViewDescriptor":Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getRelativeClassName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v13

    invoke-virtual {v13}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->pathSegments()Ljava/util/List;

    move-result-object v13

    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .local v13, "segments":Ljava/util/List;
    invoke-interface {v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v14

    .line 27
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 28
    sget-object v16, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FROM_DESERIALIZATION:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object/from16 v6, v16

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;

    .line 26
    invoke-interface {v14, v15, v6}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v6

    if-nez v6, :cond_6

    .line 29
    const/4 v10, 0x0

    goto :goto_4

    .line 30
    .local v6, "topLevelClass":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    :cond_6
    move-object v14, v6

    .line 31
    .local v14, "result":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    const/4 v1, 0x1

    invoke-interface {v13, v1, v15}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 32
    .local v15, "name":Lkotlin/reflect/jvm/internal/impl/name/Name;
    move-object/from16 v16, v1

    instance-of v1, v14, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-nez v1, :cond_7

    const/4 v10, 0x0

    goto :goto_4

    .line 33
    :cond_7
    move-object v1, v14

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getUnsubstitutedInnerClassesScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v1

    .line 34
    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v17, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FROM_DESERIALIZATION:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object/from16 v2, v17

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;

    invoke-interface {v1, v15, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v1

    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v2, :cond_8

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    .line 33
    :goto_3
    if-eqz v1, :cond_9

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-object v14, v1

    move-object/from16 v2, p1

    move-object/from16 v1, v16

    .end local v15    # "name":Lkotlin/reflect/jvm/internal/impl/name/Name;
    goto :goto_2

    .line 35
    .restart local v15    # "name":Lkotlin/reflect/jvm/internal/impl/name/Name;
    :cond_9
    const/4 v10, 0x0

    goto :goto_4

    .line 37
    .end local v15    # "name":Lkotlin/reflect/jvm/internal/impl/name/Name;
    :cond_a
    move-object v10, v14

    .line 68
    .end local v6    # "topLevelClass":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    .end local v10    # "$this$findClassifierAcrossModuleDependencies_u24lambda_u240":Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    .end local v11    # "$i$a$-withResolutionAnchor-FindClassInModuleKt$findClassifierAcrossModuleDependencies$1":I
    .end local v12    # "packageViewDescriptor":Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;
    .end local v13    # "segments":Ljava/util/List;
    .end local v14    # "result":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    :goto_4
    if-nez v10, :cond_10

    move-object v1, v0

    .local v1, "$this$findClassifierAcrossModuleDependencies_u24lambda_u240":Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    const/4 v2, 0x0

    .line 24
    .local v2, "$i$a$-withResolutionAnchor-FindClassInModuleKt$findClassifierAcrossModuleDependencies$1":I
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getPackageFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v6

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;->getPackage(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;

    move-result-object v6

    .line 25
    .local v6, "packageViewDescriptor":Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->getRelativeClassName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v9

    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->pathSegments()Ljava/util/List;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v9

    .line 26
    .restart local v8    # "segments":Ljava/util/List;
    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v9

    .line 27
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 28
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FROM_DESERIALIZATION:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;

    .line 26
    invoke-interface {v9, v10, v7}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v7

    if-nez v7, :cond_b

    .line 29
    const/4 v10, 0x0

    goto :goto_7

    .line 30
    .restart local v7    # "topLevelClass":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    :cond_b
    move-object v9, v7

    .line 31
    .local v9, "result":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    invoke-interface {v8, v11, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/name/Name;

    .line 32
    .local v11, "name":Lkotlin/reflect/jvm/internal/impl/name/Name;
    instance-of v12, v9, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-nez v12, :cond_c

    const/4 v10, 0x0

    goto :goto_7

    .line 33
    :cond_c
    move-object v12, v9

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-interface {v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->getUnsubstitutedInnerClassesScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v12

    .line 34
    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FROM_DESERIALIZATION:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;

    invoke-interface {v12, v11, v13}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v12

    instance-of v13, v12, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    if-eqz v13, :cond_d

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    goto :goto_6

    :cond_d
    const/4 v12, 0x0

    .line 33
    :goto_6
    if-eqz v12, :cond_e

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-object v9, v12

    .end local v11    # "name":Lkotlin/reflect/jvm/internal/impl/name/Name;
    goto :goto_5

    .line 35
    .restart local v11    # "name":Lkotlin/reflect/jvm/internal/impl/name/Name;
    :cond_e
    const/4 v10, 0x0

    goto :goto_7

    .line 37
    .end local v11    # "name":Lkotlin/reflect/jvm/internal/impl/name/Name;
    :cond_f
    move-object v10, v9

    .line 68
    .end local v1    # "$this$findClassifierAcrossModuleDependencies_u24lambda_u240":Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    .end local v2    # "$i$a$-withResolutionAnchor-FindClassInModuleKt$findClassifierAcrossModuleDependencies$1":I
    .end local v6    # "packageViewDescriptor":Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;
    .end local v7    # "topLevelClass":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    .end local v8    # "segments":Ljava/util/List;
    .end local v9    # "result":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    :cond_10
    :goto_7
    nop

    .line 38
    .end local v0    # "$this$withResolutionAnchor$iv":Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    .end local v3    # "$i$f$withResolutionAnchor":I
    .end local v4    # "anchor$iv":Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    return-object v10
.end method

.method public static final findNonGenericClassAcrossDependencies(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
    .locals 3
    .param p0, "$this$findNonGenericClassAcrossDependencies"    # Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    .param p1, "classId"    # Lkotlin/reflect/jvm/internal/impl/name/ClassId;
    .param p2, "notFoundClasses"    # Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt;->findClassAcrossModuleDependencies(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v0

    .line 54
    .local v0, "existingClass":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;
    if-eqz v0, :cond_0

    return-object v0

    .line 57
    :cond_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$findNonGenericClassAcrossDependencies$typeParametersCount$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$findNonGenericClassAcrossDependencies$typeParametersCount$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v1}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$findNonGenericClassAcrossDependencies$typeParametersCount$2;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt$findNonGenericClassAcrossDependencies$typeParametersCount$2;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v1

    .line 59
    .local v1, "typeParametersCount":Ljava/util/List;
    invoke-virtual {p2, p1, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;->getClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object v2

    return-object v2
.end method

.method public static final findTypeAliasAcrossModuleDependencies(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;
    .locals 2
    .param p0, "$this$findTypeAliasAcrossModuleDependencies"    # Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    .param p1, "classId"    # Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/FindClassInModuleKt;->findClassifierAcrossModuleDependencies(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
