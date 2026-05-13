.class public final Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmNameResolverKt;
.super Ljava/lang/Object;
.source "JvmNameResolver.kt"


# direct methods
.method public static final toExpandedRecordsList(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .param p0, "$this$toExpandedRecordsList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$StringTableTypes$Record;",
            ">;)",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$StringTableTypes$Record;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .local v1, "list":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .line 25
    .local v2, "$i$a$-also-JvmNameResolverKt$toExpandedRecordsList$1":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 26
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$StringTableTypes$Record;

    .line 27
    .local v4, "record":Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$StringTableTypes$Record;
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$StringTableTypes$Record;->getRange()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    move v7, v6

    .local v7, "it":I
    const/4 v8, 0x0

    .line 28
    .local v8, "$i$a$-repeat-JvmNameResolverKt$toExpandedRecordsList$1$1":I
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    nop

    .line 27
    .end local v7    # "it":I
    .end local v8    # "$i$a$-repeat-JvmNameResolverKt$toExpandedRecordsList$1$1":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 31
    .end local v4    # "record":Lkotlin/reflect/jvm/internal/impl/metadata/jvm/JvmProtoBuf$StringTableTypes$Record;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    .line 32
    nop

    .line 24
    .end local v1    # "list":Ljava/util/ArrayList;
    .end local v2    # "$i$a$-also-JvmNameResolverKt$toExpandedRecordsList$1":I
    check-cast v0, Ljava/util/List;

    .line 32
    return-object v0
.end method
