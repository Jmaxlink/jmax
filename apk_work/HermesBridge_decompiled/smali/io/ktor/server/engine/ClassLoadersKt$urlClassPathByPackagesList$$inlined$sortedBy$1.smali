.class public final Lio/ktor/server/engine/ClassLoadersKt$urlClassPathByPackagesList$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/engine/ClassLoadersKt;->urlClassPathByPackagesList(Ljava/lang/ClassLoader;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 ClassLoaders.kt\nio/ktor/server/engine/ClassLoadersKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,328:1\n61#2:329\n1099#3,3:330\n*S KotlinDebug\n*F\n+ 1 ClassLoaders.kt\nio/ktor/server/engine/ClassLoadersKt\n*L\n61#1:330,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "a",
        "kotlin.jvm.PlatformType",
        "b",
        "compare",
        "(Ljava/lang/Object;Ljava/lang/Object;)I",
        "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 13
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 102
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .local v0, "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 329
    .local v1, "$i$a$-sortedBy-ClassLoadersKt$urlClassPathByPackagesList$allPackagePaths$3":I
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    .local v2, "$this$count$iv":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 330
    .local v3, "$i$f$count":I
    const/4 v4, 0x0

    .line 331
    .local v4, "count$iv":I
    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/16 v8, 0x2f

    const/4 v9, 0x1

    if-ge v6, v7, :cond_2

    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .local v7, "element$iv":C
    move v10, v7

    .local v10, "character":C
    const/4 v11, 0x0

    .line 329
    .local v11, "$i$a$-count-ClassLoadersKt$urlClassPathByPackagesList$allPackagePaths$3$1":I
    if-ne v10, v8, :cond_0

    goto :goto_1

    :cond_0
    move v9, v5

    .line 331
    .end local v10    # "character":C
    .end local v11    # "$i$a$-count-ClassLoadersKt$urlClassPathByPackagesList$allPackagePaths$3$1":I
    :goto_1
    if-eqz v9, :cond_1

    add-int/lit8 v4, v4, 0x1

    .end local v7    # "element$iv":C
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 332
    :cond_2
    nop

    .end local v2    # "$this$count$iv":Ljava/lang/CharSequence;
    .end local v3    # "$i$f$count":I
    .end local v4    # "count$iv":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 329
    nop

    .line 102
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-sortedBy-ClassLoadersKt$urlClassPathByPackagesList$allPackagePaths$3":I
    check-cast v2, Ljava/lang/Comparable;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .restart local v0    # "it":Ljava/lang/String;
    const/4 v1, 0x0

    .line 329
    .restart local v1    # "$i$a$-sortedBy-ClassLoadersKt$urlClassPathByPackagesList$allPackagePaths$3":I
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    .local v3, "$this$count$iv":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 330
    .local v4, "$i$f$count":I
    const/4 v6, 0x0

    .line 331
    .local v6, "count$iv":I
    move v7, v5

    :goto_2
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v7, v10, :cond_5

    invoke-interface {v3, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .local v10, "element$iv":C
    move v11, v10

    .local v11, "character":C
    const/4 v12, 0x0

    .line 329
    .local v12, "$i$a$-count-ClassLoadersKt$urlClassPathByPackagesList$allPackagePaths$3$1":I
    if-ne v11, v8, :cond_3

    move v11, v9

    goto :goto_3

    :cond_3
    move v11, v5

    .line 331
    .end local v11    # "character":C
    .end local v12    # "$i$a$-count-ClassLoadersKt$urlClassPathByPackagesList$allPackagePaths$3$1":I
    :goto_3
    if-eqz v11, :cond_4

    add-int/lit8 v6, v6, 0x1

    .end local v10    # "element$iv":C
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 332
    :cond_5
    nop

    .end local v3    # "$this$count$iv":Ljava/lang/CharSequence;
    .end local v4    # "$i$f$count":I
    .end local v6    # "count$iv":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 329
    nop

    .line 102
    .end local v0    # "it":Ljava/lang/String;
    .end local v1    # "$i$a$-sortedBy-ClassLoadersKt$urlClassPathByPackagesList$allPackagePaths$3":I
    check-cast v3, Ljava/lang/Comparable;

    invoke-static {v2, v3}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    return v0
.end method
