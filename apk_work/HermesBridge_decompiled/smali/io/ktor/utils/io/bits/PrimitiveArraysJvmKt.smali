.class public final Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;
.super Ljava/lang/Object;
.source "PrimitiveArraysJvm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrimitiveArraysJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrimitiveArraysJvm.kt\nio/ktor/utils/io/bits/PrimitiveArraysJvmKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Numbers.kt\nio/ktor/utils/io/core/internal/NumbersKt\n*L\n1#1,289:1\n288#1:290\n288#1:294\n288#1:298\n288#1:302\n288#1:306\n288#1:310\n288#1:314\n288#1:318\n288#1:322\n288#1:326\n1#2:291\n1#2:295\n1#2:299\n1#2:303\n1#2:307\n1#2:311\n1#2:315\n1#2:319\n1#2:323\n1#2:327\n1#2:330\n6#3,2:292\n6#3,2:296\n6#3,2:300\n6#3,2:304\n6#3,2:308\n6#3,2:312\n6#3,2:316\n6#3,2:320\n6#3,2:324\n6#3,2:328\n*S KotlinDebug\n*F\n+ 1 PrimitiveArraysJvm.kt\nio/ktor/utils/io/bits/PrimitiveArraysJvmKt\n*L\n19#1:290\n47#1:294\n75#1:298\n103#1:302\n131#1:306\n159#1:310\n187#1:314\n215#1:318\n243#1:322\n271#1:326\n19#1:291\n47#1:295\n75#1:299\n103#1:303\n131#1:307\n159#1:311\n187#1:315\n215#1:319\n243#1:323\n271#1:327\n33#1:292,2\n61#1:296,2\n89#1:300,2\n117#1:304,2\n145#1:308,2\n173#1:312,2\n201#1:316,2\n229#1:320,2\n257#1:324,2\n285#1:328,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0013\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0004\n\u0002\u0010\u0015\n\u0002\u0008\u0004\n\u0002\u0010\u0016\n\u0002\u0008\u0004\n\u0002\u0010\u0017\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0000\u001a;\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\t\u0010\n\u001a;\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\t\u0010\u000c\u001a;\u0010\r\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u001a;\u0010\r\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0011\u001a;\u0010\u0012\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u001a;\u0010\u0012\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0016\u001a;\u0010\u0017\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\u001a\u001a;\u0010\u0017\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\u001b\u001a;\u0010\u001c\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u001f\u001a;\u0010\u001c\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001e\u0010 \u001a;\u0010!\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u00062\u0008\u0008\u0002\u0010#\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008$\u0010\n\u001a;\u0010!\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u00062\u0008\u0008\u0002\u0010#\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008$\u0010\u000c\u001a;\u0010%\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u000e2\u0008\u0008\u0002\u0010#\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008&\u0010\u0010\u001a;\u0010%\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u000e2\u0008\u0008\u0002\u0010#\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008&\u0010\u0011\u001a;\u0010\'\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u00132\u0008\u0008\u0002\u0010#\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008(\u0010\u0015\u001a;\u0010\'\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u00132\u0008\u0008\u0002\u0010#\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008(\u0010\u0016\u001a;\u0010)\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u00182\u0008\u0008\u0002\u0010#\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008*\u0010\u001a\u001a;\u0010)\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u00182\u0008\u0008\u0002\u0010#\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008*\u0010\u001b\u001a;\u0010+\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u001d2\u0008\u0008\u0002\u0010#\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008,\u0010\u001f\u001a;\u0010+\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u001d2\u0008\u0008\u0002\u0010#\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008,\u0010 \u001a\u0015\u0010-\u001a\u00020.*\u00020.2\u0006\u0010\u0003\u001a\u00020\u0004H\u0082\u0008\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006/"
    }
    d2 = {
        "loadDoubleArray",
        "",
        "Lio/ktor/utils/io/bits/Memory;",
        "offset",
        "",
        "destination",
        "",
        "destinationOffset",
        "count",
        "loadDoubleArray-9zorpBc",
        "(Ljava/nio/ByteBuffer;I[DII)V",
        "",
        "(Ljava/nio/ByteBuffer;J[DII)V",
        "loadFloatArray",
        "",
        "loadFloatArray-9zorpBc",
        "(Ljava/nio/ByteBuffer;I[FII)V",
        "(Ljava/nio/ByteBuffer;J[FII)V",
        "loadIntArray",
        "",
        "loadIntArray-9zorpBc",
        "(Ljava/nio/ByteBuffer;I[III)V",
        "(Ljava/nio/ByteBuffer;J[III)V",
        "loadLongArray",
        "",
        "loadLongArray-9zorpBc",
        "(Ljava/nio/ByteBuffer;I[JII)V",
        "(Ljava/nio/ByteBuffer;J[JII)V",
        "loadShortArray",
        "",
        "loadShortArray-9zorpBc",
        "(Ljava/nio/ByteBuffer;I[SII)V",
        "(Ljava/nio/ByteBuffer;J[SII)V",
        "storeDoubleArray",
        "source",
        "sourceOffset",
        "storeDoubleArray-9zorpBc",
        "storeFloatArray",
        "storeFloatArray-9zorpBc",
        "storeIntArray",
        "storeIntArray-9zorpBc",
        "storeLongArray",
        "storeLongArray-9zorpBc",
        "storeShortArray",
        "storeShortArray-9zorpBc",
        "withOffset",
        "Ljava/nio/ByteBuffer;",
        "ktor-io"
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
.method public static final loadDoubleArray-9zorpBc(Ljava/nio/ByteBuffer;I[DII)V
    .locals 5
    .param p0, "$this$loadDoubleArray_u2d9zorpBc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "destination"    # [D
    .param p3, "destinationOffset"    # I
    .param p4, "count"    # I

    const-string v0, "$this$loadDoubleArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    move-object v0, p0

    .local v0, "$this$withOffset$iv":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 306
    .local v1, "$i$f$withOffset":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    .line 307
    .local v3, "$this$withOffset_u24lambda_u240$iv":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 306
    .local v4, "$i$a$-apply-PrimitiveArraysJvmKt$withOffset$1$iv":I
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 131
    .end local v0    # "$this$withOffset$iv":Ljava/nio/ByteBuffer;
    .end local v1    # "$i$f$withOffset":I
    .end local v3    # "$this$withOffset_u24lambda_u240$iv":Ljava/nio/ByteBuffer;
    .end local v4    # "$i$a$-apply-PrimitiveArraysJvmKt$withOffset$1$iv":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/DoubleBuffer;->get([DII)Ljava/nio/DoubleBuffer;

    .line 132
    return-void
.end method

.method public static final loadDoubleArray-9zorpBc(Ljava/nio/ByteBuffer;J[DII)V
    .locals 6
    .param p0, "$this$loadDoubleArray_u2d9zorpBc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "destination"    # [D
    .param p4, "destinationOffset"    # I
    .param p5, "count"    # I

    const-string v0, "$this$loadDoubleArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    const-string v0, "offset"

    .local v0, "name$iv":Ljava/lang/String;
    move-wide v1, p1

    .local v1, "$this$toIntOrFail$iv":J
    const/4 v3, 0x0

    .line 308
    .local v3, "$i$f$toIntOrFail":I
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 309
    long-to-int v0, v1

    .line 145
    .end local v0    # "name$iv":Ljava/lang/String;
    .end local v1    # "$this$toIntOrFail$iv":J
    .end local v3    # "$i$f$toIntOrFail":I
    invoke-static {p0, v0, p3, p4, p5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadDoubleArray-9zorpBc(Ljava/nio/ByteBuffer;I[DII)V

    .line 146
    return-void

    .line 308
    .restart local v0    # "name$iv":Ljava/lang/String;
    .restart local v1    # "$this$toIntOrFail$iv":J
    .restart local v3    # "$i$f$toIntOrFail":I
    :cond_0
    invoke-static {v1, v2, v0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4
.end method

.method public static synthetic loadDoubleArray-9zorpBc$default(Ljava/nio/ByteBuffer;I[DIIILjava/lang/Object;)V
    .locals 0

    .line 125
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 285
    const/4 p3, 0x0

    .line 125
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 288
    array-length p4, p2

    sub-int/2addr p4, p3

    .line 125
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadDoubleArray-9zorpBc(Ljava/nio/ByteBuffer;I[DII)V

    return-void
.end method

.method public static synthetic loadDoubleArray-9zorpBc$default(Ljava/nio/ByteBuffer;J[DIIILjava/lang/Object;)V
    .locals 6

    .line 139
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 289
    const/4 p4, 0x0

    move v4, p4

    goto :goto_0

    .line 139
    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 289
    array-length p4, p3

    sub-int p5, p4, v4

    move v5, p5

    goto :goto_1

    .line 139
    :cond_1
    move v5, p5

    :goto_1
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadDoubleArray-9zorpBc(Ljava/nio/ByteBuffer;J[DII)V

    return-void
.end method

.method public static final loadFloatArray-9zorpBc(Ljava/nio/ByteBuffer;I[FII)V
    .locals 5
    .param p0, "$this$loadFloatArray_u2d9zorpBc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "destination"    # [F
    .param p3, "destinationOffset"    # I
    .param p4, "count"    # I

    const-string v0, "$this$loadFloatArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    move-object v0, p0

    .local v0, "$this$withOffset$iv":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 302
    .local v1, "$i$f$withOffset":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    .line 303
    .local v3, "$this$withOffset_u24lambda_u240$iv":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 302
    .local v4, "$i$a$-apply-PrimitiveArraysJvmKt$withOffset$1$iv":I
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 103
    .end local v0    # "$this$withOffset$iv":Ljava/nio/ByteBuffer;
    .end local v1    # "$i$f$withOffset":I
    .end local v3    # "$this$withOffset_u24lambda_u240$iv":Ljava/nio/ByteBuffer;
    .end local v4    # "$i$a$-apply-PrimitiveArraysJvmKt$withOffset$1$iv":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 104
    return-void
.end method

.method public static final loadFloatArray-9zorpBc(Ljava/nio/ByteBuffer;J[FII)V
    .locals 6
    .param p0, "$this$loadFloatArray_u2d9zorpBc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "destination"    # [F
    .param p4, "destinationOffset"    # I
    .param p5, "count"    # I

    const-string v0, "$this$loadFloatArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    const-string v0, "offset"

    .local v0, "name$iv":Ljava/lang/String;
    move-wide v1, p1

    .local v1, "$this$toIntOrFail$iv":J
    const/4 v3, 0x0

    .line 304
    .local v3, "$i$f$toIntOrFail":I
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 305
    long-to-int v0, v1

    .line 117
    .end local v0    # "name$iv":Ljava/lang/String;
    .end local v1    # "$this$toIntOrFail$iv":J
    .end local v3    # "$i$f$toIntOrFail":I
    invoke-static {p0, v0, p3, p4, p5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadFloatArray-9zorpBc(Ljava/nio/ByteBuffer;I[FII)V

    .line 118
    return-void

    .line 304
    .restart local v0    # "name$iv":Ljava/lang/String;
    .restart local v1    # "$this$toIntOrFail$iv":J
    .restart local v3    # "$i$f$toIntOrFail":I
    :cond_0
    invoke-static {v1, v2, v0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4
.end method

.method public static synthetic loadFloatArray-9zorpBc$default(Ljava/nio/ByteBuffer;I[FIIILjava/lang/Object;)V
    .locals 0

    .line 97
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 257
    const/4 p3, 0x0

    .line 97
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 261
    array-length p4, p2

    sub-int/2addr p4, p3

    .line 97
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadFloatArray-9zorpBc(Ljava/nio/ByteBuffer;I[FII)V

    return-void
.end method

.method public static synthetic loadFloatArray-9zorpBc$default(Ljava/nio/ByteBuffer;J[FIIILjava/lang/Object;)V
    .locals 6

    .line 111
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 271
    const/4 p4, 0x0

    move v4, p4

    goto :goto_0

    .line 111
    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 275
    array-length p4, p3

    sub-int p5, p4, v4

    move v5, p5

    goto :goto_1

    .line 111
    :cond_1
    move v5, p5

    :goto_1
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadFloatArray-9zorpBc(Ljava/nio/ByteBuffer;J[FII)V

    return-void
.end method

.method public static final loadIntArray-9zorpBc(Ljava/nio/ByteBuffer;I[III)V
    .locals 5
    .param p0, "$this$loadIntArray_u2d9zorpBc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "destination"    # [I
    .param p3, "destinationOffset"    # I
    .param p4, "count"    # I

    const-string v0, "$this$loadIntArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    move-object v0, p0

    .local v0, "$this$withOffset$iv":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 294
    .local v1, "$i$f$withOffset":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    .line 295
    .local v3, "$this$withOffset_u24lambda_u240$iv":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 294
    .local v4, "$i$a$-apply-PrimitiveArraysJvmKt$withOffset$1$iv":I
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 47
    .end local v0    # "$this$withOffset$iv":Ljava/nio/ByteBuffer;
    .end local v1    # "$i$f$withOffset":I
    .end local v3    # "$this$withOffset_u24lambda_u240$iv":Ljava/nio/ByteBuffer;
    .end local v4    # "$i$a$-apply-PrimitiveArraysJvmKt$withOffset$1$iv":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/IntBuffer;->get([III)Ljava/nio/IntBuffer;

    .line 48
    return-void
.end method

.method public static final loadIntArray-9zorpBc(Ljava/nio/ByteBuffer;J[III)V
    .locals 6
    .param p0, "$this$loadIntArray_u2d9zorpBc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "destination"    # [I
    .param p4, "destinationOffset"    # I
    .param p5, "count"    # I

    const-string v0, "$this$loadIntArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    const-string v0, "offset"

    .local v0, "name$iv":Ljava/lang/String;
    move-wide v1, p1

    .local v1, "$this$toIntOrFail$iv":J
    const/4 v3, 0x0

    .line 296
    .local v3, "$i$f$toIntOrFail":I
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 297
    long-to-int v0, v1

    .line 61
    .end local v0    # "name$iv":Ljava/lang/String;
    .end local v1    # "$this$toIntOrFail$iv":J
    .end local v3    # "$i$f$toIntOrFail":I
    invoke-static {p0, v0, p3, p4, p5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadIntArray-9zorpBc(Ljava/nio/ByteBuffer;I[III)V

    .line 62
    return-void

    .line 296
    .restart local v0    # "name$iv":Ljava/lang/String;
    .restart local v1    # "$this$toIntOrFail$iv":J
    .restart local v3    # "$i$f$toIntOrFail":I
    :cond_0
    invoke-static {v1, v2, v0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4
.end method

.method public static synthetic loadIntArray-9zorpBc$default(Ljava/nio/ByteBuffer;I[IIIILjava/lang/Object;)V
    .locals 0

    .line 41
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 131
    const/4 p3, 0x0

    .line 41
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 132
    nop

    .line 135
    array-length p4, p2

    .line 132
    sub-int/2addr p4, p3

    .line 41
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadIntArray-9zorpBc(Ljava/nio/ByteBuffer;I[III)V

    return-void
.end method

.method public static synthetic loadIntArray-9zorpBc$default(Ljava/nio/ByteBuffer;J[IIIILjava/lang/Object;)V
    .locals 6

    .line 55
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 145
    const/4 p4, 0x0

    move v4, p4

    goto :goto_0

    .line 55
    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 145
    array-length p4, p3

    sub-int p5, p4, v4

    move v5, p5

    goto :goto_1

    .line 55
    :cond_1
    move v5, p5

    :goto_1
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadIntArray-9zorpBc(Ljava/nio/ByteBuffer;J[III)V

    return-void
.end method

.method public static final loadLongArray-9zorpBc(Ljava/nio/ByteBuffer;I[JII)V
    .locals 5
    .param p0, "$this$loadLongArray_u2d9zorpBc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "destination"    # [J
    .param p3, "destinationOffset"    # I
    .param p4, "count"    # I

    const-string v0, "$this$loadLongArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    move-object v0, p0

    .local v0, "$this$withOffset$iv":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 298
    .local v1, "$i$f$withOffset":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    .line 299
    .local v3, "$this$withOffset_u24lambda_u240$iv":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 298
    .local v4, "$i$a$-apply-PrimitiveArraysJvmKt$withOffset$1$iv":I
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 75
    .end local v0    # "$this$withOffset$iv":Ljava/nio/ByteBuffer;
    .end local v1    # "$i$f$withOffset":I
    .end local v3    # "$this$withOffset_u24lambda_u240$iv":Ljava/nio/ByteBuffer;
    .end local v4    # "$i$a$-apply-PrimitiveArraysJvmKt$withOffset$1$iv":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/LongBuffer;->get([JII)Ljava/nio/LongBuffer;

    .line 76
    return-void
.end method

.method public static final loadLongArray-9zorpBc(Ljava/nio/ByteBuffer;J[JII)V
    .locals 6
    .param p0, "$this$loadLongArray_u2d9zorpBc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "destination"    # [J
    .param p4, "destinationOffset"    # I
    .param p5, "count"    # I

    const-string v0, "$this$loadLongArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    const-string v0, "offset"

    .local v0, "name$iv":Ljava/lang/String;
    move-wide v1, p1

    .local v1, "$this$toIntOrFail$iv":J
    const/4 v3, 0x0

    .line 300
    .local v3, "$i$f$toIntOrFail":I
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 301
    long-to-int v0, v1

    .line 89
    .end local v0    # "name$iv":Ljava/lang/String;
    .end local v1    # "$this$toIntOrFail$iv":J
    .end local v3    # "$i$f$toIntOrFail":I
    invoke-static {p0, v0, p3, p4, p5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadLongArray-9zorpBc(Ljava/nio/ByteBuffer;I[JII)V

    .line 90
    return-void

    .line 300
    .restart local v0    # "name$iv":Ljava/lang/String;
    .restart local v1    # "$this$toIntOrFail$iv":J
    .restart local v3    # "$i$f$toIntOrFail":I
    :cond_0
    invoke-static {v1, v2, v0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4
.end method

.method public static synthetic loadLongArray-9zorpBc$default(Ljava/nio/ByteBuffer;I[JIIILjava/lang/Object;)V
    .locals 0

    .line 69
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 192
    const/4 p3, 0x0

    .line 69
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 193
    array-length p4, p2

    sub-int/2addr p4, p3

    .line 69
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadLongArray-9zorpBc(Ljava/nio/ByteBuffer;I[JII)V

    return-void
.end method

.method public static synthetic loadLongArray-9zorpBc$default(Ljava/nio/ByteBuffer;J[JIIILjava/lang/Object;)V
    .locals 6

    .line 83
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 206
    const/4 p4, 0x0

    move v4, p4

    goto :goto_0

    .line 83
    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 207
    array-length p4, p3

    sub-int p5, p4, v4

    move v5, p5

    goto :goto_1

    .line 83
    :cond_1
    move v5, p5

    :goto_1
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadLongArray-9zorpBc(Ljava/nio/ByteBuffer;J[JII)V

    return-void
.end method

.method public static final loadShortArray-9zorpBc(Ljava/nio/ByteBuffer;I[SII)V
    .locals 5
    .param p0, "$this$loadShortArray_u2d9zorpBc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "destination"    # [S
    .param p3, "destinationOffset"    # I
    .param p4, "count"    # I

    const-string v0, "$this$loadShortArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    move-object v0, p0

    .local v0, "$this$withOffset$iv":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 290
    .local v1, "$i$f$withOffset":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    .line 291
    .local v3, "$this$withOffset_u24lambda_u240$iv":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 290
    .local v4, "$i$a$-apply-PrimitiveArraysJvmKt$withOffset$1$iv":I
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 19
    .end local v0    # "$this$withOffset$iv":Ljava/nio/ByteBuffer;
    .end local v1    # "$i$f$withOffset":I
    .end local v3    # "$this$withOffset_u24lambda_u240$iv":Ljava/nio/ByteBuffer;
    .end local v4    # "$i$a$-apply-PrimitiveArraysJvmKt$withOffset$1$iv":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 20
    return-void
.end method

.method public static final loadShortArray-9zorpBc(Ljava/nio/ByteBuffer;J[SII)V
    .locals 6
    .param p0, "$this$loadShortArray_u2d9zorpBc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "destination"    # [S
    .param p4, "destinationOffset"    # I
    .param p5, "count"    # I

    const-string v0, "$this$loadShortArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    const-string v0, "offset"

    .local v0, "name$iv":Ljava/lang/String;
    move-wide v1, p1

    .local v1, "$this$toIntOrFail$iv":J
    const/4 v3, 0x0

    .line 292
    .local v3, "$i$f$toIntOrFail":I
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 293
    long-to-int v0, v1

    .line 33
    .end local v0    # "name$iv":Ljava/lang/String;
    .end local v1    # "$this$toIntOrFail$iv":J
    .end local v3    # "$i$f$toIntOrFail":I
    invoke-static {p0, v0, p3, p4, p5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadShortArray-9zorpBc(Ljava/nio/ByteBuffer;I[SII)V

    .line 34
    return-void

    .line 292
    .restart local v0    # "name$iv":Ljava/lang/String;
    .restart local v1    # "$this$toIntOrFail$iv":J
    .restart local v3    # "$i$f$toIntOrFail":I
    :cond_0
    invoke-static {v1, v2, v0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4
.end method

.method public static synthetic loadShortArray-9zorpBc$default(Ljava/nio/ByteBuffer;I[SIIILjava/lang/Object;)V
    .locals 0

    .line 13
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 75
    const/4 p3, 0x0

    .line 13
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 75
    array-length p4, p2

    sub-int/2addr p4, p3

    .line 13
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadShortArray-9zorpBc(Ljava/nio/ByteBuffer;I[SII)V

    return-void
.end method

.method public static synthetic loadShortArray-9zorpBc$default(Ljava/nio/ByteBuffer;J[SIIILjava/lang/Object;)V
    .locals 6

    .line 27
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 86
    const/4 p4, 0x0

    move v4, p4

    goto :goto_0

    .line 27
    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 87
    nop

    .line 89
    array-length p4, p3

    .line 87
    sub-int p5, p4, v4

    move v5, p5

    goto :goto_1

    .line 27
    :cond_1
    move v5, p5

    :goto_1
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadShortArray-9zorpBc(Ljava/nio/ByteBuffer;J[SII)V

    return-void
.end method

.method public static final storeDoubleArray-9zorpBc(Ljava/nio/ByteBuffer;I[DII)V
    .locals 5
    .param p0, "$this$storeDoubleArray_u2d9zorpBc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "source"    # [D
    .param p3, "sourceOffset"    # I
    .param p4, "count"    # I

    const-string v0, "$this$storeDoubleArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    move-object v0, p0

    .local v0, "$this$withOffset$iv":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 326
    .local v1, "$i$f$withOffset":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    .line 327
    .local v3, "$this$withOffset_u24lambda_u240$iv":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 326
    .local v4, "$i$a$-apply-PrimitiveArraysJvmKt$withOffset$1$iv":I
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 271
    .end local v0    # "$this$withOffset$iv":Ljava/nio/ByteBuffer;
    .end local v1    # "$i$f$withOffset":I
    .end local v3    # "$this$withOffset_u24lambda_u240$iv":Ljava/nio/ByteBuffer;
    .end local v4    # "$i$a$-apply-PrimitiveArraysJvmKt$withOffset$1$iv":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/DoubleBuffer;->put([DII)Ljava/nio/DoubleBuffer;

    .line 272
    return-void
.end method

.method public static final storeDoubleArray-9zorpBc(Ljava/nio/ByteBuffer;J[DII)V
    .locals 6
    .param p0, "$this$storeDoubleArray_u2d9zorpBc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "source"    # [D
    .param p4, "sourceOffset"    # I
    .param p5, "count"    # I

    const-string v0, "$this$storeDoubleArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    const-string v0, "offset"

    .local v0, "name$iv":Ljava/lang/String;
    move-wide v1, p1

    .local v1, "$this$toIntOrFail$iv":J
    const/4 v3, 0x0

    .line 328
    .local v3, "$i$f$toIntOrFail":I
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 329
    long-to-int v0, v1

    .line 285
    .end local v0    # "name$iv":Ljava/lang/String;
    .end local v1    # "$this$toIntOrFail$iv":J
    .end local v3    # "$i$f$toIntOrFail":I
    invoke-static {p0, v0, p3, p4, p5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeDoubleArray-9zorpBc(Ljava/nio/ByteBuffer;I[DII)V

    .line 286
    return-void

    .line 328
    .restart local v0    # "name$iv":Ljava/lang/String;
    .restart local v1    # "$this$toIntOrFail$iv":J
    .restart local v3    # "$i$f$toIntOrFail":I
    :cond_0
    invoke-static {v1, v2, v0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4
.end method

.method public static synthetic storeDoubleArray-9zorpBc$default(Ljava/nio/ByteBuffer;I[DIIILjava/lang/Object;)V
    .locals 0

    .line 265
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 289
    const/4 p3, 0x0

    .line 265
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 289
    array-length p4, p2

    sub-int/2addr p4, p3

    .line 265
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeDoubleArray-9zorpBc(Ljava/nio/ByteBuffer;I[DII)V

    return-void
.end method

.method public static synthetic storeDoubleArray-9zorpBc$default(Ljava/nio/ByteBuffer;J[DIIILjava/lang/Object;)V
    .locals 6

    .line 279
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 289
    const/4 p4, 0x0

    move v4, p4

    goto :goto_0

    .line 279
    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 289
    array-length p4, p3

    sub-int p5, p4, v4

    move v5, p5

    goto :goto_1

    .line 279
    :cond_1
    move v5, p5

    :goto_1
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeDoubleArray-9zorpBc(Ljava/nio/ByteBuffer;J[DII)V

    return-void
.end method

.method public static final storeFloatArray-9zorpBc(Ljava/nio/ByteBuffer;I[FII)V
    .locals 5
    .param p0, "$this$storeFloatArray_u2d9zorpBc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "source"    # [F
    .param p3, "sourceOffset"    # I
    .param p4, "count"    # I

    const-string v0, "$this$storeFloatArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    move-object v0, p0

    .local v0, "$this$withOffset$iv":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 322
    .local v1, "$i$f$withOffset":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    .line 323
    .local v3, "$this$withOffset_u24lambda_u240$iv":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 322
    .local v4, "$i$a$-apply-PrimitiveArraysJvmKt$withOffset$1$iv":I
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 243
    .end local v0    # "$this$withOffset$iv":Ljava/nio/ByteBuffer;
    .end local v1    # "$i$f$withOffset":I
    .end local v3    # "$this$withOffset_u24lambda_u240$iv":Ljava/nio/ByteBuffer;
    .end local v4    # "$i$a$-apply-PrimitiveArraysJvmKt$withOffset$1$iv":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 244
    return-void
.end method

.method public static final storeFloatArray-9zorpBc(Ljava/nio/ByteBuffer;J[FII)V
    .locals 6
    .param p0, "$this$storeFloatArray_u2d9zorpBc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "source"    # [F
    .param p4, "sourceOffset"    # I
    .param p5, "count"    # I

    const-string v0, "$this$storeFloatArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    const-string v0, "offset"

    .local v0, "name$iv":Ljava/lang/String;
    move-wide v1, p1

    .local v1, "$this$toIntOrFail$iv":J
    const/4 v3, 0x0

    .line 324
    .local v3, "$i$f$toIntOrFail":I
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 325
    long-to-int v0, v1

    .line 257
    .end local v0    # "name$iv":Ljava/lang/String;
    .end local v1    # "$this$toIntOrFail$iv":J
    .end local v3    # "$i$f$toIntOrFail":I
    invoke-static {p0, v0, p3, p4, p5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeFloatArray-9zorpBc(Ljava/nio/ByteBuffer;I[FII)V

    .line 258
    return-void

    .line 324
    .restart local v0    # "name$iv":Ljava/lang/String;
    .restart local v1    # "$this$toIntOrFail$iv":J
    .restart local v3    # "$i$f$toIntOrFail":I
    :cond_0
    invoke-static {v1, v2, v0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4
.end method

.method public static synthetic storeFloatArray-9zorpBc$default(Ljava/nio/ByteBuffer;I[FIIILjava/lang/Object;)V
    .locals 0

    .line 237
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 289
    const/4 p3, 0x0

    .line 237
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 289
    array-length p4, p2

    sub-int/2addr p4, p3

    .line 237
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeFloatArray-9zorpBc(Ljava/nio/ByteBuffer;I[FII)V

    return-void
.end method

.method public static synthetic storeFloatArray-9zorpBc$default(Ljava/nio/ByteBuffer;J[FIIILjava/lang/Object;)V
    .locals 6

    .line 251
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 289
    const/4 p4, 0x0

    move v4, p4

    goto :goto_0

    .line 251
    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 289
    array-length p4, p3

    sub-int p5, p4, v4

    move v5, p5

    goto :goto_1

    .line 251
    :cond_1
    move v5, p5

    :goto_1
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeFloatArray-9zorpBc(Ljava/nio/ByteBuffer;J[FII)V

    return-void
.end method

.method public static final storeIntArray-9zorpBc(Ljava/nio/ByteBuffer;I[III)V
    .locals 5
    .param p0, "$this$storeIntArray_u2d9zorpBc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "source"    # [I
    .param p3, "sourceOffset"    # I
    .param p4, "count"    # I

    const-string v0, "$this$storeIntArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    move-object v0, p0

    .local v0, "$this$withOffset$iv":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 314
    .local v1, "$i$f$withOffset":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    .line 315
    .local v3, "$this$withOffset_u24lambda_u240$iv":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 314
    .local v4, "$i$a$-apply-PrimitiveArraysJvmKt$withOffset$1$iv":I
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 187
    .end local v0    # "$this$withOffset$iv":Ljava/nio/ByteBuffer;
    .end local v1    # "$i$f$withOffset":I
    .end local v3    # "$this$withOffset_u24lambda_u240$iv":Ljava/nio/ByteBuffer;
    .end local v4    # "$i$a$-apply-PrimitiveArraysJvmKt$withOffset$1$iv":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 188
    return-void
.end method

.method public static final storeIntArray-9zorpBc(Ljava/nio/ByteBuffer;J[III)V
    .locals 6
    .param p0, "$this$storeIntArray_u2d9zorpBc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "source"    # [I
    .param p4, "sourceOffset"    # I
    .param p5, "count"    # I

    const-string v0, "$this$storeIntArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    const-string v0, "offset"

    .local v0, "name$iv":Ljava/lang/String;
    move-wide v1, p1

    .local v1, "$this$toIntOrFail$iv":J
    const/4 v3, 0x0

    .line 316
    .local v3, "$i$f$toIntOrFail":I
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 317
    long-to-int v0, v1

    .line 201
    .end local v0    # "name$iv":Ljava/lang/String;
    .end local v1    # "$this$toIntOrFail$iv":J
    .end local v3    # "$i$f$toIntOrFail":I
    invoke-static {p0, v0, p3, p4, p5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeIntArray-9zorpBc(Ljava/nio/ByteBuffer;I[III)V

    .line 202
    return-void

    .line 316
    .restart local v0    # "name$iv":Ljava/lang/String;
    .restart local v1    # "$this$toIntOrFail$iv":J
    .restart local v3    # "$i$f$toIntOrFail":I
    :cond_0
    invoke-static {v1, v2, v0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4
.end method

.method public static synthetic storeIntArray-9zorpBc$default(Ljava/nio/ByteBuffer;I[IIIILjava/lang/Object;)V
    .locals 0

    .line 181
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 289
    const/4 p3, 0x0

    .line 181
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 289
    array-length p4, p2

    sub-int/2addr p4, p3

    .line 181
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeIntArray-9zorpBc(Ljava/nio/ByteBuffer;I[III)V

    return-void
.end method

.method public static synthetic storeIntArray-9zorpBc$default(Ljava/nio/ByteBuffer;J[IIIILjava/lang/Object;)V
    .locals 6

    .line 195
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 289
    const/4 p4, 0x0

    move v4, p4

    goto :goto_0

    .line 195
    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 289
    array-length p4, p3

    sub-int p5, p4, v4

    move v5, p5

    goto :goto_1

    .line 195
    :cond_1
    move v5, p5

    :goto_1
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeIntArray-9zorpBc(Ljava/nio/ByteBuffer;J[III)V

    return-void
.end method

.method public static final storeLongArray-9zorpBc(Ljava/nio/ByteBuffer;I[JII)V
    .locals 5
    .param p0, "$this$storeLongArray_u2d9zorpBc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "source"    # [J
    .param p3, "sourceOffset"    # I
    .param p4, "count"    # I

    const-string v0, "$this$storeLongArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    move-object v0, p0

    .local v0, "$this$withOffset$iv":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 318
    .local v1, "$i$f$withOffset":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    .line 319
    .local v3, "$this$withOffset_u24lambda_u240$iv":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 318
    .local v4, "$i$a$-apply-PrimitiveArraysJvmKt$withOffset$1$iv":I
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 215
    .end local v0    # "$this$withOffset$iv":Ljava/nio/ByteBuffer;
    .end local v1    # "$i$f$withOffset":I
    .end local v3    # "$this$withOffset_u24lambda_u240$iv":Ljava/nio/ByteBuffer;
    .end local v4    # "$i$a$-apply-PrimitiveArraysJvmKt$withOffset$1$iv":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/LongBuffer;->put([JII)Ljava/nio/LongBuffer;

    .line 216
    return-void
.end method

.method public static final storeLongArray-9zorpBc(Ljava/nio/ByteBuffer;J[JII)V
    .locals 6
    .param p0, "$this$storeLongArray_u2d9zorpBc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "source"    # [J
    .param p4, "sourceOffset"    # I
    .param p5, "count"    # I

    const-string v0, "$this$storeLongArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    const-string v0, "offset"

    .local v0, "name$iv":Ljava/lang/String;
    move-wide v1, p1

    .local v1, "$this$toIntOrFail$iv":J
    const/4 v3, 0x0

    .line 320
    .local v3, "$i$f$toIntOrFail":I
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 321
    long-to-int v0, v1

    .line 229
    .end local v0    # "name$iv":Ljava/lang/String;
    .end local v1    # "$this$toIntOrFail$iv":J
    .end local v3    # "$i$f$toIntOrFail":I
    invoke-static {p0, v0, p3, p4, p5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeLongArray-9zorpBc(Ljava/nio/ByteBuffer;I[JII)V

    .line 230
    return-void

    .line 320
    .restart local v0    # "name$iv":Ljava/lang/String;
    .restart local v1    # "$this$toIntOrFail$iv":J
    .restart local v3    # "$i$f$toIntOrFail":I
    :cond_0
    invoke-static {v1, v2, v0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4
.end method

.method public static synthetic storeLongArray-9zorpBc$default(Ljava/nio/ByteBuffer;I[JIIILjava/lang/Object;)V
    .locals 0

    .line 209
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 289
    const/4 p3, 0x0

    .line 209
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 289
    array-length p4, p2

    sub-int/2addr p4, p3

    .line 209
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeLongArray-9zorpBc(Ljava/nio/ByteBuffer;I[JII)V

    return-void
.end method

.method public static synthetic storeLongArray-9zorpBc$default(Ljava/nio/ByteBuffer;J[JIIILjava/lang/Object;)V
    .locals 6

    .line 223
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 289
    const/4 p4, 0x0

    move v4, p4

    goto :goto_0

    .line 223
    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 289
    array-length p4, p3

    sub-int p5, p4, v4

    move v5, p5

    goto :goto_1

    .line 223
    :cond_1
    move v5, p5

    :goto_1
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeLongArray-9zorpBc(Ljava/nio/ByteBuffer;J[JII)V

    return-void
.end method

.method public static final storeShortArray-9zorpBc(Ljava/nio/ByteBuffer;I[SII)V
    .locals 5
    .param p0, "$this$storeShortArray_u2d9zorpBc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "source"    # [S
    .param p3, "sourceOffset"    # I
    .param p4, "count"    # I

    const-string v0, "$this$storeShortArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    move-object v0, p0

    .local v0, "$this$withOffset$iv":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 310
    .local v1, "$i$f$withOffset":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    .line 311
    .local v3, "$this$withOffset_u24lambda_u240$iv":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 310
    .local v4, "$i$a$-apply-PrimitiveArraysJvmKt$withOffset$1$iv":I
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 159
    .end local v0    # "$this$withOffset$iv":Ljava/nio/ByteBuffer;
    .end local v1    # "$i$f$withOffset":I
    .end local v3    # "$this$withOffset_u24lambda_u240$iv":Ljava/nio/ByteBuffer;
    .end local v4    # "$i$a$-apply-PrimitiveArraysJvmKt$withOffset$1$iv":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    .line 160
    return-void
.end method

.method public static final storeShortArray-9zorpBc(Ljava/nio/ByteBuffer;J[SII)V
    .locals 6
    .param p0, "$this$storeShortArray_u2d9zorpBc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "source"    # [S
    .param p4, "sourceOffset"    # I
    .param p5, "count"    # I

    const-string v0, "$this$storeShortArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    const-string v0, "offset"

    .local v0, "name$iv":Ljava/lang/String;
    move-wide v1, p1

    .local v1, "$this$toIntOrFail$iv":J
    const/4 v3, 0x0

    .line 312
    .local v3, "$i$f$toIntOrFail":I
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 313
    long-to-int v0, v1

    .line 173
    .end local v0    # "name$iv":Ljava/lang/String;
    .end local v1    # "$this$toIntOrFail$iv":J
    .end local v3    # "$i$f$toIntOrFail":I
    invoke-static {p0, v0, p3, p4, p5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeShortArray-9zorpBc(Ljava/nio/ByteBuffer;I[SII)V

    .line 174
    return-void

    .line 312
    .restart local v0    # "name$iv":Ljava/lang/String;
    .restart local v1    # "$this$toIntOrFail$iv":J
    .restart local v3    # "$i$f$toIntOrFail":I
    :cond_0
    invoke-static {v1, v2, v0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4
.end method

.method public static synthetic storeShortArray-9zorpBc$default(Ljava/nio/ByteBuffer;I[SIIILjava/lang/Object;)V
    .locals 0

    .line 153
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 289
    const/4 p3, 0x0

    .line 153
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 289
    array-length p4, p2

    sub-int/2addr p4, p3

    .line 153
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeShortArray-9zorpBc(Ljava/nio/ByteBuffer;I[SII)V

    return-void
.end method

.method public static synthetic storeShortArray-9zorpBc$default(Ljava/nio/ByteBuffer;J[SIIILjava/lang/Object;)V
    .locals 6

    .line 167
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 289
    const/4 p4, 0x0

    move v4, p4

    goto :goto_0

    .line 167
    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 289
    array-length p4, p3

    sub-int p5, p4, v4

    move v5, p5

    goto :goto_1

    .line 167
    :cond_1
    move v5, p5

    :goto_1
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeShortArray-9zorpBc(Ljava/nio/ByteBuffer;J[SII)V

    return-void
.end method

.method private static final withOffset(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 4
    .param p0, "$this$withOffset"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    const/4 v0, 0x0

    .line 288
    .local v0, "$i$f$withOffset":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    .line 330
    .local v2, "$this$withOffset_u24lambda_u240":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 288
    .local v3, "$i$a$-apply-PrimitiveArraysJvmKt$withOffset$1":I
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .end local v2    # "$this$withOffset_u24lambda_u240":Ljava/nio/ByteBuffer;
    .end local v3    # "$i$a$-apply-PrimitiveArraysJvmKt$withOffset$1":I
    return-object v1
.end method
