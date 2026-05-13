.class public final Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
.super Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;
.source "TypeAttributes.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner<",
        "Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute<",
        "*>;",
        "Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute<",
        "*>;>;",
        "Ljava/lang/Iterable<",
        "Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute<",
        "*>;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTypeAttributes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeAttributes.kt\norg/jetbrains/kotlin/types/TypeAttributes\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,133:1\n105#1,9:134\n105#1,9:143\n105#1,9:152\n766#2:161\n857#2,2:162\n*S KotlinDebug\n*F\n+ 1 TypeAttributes.kt\norg/jetbrains/kotlin/types/TypeAttributes\n*L\n74#1:134,9\n78#1:143,9\n82#1:152,9\n99#1:161\n99#1:162,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

.field private static final Empty:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    .line 54
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;-><init>(Ljava/util/List;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Empty:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 3
    .param p1, "attributes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute<",
            "*>;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/util/AttributeArrayOwner;-><init>()V

    .line 67
    nop

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;

    .line 69
    .local v1, "attribute":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;->getKey()Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->registerComponent(Lkotlin/reflect/KClass;Ljava/lang/Object;)V

    .end local v1    # "attribute":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    goto :goto_0

    .line 71
    :cond_0
    nop

    .line 36
    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;)V
    .locals 1
    .param p1, "attribute"    # Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute<",
            "*>;)V"
        }
    .end annotation

    .line 65
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getEmpty$cp()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .locals 1

    .line 36
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Empty:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    return-object v0
.end method


