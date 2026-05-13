.class public final Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;
.super Ljava/lang/Object;
.source "TypeTable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTypeTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeTable.kt\norg/jetbrains/kotlin/metadata/deserialization/TypeTable\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,36:1\n1559#2:37\n1590#2,4:38\n*S KotlinDebug\n*F\n+ 1 TypeTable.kt\norg/jetbrains/kotlin/metadata/deserialization/TypeTable\n*L\n26#1:37\n26#1:38,4\n*E\n"
.end annotation


# instance fields
.field private final types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;)V
    .locals 18
    .param p1, "typeTable"    # Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    move-object/from16 v0, p0

    const-string v1, "typeTable"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;

    .local v1, "$this$types_u24lambda_u241":Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;
    const/4 v3, 0x0

    .line 23
    .local v3, "$i$a$-run-TypeTable$types$1":I
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;->getTypeList()Ljava/util/List;

    move-result-object v4

    .line 24
    .local v4, "originalTypes":Ljava/util/List;
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;->hasFirstNullable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 25
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;->getFirstNullable()I

    move-result v5

    .line 26
    .local v5, "firstNullable":I
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;->getTypeList()Ljava/util/List;

    move-result-object v6

    const-string v7, "typeTable.typeList"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$mapIndexed$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 37
    .local v7, "$i$f$mapIndexed":I
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v6, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .local v8, "destination$iv$iv":Ljava/util/Collection;
    move-object v9, v6

    .local v9, "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 38
    .local v10, "$i$f$mapIndexedTo":I
    const/4 v11, 0x0

    .line 39
    .local v11, "index$iv$iv":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 40
    .local v13, "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v14, v11, 0x1

    .end local v11    # "index$iv$iv":I
    .local v14, "index$iv$iv":I
    if-gez v11, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    move-object v15, v13

    check-cast v15, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    .local v11, "i":I
    .local v15, "type":Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;
    const/16 v16, 0x0

    .line 27
    .local v16, "$i$a$-mapIndexed-TypeTable$types$1$1":I
    if-lt v11, v5, :cond_1

    .line 28
    move-object/from16 v17, v1

    .end local v1    # "$this$types_u24lambda_u241":Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;
    .local v17, "$this$types_u24lambda_u241":Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;
    invoke-virtual {v15}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;->toBuilder()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->setNullable(Z)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type$Builder;->build()Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    move-result-object v1

    goto :goto_1

    .line 29
    .end local v17    # "$this$types_u24lambda_u241":Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;
    .restart local v1    # "$this$types_u24lambda_u241":Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;
    :cond_1
    move-object/from16 v17, v1

    .end local v1    # "$this$types_u24lambda_u241":Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;
    .restart local v17    # "$this$types_u24lambda_u241":Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;
    move-object v1, v15

    .line 27
    :goto_1
    nop

    .line 40
    .end local v11    # "i":I
    .end local v15    # "type":Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;
    .end local v16    # "$i$a$-mapIndexed-TypeTable$types$1$1":I
    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p1

    move v11, v14

    move-object/from16 v1, v17

    goto :goto_0

    .line 41
    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    .end local v14    # "index$iv$iv":I
    .end local v17    # "$this$types_u24lambda_u241":Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;
    .restart local v1    # "$this$types_u24lambda_u241":Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;
    .local v11, "index$iv$iv":I
    :cond_2
    move-object/from16 v17, v1

    .end local v1    # "$this$types_u24lambda_u241":Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;
    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    .end local v9    # "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$mapIndexedTo":I
    .end local v11    # "index$iv$iv":I
    .restart local v17    # "$this$types_u24lambda_u241":Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;
    move-object v1, v8

    check-cast v1, Ljava/util/List;

    .line 37
    nop

    .end local v5    # "firstNullable":I
    .end local v6    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapIndexed":I
    goto :goto_2

    .line 31
    .end local v17    # "$this$types_u24lambda_u241":Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;
    .restart local v1    # "$this$types_u24lambda_u241":Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;
    :cond_3
    move-object/from16 v17, v1

    .end local v1    # "$this$types_u24lambda_u241":Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;
    .restart local v17    # "$this$types_u24lambda_u241":Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;
    move-object v1, v4

    .line 24
    :goto_2
    nop

    .line 22
    .end local v3    # "$i$a$-run-TypeTable$types$1":I
    .end local v4    # "originalTypes":Ljava/util/List;
    .end local v17    # "$this$types_u24lambda_u241":Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;
    const-string v2, "run {\n        val origin\u2026 else originalTypes\n    }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;->types:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public final get(I)Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;
    .locals 1
    .param p1, "index"    # I

    .line 34
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;->types:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Type;

    return-object v0
.end method
