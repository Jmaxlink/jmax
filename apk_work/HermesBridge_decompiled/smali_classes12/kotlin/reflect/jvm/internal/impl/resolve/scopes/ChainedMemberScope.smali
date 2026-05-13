.class public final Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;
.super Ljava/lang/Object;
.source "ChainedMemberScope.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChainedMemberScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChainedMemberScope.kt\norg/jetbrains/kotlin/resolve/scopes/ChainedMemberScope\n+ 2 scopeUtils.kt\norg/jetbrains/kotlin/util/collectionUtils/ScopeUtilsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,91:1\n92#2,14:92\n47#2,11:106\n47#2,11:117\n47#2,11:128\n10664#3,5:139\n10664#3,5:144\n13579#3,2:149\n*S KotlinDebug\n*F\n+ 1 ChainedMemberScope.kt\norg/jetbrains/kotlin/resolve/scopes/ChainedMemberScope\n*L\n35#1:92,14\n38#1:106,11\n41#1:117,11\n44#1:128,11\n46#1:139,5\n47#1:144,5\n51#1:149,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope$Companion;


# instance fields
.field private final debugName:Ljava/lang/String;

.field private final scopes:[Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;->Companion:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;)V
    .locals 0
    .param p1, "debugName"    # Ljava/lang/String;
    .param p2, "scopes"    # [Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;->debugName:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;->scopes:[Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    .line 29
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;[Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;-><init>(Ljava/lang/String;[Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;)V

    return-void
.end method

.method public static final synthetic access$getScopes$p(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;)[Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 1
    .param p0, "$this"    # Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;

    .line 29
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;->scopes:[Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    return-object v0
.end method


# virtual methods
.method public getClassifierNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;->scopes:[Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->asIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScopeKt;->flatMapClassifierNamesOrNull(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    .locals 8
    .param p1, "name"    # Lkotlin/reflect/jvm/internal/impl/name/Name;
    .param p2, "location"    # Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;->scopes:[Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    .local v0, "scopes$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 92
    .local v1, "$i$f$getFirstClassifierDiscriminateHeaders":I
    const/4 v2, 0x0

    .line 93
    .local v2, "result$iv":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 94
    .local v5, "scope$iv":Ljava/lang/Object;
    move-object v6, v5

    .local v6, "it":Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    const/4 v7, 0x0

    .line 35
    .local v7, "$i$a$-getFirstClassifierDiscriminateHeaders-ChainedMemberScope$getContributedClassifier$1":I
    invoke-interface {v6, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v6

    .line 94
    .end local v6    # "it":Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .end local v7    # "$i$a$-getFirstClassifierDiscriminateHeaders-ChainedMemberScope$getContributedClassifier$1":I
    nop

    .line 95
    .local v6, "newResult$iv":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    if-eqz v6, :cond_1

    .line 96
    instance-of v7, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptorWithTypeParameters;

    if-eqz v7, :cond_0

    move-object v7, v6

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptorWithTypeParameters;

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptorWithTypeParameters;->isExpect()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 97
    if-nez v2, :cond_1

    move-object v2, v6

    goto :goto_1

    .line 101
    :cond_0
    move-object v2, v6

    goto :goto_2

    .line 93
    .end local v5    # "scope$iv":Ljava/lang/Object;
    .end local v6    # "newResult$iv":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 105
    :cond_2
    nop

    .line 35
    .end local v0    # "scopes$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$getFirstClassifierDiscriminateHeaders":I
    .end local v2    # "result$iv":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    :goto_2
    return-object v2
.end method

.method public getContributedDescriptors(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/DescriptorKindFilter;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .locals 8
    .param p1, "kindFilter"    # Lkotlin/reflect/jvm/internal/impl/resolve/scopes/DescriptorKindFilter;
    .param p2, "nameFilter"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/DescriptorKindFilter;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;->scopes:[Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    .local v0, "scopes$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 128
    .local v1, "$i$f$getFromAllScopes":I
    array-length v2, v0

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 132
    const/4 v2, 0x0

    .line 133
    .local v2, "result$iv":Ljava/util/Collection;
    array-length v4, v0

    goto :goto_0

    .line 130
    .end local v2    # "result$iv":Ljava/util/Collection;
    :pswitch_0
    aget-object v2, v0, v3

    .local v2, "it":Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    const/4 v3, 0x0

    .line 44
    .local v3, "$i$a$-getFromAllScopes-ChainedMemberScope$getContributedDescriptors$1":I
    invoke-interface {v2, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->getContributedDescriptors(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/DescriptorKindFilter;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object v2

    .line 130
    .end local v2    # "it":Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .end local v3    # "$i$a$-getFromAllScopes-ChainedMemberScope$getContributedDescriptors$1":I
    goto :goto_1

    .line 129
    :pswitch_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    goto :goto_1

    .line 133
    .local v2, "result$iv":Ljava/util/Collection;
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 134
    .local v5, "scope$iv":Ljava/lang/Object;
    move-object v6, v5

    .local v6, "it":Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    const/4 v7, 0x0

    .line 44
    .local v7, "$i$a$-getFromAllScopes-ChainedMemberScope$getContributedDescriptors$1":I
    invoke-interface {v6, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->getContributedDescriptors(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/DescriptorKindFilter;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object v6

    .line 134
    .end local v6    # "it":Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .end local v7    # "$i$a$-getFromAllScopes-ChainedMemberScope$getContributedDescriptors$1":I
    invoke-static {v2, v6}, Lkotlin/reflect/jvm/internal/impl/util/collectionUtils/ScopeUtilsKt;->concat(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    .line 133
    .end local v5    # "scope$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    :cond_0
    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    move-object v2, v3

    .line 138
    .end local v2    # "result$iv":Ljava/util/Collection;
    :cond_1
    :goto_1
    nop

    .line 44
    .end local v0    # "scopes$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$getFromAllScopes":I
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Ljava/util/Collection;
    .locals 8
    .param p1, "name"    # Lkotlin/reflect/jvm/internal/impl/name/Name;
    .param p2, "location"    # Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;",
            ")",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/SimpleFunctionDescriptor;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;->scopes:[Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    .local v0, "scopes$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 117
    .local v1, "$i$f$getFromAllScopes":I
    array-length v2, v0

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 121
    const/4 v2, 0x0

    .line 122
    .local v2, "result$iv":Ljava/util/Collection;
    array-length v4, v0

    goto :goto_0

    .line 119
    .end local v2    # "result$iv":Ljava/util/Collection;
    :pswitch_0
    aget-object v2, v0, v3

    .local v2, "it":Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    const/4 v3, 0x0

    .line 41
    .local v3, "$i$a$-getFromAllScopes-ChainedMemberScope$getContributedFunctions$1":I
    invoke-interface {v2, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Ljava/util/Collection;

    move-result-object v2

    .line 119
    .end local v2    # "it":Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .end local v3    # "$i$a$-getFromAllScopes-ChainedMemberScope$getContributedFunctions$1":I
    goto :goto_1

    .line 118
    :pswitch_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    goto :goto_1

    .line 122
    .local v2, "result$iv":Ljava/util/Collection;
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 123
    .local v5, "scope$iv":Ljava/lang/Object;
    move-object v6, v5

    .local v6, "it":Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    const/4 v7, 0x0

    .line 41
    .local v7, "$i$a$-getFromAllScopes-ChainedMemberScope$getContributedFunctions$1":I
    invoke-interface {v6, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Ljava/util/Collection;

    move-result-object v6

    .line 123
    .end local v6    # "it":Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .end local v7    # "$i$a$-getFromAllScopes-ChainedMemberScope$getContributedFunctions$1":I
    invoke-static {v2, v6}, Lkotlin/reflect/jvm/internal/impl/util/collectionUtils/ScopeUtilsKt;->concat(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    .line 122
    .end local v5    # "scope$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    :cond_0
    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    move-object v2, v3

    .line 127
    .end local v2    # "result$iv":Ljava/util/Collection;
    :cond_1
    :goto_1
    nop

    .line 41
    .end local v0    # "scopes$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$getFromAllScopes":I
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getContributedVariables(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Ljava/util/Collection;
    .locals 8
    .param p1, "name"    # Lkotlin/reflect/jvm/internal/impl/name/Name;
    .param p2, "location"    # Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;",
            ")",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/PropertyDescriptor;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;->scopes:[Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    .local v0, "scopes$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 106
    .local v1, "$i$f$getFromAllScopes":I
    array-length v2, v0

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 110
    const/4 v2, 0x0

    .line 111
    .local v2, "result$iv":Ljava/util/Collection;
    array-length v4, v0

    goto :goto_0

    .line 108
    .end local v2    # "result$iv":Ljava/util/Collection;
    :pswitch_0
    aget-object v2, v0, v3

    .local v2, "it":Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    const/4 v3, 0x0

    .line 38
    .local v3, "$i$a$-getFromAllScopes-ChainedMemberScope$getContributedVariables$1":I
    invoke-interface {v2, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->getContributedVariables(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Ljava/util/Collection;

    move-result-object v2

    .line 108
    .end local v2    # "it":Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .end local v3    # "$i$a$-getFromAllScopes-ChainedMemberScope$getContributedVariables$1":I
    goto :goto_1

    .line 107
    :pswitch_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    goto :goto_1

    .line 111
    .local v2, "result$iv":Ljava/util/Collection;
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 112
    .local v5, "scope$iv":Ljava/lang/Object;
    move-object v6, v5

    .local v6, "it":Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    const/4 v7, 0x0

    .line 38
    .local v7, "$i$a$-getFromAllScopes-ChainedMemberScope$getContributedVariables$1":I
    invoke-interface {v6, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->getContributedVariables(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)Ljava/util/Collection;

    move-result-object v6

    .line 112
    .end local v6    # "it":Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .end local v7    # "$i$a$-getFromAllScopes-ChainedMemberScope$getContributedVariables$1":I
    invoke-static {v2, v6}, Lkotlin/reflect/jvm/internal/impl/util/collectionUtils/ScopeUtilsKt;->concat(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    .line 111
    .end local v5    # "scope$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    :cond_0
    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    move-object v2, v3

    .line 116
    .end local v2    # "result$iv":Ljava/util/Collection;
    :cond_1
    :goto_1
    nop

    .line 38
    .end local v0    # "scopes$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$getFromAllScopes":I
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFunctionNames()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;->scopes:[Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    .local v0, "$this$flatMapTo$iv":[Ljava/lang/Object;
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    .local v1, "destination$iv":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 139
    .local v2, "$i$f$flatMapTo":I
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 140
    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    .local v6, "it":Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    const/4 v7, 0x0

    .line 46
    .local v7, "$i$a$-flatMapTo-ChainedMemberScope$getFunctionNames$1":I
    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->getFunctionNames()Ljava/util/Set;

    move-result-object v6

    .line 140
    .end local v6    # "it":Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .end local v7    # "$i$a$-flatMapTo-ChainedMemberScope$getFunctionNames$1":I
    check-cast v6, Ljava/lang/Iterable;

    .line 141
    .local v6, "list$iv":Ljava/lang/Iterable;
    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 139
    .end local v5    # "element$iv":Ljava/lang/Object;
    .end local v6    # "list$iv":Ljava/lang/Iterable;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 143
    :cond_0
    nop

    .end local v0    # "$this$flatMapTo$iv":[Ljava/lang/Object;
    .end local v1    # "destination$iv":Ljava/util/Collection;
    .end local v2    # "$i$f$flatMapTo":I
    move-object v0, v1

    check-cast v0, Ljava/util/Set;

    .line 46
    return-object v0
.end method

.method public getVariableNames()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;->scopes:[Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    .local v0, "$this$flatMapTo$iv":[Ljava/lang/Object;
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    .local v1, "destination$iv":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 144
    .local v2, "$i$f$flatMapTo":I
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 145
    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    .local v6, "it":Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    const/4 v7, 0x0

    .line 47
    .local v7, "$i$a$-flatMapTo-ChainedMemberScope$getVariableNames$1":I
    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->getVariableNames()Ljava/util/Set;

    move-result-object v6

    .line 145
    .end local v6    # "it":Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .end local v7    # "$i$a$-flatMapTo-ChainedMemberScope$getVariableNames$1":I
    check-cast v6, Ljava/lang/Iterable;

    .line 146
    .local v6, "list$iv":Ljava/lang/Iterable;
    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 144
    .end local v5    # "element$iv":Ljava/lang/Object;
    .end local v6    # "list$iv":Ljava/lang/Iterable;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 148
    :cond_0
    nop

    .end local v0    # "$this$flatMapTo$iv":[Ljava/lang/Object;
    .end local v1    # "destination$iv":Ljava/util/Collection;
    .end local v2    # "$i$f$flatMapTo":I
    move-object v0, v1

    check-cast v0, Ljava/util/Set;

    .line 47
    return-object v0
.end method

.method public recordLookup(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)V
    .locals 7
    .param p1, "name"    # Lkotlin/reflect/jvm/internal/impl/name/Name;
    .param p2, "location"    # Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;->scopes:[Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    .local v0, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 149
    .local v1, "$i$f$forEach":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    .local v5, "it":Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    const/4 v6, 0x0

    .line 51
    .local v6, "$i$a$-forEach-ChainedMemberScope$recordLookup$1":I
    invoke-interface {v5, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->recordLookup(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;)V

    .line 149
    .end local v5    # "it":Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .end local v6    # "$i$a$-forEach-ChainedMemberScope$recordLookup$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    :cond_0
    nop

    .line 52
    .end local v0    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ChainedMemberScope;->debugName:Ljava/lang/String;

    return-object v0
.end method
