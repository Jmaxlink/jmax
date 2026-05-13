.class public final Lio/ktor/http/CodecsKt;
.super Ljava/lang/Object;
.source "Codecs.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCodecs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Codecs.kt\nio/ktor/http/CodecsKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 Strings.kt\nio/ktor/utils/io/core/StringsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 StringsJVM.kt\nio/ktor/utils/io/core/StringsJVMKt\n+ 6 Input.kt\nio/ktor/utils/io/core/InputKt\n+ 7 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 8 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,296:1\n1099#2,3:297\n8#3,3:300\n13586#4,2:303\n11#5:305\n823#6,6:306\n829#6,13:313\n355#7:312\n1549#8:326\n1620#8,3:327\n1549#8:330\n1620#8,3:331\n1549#8:334\n1620#8,3:335\n*S KotlinDebug\n*F\n+ 1 Codecs.kt\nio/ktor/http/CodecsKt\n*L\n130#1:297,3\n133#1:300,3\n141#1:303,2\n250#1:305\n289#1:306,6\n289#1:313,13\n290#1:312\n9#1:326\n9#1:327,3\n20#1:330\n20#1:331,3\n42#1:334\n42#1:335,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000c\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0010\u0005\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0010\r\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0002\u001a\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u000eH\u0002\u001a8\u0010\u0012\u001a\u00020\u0013*\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00192\n\u0010\u001a\u001a\u00060\u001bj\u0002`\u001cH\u0002\u001a0\u0010\u001d\u001a\u00020\u0013*\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00192\n\u0010\u001a\u001a\u00060\u001bj\u0002`\u001cH\u0002\u001a,\u0010\u001e\u001a\u00020\u0013*\u00020\u00132\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000e2\u000c\u0008\u0002\u0010\u001a\u001a\u00060\u001bj\u0002`\u001c\u001a6\u0010\u001f\u001a\u00020\u0013*\u00020\u00132\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u000c\u0008\u0002\u0010\u001a\u001a\u00060\u001bj\u0002`\u001c\u001a\n\u0010 \u001a\u00020\u0013*\u00020\u0013\u001a\u0014\u0010!\u001a\u00020\u0013*\u00020\u00132\u0008\u0008\u0002\u0010\"\u001a\u00020\u0019\u001a\u000c\u0010#\u001a\u00020\u0013*\u00020\u0013H\u0000\u001a\n\u0010$\u001a\u00020\u0013*\u00020\u0013\u001a\u0014\u0010$\u001a\u00020\u0013*\u00020\u00132\u0006\u0010%\u001a\u00020\u0019H\u0000\u001a\n\u0010&\u001a\u00020\u0013*\u00020\u0013\u001a,\u0010\'\u001a\u00020\u0013*\u00020\u00132\u0008\u0008\u0002\u0010(\u001a\u00020\u00192\u0008\u0008\u0002\u0010\"\u001a\u00020\u00192\u000c\u0008\u0002\u0010\u001a\u001a\u00060\u001bj\u0002`\u001c\u001a \u0010)\u001a\u00020**\u00020+2\u0012\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020*0-H\u0002\u001a\u000c\u0010.\u001a\u00020\u0013*\u00020\u0008H\u0002\u001a\u001a\u0010.\u001a\u00020\u0013*\u00020\u00132\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\u0000\"\u001a\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0004\"\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "ATTRIBUTE_CHARACTERS",
        "",
        "",
        "getATTRIBUTE_CHARACTERS",
        "()Ljava/util/Set;",
        "HEX_ALPHABET",
        "SPECIAL_SYMBOLS",
        "",
        "",
        "URL_ALPHABET",
        "URL_ALPHABET_CHARS",
        "URL_PROTOCOL_PART",
        "VALID_PATH_PART",
        "charToHexDigit",
        "",
        "c2",
        "hexDigitToChar",
        "digit",
        "decodeImpl",
        "",
        "",
        "start",
        "end",
        "prefixEnd",
        "plusIsSpace",
        "",
        "charset",
        "Ljava/nio/charset/Charset;",
        "Lio/ktor/utils/io/charsets/Charset;",
        "decodeScan",
        "decodeURLPart",
        "decodeURLQueryComponent",
        "encodeOAuth",
        "encodeURLParameter",
        "spaceToPlus",
        "encodeURLParameterValue",
        "encodeURLPath",
        "encodeSlash",
        "encodeURLPathPart",
        "encodeURLQueryComponent",
        "encodeFull",
        "forEach",
        "",
        "Lio/ktor/utils/io/core/ByteReadPacket;",
        "block",
        "Lkotlin/Function1;",
        "percentEncode",
        "allowedSet",
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


