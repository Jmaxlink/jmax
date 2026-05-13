.class public final Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;
.super Ljava/lang/Object;
.source "JvmBuiltInsSignatures.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJvmBuiltInsSignatures.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmBuiltInsSignatures.kt\norg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsSignatures\n+ 2 SignatureBuildingComponents.kt\norg/jetbrains/kotlin/load/kotlin/SignatureBuildingComponentsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,187:1\n13#2:188\n13#2:194\n13#2:200\n13#2:201\n13#2:202\n13#2:203\n13#2:204\n1446#3,5:189\n1446#3,5:195\n*S KotlinDebug\n*F\n+ 1 JvmBuiltInsSignatures.kt\norg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsSignatures\n*L\n60#1:188\n160#1:194\n24#1:200\n68#1:201\n119#1:202\n138#1:203\n155#1:204\n61#1:189,5\n164#1:195,5\n*E\n"
.end annotation


# static fields
.field private static final DROP_LIST_METHOD_SIGNATURES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HIDDEN_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HIDDEN_METHOD_SIGNATURES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;

.field private static final MUTABLE_METHOD_SIGNATURES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VISIBLE_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VISIBLE_METHOD_SIGNATURES:Ljava/util/Set;
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
    .locals 56

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;

    .line 18
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    .line 19
    nop

    .line 20
    const-string v1, "toArray()[Ljava/lang/Object;"

    const-string v2, "toArray([Ljava/lang/Object;)[Ljava/lang/Object;"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 18
    const-string v2, "Collection"

    invoke-virtual {v0, v2, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 21
    nop

    .line 18
    const-string v1, "java/lang/annotation/Annotation.annotationType()Ljava/lang/Class;"

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->DROP_LIST_METHOD_SIGNATURES:Ljava/util/Set;

    .line 24
    const/4 v0, 0x0

    .line 200
    .local v0, "$i$f$signatures":I
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    .local v1, "$this$HIDDEN_METHOD_SIGNATURES_u24lambda_u240":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    const/4 v3, 0x0

    .line 25
    .local v3, "$i$a$-signatures-JvmBuiltInsSignatures$HIDDEN_METHOD_SIGNATURES$1":I
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;

    invoke-direct {v4}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->buildPrimitiveValueMethodsSet()Ljava/util/Set;

    move-result-object v4

    .line 27
    const-string v5, "sort(Ljava/util/Comparator;)V"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "List"

    invoke-virtual {v1, v7, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 25
    invoke-static {v4, v6}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    .line 29
    nop

    .line 30
    nop

    .line 31
    nop

    .line 32
    nop

    .line 31
    nop

    .line 32
    nop

    .line 31
    nop

    .line 33
    nop

    .line 31
    nop

    .line 33
    nop

    .line 31
    nop

    .line 34
    nop

    .line 31
    nop

    .line 34
    nop

    .line 31
    nop

    .line 34
    nop

    .line 31
    nop

    .line 34
    nop

    .line 31
    nop

    .line 35
    nop

    .line 31
    nop

    .line 35
    nop

    .line 31
    nop

    .line 35
    nop

    .line 31
    nop

    .line 36
    nop

    .line 31
    nop

    .line 36
    nop

    .line 31
    nop

    .line 36
    nop

    .line 31
    nop

    .line 36
    nop

    .line 31
    nop

    .line 37
    nop

    .line 31
    nop

    .line 37
    nop

    .line 31
    nop

    .line 37
    nop

    .line 31
    nop

    .line 37
    nop

    .line 31
    nop

    .line 38
    nop

    .line 31
    nop

    .line 38
    nop

    .line 31
    nop

    .line 38
    nop

    .line 31
    nop

    .line 39
    nop

    .line 31
    nop

    .line 39
    nop

    .line 31
    nop

    .line 39
    nop

    .line 31
    nop

    .line 40
    nop

    .line 31
    nop

    .line 40
    nop

    .line 31
    nop

    .line 41
    nop

    .line 31
    nop

    .line 42
    nop

    .line 31
    nop

    .line 43
    nop

    .line 31
    nop

    .line 43
    nop

    .line 31
    nop

    .line 44
    nop

    .line 31
    nop

    .line 44
    nop

    .line 31
    nop

    .line 44
    nop

    .line 31
    nop

    .line 45
    nop

    .line 31
    nop

    .line 45
    nop

    .line 31
    nop

    .line 45
    nop

    .line 31
    nop

    .line 46
    nop

    .line 31
    nop

    .line 46
    nop

    .line 31
    nop

    .line 47
    nop

    .line 31
    nop

    .line 47
    nop

    .line 31
    nop

    .line 48
    nop

    .line 31
    nop

    .line 48
    nop

    .line 31
    nop

    .line 48
    const-string v55, "repeat(I)Ljava/lang/String;"

    const-string v8, "codePointAt(I)I"

    const-string v9, "codePointBefore(I)I"

    const-string v10, "codePointCount(II)I"

    const-string v11, "compareToIgnoreCase(Ljava/lang/String;)I"

    const-string v12, "concat(Ljava/lang/String;)Ljava/lang/String;"

    const-string v13, "contains(Ljava/lang/CharSequence;)Z"

    const-string v14, "contentEquals(Ljava/lang/CharSequence;)Z"

    const-string v15, "contentEquals(Ljava/lang/StringBuffer;)Z"

    const-string v16, "endsWith(Ljava/lang/String;)Z"

    const-string v17, "equalsIgnoreCase(Ljava/lang/String;)Z"

    const-string v18, "getBytes()[B"

    const-string v19, "getBytes(II[BI)V"

    const-string v20, "getBytes(Ljava/lang/String;)[B"

    const-string v21, "getBytes(Ljava/nio/charset/Charset;)[B"

    const-string v22, "getChars(II[CI)V"

    const-string v23, "indexOf(I)I"

    const-string v24, "indexOf(II)I"

    const-string v25, "indexOf(Ljava/lang/String;)I"

    const-string v26, "indexOf(Ljava/lang/String;I)I"

    const-string v27, "intern()Ljava/lang/String;"

    const-string v28, "isEmpty()Z"

    const-string v29, "lastIndexOf(I)I"

    const-string v30, "lastIndexOf(II)I"

    const-string v31, "lastIndexOf(Ljava/lang/String;)I"

    const-string v32, "lastIndexOf(Ljava/lang/String;I)I"

    const-string v33, "matches(Ljava/lang/String;)Z"

    const-string v34, "offsetByCodePoints(II)I"

    const-string v35, "regionMatches(ILjava/lang/String;II)Z"

    const-string v36, "regionMatches(ZILjava/lang/String;II)Z"

    const-string v37, "replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"

    const-string v38, "replace(CC)Ljava/lang/String;"

    const-string v39, "replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"

    const-string v40, "replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;"

    const-string v41, "split(Ljava/lang/String;I)[Ljava/lang/String;"

    const-string v42, "split(Ljava/lang/String;)[Ljava/lang/String;"

    const-string v43, "startsWith(Ljava/lang/String;I)Z"

    const-string v44, "startsWith(Ljava/lang/String;)Z"

    const-string v45, "substring(II)Ljava/lang/String;"

    const-string v46, "substring(I)Ljava/lang/String;"

    const-string v47, "toCharArray()[C"

    const-string v48, "toLowerCase()Ljava/lang/String;"

    const-string v49, "toLowerCase(Ljava/util/Locale;)Ljava/lang/String;"

    const-string v50, "toUpperCase()Ljava/lang/String;"

    const-string v51, "toUpperCase(Ljava/util/Locale;)Ljava/lang/String;"

    const-string v52, "trim()Ljava/lang/String;"

    const-string v53, "isBlank()Z"

    const-string v54, "lines()Ljava/util/stream/Stream;"

    filled-new-array/range {v8 .. v55}, [Ljava/lang/String;

    move-result-object v6

    .line 31
    nop

    .line 29
    const-string v8, "String"

    invoke-virtual {v1, v8, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 25
    invoke-static {v4, v6}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    .line 51
    const-string v6, "isInfinite()Z"

    const-string v9, "isNaN()Z"

    filled-new-array {v6, v9}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "Double"

    invoke-virtual {v1, v11, v10}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    .line 25
    invoke-static {v4, v10}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    .line 52
    filled-new-array {v6, v9}, [Ljava/lang/String;

    move-result-object v6

    const-string v9, "Float"

    invoke-virtual {v1, v9, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 25
    invoke-static {v4, v6}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    .line 54
    const-string v6, "getDeclaringClass()Ljava/lang/Class;"

    const-string v10, "finalize()V"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "Enum"

    invoke-virtual {v1, v10, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 25
    invoke-static {v4, v6}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    .line 55
    const-string v6, "isEmpty()Z"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v10, "CharSequence"

    invoke-virtual {v1, v10, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 25
    invoke-static {v4, v6}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 200
    .end local v1    # "$this$HIDDEN_METHOD_SIGNATURES_u24lambda_u240":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    .end local v3    # "$i$a$-signatures-JvmBuiltInsSignatures$HIDDEN_METHOD_SIGNATURES$1":I
    nop

    .line 24
    .end local v0    # "$i$f$signatures":I
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->HIDDEN_METHOD_SIGNATURES:Ljava/util/Set;

    .line 68
    const/4 v0, 0x0

    .line 201
    .restart local v0    # "$i$f$signatures":I
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    .local v1, "$this$VISIBLE_METHOD_SIGNATURES_u24lambda_u243":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    const/4 v3, 0x0

    .line 69
    .local v3, "$i$a$-signatures-JvmBuiltInsSignatures$VISIBLE_METHOD_SIGNATURES$1":I
    nop

    .line 70
    nop

    .line 71
    const-string v4, "codePoints()Ljava/util/stream/IntStream;"

    const-string v6, "chars()Ljava/util/stream/IntStream;"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-virtual {v1, v10, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 74
    nop

    .line 75
    nop

    .line 76
    const-string v6, "forEachRemaining(Ljava/util/function/Consumer;)V"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    .line 74
    const-string v10, "Iterator"

    invoke-virtual {v1, v10, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 69
    invoke-static {v4, v6}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    .line 79
    nop

    .line 80
    nop

    .line 81
    const-string v6, "forEach(Ljava/util/function/Consumer;)V"

    const-string v10, "spliterator()Ljava/util/Spliterator;"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    .line 79
    const-string v11, "Iterable"

    invoke-virtual {v1, v11, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 69
    invoke-static {v4, v6}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    .line 84
    nop

    .line 85
    nop

    .line 86
    nop

    .line 87
    nop

    .line 86
    nop

    .line 87
    nop

    .line 86
    nop

    .line 87
    nop

    .line 86
    nop

    .line 88
    nop

    .line 86
    nop

    .line 88
    nop

    .line 86
    nop

    .line 89
    nop

    .line 86
    nop

    .line 89
    nop

    .line 86
    nop

    .line 90
    const-string v20, "addSuppressed(Ljava/lang/Throwable;)V"

    const-string v11, "setStackTrace([Ljava/lang/StackTraceElement;)V"

    const-string v12, "fillInStackTrace()Ljava/lang/Throwable;"

    const-string v13, "getLocalizedMessage()Ljava/lang/String;"

    const-string v14, "printStackTrace()V"

    const-string v15, "printStackTrace(Ljava/io/PrintStream;)V"

    const-string v16, "printStackTrace(Ljava/io/PrintWriter;)V"

    const-string v17, "getStackTrace()[Ljava/lang/StackTraceElement;"

    const-string v18, "initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;"

    const-string v19, "getSuppressed()[Ljava/lang/Throwable;"

    filled-new-array/range {v11 .. v20}, [Ljava/lang/String;

    move-result-object v6

    .line 86
    nop

    .line 84
    const-string v11, "Throwable"

    invoke-virtual {v1, v11, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 69
    invoke-static {v4, v6}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    .line 93
    nop

    .line 94
    nop

    .line 95
    nop

    .line 96
    nop

    .line 95
    nop

    .line 96
    const-string v6, "parallelStream()Ljava/util/stream/Stream;"

    const-string v12, "stream()Ljava/util/stream/Stream;"

    const-string v13, "removeIf(Ljava/util/function/Predicate;)Z"

    filled-new-array {v10, v6, v12, v13}, [Ljava/lang/String;

    move-result-object v6

    .line 95
    nop

    .line 93
    invoke-virtual {v1, v2, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 69
    invoke-static {v4, v6}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    .line 99
    nop

    .line 100
    nop

    .line 101
    const-string v6, "replaceAll(Ljava/util/function/UnaryOperator;)V"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v10

    .line 99
    invoke-virtual {v1, v7, v10}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    .line 69
    invoke-static {v4, v10}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    .line 104
    nop

    .line 105
    nop

    .line 106
    nop

    .line 107
    nop

    .line 106
    nop

    .line 107
    nop

    .line 106
    nop

    .line 108
    nop

    .line 106
    nop

    .line 109
    nop

    .line 106
    nop

    .line 110
    nop

    .line 106
    nop

    .line 111
    nop

    .line 106
    nop

    .line 112
    nop

    .line 106
    nop

    .line 113
    nop

    .line 106
    nop

    .line 114
    const-string v23, "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v14, "getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v15, "forEach(Ljava/util/function/BiConsumer;)V"

    const-string v16, "replaceAll(Ljava/util/function/BiFunction;)V"

    const-string v17, "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v18, "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v19, "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v20, "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z"

    const-string v21, "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v22, "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;"

    filled-new-array/range {v14 .. v23}, [Ljava/lang/String;

    move-result-object v10

    .line 106
    nop

    .line 104
    const-string v12, "Map"

    invoke-virtual {v1, v12, v10}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    .line 69
    invoke-static {v4, v10}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 201
    .end local v1    # "$this$VISIBLE_METHOD_SIGNATURES_u24lambda_u243":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    .end local v3    # "$i$a$-signatures-JvmBuiltInsSignatures$VISIBLE_METHOD_SIGNATURES$1":I
    nop

    .line 68
    .end local v0    # "$i$f$signatures":I
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->VISIBLE_METHOD_SIGNATURES:Ljava/util/Set;

    .line 119
    const/4 v0, 0x0

    .line 202
    .restart local v0    # "$i$f$signatures":I
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    .local v1, "$this$MUTABLE_METHOD_SIGNATURES_u24lambda_u244":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    const/4 v3, 0x0

    .line 120
    .local v3, "$i$a$-signatures-JvmBuiltInsSignatures$MUTABLE_METHOD_SIGNATURES$1":I
    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 122
    filled-new-array {v6, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 120
    invoke-static {v2, v4}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 124
    nop

    .line 125
    nop

    .line 126
    nop

    .line 127
    nop

    .line 126
    nop

    .line 128
    nop

    .line 126
    nop

    .line 129
    nop

    .line 126
    nop

    .line 130
    nop

    .line 126
    nop

    .line 131
    nop

    .line 126
    nop

    .line 131
    nop

    .line 126
    nop

    .line 132
    nop

    .line 126
    nop

    .line 133
    const-string v21, "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z"

    const-string v13, "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;"

    const-string v14, "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v15, "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v16, "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"

    const-string v17, "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v18, "remove(Ljava/lang/Object;Ljava/lang/Object;)Z"

    const-string v19, "replaceAll(Ljava/util/function/BiFunction;)V"

    const-string v20, "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"

    filled-new-array/range {v13 .. v21}, [Ljava/lang/String;

    move-result-object v4

    .line 126
    nop

    .line 124
    invoke-virtual {v1, v12, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaUtil(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 120
    invoke-static {v2, v4}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 202
    .end local v1    # "$this$MUTABLE_METHOD_SIGNATURES_u24lambda_u244":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    .end local v3    # "$i$a$-signatures-JvmBuiltInsSignatures$MUTABLE_METHOD_SIGNATURES$1":I
    nop

    .line 119
    .end local v0    # "$i$f$signatures":I
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->MUTABLE_METHOD_SIGNATURES:Ljava/util/Set;

    .line 138
    const/4 v0, 0x0

    .line 203
    .restart local v0    # "$i$f$signatures":I
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    .local v1, "$this$HIDDEN_CONSTRUCTOR_SIGNATURES_u24lambda_u245":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    const/4 v2, 0x0

    .line 139
    .local v2, "$i$a$-signatures-JvmBuiltInsSignatures$HIDDEN_CONSTRUCTOR_SIGNATURES$1":I
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;

    invoke-direct {v3}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->buildPrimitiveStringConstructorsSet()Ljava/util/Set;

    move-result-object v3

    .line 140
    const-string v4, "D"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v1, v9, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 139
    invoke-static {v3, v4}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    .line 141
    nop

    .line 142
    nop

    .line 143
    nop

    .line 144
    nop

    .line 143
    nop

    .line 145
    nop

    .line 143
    nop

    .line 146
    nop

    .line 143
    nop

    .line 147
    nop

    .line 143
    nop

    .line 147
    nop

    .line 143
    nop

    .line 148
    nop

    .line 143
    nop

    .line 149
    const-string v22, "Ljava/lang/StringBuilder;"

    const-string v12, "[C"

    const-string v13, "[CII"

    const-string v14, "[III"

    const-string v15, "[BIILjava/lang/String;"

    const-string v16, "[BIILjava/nio/charset/Charset;"

    const-string v17, "[BLjava/lang/String;"

    const-string v18, "[BLjava/nio/charset/Charset;"

    const-string v19, "[BII"

    const-string v20, "[B"

    const-string v21, "Ljava/lang/StringBuffer;"

    filled-new-array/range {v12 .. v22}, [Ljava/lang/String;

    move-result-object v4

    .line 143
    nop

    .line 142
    invoke-virtual {v1, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 141
    invoke-virtual {v1, v8, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 139
    invoke-static {v3, v4}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 203
    .end local v1    # "$this$HIDDEN_CONSTRUCTOR_SIGNATURES_u24lambda_u245":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    .end local v2    # "$i$a$-signatures-JvmBuiltInsSignatures$HIDDEN_CONSTRUCTOR_SIGNATURES$1":I
    nop

    .line 138
    .end local v0    # "$i$f$signatures":I
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->HIDDEN_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;

    .line 155
    const/4 v0, 0x0

    .line 204
    .restart local v0    # "$i$f$signatures":I
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    .local v1, "$this$VISIBLE_CONSTRUCTOR_SIGNATURES_u24lambda_u246":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    const/4 v2, 0x0

    .line 156
    .local v2, "$i$a$-signatures-JvmBuiltInsSignatures$VISIBLE_CONSTRUCTOR_SIGNATURES$1":I
    const-string v3, "Ljava/lang/String;Ljava/lang/Throwable;ZZ"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v1, v11, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 204
    .end local v1    # "$this$VISIBLE_CONSTRUCTOR_SIGNATURES_u24lambda_u246":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    .end local v2    # "$i$a$-signatures-JvmBuiltInsSignatures$VISIBLE_CONSTRUCTOR_SIGNATURES$1":I
    nop

    .line 155
    .end local v0    # "$i$f$signatures":I
    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->VISIBLE_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final buildPrimitiveStringConstructorsSet()Ljava/util/Set;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 160
    const/4 v0, 0x0

    .line 194
    .local v0, "$i$f$signatures":I
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    .local v1, "$this$buildPrimitiveStringConstructorsSet_u24lambda_u248":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    const/4 v2, 0x0

    .line 162
    .local v2, "$i$a$-signatures-JvmBuiltInsSignatures$buildPrimitiveStringConstructorsSet$1":I
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BYTE:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->DOUBLE:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->FLOAT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 163
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BYTE:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 162
    nop

    .line 163
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->INT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 162
    nop

    .line 163
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->LONG:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .line 162
    nop

    .line 163
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->SHORT:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    filled-new-array/range {v3 .. v10}, [Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    move-result-object v3

    .line 162
    nop

    .line 161
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 164
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v3, "$this$flatMapTo$iv":Ljava/lang/Iterable;
    .local v4, "destination$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 195
    .local v5, "$i$f$flatMapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 196
    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .local v8, "it":Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;
    const/4 v9, 0x0

    .line 166
    .local v9, "$i$a$-flatMapTo-JvmBuiltInsSignatures$buildPrimitiveStringConstructorsSet$1$1":I
    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getWrapperFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v10

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->shortName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v10

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "it.wrapperFqName.shortName().asString()"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "Ljava/lang/String;"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->constructors([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    .line 196
    .end local v8    # "it":Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;
    .end local v9    # "$i$a$-flatMapTo-JvmBuiltInsSignatures$buildPrimitiveStringConstructorsSet$1$1":I
    check-cast v8, Ljava/lang/Iterable;

    .line 197
    .local v8, "list$iv":Ljava/lang/Iterable;
    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 199
    .end local v7    # "element$iv":Ljava/lang/Object;
    .end local v8    # "list$iv":Ljava/lang/Iterable;
    :cond_0
    nop

    .end local v3    # "$this$flatMapTo$iv":Ljava/lang/Iterable;
    .end local v4    # "destination$iv":Ljava/util/Collection;
    .end local v5    # "$i$f$flatMapTo":I
    move-object v3, v4

    check-cast v3, Ljava/util/LinkedHashSet;

    .line 164
    nop

    .line 194
    .end local v1    # "$this$buildPrimitiveStringConstructorsSet_u24lambda_u248":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    .end local v2    # "$i$a$-signatures-JvmBuiltInsSignatures$buildPrimitiveStringConstructorsSet$1":I
    nop

    .end local v0    # "$i$f$signatures":I
    check-cast v3, Ljava/util/Set;

    .line 168
    return-object v3
.end method

.method private final buildPrimitiveValueMethodsSet()Ljava/util/Set;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    .line 188
    .local v0, "$i$f$signatures":I
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;

    .local v1, "$this$buildPrimitiveValueMethodsSet_u24lambda_u242":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    const/4 v2, 0x0

    .line 61
    .local v2, "$i$a$-signatures-JvmBuiltInsSignatures$buildPrimitiveValueMethodsSet$1":I
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->BOOLEAN:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->CHAR:Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    filled-new-array {v3, v4}, [Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$flatMapTo$iv":Ljava/lang/Iterable;
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 189
    .local v5, "$i$f$flatMapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 190
    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;

    .local v8, "it":Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;
    const/4 v9, 0x0

    .line 62
    .local v9, "$i$a$-flatMapTo-JvmBuiltInsSignatures$buildPrimitiveValueMethodsSet$1$1":I
    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getWrapperFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v10

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->shortName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v10

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/name/Name;->asString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "it.wrapperFqName.shortName().asString()"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getJavaKeywordName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Value()"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;->getDesc()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;->inJavaLang(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    .line 190
    .end local v8    # "it":Lkotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType;
    .end local v9    # "$i$a$-flatMapTo-JvmBuiltInsSignatures$buildPrimitiveValueMethodsSet$1$1":I
    check-cast v8, Ljava/lang/Iterable;

    .line 191
    .local v8, "list$iv":Ljava/lang/Iterable;
    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 193
    .end local v7    # "element$iv":Ljava/lang/Object;
    .end local v8    # "list$iv":Ljava/lang/Iterable;
    :cond_0
    nop

    .end local v3    # "$this$flatMapTo$iv":Ljava/lang/Iterable;
    .end local v4    # "destination$iv":Ljava/util/Collection;
    .end local v5    # "$i$f$flatMapTo":I
    move-object v3, v4

    check-cast v3, Ljava/util/LinkedHashSet;

    .line 61
    nop

    .line 188
    .end local v1    # "$this$buildPrimitiveValueMethodsSet_u24lambda_u242":Lkotlin/reflect/jvm/internal/impl/load/kotlin/SignatureBuildingComponents;
    .end local v2    # "$i$a$-signatures-JvmBuiltInsSignatures$buildPrimitiveValueMethodsSet$1":I
    nop

    .end local v0    # "$i$f$signatures":I
    check-cast v3, Ljava/util/Set;

    .line 64
    return-object v3
.end method


# virtual methods
.method public final getDROP_LIST_METHOD_SIGNATURES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->DROP_LIST_METHOD_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final getHIDDEN_CONSTRUCTOR_SIGNATURES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->HIDDEN_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final getHIDDEN_METHOD_SIGNATURES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->HIDDEN_METHOD_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final getMUTABLE_METHOD_SIGNATURES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->MUTABLE_METHOD_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final getVISIBLE_CONSTRUCTOR_SIGNATURES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 154
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->VISIBLE_CONSTRUCTOR_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final getVISIBLE_METHOD_SIGNATURES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->VISIBLE_METHOD_SIGNATURES:Ljava/util/Set;

    return-object v0
.end method

.method public final isArrayOrPrimitiveArray(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Z
    .locals 1
    .param p1, "fqName"    # Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames$FqNames;->array:Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/StandardNames;->isPrimitiveArray(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isSerializableInJava(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Z
    .locals 3
    .param p1, "fqName"    # Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltInsSignatures;->isArrayOrPrimitiveArray(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x1

    return v0

    .line 174
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JavaToKotlinClassMap;->mapKotlinToJava(Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;)Lkotlin/reflect/jvm/internal/impl/name/ClassId;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 175
    .local v0, "javaClassId":Lkotlin/reflect/jvm/internal/impl/name/ClassId;
    :cond_1
    nop

    .line 176
    :try_start_0
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/ClassId;->asSingleFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    nop

    .local v1, "classViaReflection":Ljava/lang/Class;
    const-class v2, Ljava/io/Serializable;

    .line 180
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    return v2

    .line 177
    .end local v1    # "classViaReflection":Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 178
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    return v1
.end method