# virtual methods
.method public final add(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .locals 11
    .param p1, "other"    # Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    move-object v0, p0

    .local v0, "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    const/4 v1, 0x0

    .line 152
    .local v1, "$i$f$perform":I
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 153
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 154
    .local v2, "attributes$iv":Ljava/util/List;
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->access$getIndices(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 155
    .local v4, "index$iv":I
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->getArrayMap()Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;

    .line 156
    .local v5, "a$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->getArrayMap()Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;

    .line 157
    .local v6, "b$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    if-nez v5, :cond_2

    if-eqz v6, :cond_1

    move-object v7, v6

    .local v7, "$this$add_u24lambda_u242":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    move-object v8, v5

    .local v8, "it":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    const/4 v9, 0x0

    .line 82
    .local v9, "$i$a$-perform-TypeAttributes$add$1":I
    invoke-virtual {v7, v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;->add(Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;

    move-result-object v7

    .line 157
    .end local v7    # "$this$add_u24lambda_u242":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    .end local v8    # "it":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    .end local v9    # "$i$a$-perform-TypeAttributes$add$1":I
    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    move-object v7, v5

    .restart local v7    # "$this$add_u24lambda_u242":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    move-object v8, v6

    .restart local v8    # "it":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    const/4 v9, 0x0

    .line 82
    .restart local v9    # "$i$a$-perform-TypeAttributes$add$1":I
    invoke-virtual {v7, v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;->add(Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;

    move-result-object v10

    move-object v7, v10

    .line 157
    .end local v7    # "$this$add_u24lambda_u242":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    .end local v8    # "it":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    .end local v9    # "$i$a$-perform-TypeAttributes$add$1":I
    :goto_1
    nop

    .line 158
    .local v7, "res$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    move-object v8, v2

    check-cast v8, Ljava/util/Collection;

    invoke-static {v8, v7}, Lkotlin/reflect/jvm/internal/impl/utils/CollectionsKt;->addIfNotNull(Ljava/util/Collection;Ljava/lang/Object;)V

    .end local v4    # "index$iv":I
    .end local v5    # "a$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    .end local v6    # "b$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    .end local v7    # "res$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    goto :goto_0

    .line 160
    :cond_3
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-virtual {v3, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->create(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v3

    move-object v0, v3

    .line 82
    .end local v0    # "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .end local v1    # "$i$f$perform":I
    .end local v2    # "attributes$iv":Ljava/util/List;
    :goto_2
    return-object v0
.end method

.method public final contains(Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;)Z
    .locals 2
    .param p1, "attribute"    # Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "attribute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;->getKey()Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->getId(Lkotlin/reflect/KClass;)I

    move-result v0

    .line 87
    .local v0, "index":I
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->getArrayMap()Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected getTypeRegistry()Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry<",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute<",
            "*>;",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute<",
            "*>;>;"
        }
    .end annotation

    .line 117
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;

    return-object v0
.end method

.method public final intersect(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .locals 11
    .param p1, "other"    # Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    move-object v0, p0

    .local v0, "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    const/4 v1, 0x0

    .line 143
    .local v1, "$i$f$perform":I
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 144
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 145
    .local v2, "attributes$iv":Ljava/util/List;
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->access$getIndices(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 146
    .local v4, "index$iv":I
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->getArrayMap()Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;

    .line 147
    .local v5, "a$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->getArrayMap()Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;

    .line 148
    .local v6, "b$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    if-nez v5, :cond_2

    if-eqz v6, :cond_1

    move-object v7, v6

    .local v7, "$this$intersect_u24lambda_u241":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    move-object v8, v5

    .local v8, "it":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    const/4 v9, 0x0

    .line 78
    .local v9, "$i$a$-perform-TypeAttributes$intersect$1":I
    invoke-virtual {v7, v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;->intersect(Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;

    move-result-object v7

    .line 148
    .end local v7    # "$this$intersect_u24lambda_u241":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    .end local v8    # "it":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    .end local v9    # "$i$a$-perform-TypeAttributes$intersect$1":I
    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    move-object v7, v5

    .restart local v7    # "$this$intersect_u24lambda_u241":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    move-object v8, v6

    .restart local v8    # "it":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    const/4 v9, 0x0

    .line 78
    .restart local v9    # "$i$a$-perform-TypeAttributes$intersect$1":I
    invoke-virtual {v7, v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;->intersect(Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;

    move-result-object v10

    move-object v7, v10

    .line 148
    .end local v7    # "$this$intersect_u24lambda_u241":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    .end local v8    # "it":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    .end local v9    # "$i$a$-perform-TypeAttributes$intersect$1":I
    :goto_1
    nop

    .line 149
    .local v7, "res$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    move-object v8, v2

    check-cast v8, Ljava/util/Collection;

    invoke-static {v8, v7}, Lkotlin/reflect/jvm/internal/impl/utils/CollectionsKt;->addIfNotNull(Ljava/util/Collection;Ljava/lang/Object;)V

    .end local v4    # "index$iv":I
    .end local v5    # "a$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    .end local v6    # "b$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    .end local v7    # "res$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    goto :goto_0

    .line 151
    :cond_3
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-virtual {v3, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->create(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v3

    move-object v0, v3

    .line 78
    .end local v0    # "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .end local v1    # "$i$f$perform":I
    .end local v2    # "attributes$iv":Ljava/util/List;
    :goto_2
    return-object v0
.end method

.method public final plus(Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .locals 2
    .param p1, "attribute"    # Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute<",
            "*>;)",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;"
        }
    .end annotation

    const-string v0, "attribute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->contains(Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;-><init>(Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;)V

    return-object v0

    .line 93
    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 94
    .local v0, "newAttributes":Ljava/util/List;
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->create(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v1

    return-object v1
.end method

.method public final remove(Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .locals 10
    .param p1, "attribute"    # Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute<",
            "*>;)",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;"
        }
    .end annotation

    const-string v0, "attribute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->getArrayMap()Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 161
    .local v1, "$i$f$filter":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 162
    .local v4, "$i$f$filterTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;

    .local v7, "it":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    const/4 v8, 0x0

    .line 99
    .local v8, "$i$a$-filter-TypeAttributes$remove$attributes$1":I
    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 162
    .end local v7    # "it":Lkotlin/reflect/jvm/internal/impl/types/TypeAttribute;
    .end local v8    # "$i$a$-filter-TypeAttributes$remove$attributes$1":I
    xor-int/lit8 v7, v9, 0x1

    if-eqz v7, :cond_1

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterTo":I
    check-cast v2, Ljava/util/List;

    .line 161
    nop

    .line 99
    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filter":I
    move-object v0, v2

    .line 100
    .local v0, "attributes":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->getArrayMap()Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/util/ArrayMap;->getSize()I

    move-result v2

    if-ne v1, v2, :cond_3

    return-object p0

    .line 101
    :cond_3
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->create(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v1

    return-object v1
.end method
