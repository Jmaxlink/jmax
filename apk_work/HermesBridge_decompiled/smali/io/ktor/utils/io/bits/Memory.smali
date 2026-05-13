.class public final Lio/ktor/utils/io/bits/Memory;
.super Ljava/lang/Object;
.source "MemoryJvm.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/bits/Memory$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMemoryJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 2 Numbers.kt\nio/ktor/utils/io/core/internal/NumbersKt\n*L\n1#1,230:1\n6#2,2:231\n6#2,2:233\n6#2,2:235\n6#2,2:237\n6#2,2:239\n6#2,2:241\n*S KotlinDebug\n*F\n+ 1 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n*L\n31#1:231,2\n44#1:233,2\n51#1:235,2\n95#1:237,2\n96#1:239,2\n97#1:241,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0005\n\u0002\u0008\u000e\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0087@\u0018\u0000 32\u00020\u0001:\u00013B\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J3\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\r\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J3\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\t\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0018J\u001a\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\rH\u00d6\u0001\u00a2\u0006\u0004\u0008\u001f\u0010\u000fJ\u0018\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\rH\u0086\u0008\u00a2\u0006\u0004\u0008#\u0010$J\u0018\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\tH\u0086\u0008\u00a2\u0006\u0004\u0008#\u0010%J&\u0010&\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\r\u00f8\u0001\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\'\u0010(J&\u0010&\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\t\u00f8\u0001\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\'\u0010)J \u0010*\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\r2\u0006\u0010+\u001a\u00020!H\u0086\u0008\u00a2\u0006\u0004\u0008,\u0010-J \u0010*\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\t2\u0006\u0010+\u001a\u00020!H\u0086\u0008\u00a2\u0006\u0004\u0008,\u0010.J\u0010\u0010/\u001a\u000200H\u00d6\u0001\u00a2\u0006\u0004\u00081\u00102R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0012\u0010\u0008\u001a\u00020\t8\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0012\u0010\u000c\u001a\u00020\r8\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u0088\u0001\u0002\u00f8\u0001\u0000\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u00064"
    }
    d2 = {
        "Lio/ktor/utils/io/bits/Memory;",
        "",
        "buffer",
        "Ljava/nio/ByteBuffer;",
        "constructor-impl",
        "(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;",
        "getBuffer",
        "()Ljava/nio/ByteBuffer;",
        "size",
        "",
        "getSize-impl",
        "(Ljava/nio/ByteBuffer;)J",
        "size32",
        "",
        "getSize32-impl",
        "(Ljava/nio/ByteBuffer;)I",
        "copyTo",
        "",
        "destination",
        "offset",
        "length",
        "destinationOffset",
        "copyTo-JT6ljtQ",
        "(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V",
        "(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JJJ)V",
        "equals",
        "",
        "other",
        "equals-impl",
        "(Ljava/nio/ByteBuffer;Ljava/lang/Object;)Z",
        "hashCode",
        "hashCode-impl",
        "loadAt",
        "",
        "index",
        "loadAt-impl",
        "(Ljava/nio/ByteBuffer;I)B",
        "(Ljava/nio/ByteBuffer;J)B",
        "slice",
        "slice-87lwejk",
        "(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;",
        "(Ljava/nio/ByteBuffer;JJ)Ljava/nio/ByteBuffer;",
        "storeAt",
        "value",
        "storeAt-impl",
        "(Ljava/nio/ByteBuffer;IB)V",
        "(Ljava/nio/ByteBuffer;JB)V",
        "toString",
        "",
        "toString-impl",
        "(Ljava/nio/ByteBuffer;)Ljava/lang/String;",
        "Companion",
        "ktor-io"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field public static final Companion:Lio/ktor/utils/io/bits/Memory$Companion;

.field private static final Empty:Ljava/nio/ByteBuffer;


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/utils/io/bits/Memory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/utils/io/bits/Memory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/utils/io/bits/Memory;->Companion:Lio/ktor/utils/io/bits/Memory$Companion;

    .line 102
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "allocate(0).order(ByteOrder.BIG_ENDIAN)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/bits/Memory;->Empty:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private synthetic constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/utils/io/bits/Memory;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static final synthetic access$getEmpty$cp()Ljava/nio/ByteBuffer;
    .locals 1

    .line 8
    sget-object v0, Lio/ktor/utils/io/bits/Memory;->Empty:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public static final synthetic box-impl(Ljava/nio/ByteBuffer;)Lio/ktor/utils/io/bits/Memory;
    .locals 1

    new-instance v0, Lio/ktor/utils/io/bits/Memory;

    invoke-direct {v0, p0}, Lio/ktor/utils/io/bits/Memory;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V
    .locals 4
    .param p0, "arg0"    # Ljava/nio/ByteBuffer;
    .param p1, "destination"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "destinationOffset"    # I

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int/2addr v1, p2

    .line 66
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v3, p4

    .line 68
    nop

    .line 63
    invoke-static {v0, v1, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$copyTo_JT6ljtQ_u24lambda_u240":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 77
    .local v2, "$i$a$-apply-Memory$copyTo$srcCopy$1":I
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 78
    add-int v3, p2, p3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 79
    nop

    .line 76
    .end local v1    # "$this$copyTo_JT6ljtQ_u24lambda_u240":Ljava/nio/ByteBuffer;
    .end local v2    # "$i$a$-apply-Memory$copyTo$srcCopy$1":I
    nop

    .line 80
    .local v0, "srcCopy":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object v2, v1

    .local v2, "$this$copyTo_JT6ljtQ_u24lambda_u241":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 81
    .local v3, "$i$a$-apply-Memory$copyTo$dstCopy$1":I
    invoke-virtual {v2, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 82
    nop

    .line 80
    .end local v2    # "$this$copyTo_JT6ljtQ_u24lambda_u241":Ljava/nio/ByteBuffer;
    .end local v3    # "$i$a$-apply-Memory$copyTo$dstCopy$1":I
    nop

    .line 84
    .local v1, "dstCopy":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 85
    return-void
.end method

.method public static final copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JJJ)V
    .locals 8
    .param p0, "arg0"    # Ljava/nio/ByteBuffer;
    .param p1, "destination"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "destinationOffset"    # J

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    nop

    .line 94
    nop

    .line 95
    const-string v0, "offset"

    .local v0, "name$iv":Ljava/lang/String;
    move-wide v1, p2

    .local v1, "$this$toIntOrFail$iv":J
    const/4 v3, 0x0

    .line 237
    .local v3, "$i$f$toIntOrFail":I
    const-wide/32 v4, 0x7fffffff

    cmp-long v6, v1, v4

    if-gez v6, :cond_2

    .line 238
    long-to-int v0, v1

    .line 96
    .end local v0    # "name$iv":Ljava/lang/String;
    .end local v1    # "$this$toIntOrFail$iv":J
    .end local v3    # "$i$f$toIntOrFail":I
    const-string v1, "length"

    .local v1, "name$iv":Ljava/lang/String;
    move-wide v2, p4

    .local v2, "$this$toIntOrFail$iv":J
    const/4 v6, 0x0

    .line 239
    .local v6, "$i$f$toIntOrFail":I
    cmp-long v7, v2, v4

    if-gez v7, :cond_1

    .line 240
    long-to-int v1, v2

    .line 97
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$this$toIntOrFail$iv":J
    .end local v6    # "$i$f$toIntOrFail":I
    const-string v2, "destinationOffset"

    .local v2, "name$iv":Ljava/lang/String;
    move-wide v6, p6

    .local v6, "$this$toIntOrFail$iv":J
    const/4 v3, 0x0

    .line 241
    .restart local v3    # "$i$f$toIntOrFail":I
    cmp-long v4, v6, v4

    if-gez v4, :cond_0

    .line 242
    long-to-int v2, v6

    .line 93
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$i$f$toIntOrFail":I
    .end local v6    # "$this$toIntOrFail$iv":J
    invoke-static {p0, p1, v0, v1, v2}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    .line 99
    return-void

    .line 241
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v3    # "$i$f$toIntOrFail":I
    .restart local v6    # "$this$toIntOrFail$iv":J
    :cond_0
    invoke-static {v6, v7, v2}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 239
    .end local v3    # "$i$f$toIntOrFail":I
    .restart local v1    # "name$iv":Ljava/lang/String;
    .local v2, "$this$toIntOrFail$iv":J
    .local v6, "$i$f$toIntOrFail":I
    :cond_1
    invoke-static {v2, v3, v1}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 237
    .end local v2    # "$this$toIntOrFail$iv":J
    .end local v6    # "$i$f$toIntOrFail":I
    .restart local v0    # "name$iv":Ljava/lang/String;
    .local v1, "$this$toIntOrFail$iv":J
    .restart local v3    # "$i$f$toIntOrFail":I
    :cond_2
    invoke-static {v1, v2, v0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4
.end method

.method public static equals-impl(Ljava/nio/ByteBuffer;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lio/ktor/utils/io/bits/Memory;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/bits/Memory;

    invoke-virtual {v0}, Lio/ktor/utils/io/bits/Memory;->unbox-impl()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static final equals-impl0(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .locals 1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final getSize-impl(Ljava/nio/ByteBuffer;)J
    .locals 3
    .param p0, "arg0"    # Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 15
    .local v0, "$i$f$getSize-impl":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method

.method public static final getSize32-impl(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p0, "arg0"    # Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 21
    .local v0, "$i$f$getSize32-impl":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    return v1
.end method

.method public static hashCode-impl(Ljava/nio/ByteBuffer;)I
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v0

    return v0
.end method

.method public static final loadAt-impl(Ljava/nio/ByteBuffer;I)B
    .locals 2
    .param p0, "arg0"    # Ljava/nio/ByteBuffer;
    .param p1, "index"    # I

    const/4 v0, 0x0

    .line 26
    .local v0, "$i$f$loadAt-impl":I
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    return v1
.end method

.method public static final loadAt-impl(Ljava/nio/ByteBuffer;J)B
    .locals 7
    .param p0, "arg0"    # Ljava/nio/ByteBuffer;
    .param p1, "index"    # J

    const/4 v0, 0x0

    .line 31
    .local v0, "$i$f$loadAt-impl":I
    const-string v1, "index"

    .local v1, "name$iv":Ljava/lang/String;
    move-wide v2, p1

    .local v2, "$this$toIntOrFail$iv":J
    const/4 v4, 0x0

    .line 231
    .local v4, "$i$f$toIntOrFail":I
    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v2, v5

    if-gez v5, :cond_0

    .line 232
    long-to-int v1, v2

    .line 31
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$this$toIntOrFail$iv":J
    .end local v4    # "$i$f$toIntOrFail":I
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    return v1

    .line 231
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v2    # "$this$toIntOrFail$iv":J
    .restart local v4    # "$i$f$toIntOrFail":I
    :cond_0
    invoke-static {v2, v3, v1}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v5, Lkotlin/KotlinNothingValueException;

    invoke-direct {v5}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v5
.end method

.method public static final slice-87lwejk(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "arg0"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 48
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/bits/MemoryJvmKt;->sliceSafe(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static final slice-87lwejk(Ljava/nio/ByteBuffer;JJ)Ljava/nio/ByteBuffer;
    .locals 7
    .param p0, "arg0"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "length"    # J

    .line 51
    const-string v0, "offset"

    .local v0, "name$iv":Ljava/lang/String;
    move-wide v1, p1

    .local v1, "$this$toIntOrFail$iv":J
    const/4 v3, 0x0

    .line 235
    .local v3, "$i$f$toIntOrFail":I
    const-wide/32 v4, 0x7fffffff

    cmp-long v6, v1, v4

    if-gez v6, :cond_1

    .line 236
    long-to-int v0, v1

    .line 51
    .end local v0    # "name$iv":Ljava/lang/String;
    .end local v1    # "$this$toIntOrFail$iv":J
    .end local v3    # "$i$f$toIntOrFail":I
    const-string v1, "length"

    .local v1, "name$iv":Ljava/lang/String;
    move-wide v2, p3

    .local v2, "$this$toIntOrFail$iv":J
    const/4 v6, 0x0

    .line 235
    .local v6, "$i$f$toIntOrFail":I
    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 236
    long-to-int v1, v2

    .line 51
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$this$toIntOrFail$iv":J
    .end local v6    # "$i$f$toIntOrFail":I
    invoke-static {p0, v0, v1}, Lio/ktor/utils/io/bits/Memory;->slice-87lwejk(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 235
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v2    # "$this$toIntOrFail$iv":J
    .restart local v6    # "$i$f$toIntOrFail":I
    :cond_0
    invoke-static {v2, v3, v1}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .end local v2    # "$this$toIntOrFail$iv":J
    .end local v6    # "$i$f$toIntOrFail":I
    .restart local v0    # "name$iv":Ljava/lang/String;
    .local v1, "$this$toIntOrFail$iv":J
    .restart local v3    # "$i$f$toIntOrFail":I
    :cond_1
    invoke-static {v1, v2, v0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4
.end method

.method public static final storeAt-impl(Ljava/nio/ByteBuffer;IB)V
    .locals 1
    .param p0, "arg0"    # Ljava/nio/ByteBuffer;
    .param p1, "index"    # I
    .param p2, "value"    # B

    const/4 v0, 0x0

    .line 37
    .local v0, "$i$f$storeAt-impl":I
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 38
    return-void
.end method

.method public static final storeAt-impl(Ljava/nio/ByteBuffer;JB)V
    .locals 7
    .param p0, "arg0"    # Ljava/nio/ByteBuffer;
    .param p1, "index"    # J
    .param p3, "value"    # B

    const/4 v0, 0x0

    .line 44
    .local v0, "$i$f$storeAt-impl":I
    const-string v1, "index"

    .local v1, "name$iv":Ljava/lang/String;
    move-wide v2, p1

    .local v2, "$this$toIntOrFail$iv":J
    const/4 v4, 0x0

    .line 233
    .local v4, "$i$f$toIntOrFail":I
    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v2, v5

    if-gez v5, :cond_0

    .line 234
    long-to-int v1, v2

    .line 44
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$this$toIntOrFail$iv":J
    .end local v4    # "$i$f$toIntOrFail":I
    invoke-virtual {p0, v1, p3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 45
    return-void

    .line 233
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v2    # "$this$toIntOrFail$iv":J
    .restart local v4    # "$i$f$toIntOrFail":I
    :cond_0
    invoke-static {v2, v3, v1}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v5, Lkotlin/KotlinNothingValueException;

    invoke-direct {v5}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v5
.end method

.method public static toString-impl(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Memory(buffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/bits/Memory;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1}, Lio/ktor/utils/io/bits/Memory;->equals-impl(Ljava/nio/ByteBuffer;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 10
    iget-object v0, p0, Lio/ktor/utils/io/bits/Memory;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/bits/Memory;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lio/ktor/utils/io/bits/Memory;->hashCode-impl(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/bits/Memory;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lio/ktor/utils/io/bits/Memory;->toString-impl(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/bits/Memory;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method
