.class public final Lio/ktor/http/URLParserKt;
.super Ljava/lang/Object;
.source "URLParser.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nURLParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 URLParser.kt\nio/ktor/http/URLParserKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,263:1\n151#2,6:264\n163#2,6:270\n1#3:276\n*S KotlinDebug\n*F\n+ 1 URLParser.kt\nio/ktor/http/URLParserKt\n*L\n34#1:264,6\n35#1:270,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u001a(\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0002\u001a \u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002\u001a$\u0010\r\u001a\u00020\u000e*\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002\u001a\u001c\u0010\u0010\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002\u001a\u000c\u0010\u0011\u001a\u00020\u0012*\u00020\u000bH\u0002\u001a,\u0010\u0013\u001a\u00020\u000e*\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006H\u0002\u001a$\u0010\u0015\u001a\u00020\u000e*\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002\u001a$\u0010\u0016\u001a\u00020\u000e*\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002\u001a$\u0010\u0017\u001a\u00020\u0006*\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002\u001a\u0012\u0010\u0018\u001a\u00020\u000f*\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u0002\u001a\u0014\u0010\u0019\u001a\u00020\u000f*\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u0002H\u0000\"\u001a\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u001a"
    }
    d2 = {
        "ROOT_PATH",
        "",
        "",
        "getROOT_PATH",
        "()Ljava/util/List;",
        "count",
        "",
        "urlString",
        "startIndex",
        "endIndex",
        "char",
        "",
        "findScheme",
        "fillHost",
        "",
        "Lio/ktor/http/URLBuilder;",
        "indexOfColonInHostPort",
        "isLetter",
        "",
        "parseFile",
        "slashCount",
        "parseFragment",
        "parseMailto",
        "parseQuery",
        "takeFrom",
        "takeFromUnsafe",
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
.field private static final ROOT_PATH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-string v0, ""

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/ktor/http/URLParserKt;->ROOT_PATH:Ljava/util/List;

    return-void
.end method

.method private static final count(Ljava/lang/String;IIC)I
    .locals 2
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "char"    # C

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "result":I
    :goto_0
    add-int v1, p1, v0

    if-ge v1, p2, :cond_0

    .line 242
    add-int v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_0

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_0
    return v0
.end method

.method private static final fillHost(Lio/ktor/http/URLBuilder;Ljava/lang/String;II)V
    .locals 5
    .param p0, "$this$fillHost"    # Lio/ktor/http/URLBuilder;
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 178
    invoke-static {p1, p2, p3}, Lio/ktor/http/URLParserKt;->indexOfColonInHostPort(Ljava/lang/String;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 276
    .local v1, "it":I
    const/4 v2, 0x0

    .line 178
    .local v2, "$i$a$-takeIf-URLParserKt$fillHost$colonIndex$1":I
    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    .end local v1    # "it":I
    .end local v2    # "$i$a$-takeIf-URLParserKt$fillHost$colonIndex$1":I
    :goto_0
    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, p3

    .line 180
    .local v0, "colonIndex":I
    :goto_2
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lio/ktor/http/URLBuilder;->setHost(Ljava/lang/String;)V

    .line 182
    add-int/lit8 v1, v0, 0x1

    if-ge v1, p3, :cond_3

    .line 183
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lio/ktor/http/URLBuilder;->setPort(I)V

    goto :goto_3

    .line 185
    :cond_3
    invoke-virtual {p0, v3}, Lio/ktor/http/URLBuilder;->setPort(I)V

    .line 187
    :goto_3
    return-void
.end method

.method private static final findScheme(Ljava/lang/String;II)I
    .locals 13
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 195
    move v0, p1

    .line 199
    .local v0, "current":I
    const/4 v1, -0x1

    .line 200
    .local v1, "incorrectSchemePosition":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 201
    .local v2, "firstChar":C
    const/16 v3, 0x7b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x61

    if-gt v6, v2, :cond_0

    if-ge v2, v3, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    const/16 v8, 0x5b

    const/16 v9, 0x41

    if-nez v7, :cond_2

    if-gt v9, v2, :cond_1

    if-ge v2, v8, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    if-nez v7, :cond_2

    .line 202
    move v1, v0

    .line 205
    :cond_2
    :goto_2
    const/4 v7, -0x1

    if-ge v0, p2, :cond_b

    .line 206
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 210
    .local v10, "char":C
    const/16 v11, 0x3a

    if-ne v10, v11, :cond_4

    .line 211
    if-ne v1, v7, :cond_3

    .line 215
    sub-int v3, v0, p1

    return v3

    .line 212
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal character in scheme at position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 219
    :cond_4
    const/16 v12, 0x2f

    if-eq v10, v12, :cond_a

    const/16 v12, 0x3f

    if-eq v10, v12, :cond_a

    const/16 v12, 0x23

    if-ne v10, v12, :cond_5

    goto :goto_6

    .line 222
    :cond_5
    if-ne v1, v7, :cond_9

    .line 223
    if-gt v6, v10, :cond_6

    if-ge v10, v3, :cond_6

    move v7, v4

    goto :goto_3

    :cond_6
    move v7, v5

    :goto_3
    if-nez v7, :cond_9

    .line 224
    if-gt v9, v10, :cond_7

    if-ge v10, v8, :cond_7

    move v7, v4

    goto :goto_4

    :cond_7
    move v7, v5

    :goto_4
    if-nez v7, :cond_9

    .line 225
    const/16 v7, 0x30

    if-gt v7, v10, :cond_8

    if-ge v10, v11, :cond_8

    move v7, v4

    goto :goto_5

    :cond_8
    move v7, v5

    :goto_5
    if-nez v7, :cond_9

    .line 226
    const/16 v7, 0x2e

    if-eq v10, v7, :cond_9

    .line 227
    const/16 v7, 0x2b

    if-eq v10, v7, :cond_9

    .line 228
    const/16 v7, 0x2d

    if-eq v10, v7, :cond_9

    .line 230
    move v1, v0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 233
    nop

    .end local v10    # "char":C
    goto :goto_2

    .line 219
    .restart local v10    # "char":C
    :cond_a
    :goto_6
    return v7

    .line 236
    .end local v10    # "char":C
    :cond_b
    return v7
.end method

.method public static final getROOT_PATH()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9
    sget-object v0, Lio/ktor/http/URLParserKt;->ROOT_PATH:Ljava/util/List;

    return-object v0
.end method

.method private static final indexOfColonInHostPort(Ljava/lang/String;II)I
    .locals 4
    .param p0, "$this$indexOfColonInHostPort"    # Ljava/lang/String;
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "skip":Z
    move v1, p1

    .local v1, "index":I
    :goto_0
    if-ge v1, p2, :cond_3

    .line 252
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 253
    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .line 254
    :cond_0
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 255
    :cond_1
    const/16 v3, 0x3a

    if-ne v2, v3, :cond_2

    if-nez v0, :cond_2

    return v1

    .line 251
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    .end local v1    # "index":I
    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method private static final isLetter(C)Z
    .locals 3
    .param p0, "$this$isLetter"    # C

    .line 262
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v1, 0x61

    const/4 v2, 0x0

    if-gt v1, v0, :cond_0

    const/16 v1, 0x7b

    if-ge v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private static final parseFile(Lio/ktor/http/URLBuilder;Ljava/lang/String;III)V
    .locals 7
    .param p0, "$this$parseFile"    # Lio/ktor/http/URLBuilder;
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "slashCount"    # I

    .line 126
    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    packed-switch p4, :pswitch_data_0

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid file url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :pswitch_0
    const-string v1, ""

    invoke-virtual {p0, v1}, Lio/ktor/http/URLBuilder;->setHost(Ljava/lang/String;)V

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/ktor/http/URLBuilderKt;->setEncodedPath(Lio/ktor/http/URLBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :pswitch_1
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v2, 0x2f

    const/4 v4, 0x0

    move v3, p2

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    .line 129
    .local v1, "nextSlash":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, p3, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lio/ktor/http/URLBuilder;->setHost(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lio/ktor/http/URLBuilderKt;->setEncodedPath(Lio/ktor/http/URLBuilder;Ljava/lang/String;)V

    .line 143
    .end local v1    # "nextSlash":I
    :goto_0
    return-void

    .line 130
    .restart local v1    # "nextSlash":I
    :cond_1
    :goto_1
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lio/ktor/http/URLBuilder;->setHost(Ljava/lang/String;)V

    .line 131
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final parseFragment(Lio/ktor/http/URLBuilder;Ljava/lang/String;II)V
    .locals 2
    .param p0, "$this$parseFragment"    # Lio/ktor/http/URLBuilder;
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 172
    if-ge p2, p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    .line 173
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/ktor/http/URLBuilder;->setEncodedFragment(Ljava/lang/String;)V

    .line 175
    :cond_0
    return-void
.end method

.method private static final parseMailto(Lio/ktor/http/URLBuilder;Ljava/lang/String;II)V
    .locals 8
    .param p0, "$this$parseMailto"    # Lio/ktor/http/URLBuilder;
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 146
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "@"

    const/4 v3, 0x0

    move v2, p2

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    .line 147
    .local v0, "delimiter":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 151
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lio/ktor/http/CodecsKt;->decodeURLPart$default(Ljava/lang/String;IILjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/ktor/http/URLBuilder;->setUser(Ljava/lang/String;)V

    .line 152
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lio/ktor/http/URLBuilder;->setHost(Ljava/lang/String;)V

    .line 153
    return-void

    .line 148
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mailto url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", it should contain \'@\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final parseQuery(Lio/ktor/http/URLBuilder;Ljava/lang/String;II)I
    .locals 8
    .param p0, "$this$parseQuery"    # Lio/ktor/http/URLBuilder;
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 156
    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-ne v0, p3, :cond_0

    .line 157
    invoke-virtual {p0, v1}, Lio/ktor/http/URLBuilder;->setTrailingQuery(Z)V

    .line 158
    return p3

    .line 161
    :cond_0
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    add-int/lit8 v4, p2, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/16 v3, 0x23

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 276
    .local v2, "it":I
    const/4 v3, 0x0

    .line 161
    .local v3, "$i$a$-takeIf-URLParserKt$parseQuery$fragmentStart$1":I
    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .end local v2    # "it":I
    .end local v3    # "$i$a$-takeIf-URLParserKt$parseQuery$fragmentStart$1":I
    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, p3

    .line 163
    .local v0, "fragmentStart":I
    :goto_2
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lio/ktor/http/QueryKt;->parseQueryString$default(Ljava/lang/String;IIZILjava/lang/Object;)Lio/ktor/http/Parameters;

    move-result-object v1

    .line 164
    .local v1, "rawParameters":Lio/ktor/http/Parameters;
    new-instance v2, Lio/ktor/http/URLParserKt$parseQuery$1;

    invoke-direct {v2, p0}, Lio/ktor/http/URLParserKt$parseQuery$1;-><init>(Lio/ktor/http/URLBuilder;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, v2}, Lio/ktor/http/Parameters;->forEach(Lkotlin/jvm/functions/Function2;)V

    .line 168
    return v0
.end method

.method public static final takeFrom(Lio/ktor/http/URLBuilder;Ljava/lang/String;)Lio/ktor/http/URLBuilder;
    .locals 2
    .param p0, "$this$takeFrom"    # Lio/ktor/http/URLBuilder;
    .param p1, "urlString"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 18
    :cond_0
    nop

    .line 19
    :try_start_0
    invoke-static {p0, p1}, Lio/ktor/http/URLParserKt;->takeFromUnsafe(Lio/ktor/http/URLBuilder;Ljava/lang/String;)Lio/ktor/http/URLBuilder;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    .local v0, "cause":Ljava/lang/Throwable;
    new-instance v1, Lio/ktor/http/URLParserException;

    invoke-direct {v1, p1, v0}, Lio/ktor/http/URLParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final takeFromUnsafe(Lio/ktor/http/URLBuilder;Ljava/lang/String;)Lio/ktor/http/URLBuilder;
    .locals 19
    .param p0, "$this$takeFromUnsafe"    # Lio/ktor/http/URLBuilder;
    .param p1, "urlString"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "urlString"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    .local v2, "$this$indexOfFirst$iv":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 264
    .local v3, "$i$f$indexOfFirst":I
    const/4 v4, 0x0

    .local v4, "index$iv":I
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    :goto_0
    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ge v4, v5, :cond_1

    .line 265
    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .local v8, "it":C
    const/4 v9, 0x0

    .line 34
    .local v9, "$i$a$-indexOfFirst-URLParserKt$takeFromUnsafe$startIndex$1":I
    invoke-static {v8}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v10

    .line 265
    .end local v8    # "it":C
    .end local v9    # "$i$a$-indexOfFirst-URLParserKt$takeFromUnsafe$startIndex$1":I
    xor-int/lit8 v8, v10, 0x1

    if-eqz v8, :cond_0

    .line 266
    goto :goto_1

    .line 264
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 269
    .end local v4    # "index$iv":I
    :cond_1
    move v4, v6

    .line 34
    .end local v2    # "$this$indexOfFirst$iv":Ljava/lang/CharSequence;
    .end local v3    # "$i$f$indexOfFirst":I
    :goto_1
    move v2, v4

    .line 35
    .local v2, "startIndex":I
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    .local v3, "$this$indexOfLast$iv":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 270
    .local v4, "$i$f$indexOfLast":I
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v5, v6

    if-ltz v5, :cond_4

    :cond_2
    move v8, v5

    .local v8, "index$iv":I
    add-int/2addr v5, v6

    .line 271
    invoke-interface {v3, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .local v9, "it":C
    const/4 v10, 0x0

    .line 35
    .local v10, "$i$a$-indexOfLast-URLParserKt$takeFromUnsafe$endIndex$1":I
    invoke-static {v9}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v11

    .line 271
    .end local v9    # "it":C
    .end local v10    # "$i$a$-indexOfLast-URLParserKt$takeFromUnsafe$endIndex$1":I
    xor-int/lit8 v9, v11, 0x1

    if-eqz v9, :cond_3

    .line 272
    goto :goto_2

    .line 270
    :cond_3
    if-gez v5, :cond_2

    .line 275
    .end local v8    # "index$iv":I
    :cond_4
    move v8, v6

    .line 35
    .end local v3    # "$this$indexOfLast$iv":Ljava/lang/CharSequence;
    .end local v4    # "$i$f$indexOfLast":I
    :goto_2
    add-int/2addr v8, v7

    .line 37
    .local v8, "endIndex":I
    invoke-static {v1, v2, v8}, Lio/ktor/http/URLParserKt;->findScheme(Ljava/lang/String;II)I

    move-result v3

    .line 38
    .local v3, "schemeLength":I
    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    if-lez v3, :cond_5

    .line 39
    add-int v5, v2, v3

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .local v5, "scheme":Ljava/lang/String;
    sget-object v9, Lio/ktor/http/URLProtocol;->Companion:Lio/ktor/http/URLProtocol$Companion;

    invoke-virtual {v9, v5}, Lio/ktor/http/URLProtocol$Companion;->createOrDefault(Ljava/lang/String;)Lio/ktor/http/URLProtocol;

    move-result-object v9

    invoke-virtual {v0, v9}, Lio/ktor/http/URLBuilder;->setProtocol(Lio/ktor/http/URLProtocol;)V

    .line 42
    add-int/lit8 v9, v3, 0x1

    add-int/2addr v2, v9

    .line 46
    .end local v5    # "scheme":Ljava/lang/String;
    :cond_5
    const/16 v5, 0x2f

    invoke-static {v1, v2, v8, v5}, Lio/ktor/http/URLParserKt;->count(Ljava/lang/String;IIC)I

    move-result v9

    .line 47
    .local v9, "slashCount":I
    add-int/2addr v2, v9

    .line 49
    invoke-virtual/range {p0 .. p0}, Lio/ktor/http/URLBuilder;->getProtocol()Lio/ktor/http/URLProtocol;

    move-result-object v10

    invoke-virtual {v10}, Lio/ktor/http/URLProtocol;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "file"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 50
    invoke-static {v0, v1, v2, v8, v9}, Lio/ktor/http/URLParserKt;->parseFile(Lio/ktor/http/URLBuilder;Ljava/lang/String;III)V

    .line 51
    return-object v0

    .line 54
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lio/ktor/http/URLBuilder;->getProtocol()Lio/ktor/http/URLProtocol;

    move-result-object v10

    invoke-virtual {v10}, Lio/ktor/http/URLProtocol;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "mailto"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_9

    .line 55
    if-nez v9, :cond_7

    goto :goto_3

    :cond_7
    move v7, v11

    :goto_3
    if-eqz v7, :cond_8

    .line 56
    invoke-static {v0, v1, v2, v8}, Lio/ktor/http/URLParserKt;->parseMailto(Lio/ktor/http/URLBuilder;Ljava/lang/String;II)V

    .line 57
    return-object v0

    .line 55
    :cond_8
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Failed requirement."

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 60
    :cond_9
    const/4 v10, 0x2

    const/4 v12, 0x0

    if-lt v9, v10, :cond_f

    .line 61
    :goto_4
    nop

    .line 62
    move-object v13, v1

    check-cast v13, Ljava/lang/CharSequence;

    const-string v10, "@/\\?#"

    invoke-static {v10}, Lio/ktor/util/CharsetKt;->toCharArray(Ljava/lang/String;)[C

    move-result-object v14

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/16 v16, 0x0

    move v15, v2

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->indexOfAny$default(Ljava/lang/CharSequence;[CIZILjava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    .line 276
    .local v13, "it":I
    const/4 v14, 0x0

    .line 62
    .local v14, "$i$a$-takeIf-URLParserKt$takeFromUnsafe$delimiter$1":I
    if-lez v13, :cond_a

    move v13, v7

    goto :goto_5

    :cond_a
    move v13, v11

    .end local v13    # "it":I
    .end local v14    # "$i$a$-takeIf-URLParserKt$takeFromUnsafe$delimiter$1":I
    :goto_5
    if-eqz v13, :cond_b

    goto :goto_6

    :cond_b
    move-object v10, v12

    :goto_6
    if-eqz v10, :cond_c

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_7

    :cond_c
    move v10, v8

    .line 64
    .local v10, "delimiter":I
    :goto_7
    if-ge v10, v8, :cond_e

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x40

    if-ne v13, v14, :cond_e

    .line 66
    invoke-static {v1, v2, v10}, Lio/ktor/http/URLParserKt;->indexOfColonInHostPort(Ljava/lang/String;II)I

    move-result v13

    .line 67
    .local v13, "passwordIndex":I
    if-eq v13, v6, :cond_d

    .line 68
    invoke-virtual {v1, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Lio/ktor/http/URLBuilder;->setEncodedUser(Ljava/lang/String;)V

    .line 69
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v14, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Lio/ktor/http/URLBuilder;->setEncodedPassword(Ljava/lang/String;)V

    goto :goto_8

    .line 71
    :cond_d
    invoke-virtual {v1, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Lio/ktor/http/URLBuilder;->setEncodedUser(Ljava/lang/String;)V

    .line 73
    :goto_8
    add-int/lit8 v2, v10, 0x1

    .end local v13    # "passwordIndex":I
    goto :goto_4

    .line 75
    :cond_e
    invoke-static {v0, v1, v2, v10}, Lio/ktor/http/URLParserKt;->fillHost(Lio/ktor/http/URLBuilder;Ljava/lang/String;II)V

    .line 76
    move v2, v10

    .line 77
    nop

    .line 83
    .end local v10    # "delimiter":I
    :cond_f
    if-lt v2, v8, :cond_11

    .line 84
    add-int/lit8 v4, v8, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_10

    sget-object v4, Lio/ktor/http/URLParserKt;->ROOT_PATH:Ljava/util/List;

    goto :goto_9

    :cond_10
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    :goto_9
    invoke-virtual {v0, v4}, Lio/ktor/http/URLBuilder;->setEncodedPathSegments(Ljava/util/List;)V

    .line 85
    return-object v0

    .line 88
    :cond_11
    if-nez v9, :cond_12

    .line 91
    invoke-virtual/range {p0 .. p0}, Lio/ktor/http/URLBuilder;->getEncodedPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->dropLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v6

    goto :goto_a

    .line 93
    :cond_12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 88
    :goto_a
    invoke-virtual {v0, v6}, Lio/ktor/http/URLBuilder;->setEncodedPathSegments(Ljava/util/List;)V

    .line 96
    move-object v13, v1

    check-cast v13, Ljava/lang/CharSequence;

    const-string v6, "?#"

    invoke-static {v6}, Lio/ktor/util/CharsetKt;->toCharArray(Ljava/lang/String;)[C

    move-result-object v14

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/16 v16, 0x0

    move v15, v2

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->indexOfAny$default(Ljava/lang/CharSequence;[CIZILjava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 276
    .local v10, "it":I
    const/4 v13, 0x0

    .line 96
    .local v13, "$i$a$-takeIf-URLParserKt$takeFromUnsafe$pathEnd$1":I
    if-lez v10, :cond_13

    move v10, v7

    goto :goto_b

    :cond_13
    move v10, v11

    .end local v10    # "it":I
    .end local v13    # "$i$a$-takeIf-URLParserKt$takeFromUnsafe$pathEnd$1":I
    :goto_b
    if-eqz v10, :cond_14

    move-object v12, v6

    :cond_14
    if-eqz v12, :cond_15

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_c

    :cond_15
    move v6, v8

    .line 97
    .local v6, "pathEnd":I
    :goto_c
    if-le v6, v2, :cond_1a

    .line 98
    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v10

    .line 99
    .local v4, "rawPath":Ljava/lang/String;
    nop

    .line 100
    invoke-virtual/range {p0 .. p0}, Lio/ktor/http/URLBuilder;->getEncodedPathSegments()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v7, :cond_17

    invoke-virtual/range {p0 .. p0}, Lio/ktor/http/URLBuilder;->getEncodedPathSegments()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_16

    move v10, v7

    goto :goto_d

    :cond_16
    move v10, v11

    :goto_d
    if-eqz v10, :cond_17

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    goto :goto_e

    .line 101
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lio/ktor/http/URLBuilder;->getEncodedPathSegments()Ljava/util/List;

    move-result-object v10

    .line 99
    :goto_e
    nop

    .line 104
    .local v10, "basePath":Ljava/util/List;
    const-string v12, "/"

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    sget-object v5, Lio/ktor/http/URLParserKt;->ROOT_PATH:Ljava/util/List;

    goto :goto_f

    :cond_18
    move-object v12, v4

    check-cast v12, Ljava/lang/CharSequence;

    new-array v13, v7, [C

    aput-char v5, v13, v11

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    move-object v11, v12

    move-object v12, v13

    move v13, v5

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 106
    .local v5, "rawChunks":Ljava/util/List;
    :goto_f
    nop

    .line 107
    if-ne v9, v7, :cond_19

    sget-object v7, Lio/ktor/http/URLParserKt;->ROOT_PATH:Ljava/util/List;

    goto :goto_10

    .line 108
    :cond_19
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    :goto_10
    check-cast v7, Ljava/util/Collection;

    .line 109
    move-object v11, v5

    check-cast v11, Ljava/lang/Iterable;

    .line 106
    invoke-static {v7, v11}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    .line 111
    .local v7, "relativePath":Ljava/util/List;
    move-object v11, v10

    check-cast v11, Ljava/util/Collection;

    move-object v12, v7

    check-cast v12, Ljava/lang/Iterable;

    invoke-static {v11, v12}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v0, v11}, Lio/ktor/http/URLBuilder;->setEncodedPathSegments(Ljava/util/List;)V

    .line 112
    move v2, v6

    .line 116
    .end local v4    # "rawPath":Ljava/lang/String;
    .end local v5    # "rawChunks":Ljava/util/List;
    .end local v7    # "relativePath":Ljava/util/List;
    .end local v10    # "basePath":Ljava/util/List;
    :cond_1a
    if-ge v2, v8, :cond_1b

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3f

    if-ne v4, v5, :cond_1b

    .line 117
    invoke-static {v0, v1, v2, v8}, Lio/ktor/http/URLParserKt;->parseQuery(Lio/ktor/http/URLBuilder;Ljava/lang/String;II)I

    move-result v2

    .line 121
    :cond_1b
    invoke-static {v0, v1, v2, v8}, Lio/ktor/http/URLParserKt;->parseFragment(Lio/ktor/http/URLBuilder;Ljava/lang/String;II)V

    .line 122
    return-object v0
.end method
