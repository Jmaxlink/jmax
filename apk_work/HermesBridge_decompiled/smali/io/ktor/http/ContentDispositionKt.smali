.class public final Lio/ktor/http/ContentDispositionKt;
.super Ljava/lang/Object;
.source "ContentDisposition.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContentDisposition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentDisposition.kt\nio/ktor/http/ContentDispositionKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,103:1\n1064#2,2:104\n*S KotlinDebug\n*F\n+ 1 ContentDisposition.kt\nio/ktor/http/ContentDispositionKt\n*L\n98#1:104,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "encodeContentDispositionAttribute",
        "",
        "key",
        "value",
        "ktor-http"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$encodeContentDispositionAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 1
    invoke-static {p0, p1}, Lio/ktor/http/ContentDispositionKt;->encodeContentDispositionAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final encodeContentDispositionAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 96
    const-string v0, "filename*"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 97
    :cond_0
    const-string v0, "utf-8\'\'"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p1

    .line 98
    :cond_1
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    .local v2, "$this$all$iv":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 104
    .local v3, "$i$f$all":I
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .local v6, "element$iv":C
    move v7, v6

    .local v7, "it":C
    const/4 v8, 0x0

    .line 98
    .local v8, "$i$a$-all-ContentDispositionKt$encodeContentDispositionAttribute$1":I
    invoke-static {}, Lio/ktor/http/CodecsKt;->getATTRIBUTE_CHARACTERS()Ljava/util/Set;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 104
    .end local v7    # "it":C
    .end local v8    # "$i$a$-all-ContentDispositionKt$encodeContentDispositionAttribute$1":I
    if-nez v7, :cond_2

    move v1, v4

    goto :goto_1

    .end local v6    # "element$iv":C
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 105
    :cond_3
    nop

    .line 98
    .end local v2    # "$this$all$iv":Ljava/lang/CharSequence;
    .end local v3    # "$i$f$all":I
    :goto_1
    if-eqz v1, :cond_4

    return-object p1

    .line 100
    :cond_4
    invoke-static {}, Lio/ktor/http/CodecsKt;->getATTRIBUTE_CHARACTERS()Ljava/util/Set;

    move-result-object v1

    invoke-static {p1, v1}, Lio/ktor/http/CodecsKt;->percentEncode(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "encodedValue":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
