.class public final Lio/ktor/server/util/PathsKt;
.super Ljava/lang/Object;
.source "Paths.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaths.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Paths.kt\nio/ktor/server/util/PathsKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,112:1\n429#2:113\n502#2,5:114\n1083#2,2:126\n141#3:119\n130#3,5:120\n1#4:125\n*S KotlinDebug\n*F\n+ 1 Paths.kt\nio/ktor/server/util/PathsKt\n*L\n55#1:113\n55#1:114,5\n99#1:126,2\n56#1:119\n56#1:120,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0010\u0018\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u0019\n\u0000\u001a\u0015\u0010\u0006\u001a\u00020\u0007*\u00020\u00012\u0006\u0010\u0008\u001a\u00020\tH\u0082\u0002\u001a \u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000b*\u0008\u0012\u0004\u0012\u00020\u00050\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002\u001a\u0016\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000b*\u0008\u0012\u0004\u0012\u00020\u00050\u000b\u001a\u001a\u0010\u000f\u001a\u00020\u0010*\u0008\u0012\u0004\u0012\u00020\u00050\u00112\u0006\u0010\u0012\u001a\u00020\u0005H\u0002\u001a\u000c\u0010\u0013\u001a\u00020\u0007*\u00020\u0005H\u0002\u001a\u000c\u0010\u0014\u001a\u00020\u0001*\u00020\u0015H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "FirstReservedLetters",
        "",
        "ReservedCharacters",
        "ReservedWords",
        "",
        "",
        "contains",
        "",
        "char",
        "",
        "filterComponentsImpl",
        "",
        "startIndex",
        "",
        "normalizePathComponents",
        "processAndReplaceComponent",
        "",
        "",
        "component",
        "shouldBeReplaced",
        "toASCIITable",
        "",
        "ktor-server-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final FirstReservedLetters:[Z

