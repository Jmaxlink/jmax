.class public final Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/UtfEncodingKt;
.super Ljava/lang/Object;
.source "utfEncoding.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nutfEncoding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 utfEncoding.kt\norg/jetbrains/kotlin/metadata/jvm/deserialization/UtfEncodingKt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,73:1\n37#2,2:74\n1#3:76\n*S KotlinDebug\n*F\n+ 1 utfEncoding.kt\norg/jetbrains/kotlin/metadata/jvm/deserialization/UtfEncodingKt\n*L\n55#1:74,2\n*E\n"
.end annotation


# direct methods
.method public static final stringsToBytes([Ljava/lang/String;)[B
    .locals 11
    .param p0, "strings"    # [Ljava/lang/String;

    const-string v0, "strings"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p0, v2

    .line 76
    nop

    .local v4, "it":Ljava/lang/String;
    const/4 v5, 0x0

    .line 59
    .local v5, "$i$a$-sumOfInt-UtfEncodingKt$stringsToBytes$resultLength$1":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .end local v4    # "it":Ljava/lang/String;
    .end local v5    # "$i$a$-sumOfInt-UtfEncodingKt$stringsToBytes$resultLength$1":I
    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    .line 60
    .local v0, "resultLength":I
    new-array v2, v0, [B

    .line 62
    .local v2, "result":[B
    const/4 v3, 0x0

    .line 63
    .local v3, "i":I
    array-length v4, p0

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, p0, v5

    .line 64
    .local v6, "s":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "si":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    :goto_2
    if-ge v7, v8, :cond_1

    .line 65
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "i":I
    .local v9, "i":I
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v2, v3

    .line 64
    add-int/lit8 v7, v7, 0x1

    move v3, v9

    goto :goto_2

    .line 63
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "si":I
    .end local v9    # "i":I
    .restart local v3    # "i":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 69
    :cond_2
    array-length v4, v2

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    .line 71
    return-object v2

    .line 76
    :cond_4
    const/4 v1, 0x0

    .line 69
    .local v1, "$i$a$-assert-UtfEncodingKt$stringsToBytes$1":I
    nop

    .end local v1    # "$i$a$-assert-UtfEncodingKt$stringsToBytes$1":I
    new-instance v1, Ljava/lang/AssertionError;

    const-string v4, "Should have reached the end"

    invoke-direct {v1, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