# static fields
.field private static final ATTRIBUTE_CHARACTERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEX_ALPHABET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPECIAL_SYMBOLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final URL_ALPHABET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final URL_ALPHABET_CHARS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final URL_PROTOCOL_PART:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_PATH_PART:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 34

    .line 9
    new-instance v0, Lkotlin/ranges/CharRange;

    const/16 v1, 0x7a

    const/16 v2, 0x61

    invoke-direct {v0, v2, v1}, Lkotlin/ranges/CharRange;-><init>(CC)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Lkotlin/ranges/CharRange;

    const/16 v3, 0x5a

    const/16 v4, 0x41

    invoke-direct {v1, v4, v3}, Lkotlin/ranges/CharRange;-><init>(CC)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lkotlin/ranges/CharRange;

    const/16 v3, 0x30

    const/16 v5, 0x39

    invoke-direct {v1, v3, v5}, Lkotlin/ranges/CharRange;-><init>(CC)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 326
    .local v1, "$i$f$map":I
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v0, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v0

    .local v8, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 327
    .local v9, "$i$f$mapTo":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 328
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Ljava/lang/Character;

    invoke-virtual {v12}, Ljava/lang/Character;->charValue()C

    move-result v12

    .local v12, "it":C
    const/4 v13, 0x0

    .line 9
    .local v13, "$i$a$-map-CodecsKt$URL_ALPHABET$1":I
    int-to-byte v12, v12

    .end local v12    # "it":C
    .end local v13    # "$i$a$-map-CodecsKt$URL_ALPHABET$1":I
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    .line 328
    invoke-interface {v6, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$mapTo":I
    check-cast v6, Ljava/util/List;

    .line 326
    nop

    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    check-cast v6, Ljava/lang/Iterable;

    .line 9
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/ktor/http/CodecsKt;->URL_ALPHABET:Ljava/util/Set;

    .line 10
    new-instance v0, Lkotlin/ranges/CharRange;

    const/16 v1, 0x7a

    invoke-direct {v0, v2, v1}, Lkotlin/ranges/CharRange;-><init>(CC)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Lkotlin/ranges/CharRange;

    const/16 v6, 0x5a

    invoke-direct {v1, v4, v6}, Lkotlin/ranges/CharRange;-><init>(CC)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lkotlin/ranges/CharRange;

    invoke-direct {v1, v3, v5}, Lkotlin/ranges/CharRange;-><init>(CC)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/ktor/http/CodecsKt;->URL_ALPHABET_CHARS:Ljava/util/Set;

    .line 11
    new-instance v0, Lkotlin/ranges/CharRange;

    const/16 v1, 0x66

    invoke-direct {v0, v2, v1}, Lkotlin/ranges/CharRange;-><init>(CC)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Lkotlin/ranges/CharRange;

    const/16 v2, 0x46

    invoke-direct {v1, v4, v2}, Lkotlin/ranges/CharRange;-><init>(CC)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lkotlin/ranges/CharRange;

    invoke-direct {v1, v3, v5}, Lkotlin/ranges/CharRange;-><init>(CC)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/ktor/http/CodecsKt;->HEX_ALPHABET:Ljava/util/Set;

    .line 20
    nop

    .line 17
    const/16 v0, 0x3a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x3f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x23

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/16 v4, 0x5b

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    const/16 v6, 0x40

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    .line 18
    const/16 v8, 0x21

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    .line 17
    nop

    .line 18
    const/16 v10, 0x24

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    .line 17
    nop

    .line 18
    const/16 v12, 0x26

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    .line 17
    nop

    .line 18
    const/16 v14, 0x27

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    .line 17
    nop

    .line 18
    const/16 v15, 0x28

    invoke-static {v15}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v15

    .line 17
    nop

    .line 18
    const/16 v16, 0x29

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v16

    .line 17
    nop

    .line 18
    const/16 v17, 0x2a

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v17

    .line 17
    nop

    .line 18
    const/16 v18, 0x2c

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v18

    .line 17
    nop

    .line 18
    const/16 v19, 0x3b

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v19

    .line 17
    nop

    .line 18
    const/16 v20, 0x3d

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v20

    .line 17
    nop

    .line 19
    const/16 v21, 0x2d

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v22

    .line 17
    nop

    .line 19
    const/16 v23, 0x2e

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    .line 17
    nop

    .line 19
    const/16 v25, 0x5f

    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v26

    .line 17
    nop

    .line 19
    const/16 v27, 0x7e

    invoke-static/range {v27 .. v27}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v28

    .line 17
    nop

    .line 19
    const/16 v29, 0x2b

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v30

    const/16 v12, 0x16

    new-array v12, v12, [Ljava/lang/Character;

    const/16 v31, 0x0

    aput-object v0, v12, v31

    const/4 v0, 0x1

    aput-object v1, v12, v0

    const/4 v1, 0x2

    aput-object v2, v12, v1

    const/4 v2, 0x3

    aput-object v3, v12, v2

    const/4 v3, 0x4

    aput-object v4, v12, v3

    const/4 v4, 0x5

    aput-object v5, v12, v4

    const/4 v5, 0x6

    aput-object v6, v12, v5

    const/4 v6, 0x7

    aput-object v9, v12, v6

    const/16 v9, 0x8

    aput-object v11, v12, v9

    const/16 v11, 0x9

    aput-object v13, v12, v11

    aput-object v14, v12, v7

    const/16 v11, 0xb

    aput-object v15, v12, v11

    const/16 v11, 0xc

    aput-object v16, v12, v11

    const/16 v11, 0xd

    aput-object v17, v12, v11

    const/16 v11, 0xe

    aput-object v18, v12, v11

    const/16 v11, 0xf

    aput-object v19, v12, v11

    const/16 v11, 0x10

    aput-object v20, v12, v11

    const/16 v11, 0x11

    aput-object v22, v12, v11

    const/16 v11, 0x12

    aput-object v24, v12, v11

    const/16 v11, 0x13

    aput-object v26, v12, v11

    const/16 v11, 0x14

    aput-object v28, v12, v11

    const/16 v11, 0x15

    aput-object v30, v12, v11

    .line 17
    nop

    .line 16
    invoke-static {v12}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    .line 20
    nop

    .local v11, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 330
    .local v12, "$i$f$map":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v11, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v13, Ljava/util/Collection;

    .local v13, "destination$iv$iv":Ljava/util/Collection;
    move-object v14, v11

    .local v14, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 331
    .local v15, "$i$f$mapTo":I
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    .line 332
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v17

    check-cast v18, Ljava/lang/Character;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Character;->charValue()C

    move-result v7

    .local v7, "it":C
    const/16 v18, 0x0

    .line 20
    .local v18, "$i$a$-map-CodecsKt$URL_PROTOCOL_PART$1":I
    int-to-byte v7, v7

    .end local v7    # "it":C
    .end local v18    # "$i$a$-map-CodecsKt$URL_PROTOCOL_PART$1":I
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    .line 332
    invoke-interface {v13, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v7, 0xa

    goto :goto_1

    .line 333
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v13    # "destination$iv$iv":Ljava/util/Collection;
    .end local v14    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v15    # "$i$f$mapTo":I
    move-object v7, v13

    check-cast v7, Ljava/util/List;

    .line 330
    nop

    .line 20
    .end local v11    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$map":I
    sput-object v7, Lio/ktor/http/CodecsKt;->URL_PROTOCOL_PART:Ljava/util/List;

    .line 25
    nop

    .line 26
    const/16 v7, 0x3a

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    const/16 v11, 0x40

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    .line 27
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    .line 26
    nop

    .line 27
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    .line 26
    nop

    .line 27
    const/16 v14, 0x26

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v15

    .line 26
    nop

    .line 27
    const/16 v14, 0x27

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    .line 26
    nop

    .line 27
    const/16 v16, 0x28

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v16

    .line 26
    nop

    .line 27
    const/16 v17, 0x29

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v17

    .line 26
    nop

    .line 27
    const/16 v18, 0x2a

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v18

    .line 26
    nop

    .line 27
    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v20

    .line 26
    nop

    .line 27
    const/16 v22, 0x2c

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v22

    .line 26
    nop

    .line 27
    const/16 v24, 0x3b

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v24

    .line 26
    nop

    .line 27
    const/16 v26, 0x3d

    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v26

    .line 26
    nop

    .line 28
    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v28

    .line 26
    nop

    .line 28
    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v30

    .line 26
    nop

    .line 28
    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v32

    .line 26
    nop

    .line 28
    invoke-static/range {v27 .. v27}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v33

    const/16 v10, 0x11

    new-array v10, v10, [Ljava/lang/Character;

    aput-object v7, v10, v31

    aput-object v11, v10, v0

    aput-object v12, v10, v1

    aput-object v13, v10, v2

    aput-object v15, v10, v3

    aput-object v14, v10, v4

    aput-object v16, v10, v5

    aput-object v17, v10, v6

    aput-object v18, v10, v9

    const/16 v7, 0x9

    aput-object v20, v10, v7

    const/16 v7, 0xa

    aput-object v22, v10, v7

    const/16 v7, 0xb

    aput-object v24, v10, v7

    const/16 v7, 0xc

    aput-object v26, v10, v7

    const/16 v7, 0xd

    aput-object v28, v10, v7

    const/16 v7, 0xe

    aput-object v30, v10, v7

    const/16 v7, 0xf

    aput-object v32, v10, v7

    const/16 v7, 0x10

    aput-object v33, v10, v7

    .line 26
    nop

    .line 25
    invoke-static {v10}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    sput-object v7, Lio/ktor/http/CodecsKt;->VALID_PATH_PART:Ljava/util/Set;

    .line 35
    sget-object v7, Lio/ktor/http/CodecsKt;->URL_ALPHABET_CHARS:Ljava/util/Set;

    .line 36
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/16 v10, 0x23

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x24

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0x26

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v15

    const/16 v16, 0x5e

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v16

    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v17

    const/16 v18, 0x60

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v18

    const/16 v20, 0x7c

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v20

    invoke-static/range {v27 .. v27}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v22

    const/16 v9, 0xc

    new-array v9, v9, [Ljava/lang/Character;

    aput-object v8, v9, v31

    aput-object v10, v9, v0

    aput-object v11, v9, v1

    aput-object v12, v9, v2

    aput-object v13, v9, v3

    aput-object v14, v9, v4

    aput-object v15, v9, v5

    aput-object v16, v9, v6

    const/16 v4, 0x8

    aput-object v17, v9, v4

    const/16 v4, 0x9

    aput-object v18, v9, v4

    const/16 v4, 0xa

    aput-object v20, v9, v4

    const/16 v4, 0xb

    aput-object v22, v9, v4

    .line 35
    invoke-static {v9}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v7, v4}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    sput-object v4, Lio/ktor/http/CodecsKt;->ATTRIBUTE_CHARACTERS:Ljava/util/Set;

    .line 42
    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-static/range {v27 .. v27}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    new-array v3, v3, [Ljava/lang/Character;

    aput-object v4, v3, v31

    aput-object v5, v3, v0

    aput-object v6, v3, v1

    aput-object v7, v3, v2

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .restart local v0    # "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 334
    .restart local v1    # "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 335
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 336
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Character;

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v7

    .restart local v7    # "it":C
    const/4 v8, 0x0

    .line 42
    .local v8, "$i$a$-map-CodecsKt$SPECIAL_SYMBOLS$1":I
    int-to-byte v7, v7

    .end local v7    # "it":C
    .end local v8    # "$i$a$-map-CodecsKt$SPECIAL_SYMBOLS$1":I
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    .line 336
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 337
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 334
    nop

    .line 42
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    sput-object v2, Lio/ktor/http/CodecsKt;->SPECIAL_SYMBOLS:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getSPECIAL_SYMBOLS$p()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/http/CodecsKt;->SPECIAL_SYMBOLS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getURL_ALPHABET$p()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/http/CodecsKt;->URL_ALPHABET:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getURL_PROTOCOL_PART$p()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/http/CodecsKt;->URL_PROTOCOL_PART:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$percentEncode(B)Ljava/lang/String;
    .locals 1
    .param p0, "$receiver"    # B

    .line 1
    invoke-static {p0}, Lio/ktor/http/CodecsKt;->percentEncode(B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final charToHexDigit(C)I
    .locals 3
    .param p0, "c2"    # C

    .line 276
    nop

    .line 277
    const/16 v0, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, p0, :cond_0

    const/16 v0, 0x3a

    if-ge p0, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    add-int/lit8 v0, p0, -0x30

    goto :goto_3

    .line 278
    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x47

    if-ge p0, v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_3

    .line 279
    :cond_3
    const/16 v0, 0x61

    if-gt v0, p0, :cond_4

    const/16 v0, 0x67

    if-ge p0, v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_3

    .line 280
    :cond_5
    const/4 v0, -0x1

    .line 281
    :goto_3
    return v0
.end method

.method private static final decodeImpl(Ljava/lang/CharSequence;IIIZLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 16
    .param p0, "$this$decodeImpl"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "prefixEnd"    # I
    .param p4, "plusIsSpace"    # Z
    .param p5, "charset"    # Ljava/nio/charset/Charset;

    .line 200
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sub-int v4, v2, v1

    .line 202
    .local v4, "length":I
    const/16 v5, 0xff

    if-le v4, v5, :cond_0

    div-int/lit8 v5, v4, 0x3

    goto :goto_0

    :cond_0
    move v5, v4

    .line 203
    .local v5, "sbSize":I
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 205
    .local v6, "sb":Ljava/lang/StringBuilder;
    if-le v3, v1, :cond_1

    .line 206
    invoke-virtual {v6, v0, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 209
    :cond_1
    move/from16 v7, p3

    .line 212
    .local v7, "index":I
    const/4 v8, 0x0

    .line 214
    .local v8, "bytes":[B
    :goto_1
    if-ge v7, v2, :cond_8

    .line 215
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 216
    .local v9, "c":C
    nop

    .line 217
    if-eqz p4, :cond_2

    const/16 v10, 0x2b

    if-ne v9, v10, :cond_2

    .line 218
    const/16 v10, 0x20

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 221
    :cond_2
    const/16 v10, 0x25

    if-ne v9, v10, :cond_7

    .line 223
    if-nez v8, :cond_3

    .line 224
    sub-int v11, v2, v7

    div-int/lit8 v11, v11, 0x3

    new-array v8, v11, [B

    .line 228
    :cond_3
    const/4 v11, 0x0

    .line 229
    .local v11, "count":I
    :goto_2
    if-ge v7, v2, :cond_6

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-ne v12, v10, :cond_6

    .line 230
    add-int/lit8 v12, v7, 0x2

    const-string v13, ", in "

    if-ge v12, v2, :cond_5

    .line 236
    add-int/lit8 v12, v7, 0x1

    invoke-interface {v0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lio/ktor/http/CodecsKt;->charToHexDigit(C)I

    move-result v12

    .line 237
    .local v12, "digit1":I
    add-int/lit8 v14, v7, 0x2

    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    invoke-static {v14}, Lio/ktor/http/CodecsKt;->charToHexDigit(C)I

    move-result v14

    .line 238
    .local v14, "digit2":I
    const/4 v15, -0x1

    if-eq v12, v15, :cond_4

    if-eq v14, v15, :cond_4

    .line 244
    add-int/lit8 v13, v11, 0x1

    .end local v11    # "count":I
    .local v13, "count":I
    mul-int/lit8 v15, v12, 0x10

    add-int/2addr v15, v14

    int-to-byte v15, v15

    aput-byte v15, v8, v11

    add-int/lit8 v7, v7, 0x3

    .line 245
    move v11, v13

    .end local v12    # "digit1":I
    .end local v14    # "digit2":I
    goto :goto_2

    .line 239
    .end local v13    # "count":I
    .restart local v11    # "count":I
    .restart local v12    # "digit1":I
    .restart local v14    # "digit2":I
    :cond_4
    new-instance v10, Lio/ktor/http/URLDecodeException;

    .line 240
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong HEX escape: %"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v15, v7, 0x1

    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v15, v7, 0x2

    invoke-interface {v0, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v13, ", at "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-direct {v10, v1}, Lio/ktor/http/URLDecodeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 231
    .end local v12    # "digit1":I
    .end local v14    # "digit2":I
    :cond_5
    new-instance v1, Lio/ktor/http/URLDecodeException;

    .line 232
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Incomplete trailing HEX escape: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-interface {v0, v7, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " at "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 231
    invoke-direct {v1, v10}, Lio/ktor/http/URLDecodeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_6
    const/4 v1, 0x0

    .local v1, "offset$iv":I
    const/4 v10, 0x0

    .line 305
    .local v10, "$i$f$String":I
    new-instance v12, Ljava/lang/String;

    move-object/from16 v13, p5

    invoke-direct {v12, v8, v1, v11, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 250
    .end local v1    # "offset$iv":I
    .end local v10    # "$i$f$String":I
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p1

    goto/16 :goto_1

    .line 253
    .end local v11    # "count":I
    :cond_7
    move-object/from16 v13, p5

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    nop

    .end local v9    # "c":C
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, p1

    goto/16 :goto_1

    .line 259
    :cond_8
    move-object/from16 v13, p5

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "sb.toString()"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final decodeScan(Ljava/lang/String;IIZLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 8
    .param p0, "$this$decodeScan"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "plusIsSpace"    # Z
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    .line 184
    move v0, p1

    .local v0, "index":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 185
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 186
    .local v7, "ch":C
    const/16 v1, 0x25

    if-eq v7, v1, :cond_1

    if-eqz p3, :cond_0

    const/16 v1, 0x2b

    if-ne v7, v1, :cond_0

    goto :goto_1

    .line 184
    .end local v7    # "ch":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    .restart local v7    # "ch":C
    :cond_1
    :goto_1
    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    move v2, p1

    move v3, p2

    move v4, v0

    move v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lio/ktor/http/CodecsKt;->decodeImpl(Ljava/lang/CharSequence;IIIZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 190
    .end local v0    # "index":I
    .end local v7    # "ch":C
    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p2, v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method

.method public static final decodeURLPart(Ljava/lang/String;IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p0, "$this$decodeURLPart"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lio/ktor/http/CodecsKt;->decodeScan(Ljava/lang/String;IIZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic decodeURLPart$default(Ljava/lang/String;IILjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 177
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 178
    const/4 p1, 0x0

    .line 177
    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 179
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    .line 177
    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 180
    sget-object p3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 177
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lio/ktor/http/CodecsKt;->decodeURLPart(Ljava/lang/String;IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final decodeURLQueryComponent(Ljava/lang/String;IIZLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p0, "$this$decodeURLQueryComponent"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "plusIsSpace"    # Z
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/http/CodecsKt;->decodeScan(Ljava/lang/String;IIZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic decodeURLQueryComponent$default(Ljava/lang/String;IIZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 166
    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 167
    move p1, v0

    .line 166
    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 168
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    .line 166
    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 169
    move p3, v0

    .line 166
    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 170
    sget-object p4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 166
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/http/CodecsKt;->decodeURLQueryComponent(Ljava/lang/String;IIZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final encodeOAuth(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "$this$encodeOAuth"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lio/ktor/http/CodecsKt;->encodeURLParameter$default(Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final encodeURLParameter(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .param p0, "$this$encodeURLParameter"    # Ljava/lang/String;
    .param p1, "spaceToPlus"    # Z

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v0

    .local v1, "$this$encodeURLParameter_u24lambda_u245":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 119
    .local v2, "$i$a$-buildString-CodecsKt$encodeURLParameter$1":I
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v4

    const-string v3, "UTF_8.newEncoder()"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p0

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lio/ktor/utils/io/charsets/EncodingKt;->encode$default(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;IIILjava/lang/Object;)Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v3

    .line 120
    .local v3, "content":Lio/ktor/utils/io/core/ByteReadPacket;
    new-instance v4, Lio/ktor/http/CodecsKt$encodeURLParameter$1$1;

    invoke-direct {v4, v1, p1}, Lio/ktor/http/CodecsKt$encodeURLParameter$1$1;-><init>(Ljava/lang/StringBuilder;Z)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v4}, Lio/ktor/http/CodecsKt;->forEach(Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/jvm/functions/Function1;)V

    .line 127
    nop

    .line 118
    .end local v1    # "$this$encodeURLParameter_u24lambda_u245":Ljava/lang/StringBuilder;
    .end local v2    # "$i$a$-buildString-CodecsKt$encodeURLParameter$1":I
    .end local v3    # "content":Lio/ktor/utils/io/core/ByteReadPacket;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    return-object v0
.end method

.method public static synthetic encodeURLParameter$default(Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 116
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 117
    const/4 p1, 0x0

    .line 116
    :cond_0
    invoke-static {p0, p1}, Lio/ktor/http/CodecsKt;->encodeURLParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final encodeURLParameterValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "$this$encodeURLParameterValue"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lio/ktor/http/CodecsKt;->encodeURLParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final encodeURLPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "$this$encodeURLPath"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/ktor/http/CodecsKt;->encodeURLPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final encodeURLPath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .param p0, "$this$encodeURLPath"    # Ljava/lang/String;
    .param p1, "encodeSlash"    # Z

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v0

    .local v1, "$this$encodeURLPath_u24lambda_u244":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 74
    .local v2, "$i$a$-buildString-CodecsKt$encodeURLPath$1":I
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 76
    .local v3, "charset":Ljava/nio/charset/Charset;
    const/4 v4, 0x0

    .line 77
    .local v4, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 78
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 79
    .local v5, "current":C
    if-nez p1, :cond_0

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_4

    :cond_0
    sget-object v6, Lio/ktor/http/CodecsKt;->URL_ALPHABET_CHARS:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lio/ktor/http/CodecsKt;->VALID_PATH_PART:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 85
    :cond_1
    const/16 v6, 0x25

    if-ne v5, v6, :cond_2

    .line 86
    add-int/lit8 v6, v4, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 87
    sget-object v6, Lio/ktor/http/CodecsKt;->HEX_ALPHABET:Ljava/util/Set;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 88
    sget-object v6, Lio/ktor/http/CodecsKt;->HEX_ALPHABET:Ljava/util/Set;

    add-int/lit8 v7, v4, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 90
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v6, v4, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x3

    .line 94
    nop

    .line 95
    goto :goto_0

    .line 98
    :cond_2
    invoke-static {v5}, Lkotlin/text/CharsKt;->isSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x2

    goto :goto_1

    :cond_3
    const/4 v6, 0x1

    .line 100
    .local v6, "symbolSize":I
    :goto_1
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v7

    const-string v8, "charset.newEncoder()"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, p0

    check-cast v8, Ljava/lang/CharSequence;

    add-int v9, v4, v6

    invoke-static {v7, v8, v4, v9}, Lio/ktor/utils/io/charsets/EncodingKt;->encode(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v7

    new-instance v8, Lio/ktor/http/CodecsKt$encodeURLPath$1$1;

    invoke-direct {v8, v1}, Lio/ktor/http/CodecsKt$encodeURLPath$1$1;-><init>(Ljava/lang/StringBuilder;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v7, v8}, Lio/ktor/http/CodecsKt;->forEach(Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/jvm/functions/Function1;)V

    .line 103
    add-int/2addr v4, v6

    .end local v5    # "current":C
    .end local v6    # "symbolSize":I
    goto/16 :goto_0

    .line 80
    .restart local v5    # "current":C
    :cond_4
    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    add-int/lit8 v4, v4, 0x1

    .line 82
    goto/16 :goto_0

    .line 105
    .end local v5    # "current":C
    :cond_5
    nop

    .line 73
    .end local v1    # "$this$encodeURLPath_u24lambda_u244":Ljava/lang/StringBuilder;
    .end local v2    # "$i$a$-buildString-CodecsKt$encodeURLPath$1":I
    .end local v3    # "charset":Ljava/nio/charset/Charset;
    .end local v4    # "index":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    return-object v0
.end method

.method public static final encodeURLPathPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "$this$encodeURLPathPart"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lio/ktor/http/CodecsKt;->encodeURLPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final encodeURLQueryComponent(Ljava/lang/String;ZZLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 9
    .param p0, "$this$encodeURLQueryComponent"    # Ljava/lang/String;
    .param p1, "encodeFull"    # Z
    .param p2, "spaceToPlus"    # Z
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v0

    .local v1, "$this$encodeURLQueryComponent_u24lambda_u243":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 53
    .local v2, "$i$a$-buildString-CodecsKt$encodeURLQueryComponent$1":I
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    const-string v4, "charset.newEncoder()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p0

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lio/ktor/utils/io/charsets/EncodingKt;->encode$default(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;IIILjava/lang/Object;)Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v3

    .line 54
    .local v3, "content":Lio/ktor/utils/io/core/ByteReadPacket;
    new-instance v4, Lio/ktor/http/CodecsKt$encodeURLQueryComponent$1$1;

    invoke-direct {v4, p2, v1, p1}, Lio/ktor/http/CodecsKt$encodeURLQueryComponent$1$1;-><init>(ZLjava/lang/StringBuilder;Z)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v4}, Lio/ktor/http/CodecsKt;->forEach(Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/jvm/functions/Function1;)V

    .line 61
    nop

    .line 52
    .end local v1    # "$this$encodeURLQueryComponent_u24lambda_u243":Ljava/lang/StringBuilder;
    .end local v2    # "$i$a$-buildString-CodecsKt$encodeURLQueryComponent$1":I
    .end local v3    # "content":Lio/ktor/utils/io/core/ByteReadPacket;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    return-object v0
.end method

.method public static synthetic encodeURLQueryComponent$default(Ljava/lang/String;ZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 48
    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 49
    move p1, v0

    .line 48
    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 50
    move p2, v0

    .line 48
    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 51
    sget-object p3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 48
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lio/ktor/http/CodecsKt;->encodeURLQueryComponent(Ljava/lang/String;ZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final forEach(Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/jvm/functions/Function1;)V
    .locals 11
    .param p0, "$this$forEach"    # Lio/ktor/utils/io/core/ByteReadPacket;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/ByteReadPacket;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Byte;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 289
    move-object v0, p0

    check-cast v0, Lio/ktor/utils/io/core/Input;

    .local v0, "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    const/4 v1, 0x0

    .line 306
    .local v1, "$i$f$takeWhile":I
    const/4 v2, 0x1

    .line 307
    .local v2, "release$iv":Z
    const/4 v3, 0x1

    invoke-static {v0, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_3

    .line 309
    .local v4, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    nop

    .line 311
    :goto_0
    :try_start_0
    move-object v5, v4

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    .local v5, "buffer":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 290
    .local v6, "$i$a$-takeWhile-CodecsKt$forEach$1":I
    :goto_1
    move-object v7, v5

    .local v7, "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v8, 0x0

    .line 312
    .local v8, "$i$f$canRead":I
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v9

    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v10

    if-le v9, v10, :cond_1

    move v9, v3

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    .end local v7    # "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v8    # "$i$f$canRead":I
    :goto_2
    if-eqz v9, :cond_2

    .line 291
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->readByte()B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {p1, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 293
    :cond_2
    nop

    .line 311
    .end local v5    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$a$-takeWhile-CodecsKt$forEach$1":I
    nop

    .line 315
    const/4 v2, 0x0

    .line 316
    invoke-static {v0, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_4

    .line 321
    if-eqz v2, :cond_3

    .line 322
    invoke-static {v0, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 324
    :cond_3
    nop

    .line 325
    nop

    .line 295
    .end local v0    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .end local v1    # "$i$f$takeWhile":I
    .end local v2    # "release$iv":Z
    .end local v4    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_3
    return-void

    .line 317
    .restart local v0    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .restart local v1    # "$i$f$takeWhile":I
    .restart local v2    # "release$iv":Z
    .restart local v4    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v5, "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_4
    move-object v4, v5

    .line 318
    const/4 v2, 0x1

    .line 319
    .end local v5    # "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    goto :goto_0

    .line 321
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_5

    .line 322
    invoke-static {v0, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_5
    throw v3
.end method

.method public static final getATTRIBUTE_CHARACTERS()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 35
    sget-object v0, Lio/ktor/http/CodecsKt;->ATTRIBUTE_CHARACTERS:Ljava/util/Set;

    return-object v0
.end method

.method private static final hexDigitToChar(I)C
    .locals 2
    .param p0, "digit"    # I

    .line 283
    nop

    .line 284
    const/16 v0, 0xa

    const/4 v1, 0x0

    if-ltz p0, :cond_0

    if-ge p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    goto :goto_0

    .line 285
    :cond_1
    add-int/lit8 v1, p0, 0x41

    int-to-char v1, v1

    sub-int/2addr v1, v0

    int-to-char v0, v1

    .line 286
    :goto_0
    return v0
.end method

.method private static final percentEncode(B)Ljava/lang/String;
    .locals 4
    .param p0, "$this$percentEncode"    # B

    .line 268
    and-int/lit16 v0, p0, 0xff

    .line 269
    .local v0, "code":I
    const/4 v1, 0x3

    new-array v1, v1, [C

    .line 270
    .local v1, "array":[C
    const/4 v2, 0x0

    const/16 v3, 0x25

    aput-char v3, v1, v2

    .line 271
    shr-int/lit8 v2, v0, 0x4

    invoke-static {v2}, Lio/ktor/http/CodecsKt;->hexDigitToChar(I)C

    move-result v2

    const/4 v3, 0x1

    aput-char v2, v1, v3

    .line 272
    and-int/lit8 v2, v0, 0xf

    invoke-static {v2}, Lio/ktor/http/CodecsKt;->hexDigitToChar(I)C

    move-result v2

    const/4 v3, 0x2

    aput-char v2, v1, v3

    .line 273
    invoke-static {v1}, Lkotlin/text/StringsKt;->concatToString([C)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final percentEncode(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    .locals 18
    .param p0, "$this$percentEncode"    # Ljava/lang/String;
    .param p1, "allowedSet"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "allowedSet"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    .local v2, "$this$count$iv":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 297
    .local v3, "$i$f$count":I
    const/4 v4, 0x0

    .line 298
    .local v4, "count$iv":I
    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .local v7, "element$iv":C
    move v8, v7

    .local v8, "it":C
    const/4 v9, 0x0

    .line 130
    .local v9, "$i$a$-count-CodecsKt$percentEncode$encodedCount$1":I
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    .line 298
    .end local v8    # "it":C
    .end local v9    # "$i$a$-count-CodecsKt$percentEncode$encodedCount$1":I
    xor-int/lit8 v8, v10, 0x1

    if-eqz v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    .end local v7    # "element$iv":C
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 299
    :cond_1
    nop

    .line 130
    .end local v2    # "$this$count$iv":Ljava/lang/CharSequence;
    .end local v3    # "$i$f$count":I
    .end local v4    # "count$iv":I
    move v2, v4

    .line 131
    .local v2, "encodedCount":I
    if-nez v2, :cond_2

    return-object v0

    .line 133
    :cond_2
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .local v3, "charset$iv":Ljava/nio/charset/Charset;
    move-object/from16 v4, p0

    .local v4, "$this$toByteArray$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 300
    .local v6, "$i$f$toByteArray":I
    sget-object v7, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v4}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    goto :goto_1

    .line 302
    :cond_3
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v7

    const-string v8, "charset.newEncoder()"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v4

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v7, v8, v5, v9}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeToByteArray(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B

    move-result-object v7

    .line 133
    .end local v3    # "charset$iv":Ljava/nio/charset/Charset;
    .end local v4    # "$this$toByteArray$iv":Ljava/lang/String;
    .end local v6    # "$i$f$toByteArray":I
    :goto_1
    move-object v3, v7

    .line 135
    .local v3, "content":[B
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    .line 136
    .local v4, "rawCount":I
    array-length v6, v3

    sub-int/2addr v6, v4

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v6, v4

    .line 137
    .local v6, "resultSize":I
    new-array v7, v6, [C

    .line 139
    .local v7, "result":[C
    const/4 v8, 0x0

    .line 141
    .local v8, "writeIndex":I
    move-object v9, v3

    .local v9, "$this$forEach$iv":[B
    const/4 v10, 0x0

    .line 303
    .local v10, "$i$f$forEach":I
    array-length v11, v9

    :goto_2
    if-ge v5, v11, :cond_5

    aget-byte v12, v9, v5

    .local v12, "element$iv":B
    move v13, v12

    .local v13, "it":B
    const/4 v14, 0x0

    .line 142
    .local v14, "$i$a$-forEach-CodecsKt$percentEncode$1":I
    int-to-char v15, v13

    .line 144
    .local v15, "char":C
    invoke-static {v15}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    add-int/lit8 v0, v8, 0x1

    .end local v8    # "writeIndex":I
    .local v0, "writeIndex":I
    aput-char v15, v7, v8

    move v8, v0

    goto :goto_3

    .line 147
    .end local v0    # "writeIndex":I
    .restart local v8    # "writeIndex":I
    :cond_4
    and-int/lit16 v0, v13, 0xff

    .line 149
    .local v0, "code":I
    add-int/lit8 v16, v8, 0x1

    .end local v8    # "writeIndex":I
    .local v16, "writeIndex":I
    const/16 v17, 0x25

    aput-char v17, v7, v8

    .line 150
    add-int/lit8 v8, v16, 0x1

    .end local v16    # "writeIndex":I
    .restart local v8    # "writeIndex":I
    shr-int/lit8 v17, v0, 0x4

    invoke-static/range {v17 .. v17}, Lio/ktor/http/CodecsKt;->hexDigitToChar(I)C

    move-result v17

    aput-char v17, v7, v16

    .line 151
    add-int/lit8 v16, v8, 0x1

    .end local v8    # "writeIndex":I
    .restart local v16    # "writeIndex":I
    and-int/lit8 v17, v0, 0xf

    invoke-static/range {v17 .. v17}, Lio/ktor/http/CodecsKt;->hexDigitToChar(I)C

    move-result v17

    aput-char v17, v7, v8

    move/from16 v8, v16

    .line 153
    .end local v0    # "code":I
    .end local v16    # "writeIndex":I
    .restart local v8    # "writeIndex":I
    :goto_3
    nop

    .line 303
    .end local v13    # "it":B
    .end local v14    # "$i$a$-forEach-CodecsKt$percentEncode$1":I
    .end local v15    # "char":C
    nop

    .end local v12    # "element$iv":B
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    .line 304
    :cond_5
    nop

    .line 155
    .end local v9    # "$this$forEach$iv":[B
    .end local v10    # "$i$f$forEach":I
    invoke-static {v7}, Lkotlin/text/StringsKt;->concatToString([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