.field private static final ReservedCharacters:[Z

.field private static final ReservedWords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 62
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-static {v0}, Lio/ktor/server/util/PathsKt;->toASCIITable([C)[Z

    move-result-object v0

    sput-object v0, Lio/ktor/server/util/PathsKt;->FirstReservedLetters:[Z

    .line 64
    nop

    .line 65
    nop

    .line 66
    nop

    .line 65
    nop

    .line 66
    nop

    .line 65
    nop

    .line 66
    nop

    .line 65
    nop

    .line 66
    nop

    .line 65
    nop

    .line 66
    nop

    .line 65
    nop

    .line 66
    nop

    .line 65
    nop

    .line 66
    nop

    .line 65
    nop

    .line 66
    nop

    .line 65
    nop

    .line 66
    nop

    .line 65
    nop

    .line 67
    nop

    .line 65
    nop

    .line 67
    nop

    .line 65
    nop

    .line 67
    nop

    .line 65
    nop

    .line 67
    nop

    .line 65
    nop

    .line 67
    nop

    .line 65
    nop

    .line 67
    nop

    .line 65
    nop

    .line 67
    nop

    .line 65
    nop

    .line 67
    nop

    .line 65
    nop

    .line 67
    const-string v22, "LPT9"

    const-string v1, "CON"

    const-string v2, "PRN"

    const-string v3, "AUX"

    const-string v4, "NUL"

    const-string v5, "COM1"

    const-string v6, "COM2"

    const-string v7, "COM3"

    const-string v8, "COM4"

    const-string v9, "COM5"

    const-string v10, "COM6"

    const-string v11, "COM7"

    const-string v12, "COM8"

    const-string v13, "COM9"

    const-string v14, "LPT1"

    const-string v15, "LPT2"

    const-string v16, "LPT3"

    const-string v17, "LPT4"

    const-string v18, "LPT5"

    const-string v19, "LPT6"

    const-string v20, "LPT7"

    const-string v21, "LPT8"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v0

    .line 65
    nop

    .line 64
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/ktor/server/util/PathsKt;->ReservedWords:Ljava/util/Set;

    .line 70
    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    invoke-static {v0}, Lio/ktor/server/util/PathsKt;->toASCIITable([C)[Z

    move-result-object v0

    sput-object v0, Lio/ktor/server/util/PathsKt;->ReservedCharacters:[Z

    return-void

    :array_0
    .array-data 2
        0x41s
        0x61s
        0x43s
        0x63s
        0x6cs
        0x4cs
        0x50s
        0x70s
        0x6es
        0x4es
    .end array-data

    :array_1
    .array-data 2
        0x5cs
        0x2fs
        0x3as
        0x2as
        0x3fs
        0x22s
        0x3cs
        0x3es
        0x7cs
    .end array-data
.end method

.method private static final contains([ZC)Z
    .locals 2
    .param p0, "$this$contains"    # [Z
    .param p1, "char"    # C

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    move v0, p1

    .line 110
    .local v0, "codepoint":I
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-boolean v1, p0, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static final filterComponentsImpl(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .param p0, "$this$filterComponentsImpl"    # Ljava/util/List;
    .param p1, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .local v0, "result":Ljava/util/ArrayList;
    if-lez p1, :cond_0

    .line 27
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 29
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lio/ktor/server/util/PathsKt;->processAndReplaceComponent(Ljava/util/List;Ljava/lang/String;)V

    .line 30
    add-int/lit8 v1, p1, 0x1

    .local v1, "index":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 31
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 32
    .local v3, "component":Ljava/lang/String;
    invoke-static {v3}, Lio/ktor/server/util/PathsKt;->shouldBeReplaced(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 33
    move-object v4, v0

    check-cast v4, Ljava/util/List;

    invoke-static {v4, v3}, Lio/ktor/server/util/PathsKt;->processAndReplaceComponent(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .end local v3    # "component":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v1    # "index":I
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public static final normalizePathComponents(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p0, "$this$normalizePathComponents"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x0

    .local v0, "index":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 15
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 16
    .local v2, "component":Ljava/lang/String;
    invoke-static {v2}, Lio/ktor/server/util/PathsKt;->shouldBeReplaced(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17
    invoke-static {p0, v0}, Lio/ktor/server/util/PathsKt;->filterComponentsImpl(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 14
    .end local v2    # "component":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    .end local v0    # "index":I
    :cond_1
    return-object p0
.end method

.method private static final processAndReplaceComponent(Ljava/util/List;Ljava/lang/String;)V
    .locals 13
    .param p0, "$this$processAndReplaceComponent"    # Ljava/util/List;
    .param p1, "component"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 43
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_f

    .line 44
    const-string v0, "."

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "~"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lio/ktor/server/util/PathsKt;->ReservedWords:Ljava/util/Set;

    invoke-static {p1}, Lio/ktor/util/TextKt;->toUpperCasePreservingASCIIRules(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_7

    .line 48
    :cond_1
    const-string v0, ".."

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 50
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 52
    :cond_2
    return-void

    .line 57
    :cond_3
    nop

    .line 55
    move-object v0, p1

    .local v0, "$this$filter$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 113
    .local v3, "$i$f$filter":I
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    .local v4, "$this$filterTo$iv$iv":Ljava/lang/CharSequence;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v5, Ljava/lang/Appendable;

    .local v5, "destination$iv$iv":Ljava/lang/Appendable;
    const/4 v6, 0x0

    .line 114
    .local v6, "$i$f$filterTo":I
    const/4 v7, 0x0

    .local v7, "index$iv$iv":I
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    :goto_1
    const/16 v9, 0x20

    if-ge v7, v8, :cond_6

    .line 115
    invoke-interface {v4, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 116
    .local v10, "element$iv$iv":C
    move v11, v10

    .local v11, "it":C
    const/4 v12, 0x0

    .line 55
    .local v12, "$i$a$-filter-PathsKt$processAndReplaceComponent$1":I
    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v9

    if-ltz v9, :cond_4

    sget-object v9, Lio/ktor/server/util/PathsKt;->ReservedCharacters:[Z

    invoke-static {v9, v11}, Lio/ktor/server/util/PathsKt;->contains([ZC)Z

    move-result v9

    if-nez v9, :cond_4

    move v9, v2

    goto :goto_2

    :cond_4
    move v9, v1

    .line 116
    .end local v11    # "it":C
    .end local v12    # "$i$a$-filter-PathsKt$processAndReplaceComponent$1":I
    :goto_2
    if-eqz v9, :cond_5

    invoke-interface {v5, v10}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 114
    .end local v10    # "element$iv$iv":C
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 118
    .end local v7    # "index$iv$iv":I
    :cond_6
    nop

    .end local v4    # "$this$filterTo$iv$iv":Ljava/lang/CharSequence;
    .end local v5    # "destination$iv$iv":Ljava/lang/Appendable;
    .end local v6    # "$i$f$filterTo":I
    move-object v4, v5

    check-cast v4, Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "filterTo(StringBuilder(), predicate).toString()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .end local v0    # "$this$filter$iv":Ljava/lang/String;
    .end local v3    # "$i$f$filter":I
    nop

    .line 56
    move-object v0, v4

    .local v0, "$this$trimEnd$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 119
    .local v3, "$i$f$trimEnd":I
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    .local v4, "$this$trimEnd$iv$iv":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 120
    .local v5, "$i$f$trimEnd":I
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_b

    :cond_7
    move v7, v6

    .restart local v7    # "index$iv$iv":I
    add-int/lit8 v6, v6, -0x1

    .line 121
    invoke-interface {v4, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .local v8, "it":C
    const/4 v10, 0x0

    .line 56
    .local v10, "$i$a$-trimEnd-PathsKt$processAndReplaceComponent$2":I
    if-eq v8, v9, :cond_9

    const/16 v11, 0x2e

    if-ne v8, v11, :cond_8

    goto :goto_3

    :cond_8
    move v8, v1

    goto :goto_4

    :cond_9
    :goto_3
    move v8, v2

    .line 121
    .end local v8    # "it":C
    .end local v10    # "$i$a$-trimEnd-PathsKt$processAndReplaceComponent$2":I
    :goto_4
    if-nez v8, :cond_a

    .line 122
    add-int/lit8 v6, v7, 0x1

    invoke-interface {v4, v1, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_5

    .line 120
    :cond_a
    if-gez v6, :cond_7

    .line 124
    .end local v7    # "index$iv$iv":I
    :cond_b
    const-string v6, ""

    check-cast v6, Ljava/lang/CharSequence;

    .line 119
    .end local v4    # "$this$trimEnd$iv$iv":Ljava/lang/CharSequence;
    .end local v5    # "$i$f$trimEnd":I
    :goto_5
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .end local v0    # "$this$trimEnd$iv":Ljava/lang/String;
    .end local v3    # "$i$f$trimEnd":I
    nop

    .line 57
    move-object v3, v0

    .line 125
    .local v3, "it":Ljava/lang/String;
    const/4 v4, 0x0

    .line 57
    .local v4, "$i$a$-takeIf-PathsKt$processAndReplaceComponent$3":I
    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_c

    move v1, v2

    .end local v3    # "it":Ljava/lang/String;
    .end local v4    # "$i$a$-takeIf-PathsKt$processAndReplaceComponent$3":I
    :cond_c
    if-eqz v1, :cond_d

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_e

    .local v0, "filtered":Ljava/lang/String;
    const/4 v1, 0x0

    .line 58
    .local v1, "$i$a$-let-PathsKt$processAndReplaceComponent$4":I
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .end local v0    # "filtered":Ljava/lang/String;
    .end local v1    # "$i$a$-let-PathsKt$processAndReplaceComponent$4":I
    nop

    .line 60
    :cond_e
    return-void

    .line 46
    :cond_f
    :goto_7
    return-void
.end method

.method private static final shouldBeReplaced(Ljava/lang/String;)Z
    .locals 14
    .param p0, "$this$shouldBeReplaced"    # Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 75
    .local v0, "length":I
    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 76
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 78
    .local v3, "first":C
    const/16 v4, 0x2e

    if-ne v3, v4, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_2

    .line 80
    :cond_1
    return v1

    .line 82
    :cond_2
    const/16 v5, 0x7e

    if-ne v3, v5, :cond_3

    if-ne v0, v1, :cond_3

    .line 83
    return v1

    .line 86
    :cond_3
    sget-object v5, Lio/ktor/server/util/PathsKt;->FirstReservedLetters:[Z

    invoke-static {v5, v3}, Lio/ktor/server/util/PathsKt;->contains([ZC)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 87
    sget-object v5, Lio/ktor/server/util/PathsKt;->ReservedWords:Ljava/util/Set;

    invoke-interface {v5, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lio/ktor/server/util/PathsKt;->ReservedWords:Ljava/util/Set;

    invoke-static {p0}, Lio/ktor/util/TextKt;->toUpperCasePreservingASCIIRules(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 89
    :cond_4
    return v1

    .line 92
    :cond_5
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 93
    .local v5, "last":C
    const/16 v6, 0x20

    if-eq v5, v6, :cond_c

    if-ne v5, v4, :cond_6

    goto :goto_4

    .line 98
    :cond_6
    sget-object v4, Lio/ktor/server/util/PathsKt;->ReservedCharacters:[Z

    .line 99
    .local v4, "ReservedCharacters":[Z
    move-object v7, p0

    check-cast v7, Ljava/lang/CharSequence;

    .local v7, "$this$any$iv":Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .line 126
    .local v8, "$i$f$any":I
    move v9, v2

    :goto_0
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v9, v10, :cond_a

    invoke-interface {v7, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .local v10, "element$iv":C
    move v11, v10

    .local v11, "it":C
    const/4 v12, 0x0

    .line 99
    .local v12, "$i$a$-any-PathsKt$shouldBeReplaced$1":I
    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v13

    if-ltz v13, :cond_8

    invoke-static {v4, v11}, Lio/ktor/server/util/PathsKt;->contains([ZC)Z

    move-result v13

    if-eqz v13, :cond_7

    goto :goto_1

    :cond_7
    move v11, v2

    goto :goto_2

    :cond_8
    :goto_1
    move v11, v1

    .line 126
    .end local v11    # "it":C
    .end local v12    # "$i$a$-any-PathsKt$shouldBeReplaced$1":I
    :goto_2
    if-eqz v11, :cond_9

    move v6, v1

    goto :goto_3

    .end local v10    # "element$iv":C
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 127
    :cond_a
    move v6, v2

    .line 99
    .end local v7    # "$this$any$iv":Ljava/lang/CharSequence;
    .end local v8    # "$i$f$any":I
    :goto_3
    if-eqz v6, :cond_b

    .line 101
    return v1

    .line 104
    :cond_b
    return v2

    .line 95
    .end local v4    # "ReservedCharacters":[Z
    :cond_c
    :goto_4
    return v1
.end method

.method private static final toASCIITable([C)[Z
    .locals 4
    .param p0, "$this$toASCIITable"    # [C

    .line 107
    const/16 v0, 0x100

    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    int-to-char v3, v2

    invoke-static {p0, v3}, Lkotlin/collections/ArraysKt;->contains([CC)Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
