.class public final Lio/ktor/utils/io/core/StringsKt;
.super Ljava/lang/Object;
.source "Strings.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStrings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Strings.kt\nio/ktor/utils/io/core/StringsKt\n+ 2 Packet.kt\nio/ktor/utils/io/core/PacketKt\n+ 3 Input.kt\nio/ktor/utils/io/core/InputKt\n+ 4 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 5 UTF8.kt\nio/ktor/utils/io/core/internal/UTF8Kt\n+ 6 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 7 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n+ 8 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 9 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 10 Buffers.kt\nio/ktor/utils/io/core/BuffersKt\n+ 11 Output.kt\nio/ktor/utils/io/core/OutputKt\n*L\n1#1,482:1\n358#1:640\n358#1:641\n39#2:483\n852#3,8:484\n862#3,3:493\n866#3,11:574\n877#3,15:586\n823#3,6:601\n829#3,13:627\n823#3,6:658\n829#3,13:686\n852#3,8:699\n862#3,3:708\n866#3,11:791\n877#3,15:803\n852#3,8:818\n862#3,3:827\n866#3,11:908\n877#3,15:920\n69#4:492\n59#4:585\n69#4:664\n69#4:685\n69#4:707\n69#4:711\n69#4:790\n59#4:802\n69#4:826\n59#4:919\n123#5,5:496\n128#5,2:506\n130#5,61:510\n193#5:573\n9#5:607\n10#5,2:613\n12#5,7:617\n21#5:626\n9#5:665\n10#5,2:671\n12#5,7:675\n21#5:684\n123#5,5:712\n128#5,2:722\n130#5,61:726\n193#5:789\n123#5,5:830\n128#5,2:840\n130#5,61:844\n193#5:907\n372#6,5:501\n377#6,2:571\n372#6,5:608\n377#6,2:624\n372#6,5:666\n377#6,2:682\n372#6,5:717\n377#6,2:787\n372#6,5:835\n377#6,2:905\n84#7:508\n84#7:615\n84#7:673\n84#7:724\n84#7:842\n26#8:509\n26#8:616\n26#8:674\n26#8:725\n26#8:843\n1#9:642\n98#10,2:643\n507#11,13:645\n*S KotlinDebug\n*F\n+ 1 Strings.kt\nio/ktor/utils/io/core/StringsKt\n*L\n156#1:640\n158#1:641\n30#1:483\n57#1:484,8\n57#1:493,3\n57#1:574,11\n57#1:586,15\n125#1:601,6\n125#1:627,13\n365#1:658,6\n365#1:686,13\n405#1:699,8\n405#1:708,3\n405#1:791,11\n405#1:803,15\n445#1:818,8\n445#1:827,3\n445#1:908,11\n445#1:920,15\n57#1:492\n57#1:585\n366#1:664\n379#1:685\n405#1:707\n406#1:711\n420#1:790\n405#1:802\n445#1:826\n445#1:919\n59#1:496,5\n59#1:506,2\n59#1:510,61\n59#1:573\n126#1:607\n126#1:613,2\n126#1:617,7\n126#1:626\n368#1:665\n368#1:671,2\n368#1:675,7\n368#1:684\n408#1:712,5\n408#1:722,2\n408#1:726,61\n408#1:789\n446#1:830,5\n446#1:840,2\n446#1:844,61\n446#1:907\n59#1:501,5\n59#1:571,2\n126#1:608,5\n126#1:624,2\n368#1:666,5\n368#1:682,2\n408#1:717,5\n408#1:787,2\n446#1:835,5\n446#1:905,2\n59#1:508\n126#1:615\n368#1:673\n408#1:724\n446#1:842\n59#1:509\n126#1:616\n368#1:674\n408#1:725\n446#1:843\n170#1:643,2\n337#1:645,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0019\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0002\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u001a\u0010\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0003H\u0001\u001a\u0010\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0001\u001a\u0010\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\u0003H\u0002\u001a\r\u0010\t\u001a\u00020\n*\u00020\u000bH\u0082\u0008\u001a\u0014\u0010\u000c\u001a\u00020\r*\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0003\u001a\n\u0010\u000c\u001a\u00020\r*\u00020\u0010\u001a\u0012\u0010\u000c\u001a\u00020\r*\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0003\u001a\u001e\u0010\u0011\u001a\u00020\r*\u00020\u00102\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0003\u001a\"\u0010\u0014\u001a\u00020\u0015*\u00020\u00162\u000c\u0008\u0002\u0010\u0017\u001a\u00060\u0018j\u0002`\u00192\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0003\u001a\"\u0010\u0014\u001a\u00020\u0015*\u00020\u00102\u000c\u0008\u0002\u0010\u0017\u001a\u00060\u0018j\u0002`\u00192\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0003\u001a\"\u0010\u0014\u001a\u00020\u0015*\u00020\u00102\n\u0010\u001a\u001a\u00060\u001bj\u0002`\u001c2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0003H\u0007\u001a.\u0010\u0014\u001a\u00020\u0003*\u00020\u00102\n\u0010\u001d\u001a\u00060\u001ej\u0002`\u001f2\u000c\u0008\u0002\u0010\u0017\u001a\u00060\u0018j\u0002`\u00192\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0003\u001a\"\u0010 \u001a\u00020\u0015*\u00020\u00102\u000c\u0008\u0002\u0010\u0017\u001a\u00060\u0018j\u0002`\u00192\u0006\u0010\u000f\u001a\u00020\u0003H\u0007\u001a\"\u0010!\u001a\u00020\u0015*\u00020\u00102\u000c\u0008\u0002\u0010\u0017\u001a\u00060\u0018j\u0002`\u00192\u0006\u0010\"\u001a\u00020\u0003H\u0007\u001a \u0010!\u001a\u00020\u0015*\u00020\u00102\u0006\u0010#\u001a\u00020\u00032\u000c\u0008\u0002\u0010\u0017\u001a\u00060\u0018j\u0002`\u0019\u001a \u0010$\u001a\u00020\u0015*\u00020\u00102\u0006\u0010\u0008\u001a\u00020\u00032\u000c\u0008\u0002\u0010\u0017\u001a\u00060\u0018j\u0002`\u0019\u001a \u0010%\u001a\u0004\u0018\u00010\u0015*\u00020\u000e2\u0008\u0008\u0002\u0010&\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u001a \u0010%\u001a\u0004\u0018\u00010\u0015*\u00020\u00102\u0008\u0008\u0002\u0010&\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u001a\u001e\u0010\'\u001a\u00020\n*\u00020\u00102\n\u0010\u001d\u001a\u00060\u001ej\u0002`\u001f2\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u001c\u0010(\u001a\u00020\u0015*\u00020\u00102\u0006\u0010)\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u001a$\u0010*\u001a\u00020\u0003*\u00020\u00102\u0006\u0010\u001d\u001a\u00020+2\u0006\u0010)\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u001a(\u0010*\u001a\u00020\u0003*\u00020\u00102\n\u0010\u001d\u001a\u00060\u001ej\u0002`\u001f2\u0006\u0010)\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u001a,\u0010,\u001a\u00020\u0003*\u00020\u00102\u0006\u0010\u001d\u001a\u00020+2\u0006\u0010)\u001a\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010-\u001a\u00020\u0003H\u0002\u001a0\u0010,\u001a\u00020\u0003*\u00020\u00102\n\u0010\u001d\u001a\u00060\u001ej\u0002`\u001f2\u0006\u0010)\u001a\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010-\u001a\u00020\u0003H\u0002\u001a$\u0010.\u001a\u00020\u0003*\u00020\u00102\u0006\u0010)\u001a\u00020\u00152\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020+H\u0002\u001a\u001b\u0010/\u001a\u00020\r*\u00020\u00152\u000c\u0008\u0002\u0010\u0017\u001a\u00060\u0018j\u0002`\u0019H\u0086\u0008\u001a4\u00100\u001a\u000201*\u00020+2\u0006\u00102\u001a\u0002032\u0008\u0008\u0002\u00104\u001a\u00020\u00032\u0008\u0008\u0002\u00105\u001a\u00020\u00032\u000c\u0008\u0002\u0010\u0017\u001a\u00060\u0018j\u0002`\u0019\u001a4\u00100\u001a\u000201*\u00020+2\u0006\u00102\u001a\u0002062\u0008\u0008\u0002\u00104\u001a\u00020\u00032\u0008\u0008\u0002\u00105\u001a\u00020\u00032\u000c\u0008\u0002\u0010\u0017\u001a\u00060\u0018j\u0002`\u0019\u001a$\u00107\u001a\u000201*\u00020+2\u0006\u00102\u001a\u0002062\u0006\u00104\u001a\u00020\u00032\u0006\u00105\u001a\u00020\u0003H\u0002\u00a8\u00068"
    }
    d2 = {
        "bufferLimitExceeded",
        "",
        "limit",
        "",
        "prematureEndOfStream",
        "size",
        "",
        "prematureEndOfStreamToReadChars",
        "charactersCount",
        "isAsciiChar",
        "",
        "",
        "readBytes",
        "",
        "Lio/ktor/utils/io/core/ByteReadPacket;",
        "n",
        "Lio/ktor/utils/io/core/Input;",
        "readBytesOf",
        "min",
        "max",
        "readText",
        "",
        "Lio/ktor/utils/io/core/Buffer;",
        "charset",
        "Ljava/nio/charset/Charset;",
        "Lio/ktor/utils/io/charsets/Charset;",
        "decoder",
        "Ljava/nio/charset/CharsetDecoder;",
        "Lio/ktor/utils/io/charsets/CharsetDecoder;",
        "out",
        "Ljava/lang/Appendable;",
        "Lkotlin/text/Appendable;",
        "readTextExact",
        "readTextExactBytes",
        "bytes",
        "bytesCount",
        "readTextExactCharacters",
        "readUTF8Line",
        "estimate",
        "readUTF8LineTo",
        "readUTF8UntilDelimiter",
        "delimiters",
        "readUTF8UntilDelimiterTo",
        "Lio/ktor/utils/io/core/Output;",
        "readUTF8UntilDelimiterToSlowUtf8",
        "decoded0",
        "readUTFUntilDelimiterToSlowAscii",
        "toByteArray",
        "writeText",
        "",
        "text",
        "",
        "fromIndex",
        "toIndex",
        "",
        "writeTextUtf8",
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
.method private static final bufferLimitExceeded(I)Ljava/lang/Void;
    .locals 3
    .param p0, "limit"    # I

    .line 469
    new-instance v0, Lio/ktor/utils/io/core/BufferLimitExceededException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many characters before delimiter: limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exceeded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/utils/io/core/BufferLimitExceededException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final isAsciiChar(C)Z
    .locals 2
    .param p0, "$this$isAsciiChar"    # C

    const/4 v0, 0x0

    .line 358
    .local v0, "$i$f$isAsciiChar":I
    const/16 v1, 0x7f

    if-gt p0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final prematureEndOfStream(I)Ljava/lang/Void;
    .locals 3
    .param p0, "size"    # I

    .line 474
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Premature end of stream: expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final prematureEndOfStream(J)Ljava/lang/Void;
    .locals 3
    .param p0, "size"    # J

    .line 478
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Premature end of stream: expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final prematureEndOfStreamToReadChars(I)Ljava/lang/Void;
    .locals 3
    .param p0, "charactersCount"    # I

    .line 481
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough input bytes to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " characters."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final readBytes(Lio/ktor/utils/io/core/ByteReadPacket;I)[B
    .locals 5
    .param p0, "$this$readBytes"    # Lio/ktor/utils/io/core/ByteReadPacket;
    .param p1, "n"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    nop

    .line 172
    if-eqz p1, :cond_0

    new-array v0, p1, [B

    move-object v1, v0

    .line 642
    .local v1, "it":[B
    const/4 v2, 0x0

    .line 172
    .local v2, "$i$a$-also-StringsKt$readBytes$1":I
    move-object v3, p0

    check-cast v3, Lio/ktor/utils/io/core/Input;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4, p1}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[BII)V

    .end local v1    # "it":[B
    .end local v2    # "$i$a$-also-StringsKt$readBytes$1":I
    goto :goto_0

    .line 173
    :cond_0
    sget-object v0, Lio/ktor/utils/io/core/internal/UnsafeKt;->EmptyByteArray:[B

    .line 174
    :goto_0
    return-object v0
.end method

.method public static final readBytes(Lio/ktor/utils/io/core/Input;)[B
    .locals 3
    .param p0, "$this$readBytes"    # Lio/ktor/utils/io/core/Input;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v0, v1}, Lio/ktor/utils/io/core/StringsKt;->readBytesOf$default(Lio/ktor/utils/io/core/Input;IIILjava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public static final readBytes(Lio/ktor/utils/io/core/Input;I)[B
    .locals 1
    .param p0, "$this$readBytes"    # Lio/ktor/utils/io/core/Input;
    .param p1, "n"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-static {p0, p1, p1}, Lio/ktor/utils/io/core/StringsKt;->readBytesOf(Lio/ktor/utils/io/core/Input;II)[B

    move-result-object v0

    return-object v0
.end method

.method public static synthetic readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B
    .locals 3

    .line 169
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 170
    invoke-virtual {p0}, Lio/ktor/utils/io/core/ByteReadPacket;->getRemaining()J

    move-result-wide p1

    .local p1, "$this$coerceAtMostMaxIntOrFail$iv":J
    const-string p3, "Unable to convert to a ByteArray: packet is too big"

    .local p3, "message$iv":Ljava/lang/String;
    const/4 v0, 0x0

    .line 643
    .local v0, "$i$f$coerceAtMostMaxIntOrFail":I
    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    .line 644
    long-to-int p1, p1

    .end local v0    # "$i$f$coerceAtMostMaxIntOrFail":I
    .end local p1    # "$this$coerceAtMostMaxIntOrFail$iv":J
    .end local p3    # "message$iv":Ljava/lang/String;
    goto :goto_0

    .line 643
    .restart local v0    # "$i$f$coerceAtMostMaxIntOrFail":I
    .restart local p1    # "$this$coerceAtMostMaxIntOrFail$iv":J
    .restart local p3    # "message$iv":Ljava/lang/String;
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 169
    .end local v0    # "$i$f$coerceAtMostMaxIntOrFail":I
    .end local p1    # "$this$coerceAtMostMaxIntOrFail$iv":J
    .end local p3    # "message$iv":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/StringsKt;->readBytes(Lio/ktor/utils/io/core/ByteReadPacket;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static final readBytesOf(Lio/ktor/utils/io/core/Input;II)[B
    .locals 6
    .param p0, "$this$readBytesOf"    # Lio/ktor/utils/io/core/Input;
    .param p1, "min"    # I
    .param p2, "max"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    if-ne p1, p2, :cond_0

    if-nez p1, :cond_0

    .line 194
    sget-object v0, Lio/ktor/utils/io/core/internal/UnsafeKt;->EmptyByteArray:[B

    goto :goto_1

    .line 195
    :cond_0
    if-ne p1, p2, :cond_1

    .line 196
    new-array v0, p1, [B

    move-object v1, v0

    .line 642
    .local v1, "it":[B
    const/4 v2, 0x0

    .line 196
    .local v2, "$i$a$-also-StringsKt$readBytesOf$1":I
    const/4 v3, 0x0

    invoke-static {p0, v1, v3, p1}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[BII)V

    .end local v1    # "it":[B
    .end local v2    # "$i$a$-also-StringsKt$readBytesOf$1":I
    goto :goto_1

    .line 198
    :cond_1
    int-to-long v0, p2

    invoke-static {p0}, Lio/ktor/utils/io/charsets/EncodingKt;->sizeEstimate(Lio/ktor/utils/io/core/Input;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v0

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 199
    .local v0, "array":[B
    const/4 v1, 0x0

    .line 201
    .local v1, "size":I
    :cond_2
    :goto_0
    const-string v2, "copyOf(this, newSize)"

    if-ge v1, p2, :cond_3

    .line 202
    array-length v3, v0

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v3, v1

    .line 203
    .local v3, "partSize":I
    invoke-static {p0, v0, v1, v3}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable(Lio/ktor/utils/io/core/Input;[BII)I

    move-result v4

    .line 204
    .local v4, "rc":I
    if-lez v4, :cond_3

    .line 205
    add-int/2addr v1, v4

    .line 206
    array-length v5, v0

    if-ne v5, v1, :cond_2

    .line 207
    mul-int/lit8 v5, v1, 0x2

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v5

    .end local v3    # "partSize":I
    .end local v4    # "rc":I
    goto :goto_0

    .line 211
    :cond_3
    if-lt v1, p1, :cond_5

    .line 215
    array-length v3, v0

    if-ne v1, v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v3

    .line 216
    .end local v0    # "array":[B
    .end local v1    # "size":I
    :goto_1
    return-object v0

    .line 212
    .restart local v0    # "array":[B
    .restart local v1    # "size":I
    :cond_5
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not enough bytes available to read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-int v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " more required"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static synthetic readBytesOf$default(Lio/ktor/utils/io/core/Input;IIILjava/lang/Object;)[B
    .locals 0

    .line 193
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const p2, 0x7fffffff

    :cond_1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readBytesOf(Lio/ktor/utils/io/core/Input;II)[B

    move-result-object p0

    return-object p0
.end method

.method public static final readText(Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;Ljava/nio/charset/Charset;I)I
    .locals 2
    .param p0, "$this$readText"    # Lio/ktor/utils/io/core/Input;
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "max"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    const-string v1, "charset.newDecoder()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0, p1, p3}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->decode(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;I)I

    move-result v0

    return v0
.end method

.method public static final readText(Lio/ktor/utils/io/core/Buffer;Ljava/nio/charset/Charset;I)Ljava/lang/String;
    .locals 6
    .param p0, "$this$readText"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "max"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v0

    .local v1, "$this$readText_u24lambda_u247":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 255
    .local v2, "$i$a$-buildString-StringsKt$readText$1":I
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    const-string v4, "charset.newDecoder()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Ljava/lang/Appendable;

    const/4 v5, 0x1

    invoke-static {v3, p0, v4, v5, p2}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->decodeBuffer(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Buffer;Ljava/lang/Appendable;ZI)I

    .line 256
    nop

    .line 254
    .end local v1    # "$this$readText_u24lambda_u247":Ljava/lang/StringBuilder;
    .end local v2    # "$i$a$-buildString-StringsKt$readText$1":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    return-object v0
.end method

.method public static final readText(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/Charset;I)Ljava/lang/String;
    .locals 2
    .param p0, "$this$readText"    # Lio/ktor/utils/io/core/Input;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "max"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    const-string v1, "charset.newDecoder()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0, p2}, Lio/ktor/utils/io/charsets/EncodingKt;->decode(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Input;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final readText(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/CharsetDecoder;I)Ljava/lang/String;
    .locals 1
    .param p0, "$this$readText"    # Lio/ktor/utils/io/core/Input;
    .param p1, "decoder"    # Ljava/nio/charset/CharsetDecoder;
    .param p2, "max"    # I
    .annotation runtime Lkotlin/Deprecated;
        message = "Use CharsetDecoder.decode instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "decoder.decode(this, max)"
            imports = {
                "io.ktor.utils.io.charsets.decode"
            }
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-static {p1, p0, p2}, Lio/ktor/utils/io/charsets/EncodingKt;->decode(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Input;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic readText$default(Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;Ljava/nio/charset/Charset;IILjava/lang/Object;)I
    .locals 0

    .line 223
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const p3, 0x7fffffff

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/StringsKt;->readText(Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;Ljava/nio/charset/Charset;I)I

    move-result p0

    return p0
.end method

.method public static synthetic readText$default(Lio/ktor/utils/io/core/Buffer;Ljava/nio/charset/Charset;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 254
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const p2, 0x7fffffff

    :cond_1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readText(Lio/ktor/utils/io/core/Buffer;Ljava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic readText$default(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/Charset;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 245
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const p2, 0x7fffffff

    :cond_1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readText(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic readText$default(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/CharsetDecoder;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 236
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const p2, 0x7fffffff

    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readText(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/CharsetDecoder;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final readTextExact(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/Charset;I)Ljava/lang/String;
    .locals 1
    .param p0, "$this$readTextExact"    # Lio/ktor/utils/io/core/Input;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "n"    # I
    .annotation runtime Lkotlin/Deprecated;
        message = "Use readTextExactCharacters instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "readTextExactCharacters(n, charset)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-static {p0, p2, p1}, Lio/ktor/utils/io/core/StringsKt;->readTextExactCharacters(Lio/ktor/utils/io/core/Input;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic readTextExact$default(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/Charset;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 266
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readTextExact(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final readTextExactBytes(Lio/ktor/utils/io/core/Input;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p0, "$this$readTextExactBytes"    # Lio/ktor/utils/io/core/Input;
    .param p1, "bytesCount"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    const-string v1, "charset.newDecoder()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0, p1}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->decodeExactBytes(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Input;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final readTextExactBytes(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/Charset;I)Ljava/lang/String;
    .locals 1
    .param p0, "$this$readTextExactBytes"    # Lio/ktor/utils/io/core/Input;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "bytes"    # I
    .annotation runtime Lkotlin/Deprecated;
        message = "Parameters order is changed."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "readTextExactBytes(bytes, charset)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    invoke-static {p0, p2, p1}, Lio/ktor/utils/io/core/StringsKt;->readTextExactBytes(Lio/ktor/utils/io/core/Input;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic readTextExactBytes$default(Lio/ktor/utils/io/core/Input;ILjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 296
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readTextExactBytes(Lio/ktor/utils/io/core/Input;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic readTextExactBytes$default(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/Charset;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 288
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readTextExactBytes(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final readTextExactCharacters(Lio/ktor/utils/io/core/Input;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p0, "$this$readTextExactCharacters"    # Lio/ktor/utils/io/core/Input;
    .param p1, "charactersCount"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-static {p0, p2, p1}, Lio/ktor/utils/io/core/StringsKt;->readText(Lio/ktor/utils/io/core/Input;Ljava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 279
    return-object v0

    .line 277
    :cond_0
    invoke-static {p1}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStreamToReadChars(I)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method

.method public static synthetic readTextExactCharacters$default(Lio/ktor/utils/io/core/Input;ILjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 274
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readTextExactCharacters(Lio/ktor/utils/io/core/Input;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final readUTF8Line(Lio/ktor/utils/io/core/ByteReadPacket;II)Ljava/lang/String;
    .locals 4
    .param p0, "$this$readUTF8Line"    # Lio/ktor/utils/io/core/ByteReadPacket;
    .param p1, "estimate"    # I
    .param p2, "limit"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    move-object v0, p0

    .local v0, "$this$isEmpty$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    const/4 v1, 0x0

    .line 483
    .local v1, "$i$f$isEmpty":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/ByteReadPacket;->getEndOfInput()Z

    move-result v0

    .line 30
    .end local v0    # "$this$isEmpty$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    .end local v1    # "$i$f$isEmpty":I
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 32
    .local v0, "sb":Ljava/lang/StringBuilder;
    move-object v2, p0

    check-cast v2, Lio/ktor/utils/io/core/Input;

    move-object v3, v0

    check-cast v3, Ljava/lang/Appendable;

    invoke-static {v2, v3, p2}, Lio/ktor/utils/io/core/StringsKt;->readUTF8LineTo(Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public static final readUTF8Line(Lio/ktor/utils/io/core/Input;II)Ljava/lang/String;
    .locals 2
    .param p0, "$this$readUTF8Line"    # Lio/ktor/utils/io/core/Input;
    .param p1, "estimate"    # I
    .param p2, "limit"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 42
    .local v0, "sb":Ljava/lang/StringBuilder;
    move-object v1, v0

    check-cast v1, Ljava/lang/Appendable;

    invoke-static {p0, v1, p2}, Lio/ktor/utils/io/core/StringsKt;->readUTF8LineTo(Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static synthetic readUTF8Line$default(Lio/ktor/utils/io/core/ByteReadPacket;IIILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 29
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/16 p1, 0x10

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const p2, 0x7fffffff

    :cond_1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readUTF8Line(Lio/ktor/utils/io/core/ByteReadPacket;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic readUTF8Line$default(Lio/ktor/utils/io/core/Input;IIILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 40
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/16 p1, 0x10

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const p2, 0x7fffffff

    :cond_1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readUTF8Line(Lio/ktor/utils/io/core/Input;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final readUTF8LineTo(Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;I)Z
    .locals 38
    .param p0, "$this$readUTF8LineTo"    # Lio/ktor/utils/io/core/Input;
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "limit"    # I

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v0, "<this>"

    move-object/from16 v3, p0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "decoded":I
    const/4 v4, 0x0

    .local v4, "size":I
    const/4 v4, 0x1

    .line 54
    const/4 v5, 0x0

    .line 55
    .local v5, "cr":Z
    const/4 v6, 0x0

    .line 57
    .local v6, "end":Z
    move-object/from16 v7, p0

    .line 484
    .local v7, "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    const/4 v8, 0x1

    .local v8, "initialSize$iv":I
    const/4 v9, 0x0

    .line 485
    .local v9, "$i$f$takeWhileSize":I
    const/4 v10, 0x1

    .line 486
    .local v10, "release$iv":Z
    invoke-static {v7, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v11

    if-nez v11, :cond_0

    goto/16 :goto_16

    .line 487
    .local v11, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move v14, v8

    .line 489
    .local v14, "size$iv":I
    move v15, v14

    move-object v14, v11

    move v11, v10

    move v10, v6

    move v6, v5

    move v5, v4

    move v4, v0

    .line 491
    .end local v0    # "decoded":I
    .local v4, "decoded":I
    .local v5, "size":I
    .local v6, "cr":Z
    .local v10, "end":Z
    .local v11, "release$iv":Z
    .local v14, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v15, "size$iv":I
    :goto_0
    :try_start_0
    move-object v0, v14

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v16, 0x0

    .line 492
    .local v16, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v17

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    sub-int v17, v17, v18

    .line 491
    .end local v0    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v16    # "$i$f$getReadRemaining":I
    move/from16 v16, v17

    .local v16, "before$iv":I
    const/16 v17, 0x0

    .line 493
    .local v17, "after$iv":I
    move/from16 v12, v16

    .end local v16    # "before$iv":I
    .local v12, "before$iv":I
    if-lt v12, v15, :cond_25

    .line 494
    nop

    .line 495
    :try_start_1
    move-object/from16 v16, v14

    check-cast v16, Lio/ktor/utils/io/core/Buffer;

    move-object/from16 v18, v16

    .local v18, "buffer":Lio/ktor/utils/io/core/Buffer;
    const/16 v16, 0x0

    .line 58
    .local v16, "$i$a$-takeWhileSize$default-StringsKt$readUTF8LineTo$1":I
    const/16 v19, 0x0

    .line 59
    .local v19, "skip":I
    move-object/from16 v20, v18

    .local v20, "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v21, 0x0

    .line 496
    .local v21, "$i$f$decodeUTF8":I
    const/16 v22, 0x0

    .line 497
    .local v22, "byteCount$iv":I
    const/16 v23, 0x0

    .line 498
    .local v23, "value$iv":I
    const/16 v24, 0x0

    .line 500
    .local v24, "lastByteCount$iv":I
    move-object/from16 v25, v20

    .local v25, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v26, 0x0

    .line 501
    .local v26, "$i$f$read":I
    nop

    .line 505
    invoke-virtual/range {v25 .. v25}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v25 .. v25}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v28

    invoke-virtual/range {v25 .. v25}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .local v27, "memory$iv":Ljava/nio/ByteBuffer;
    move/from16 v30, v29

    .local v28, "start$iv":I
    .local v30, "endExclusive$iv":I
    const/16 v29, 0x0

    .line 506
    .local v29, "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    move/from16 v31, v28

    move/from16 v0, v31

    .local v0, "index$iv":I
    :goto_1
    move/from16 v13, v30

    .end local v30    # "endExclusive$iv":I
    .local v13, "endExclusive$iv":I
    if-ge v0, v13, :cond_22

    .line 507
    move-object/from16 v30, v27

    .local v30, "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    const/16 v32, 0x0

    .line 508
    .local v32, "$i$f$get-eY85DW0":I
    const/16 v33, 0x0

    .line 509
    .local v33, "$i$f$loadAt-impl":I
    move-object/from16 v3, v30

    move/from16 v30, v5

    .end local v5    # "size":I
    .local v3, "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    .local v30, "size":I
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 508
    .end local v33    # "$i$f$loadAt-impl":I
    nop

    .line 507
    .end local v3    # "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    .end local v32    # "$i$f$get-eY85DW0":I
    and-int/lit16 v3, v5, 0xff

    .line 510
    .local v3, "v$iv":I
    nop

    .line 511
    and-int/lit16 v5, v3, 0x80

    move/from16 v32, v8

    .end local v8    # "initialSize$iv":I
    .local v32, "initialSize$iv":I
    const/16 v8, 0xd

    const/16 v34, -0x1

    if-nez v5, :cond_8

    .line 512
    if-nez v22, :cond_7

    .line 513
    int-to-char v5, v3

    .local v5, "ch":C
    const/16 v35, 0x0

    .line 60
    .local v35, "$i$a$-decodeUTF8-StringsKt$readUTF8LineTo$1$1":I
    nop

    .line 61
    if-ne v5, v8, :cond_2

    .line 62
    if-eqz v6, :cond_1

    .line 63
    const/4 v8, 0x1

    .line 64
    .end local v10    # "end":Z
    .local v8, "end":Z
    move v10, v8

    const/4 v8, 0x0

    goto :goto_3

    .line 66
    .end local v8    # "end":Z
    .restart local v10    # "end":Z
    :cond_1
    const/4 v6, 0x1

    .line 67
    const/4 v8, 0x1

    goto :goto_2

    .line 69
    :cond_2
    const/16 v8, 0xa

    if-ne v5, v8, :cond_3

    .line 70
    const/4 v10, 0x1

    .line 71
    const/16 v19, 0x1

    .line 72
    const/4 v8, 0x0

    goto :goto_2

    .line 75
    :cond_3
    if-eqz v6, :cond_4

    .line 76
    const/4 v8, 0x1

    .line 77
    .end local v10    # "end":Z
    .restart local v8    # "end":Z
    move v10, v8

    const/4 v8, 0x0

    goto :goto_3

    .line 80
    .end local v8    # "end":Z
    .restart local v10    # "end":Z
    :cond_4
    if-eq v4, v2, :cond_6

    .line 81
    add-int/lit8 v4, v4, 0x1

    .line 82
    :try_start_3
    invoke-interface {v1, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 83
    const/4 v8, 0x1

    .line 60
    :goto_2
    nop

    .line 513
    .end local v5    # "ch":C
    .end local v35    # "$i$a$-decodeUTF8-StringsKt$readUTF8LineTo$1$1":I
    :goto_3
    if-nez v8, :cond_5

    .line 514
    sub-int v5, v0, v28

    move-object/from16 v8, v20

    .end local v20    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .local v8, "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    invoke-virtual {v8, v5}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 515
    move/from16 v35, v9

    move/from16 v0, v19

    goto/16 :goto_e

    .line 513
    .end local v8    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v20    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    :cond_5
    move-object/from16 v8, v20

    .end local v20    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v8    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    move-object v5, v8

    move/from16 v35, v9

    goto/16 :goto_d

    .line 80
    .end local v8    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v5    # "ch":C
    .restart local v20    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v35    # "$i$a$-decodeUTF8-StringsKt$readUTF8LineTo$1$1":I
    :cond_6
    move-object/from16 v8, v20

    .end local v20    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v8    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    invoke-static/range {p2 .. p2}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v20, Lkotlin/KotlinNothingValueException;

    invoke-direct/range {v20 .. v20}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v4    # "decoded":I
    .end local v6    # "cr":Z
    .end local v7    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v9    # "$i$f$takeWhileSize":I
    .end local v10    # "end":Z
    .end local v11    # "release$iv":Z
    .end local v12    # "before$iv":I
    .end local v14    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v15    # "size$iv":I
    .end local v17    # "after$iv":I
    .end local v30    # "size":I
    .end local v32    # "initialSize$iv":I
    .end local p0    # "$this$readUTF8LineTo":Lio/ktor/utils/io/core/Input;
    .end local p1    # "out":Ljava/lang/Appendable;
    .end local p2    # "limit":I
    throw v20

    .line 512
    .end local v5    # "ch":C
    .end local v8    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v35    # "$i$a$-decodeUTF8-StringsKt$readUTF8LineTo$1$1":I
    .restart local v4    # "decoded":I
    .restart local v6    # "cr":Z
    .restart local v7    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v9    # "$i$f$takeWhileSize":I
    .restart local v10    # "end":Z
    .restart local v11    # "release$iv":Z
    .restart local v12    # "before$iv":I
    .restart local v14    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v15    # "size$iv":I
    .restart local v17    # "after$iv":I
    .restart local v20    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v30    # "size":I
    .restart local v32    # "initialSize$iv":I
    .restart local p0    # "$this$readUTF8LineTo":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "out":Ljava/lang/Appendable;
    .restart local p2    # "limit":I
    :cond_7
    move-object/from16 v8, v20

    .end local v20    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v8    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    invoke-static/range {v22 .. v22}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedByteCount(I)Ljava/lang/Void;

    new-instance v5, Lkotlin/KotlinNothingValueException;

    invoke-direct {v5}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v4    # "decoded":I
    .end local v6    # "cr":Z
    .end local v7    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v9    # "$i$f$takeWhileSize":I
    .end local v10    # "end":Z
    .end local v11    # "release$iv":Z
    .end local v12    # "before$iv":I
    .end local v14    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v15    # "size$iv":I
    .end local v17    # "after$iv":I
    .end local v30    # "size":I
    .end local v32    # "initialSize$iv":I
    .end local p0    # "$this$readUTF8LineTo":Lio/ktor/utils/io/core/Input;
    .end local p1    # "out":Ljava/lang/Appendable;
    .end local p2    # "limit":I
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 574
    .end local v0    # "index$iv":I
    .end local v3    # "v$iv":I
    .end local v8    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "endExclusive$iv":I
    .end local v16    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8LineTo$1":I
    .end local v18    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v19    # "skip":I
    .end local v21    # "$i$f$decodeUTF8":I
    .end local v22    # "byteCount$iv":I
    .end local v23    # "value$iv":I
    .end local v24    # "lastByteCount$iv":I
    .end local v25    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v26    # "$i$f$read":I
    .end local v27    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v28    # "start$iv":I
    .end local v29    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    .restart local v4    # "decoded":I
    .restart local v6    # "cr":Z
    .restart local v7    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v9    # "$i$f$takeWhileSize":I
    .restart local v10    # "end":Z
    .restart local v11    # "release$iv":Z
    .restart local v12    # "before$iv":I
    .restart local v14    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v15    # "size$iv":I
    .restart local v17    # "after$iv":I
    .restart local v30    # "size":I
    .restart local v32    # "initialSize$iv":I
    .restart local p0    # "$this$readUTF8LineTo":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "out":Ljava/lang/Appendable;
    .restart local p2    # "limit":I
    :catchall_0
    move-exception v0

    move/from16 v35, v9

    move/from16 v5, v30

    goto/16 :goto_11

    .line 518
    .restart local v0    # "index$iv":I
    .restart local v3    # "v$iv":I
    .restart local v13    # "endExclusive$iv":I
    .restart local v16    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8LineTo$1":I
    .restart local v18    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .restart local v19    # "skip":I
    .restart local v20    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v21    # "$i$f$decodeUTF8":I
    .restart local v22    # "byteCount$iv":I
    .restart local v23    # "value$iv":I
    .restart local v24    # "lastByteCount$iv":I
    .restart local v25    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v26    # "$i$f$read":I
    .restart local v27    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v28    # "start$iv":I
    .restart local v29    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    :cond_8
    move-object/from16 v5, v20

    .end local v20    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .local v5, "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    if-nez v22, :cond_c

    .line 521
    const/16 v8, 0x80

    .line 522
    .local v8, "mask$iv":I
    move/from16 v20, v3

    .line 524
    .end local v23    # "value$iv":I
    .local v20, "value$iv":I
    const/16 v23, 0x1

    move/from16 v35, v9

    move/from16 v9, v23

    .local v9, "i$iv":I
    .local v35, "$i$f$takeWhileSize":I
    :goto_4
    move/from16 v36, v10

    .end local v10    # "end":Z
    .local v36, "end":Z
    const/4 v10, 0x7

    if-ge v9, v10, :cond_a

    .line 525
    and-int v10, v20, v8

    if-eqz v10, :cond_9

    .line 526
    not-int v10, v8

    and-int v20, v20, v10

    .line 527
    shr-int/lit8 v8, v8, 0x1

    .line 528
    add-int/lit8 v22, v22, 0x1

    .line 524
    add-int/lit8 v9, v9, 0x1

    move/from16 v10, v36

    goto :goto_4

    .line 530
    :cond_9
    nop

    .line 534
    .end local v9    # "i$iv":I
    :cond_a
    move/from16 v9, v22

    .line 535
    .end local v24    # "lastByteCount$iv":I
    .local v9, "lastByteCount$iv":I
    add-int/lit8 v22, v22, -0x1

    .line 537
    sub-int v10, v13, v0

    if-le v9, v10, :cond_b

    .line 538
    sub-int v10, v0, v28

    :try_start_4
    invoke-virtual {v5, v10}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 539
    move/from16 v34, v9

    move/from16 v0, v19

    move/from16 v10, v36

    goto/16 :goto_e

    .line 537
    :cond_b
    move/from16 v24, v9

    move/from16 v23, v20

    move/from16 v10, v36

    goto/16 :goto_d

    .line 544
    .end local v8    # "mask$iv":I
    .end local v20    # "value$iv":I
    .end local v35    # "$i$f$takeWhileSize":I
    .end local v36    # "end":Z
    .local v9, "$i$f$takeWhileSize":I
    .restart local v10    # "end":Z
    .restart local v23    # "value$iv":I
    .restart local v24    # "lastByteCount$iv":I
    :cond_c
    move/from16 v35, v9

    move/from16 v36, v10

    .end local v9    # "$i$f$takeWhileSize":I
    .end local v10    # "end":Z
    .restart local v35    # "$i$f$takeWhileSize":I
    .restart local v36    # "end":Z
    shl-int/lit8 v9, v23, 0x6

    and-int/lit8 v10, v3, 0x7f

    or-int/2addr v9, v10

    .line 545
    .end local v23    # "value$iv":I
    .local v9, "value$iv":I
    add-int/lit8 v22, v22, -0x1

    .line 547
    if-nez v22, :cond_21

    .line 548
    invoke-static {v9}, Lio/ktor/utils/io/core/internal/UTF8Kt;->isBmpCodePoint(I)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 549
    int-to-char v10, v9

    .local v10, "ch":C
    const/16 v20, 0x0

    .line 60
    .local v20, "$i$a$-decodeUTF8-StringsKt$readUTF8LineTo$1$1":I
    nop

    .line 61
    if-ne v10, v8, :cond_e

    .line 62
    if-eqz v6, :cond_d

    .line 63
    const/4 v8, 0x1

    .line 64
    .end local v36    # "end":Z
    .local v8, "end":Z
    move/from16 v36, v8

    const/4 v8, 0x0

    goto :goto_6

    .line 66
    .end local v8    # "end":Z
    .restart local v36    # "end":Z
    :cond_d
    const/4 v6, 0x1

    .line 67
    const/4 v8, 0x1

    goto :goto_5

    .line 69
    :cond_e
    const/16 v8, 0xa

    if-ne v10, v8, :cond_f

    .line 70
    const/4 v8, 0x1

    .line 71
    .end local v36    # "end":Z
    .restart local v8    # "end":Z
    const/16 v19, 0x1

    .line 72
    move/from16 v36, v8

    const/4 v8, 0x0

    goto :goto_5

    .line 75
    .end local v8    # "end":Z
    .restart local v36    # "end":Z
    :cond_f
    if-eqz v6, :cond_10

    .line 76
    const/4 v8, 0x1

    .line 77
    .end local v36    # "end":Z
    .restart local v8    # "end":Z
    move/from16 v36, v8

    const/4 v8, 0x0

    goto :goto_6

    .line 80
    .end local v8    # "end":Z
    .restart local v36    # "end":Z
    :cond_10
    if-eq v4, v2, :cond_12

    .line 81
    add-int/lit8 v4, v4, 0x1

    .line 82
    invoke-interface {v1, v10}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 83
    const/4 v8, 0x1

    .line 60
    :goto_5
    nop

    .line 549
    .end local v10    # "ch":C
    .end local v20    # "$i$a$-decodeUTF8-StringsKt$readUTF8LineTo$1$1":I
    :goto_6
    if-nez v8, :cond_11

    .line 550
    sub-int v8, v0, v28

    sub-int v8, v8, v24

    const/4 v10, 0x1

    add-int/2addr v8, v10

    invoke-virtual {v5, v8}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 551
    move/from16 v0, v19

    move/from16 v10, v36

    goto/16 :goto_e

    .line 549
    :cond_11
    move/from16 v37, v3

    goto/16 :goto_b

    .line 80
    .restart local v10    # "ch":C
    .restart local v20    # "$i$a$-decodeUTF8-StringsKt$readUTF8LineTo$1$1":I
    :cond_12
    invoke-static/range {p2 .. p2}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v8, Lkotlin/KotlinNothingValueException;

    invoke-direct {v8}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v4    # "decoded":I
    .end local v6    # "cr":Z
    .end local v7    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v11    # "release$iv":Z
    .end local v12    # "before$iv":I
    .end local v14    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v15    # "size$iv":I
    .end local v17    # "after$iv":I
    .end local v30    # "size":I
    .end local v32    # "initialSize$iv":I
    .end local v35    # "$i$f$takeWhileSize":I
    .end local v36    # "end":Z
    .end local p0    # "$this$readUTF8LineTo":Lio/ktor/utils/io/core/Input;
    .end local p1    # "out":Ljava/lang/Appendable;
    .end local p2    # "limit":I
    throw v8

    .line 553
    .end local v10    # "ch":C
    .end local v20    # "$i$a$-decodeUTF8-StringsKt$readUTF8LineTo$1$1":I
    .restart local v4    # "decoded":I
    .restart local v6    # "cr":Z
    .restart local v7    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v11    # "release$iv":Z
    .restart local v12    # "before$iv":I
    .restart local v14    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v15    # "size$iv":I
    .restart local v17    # "after$iv":I
    .restart local v30    # "size":I
    .restart local v32    # "initialSize$iv":I
    .restart local v35    # "$i$f$takeWhileSize":I
    .restart local v36    # "end":Z
    .restart local p0    # "$this$readUTF8LineTo":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "out":Ljava/lang/Appendable;
    .restart local p2    # "limit":I
    :cond_13
    invoke-static {v9}, Lio/ktor/utils/io/core/internal/UTF8Kt;->isValidCodePoint(I)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 556
    invoke-static {v9}, Lio/ktor/utils/io/core/internal/UTF8Kt;->highSurrogate(I)I

    move-result v10

    int-to-char v10, v10

    .restart local v10    # "ch":C
    const/16 v20, 0x0

    .line 60
    .restart local v20    # "$i$a$-decodeUTF8-StringsKt$readUTF8LineTo$1$1":I
    nop

    .line 61
    if-ne v10, v8, :cond_15

    .line 62
    if-eqz v6, :cond_14

    .line 63
    const/16 v23, 0x1

    .line 64
    .end local v36    # "end":Z
    .local v23, "end":Z
    const/4 v8, 0x0

    goto :goto_8

    .line 66
    .end local v23    # "end":Z
    .restart local v36    # "end":Z
    :cond_14
    const/4 v6, 0x1

    .line 67
    const/4 v8, 0x1

    goto :goto_7

    .line 69
    :cond_15
    const/16 v8, 0xa

    if-ne v10, v8, :cond_16

    .line 70
    const/4 v8, 0x1

    .line 71
    .end local v36    # "end":Z
    .restart local v8    # "end":Z
    const/16 v19, 0x1

    .line 72
    move/from16 v36, v8

    const/4 v8, 0x0

    goto :goto_7

    .line 75
    .end local v8    # "end":Z
    .restart local v36    # "end":Z
    :cond_16
    if-eqz v6, :cond_17

    .line 76
    const/16 v23, 0x1

    .line 77
    .end local v36    # "end":Z
    .restart local v23    # "end":Z
    const/4 v8, 0x0

    goto :goto_8

    .line 80
    .end local v23    # "end":Z
    .restart local v36    # "end":Z
    :cond_17
    if-eq v4, v2, :cond_1f

    .line 81
    add-int/lit8 v4, v4, 0x1

    .line 82
    invoke-interface {v1, v10}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 83
    const/4 v8, 0x1

    .line 60
    :goto_7
    move/from16 v23, v36

    .line 556
    .end local v10    # "ch":C
    .end local v20    # "$i$a$-decodeUTF8-StringsKt$readUTF8LineTo$1$1":I
    .end local v36    # "end":Z
    .restart local v23    # "end":Z
    :goto_8
    if-eqz v8, :cond_1e

    .line 557
    :try_start_5
    invoke-static {v9}, Lio/ktor/utils/io/core/internal/UTF8Kt;->lowSurrogate(I)I

    move-result v8

    int-to-char v8, v8

    .local v8, "ch":C
    const/4 v10, 0x0

    .line 60
    .local v10, "$i$a$-decodeUTF8-StringsKt$readUTF8LineTo$1$1":I
    nop

    .line 61
    move/from16 v37, v3

    const/16 v3, 0xd

    .end local v3    # "v$iv":I
    .local v37, "v$iv":I
    if-ne v8, v3, :cond_19

    .line 62
    if-eqz v6, :cond_18

    .line 63
    const/4 v3, 0x1

    .line 64
    .end local v23    # "end":Z
    .local v3, "end":Z
    move/from16 v36, v3

    const/4 v3, 0x0

    goto :goto_a

    .line 66
    .end local v3    # "end":Z
    .restart local v23    # "end":Z
    :cond_18
    const/4 v6, 0x1

    .line 67
    const/4 v3, 0x1

    goto :goto_9

    .line 69
    :cond_19
    const/16 v3, 0xa

    if-ne v8, v3, :cond_1a

    .line 70
    const/16 v23, 0x1

    .line 71
    const/16 v19, 0x1

    .line 72
    const/4 v3, 0x0

    goto :goto_9

    .line 75
    :cond_1a
    if-eqz v6, :cond_1b

    .line 76
    const/4 v3, 0x1

    .line 77
    .end local v23    # "end":Z
    .restart local v3    # "end":Z
    move/from16 v36, v3

    const/4 v3, 0x0

    goto :goto_a

    .line 80
    .end local v3    # "end":Z
    .restart local v23    # "end":Z
    :cond_1b
    if-eq v4, v2, :cond_1d

    .line 81
    add-int/lit8 v4, v4, 0x1

    .line 82
    invoke-interface {v1, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 83
    const/4 v3, 0x1

    .line 60
    :goto_9
    move/from16 v36, v23

    .line 557
    .end local v8    # "ch":C
    .end local v10    # "$i$a$-decodeUTF8-StringsKt$readUTF8LineTo$1$1":I
    .end local v23    # "end":Z
    .restart local v36    # "end":Z
    :goto_a
    if-nez v3, :cond_1c

    move/from16 v23, v36

    goto :goto_c

    .line 564
    :cond_1c
    :goto_b
    const/4 v3, 0x0

    move/from16 v23, v3

    move/from16 v10, v36

    .end local v9    # "value$iv":I
    .local v3, "value$iv":I
    goto :goto_d

    .line 80
    .end local v3    # "value$iv":I
    .end local v36    # "end":Z
    .restart local v8    # "ch":C
    .restart local v9    # "value$iv":I
    .restart local v10    # "$i$a$-decodeUTF8-StringsKt$readUTF8LineTo$1$1":I
    .restart local v23    # "end":Z
    :cond_1d
    invoke-static/range {p2 .. p2}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v4    # "decoded":I
    .end local v6    # "cr":Z
    .end local v7    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v11    # "release$iv":Z
    .end local v12    # "before$iv":I
    .end local v14    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v15    # "size$iv":I
    .end local v17    # "after$iv":I
    .end local v23    # "end":Z
    .end local v30    # "size":I
    .end local v32    # "initialSize$iv":I
    .end local v35    # "$i$f$takeWhileSize":I
    .end local p0    # "$this$readUTF8LineTo":Lio/ktor/utils/io/core/Input;
    .end local p1    # "out":Ljava/lang/Appendable;
    .end local p2    # "limit":I
    throw v3

    .line 556
    .end local v8    # "ch":C
    .end local v10    # "$i$a$-decodeUTF8-StringsKt$readUTF8LineTo$1$1":I
    .end local v37    # "v$iv":I
    .local v3, "v$iv":I
    .restart local v4    # "decoded":I
    .restart local v6    # "cr":Z
    .restart local v7    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v11    # "release$iv":Z
    .restart local v12    # "before$iv":I
    .restart local v14    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v15    # "size$iv":I
    .restart local v17    # "after$iv":I
    .restart local v23    # "end":Z
    .restart local v30    # "size":I
    .restart local v32    # "initialSize$iv":I
    .restart local v35    # "$i$f$takeWhileSize":I
    .restart local p0    # "$this$readUTF8LineTo":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "out":Ljava/lang/Appendable;
    .restart local p2    # "limit":I
    :cond_1e
    move/from16 v37, v3

    .line 559
    .end local v3    # "v$iv":I
    .restart local v37    # "v$iv":I
    :goto_c
    sub-int v3, v0, v28

    sub-int v3, v3, v24

    const/4 v8, 0x1

    add-int/2addr v3, v8

    invoke-virtual {v5, v3}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 560
    move/from16 v0, v19

    move/from16 v10, v23

    goto :goto_e

    .line 574
    .end local v0    # "index$iv":I
    .end local v5    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v9    # "value$iv":I
    .end local v13    # "endExclusive$iv":I
    .end local v16    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8LineTo$1":I
    .end local v18    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v19    # "skip":I
    .end local v21    # "$i$f$decodeUTF8":I
    .end local v22    # "byteCount$iv":I
    .end local v24    # "lastByteCount$iv":I
    .end local v25    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v26    # "$i$f$read":I
    .end local v27    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v28    # "start$iv":I
    .end local v29    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    .end local v37    # "v$iv":I
    :catchall_1
    move-exception v0

    move/from16 v10, v23

    move/from16 v5, v30

    goto/16 :goto_11

    .line 80
    .end local v23    # "end":Z
    .restart local v0    # "index$iv":I
    .restart local v3    # "v$iv":I
    .restart local v5    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v9    # "value$iv":I
    .local v10, "ch":C
    .restart local v13    # "endExclusive$iv":I
    .restart local v16    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8LineTo$1":I
    .restart local v18    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .restart local v19    # "skip":I
    .restart local v20    # "$i$a$-decodeUTF8-StringsKt$readUTF8LineTo$1$1":I
    .restart local v21    # "$i$f$decodeUTF8":I
    .restart local v22    # "byteCount$iv":I
    .restart local v24    # "lastByteCount$iv":I
    .restart local v25    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v26    # "$i$f$read":I
    .restart local v27    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v28    # "start$iv":I
    .restart local v29    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    .restart local v36    # "end":Z
    :cond_1f
    move/from16 v37, v3

    .end local v3    # "v$iv":I
    .restart local v37    # "v$iv":I
    :try_start_6
    invoke-static/range {p2 .. p2}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v4    # "decoded":I
    .end local v6    # "cr":Z
    .end local v7    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v11    # "release$iv":Z
    .end local v12    # "before$iv":I
    .end local v14    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v15    # "size$iv":I
    .end local v17    # "after$iv":I
    .end local v30    # "size":I
    .end local v32    # "initialSize$iv":I
    .end local v35    # "$i$f$takeWhileSize":I
    .end local v36    # "end":Z
    .end local p0    # "$this$readUTF8LineTo":Lio/ktor/utils/io/core/Input;
    .end local p1    # "out":Ljava/lang/Appendable;
    .end local p2    # "limit":I
    throw v3

    .line 554
    .end local v10    # "ch":C
    .end local v20    # "$i$a$-decodeUTF8-StringsKt$readUTF8LineTo$1$1":I
    .end local v37    # "v$iv":I
    .restart local v3    # "v$iv":I
    .restart local v4    # "decoded":I
    .restart local v6    # "cr":Z
    .restart local v7    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v11    # "release$iv":Z
    .restart local v12    # "before$iv":I
    .restart local v14    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v15    # "size$iv":I
    .restart local v17    # "after$iv":I
    .restart local v30    # "size":I
    .restart local v32    # "initialSize$iv":I
    .restart local v35    # "$i$f$takeWhileSize":I
    .restart local v36    # "end":Z
    .restart local p0    # "$this$readUTF8LineTo":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "out":Ljava/lang/Appendable;
    .restart local p2    # "limit":I
    :cond_20
    move/from16 v37, v3

    .end local v3    # "v$iv":I
    .restart local v37    # "v$iv":I
    invoke-static {v9}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v4    # "decoded":I
    .end local v6    # "cr":Z
    .end local v7    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v11    # "release$iv":Z
    .end local v12    # "before$iv":I
    .end local v14    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v15    # "size$iv":I
    .end local v17    # "after$iv":I
    .end local v30    # "size":I
    .end local v32    # "initialSize$iv":I
    .end local v35    # "$i$f$takeWhileSize":I
    .end local v36    # "end":Z
    .end local p0    # "$this$readUTF8LineTo":Lio/ktor/utils/io/core/Input;
    .end local p1    # "out":Ljava/lang/Appendable;
    .end local p2    # "limit":I
    throw v3

    .line 547
    .end local v37    # "v$iv":I
    .restart local v3    # "v$iv":I
    .restart local v4    # "decoded":I
    .restart local v6    # "cr":Z
    .restart local v7    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v11    # "release$iv":Z
    .restart local v12    # "before$iv":I
    .restart local v14    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v15    # "size$iv":I
    .restart local v17    # "after$iv":I
    .restart local v30    # "size":I
    .restart local v32    # "initialSize$iv":I
    .restart local v35    # "$i$f$takeWhileSize":I
    .restart local v36    # "end":Z
    .restart local p0    # "$this$readUTF8LineTo":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "out":Ljava/lang/Appendable;
    .restart local p2    # "limit":I
    :cond_21
    move/from16 v37, v3

    .end local v3    # "v$iv":I
    .restart local v37    # "v$iv":I
    move/from16 v23, v9

    move/from16 v10, v36

    .line 506
    .end local v9    # "value$iv":I
    .end local v36    # "end":Z
    .end local v37    # "v$iv":I
    .local v10, "end":Z
    .local v23, "value$iv":I
    :goto_d
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, p0

    move-object/from16 v20, v5

    move/from16 v5, v30

    move/from16 v8, v32

    move/from16 v9, v35

    move/from16 v30, v13

    goto/16 :goto_1

    .line 574
    .end local v0    # "index$iv":I
    .end local v5    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "endExclusive$iv":I
    .end local v16    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8LineTo$1":I
    .end local v18    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v19    # "skip":I
    .end local v21    # "$i$f$decodeUTF8":I
    .end local v22    # "byteCount$iv":I
    .end local v23    # "value$iv":I
    .end local v24    # "lastByteCount$iv":I
    .end local v25    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v26    # "$i$f$read":I
    .end local v27    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v28    # "start$iv":I
    .end local v29    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    .end local v32    # "initialSize$iv":I
    .end local v35    # "$i$f$takeWhileSize":I
    .local v8, "initialSize$iv":I
    .local v9, "$i$f$takeWhileSize":I
    :catchall_2
    move-exception v0

    move/from16 v32, v8

    move/from16 v35, v9

    move/from16 v36, v10

    move/from16 v5, v30

    .end local v8    # "initialSize$iv":I
    .end local v9    # "$i$f$takeWhileSize":I
    .end local v10    # "end":Z
    .restart local v32    # "initialSize$iv":I
    .restart local v35    # "$i$f$takeWhileSize":I
    .restart local v36    # "end":Z
    goto :goto_11

    .line 506
    .end local v30    # "size":I
    .end local v32    # "initialSize$iv":I
    .end local v35    # "$i$f$takeWhileSize":I
    .end local v36    # "end":Z
    .restart local v0    # "index$iv":I
    .local v5, "size":I
    .restart local v8    # "initialSize$iv":I
    .restart local v9    # "$i$f$takeWhileSize":I
    .restart local v10    # "end":Z
    .restart local v13    # "endExclusive$iv":I
    .restart local v16    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8LineTo$1":I
    .restart local v18    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .restart local v19    # "skip":I
    .local v20, "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v21    # "$i$f$decodeUTF8":I
    .restart local v22    # "byteCount$iv":I
    .restart local v23    # "value$iv":I
    .restart local v24    # "lastByteCount$iv":I
    .restart local v25    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v26    # "$i$f$read":I
    .restart local v27    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v28    # "start$iv":I
    .restart local v29    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    :cond_22
    move/from16 v30, v5

    move/from16 v32, v8

    move/from16 v35, v9

    move/from16 v36, v10

    move-object/from16 v5, v20

    .line 570
    .end local v0    # "index$iv":I
    .end local v8    # "initialSize$iv":I
    .end local v9    # "$i$f$takeWhileSize":I
    .end local v10    # "end":Z
    .end local v20    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .local v5, "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v30    # "size":I
    .restart local v32    # "initialSize$iv":I
    .restart local v35    # "$i$f$takeWhileSize":I
    .restart local v36    # "end":Z
    sub-int v0, v13, v28

    .line 505
    .end local v13    # "endExclusive$iv":I
    .end local v27    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v28    # "start$iv":I
    .end local v29    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    nop

    .line 571
    .local v0, "rc$iv$iv":I
    move-object/from16 v3, v25

    .end local v25    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .local v3, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    invoke-virtual {v3, v0}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 572
    nop

    .line 573
    .end local v0    # "rc$iv$iv":I
    .end local v3    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v26    # "$i$f$read":I
    move/from16 v0, v19

    move/from16 v10, v36

    const/16 v34, 0x0

    .line 59
    .end local v5    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v19    # "skip":I
    .end local v21    # "$i$f$decodeUTF8":I
    .end local v22    # "byteCount$iv":I
    .end local v23    # "value$iv":I
    .end local v24    # "lastByteCount$iv":I
    .end local v36    # "end":Z
    .local v0, "skip":I
    .restart local v10    # "end":Z
    :goto_e
    move/from16 v5, v34

    .line 88
    .end local v30    # "size":I
    .local v5, "size":I
    if-lez v0, :cond_23

    .line 89
    move-object/from16 v3, v18

    .end local v18    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .local v3, "buffer":Lio/ktor/utils/io/core/Buffer;
    :try_start_7
    invoke-virtual {v3, v0}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    goto :goto_f

    .line 574
    .end local v0    # "skip":I
    .end local v3    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v16    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8LineTo$1":I
    :catchall_3
    move-exception v0

    goto :goto_11

    .line 88
    .restart local v0    # "skip":I
    .restart local v16    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8LineTo$1":I
    .restart local v18    # "buffer":Lio/ktor/utils/io/core/Buffer;
    :cond_23
    move-object/from16 v3, v18

    .line 92
    .end local v18    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .restart local v3    # "buffer":Lio/ktor/utils/io/core/Buffer;
    :goto_f
    if-eqz v10, :cond_24

    const/4 v9, 0x0

    goto :goto_10

    :cond_24
    const/4 v8, 0x1

    invoke-static {v5, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 495
    .end local v0    # "skip":I
    .end local v3    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v16    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8LineTo$1":I
    :goto_10
    move v15, v9

    .line 574
    :try_start_8
    move-object v0, v14

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 492
    .local v3, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v8

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v9

    sub-int/2addr v8, v9

    .line 574
    .end local v0    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getReadRemaining":I
    move v0, v8

    .line 575
    .end local v17    # "after$iv":I
    .local v0, "after$iv":I
    goto :goto_12

    .line 574
    .end local v0    # "after$iv":I
    .end local v5    # "size":I
    .end local v10    # "end":Z
    .restart local v17    # "after$iv":I
    .restart local v30    # "size":I
    .restart local v36    # "end":Z
    :catchall_4
    move-exception v0

    move/from16 v5, v30

    move/from16 v10, v36

    goto :goto_11

    .end local v30    # "size":I
    .end local v32    # "initialSize$iv":I
    .end local v35    # "$i$f$takeWhileSize":I
    .end local v36    # "end":Z
    .restart local v5    # "size":I
    .restart local v8    # "initialSize$iv":I
    .restart local v9    # "$i$f$takeWhileSize":I
    .restart local v10    # "end":Z
    :catchall_5
    move-exception v0

    move/from16 v30, v5

    move/from16 v32, v8

    move/from16 v35, v9

    .end local v8    # "initialSize$iv":I
    .end local v9    # "$i$f$takeWhileSize":I
    .restart local v32    # "initialSize$iv":I
    .restart local v35    # "$i$f$takeWhileSize":I
    :goto_11
    move-object v3, v14

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    .local v3, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v8, 0x0

    .line 492
    .local v8, "$i$f$getReadRemaining":I
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v9

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v13

    sub-int/2addr v9, v13

    .line 574
    .end local v3    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v8    # "$i$f$getReadRemaining":I
    move v3, v9

    .end local v4    # "decoded":I
    .end local v5    # "size":I
    .end local v6    # "cr":Z
    .end local v7    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v10    # "end":Z
    .end local v11    # "release$iv":Z
    .end local v14    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v15    # "size$iv":I
    .end local v17    # "after$iv":I
    .end local v32    # "initialSize$iv":I
    .end local v35    # "$i$f$takeWhileSize":I
    .end local p0    # "$this$readUTF8LineTo":Lio/ktor/utils/io/core/Input;
    .end local p1    # "out":Ljava/lang/Appendable;
    .end local p2    # "limit":I
    .local v3, "after$iv":I
    throw v0

    .line 577
    .end local v3    # "after$iv":I
    .restart local v4    # "decoded":I
    .restart local v5    # "size":I
    .restart local v6    # "cr":Z
    .restart local v7    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .local v8, "initialSize$iv":I
    .restart local v9    # "$i$f$takeWhileSize":I
    .restart local v10    # "end":Z
    .restart local v11    # "release$iv":Z
    .restart local v14    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v15    # "size$iv":I
    .restart local v17    # "after$iv":I
    .restart local p0    # "$this$readUTF8LineTo":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "out":Ljava/lang/Appendable;
    .restart local p2    # "limit":I
    :cond_25
    move/from16 v30, v5

    move/from16 v32, v8

    move/from16 v35, v9

    .end local v5    # "size":I
    .end local v8    # "initialSize$iv":I
    .end local v9    # "$i$f$takeWhileSize":I
    .restart local v30    # "size":I
    .restart local v32    # "initialSize$iv":I
    .restart local v35    # "$i$f$takeWhileSize":I
    move v0, v12

    .line 580
    .end local v17    # "after$iv":I
    .end local v30    # "size":I
    .restart local v0    # "after$iv":I
    .restart local v5    # "size":I
    :goto_12
    const/4 v11, 0x0

    .line 582
    nop

    .line 583
    if-nez v0, :cond_26

    invoke-static {v7, v14}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3

    goto :goto_14

    .line 596
    .end local v0    # "after$iv":I
    .end local v12    # "before$iv":I
    :catchall_6
    move-exception v0

    goto/16 :goto_19

    .line 584
    .restart local v0    # "after$iv":I
    .restart local v12    # "before$iv":I
    :cond_26
    if-lt v0, v15, :cond_28

    move-object v3, v14

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    .local v3, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v8, 0x0

    .line 585
    .local v8, "$i$f$getEndGap":I
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v9

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v13

    sub-int/2addr v9, v13

    .line 584
    .end local v3    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v8    # "$i$f$getEndGap":I
    const/16 v3, 0x8

    if-ge v9, v3, :cond_27

    goto :goto_13

    .line 589
    :cond_27
    move-object v3, v14

    goto :goto_14

    .line 586
    :cond_28
    :goto_13
    invoke-static {v7, v14}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 587
    invoke-static {v7, v15}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 582
    :goto_14
    if-nez v3, :cond_29

    .line 590
    goto :goto_15

    .line 592
    .local v3, "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_29
    move-object v14, v3

    .line 593
    const/4 v11, 0x1

    .line 594
    .end local v0    # "after$iv":I
    .end local v3    # "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v12    # "before$iv":I
    if-gtz v15, :cond_2e

    .line 596
    :goto_15
    if-eqz v11, :cond_2a

    .line 597
    invoke-static {v7, v14}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 599
    :cond_2a
    nop

    .line 600
    move v0, v4

    move v4, v5

    move v5, v6

    move v6, v10

    .line 95
    .end local v7    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v10    # "end":Z
    .end local v11    # "release$iv":Z
    .end local v14    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v15    # "size$iv":I
    .end local v32    # "initialSize$iv":I
    .end local v35    # "$i$f$takeWhileSize":I
    .local v0, "decoded":I
    .local v4, "size":I
    .local v5, "cr":Z
    .local v6, "end":Z
    :goto_16
    const/4 v3, 0x1

    if-gt v4, v3, :cond_2d

    .line 97
    if-gtz v0, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/core/Input;->getEndOfInput()Z

    move-result v7

    if-nez v7, :cond_2b

    goto :goto_17

    :cond_2b
    const/4 v12, 0x0

    goto :goto_18

    :cond_2c
    :goto_17
    move v12, v3

    :goto_18
    return v12

    .line 95
    :cond_2d
    invoke-static {v4}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3

    .line 594
    .end local v0    # "decoded":I
    .local v4, "decoded":I
    .local v5, "size":I
    .local v6, "cr":Z
    .restart local v7    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v10    # "end":Z
    .restart local v11    # "release$iv":Z
    .restart local v14    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v15    # "size$iv":I
    .restart local v32    # "initialSize$iv":I
    .restart local v35    # "$i$f$takeWhileSize":I
    :cond_2e
    const/4 v3, 0x1

    move-object/from16 v3, p0

    move/from16 v8, v32

    move/from16 v9, v35

    goto/16 :goto_0

    .line 596
    .end local v32    # "initialSize$iv":I
    .end local v35    # "$i$f$takeWhileSize":I
    .local v8, "initialSize$iv":I
    .restart local v9    # "$i$f$takeWhileSize":I
    :catchall_7
    move-exception v0

    move/from16 v30, v5

    move/from16 v32, v8

    move/from16 v35, v9

    .end local v8    # "initialSize$iv":I
    .end local v9    # "$i$f$takeWhileSize":I
    .restart local v32    # "initialSize$iv":I
    .restart local v35    # "$i$f$takeWhileSize":I
    :goto_19
    if-eqz v11, :cond_2f

    .line 597
    invoke-static {v7, v14}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_2f
    throw v0
.end method

.method public static final readUTF8UntilDelimiter(Lio/ktor/utils/io/core/Input;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "$this$readUTF8UntilDelimiter"    # Lio/ktor/utils/io/core/Input;
    .param p1, "delimiters"    # Ljava/lang/String;
    .param p2, "limit"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v0

    .local v1, "$this$readUTF8UntilDelimiter_u24lambda_u242":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 109
    .local v2, "$i$a$-buildString-StringsKt$readUTF8UntilDelimiter$1":I
    move-object v3, v1

    check-cast v3, Ljava/lang/Appendable;

    invoke-static {p0, v3, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readUTF8UntilDelimiterTo(Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;Ljava/lang/String;I)I

    .line 110
    nop

    .line 108
    .end local v1    # "$this$readUTF8UntilDelimiter_u24lambda_u242":Ljava/lang/StringBuilder;
    .end local v2    # "$i$a$-buildString-StringsKt$readUTF8UntilDelimiter$1":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic readUTF8UntilDelimiter$default(Lio/ktor/utils/io/core/Input;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 107
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const p2, 0x7fffffff

    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readUTF8UntilDelimiter(Lio/ktor/utils/io/core/Input;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final readUTF8UntilDelimiterTo(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/Output;Ljava/lang/String;I)I
    .locals 6
    .param p0, "$this$readUTF8UntilDelimiterTo"    # Lio/ktor/utils/io/core/Input;
    .param p1, "out"    # Lio/ktor/utils/io/core/Output;
    .param p2, "delimiters"    # Ljava/lang/String;
    .param p3, "limit"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 156
    .local v0, "delimitersCount":I
    const/16 v1, 0x7f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .local v4, "$this$isAsciiChar$iv":C
    const/4 v5, 0x0

    .line 640
    .local v5, "$i$f$isAsciiChar":I
    if-gt v4, v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 156
    .end local v4    # "$this$isAsciiChar$iv":C
    .end local v5    # "$i$f$isAsciiChar":I
    :goto_0
    if-eqz v4, :cond_1

    .line 157
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    invoke-static {p0, v1, p1}, Lio/ktor/utils/io/core/ScannerKt;->readUntilDelimiter(Lio/ktor/utils/io/core/Input;BLio/ktor/utils/io/core/Output;)J

    move-result-wide v1

    long-to-int v1, v1

    return v1

    .line 158
    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .restart local v4    # "$this$isAsciiChar$iv":C
    const/4 v5, 0x0

    .line 641
    .restart local v5    # "$i$f$isAsciiChar":I
    if-gt v4, v1, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    .line 158
    .end local v4    # "$this$isAsciiChar$iv":C
    .end local v5    # "$i$f$isAsciiChar":I
    :goto_1
    if-eqz v4, :cond_4

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .restart local v4    # "$this$isAsciiChar$iv":C
    const/4 v5, 0x0

    .line 641
    .restart local v5    # "$i$f$isAsciiChar":I
    if-gt v4, v1, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 158
    .end local v4    # "$this$isAsciiChar$iv":C
    .end local v5    # "$i$f$isAsciiChar":I
    :goto_2
    if-eqz v1, :cond_4

    .line 159
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-static {p0, v1, v2, p1}, Lio/ktor/utils/io/core/ScannerKt;->readUntilDelimiters(Lio/ktor/utils/io/core/Input;BBLio/ktor/utils/io/core/Output;)J

    move-result-wide v1

    long-to-int v1, v1

    return v1

    .line 162
    :cond_4
    invoke-static {p0, p2, p3, p1}, Lio/ktor/utils/io/core/StringsKt;->readUTFUntilDelimiterToSlowAscii(Lio/ktor/utils/io/core/Input;Ljava/lang/String;ILio/ktor/utils/io/core/Output;)I

    move-result v1

    return v1
.end method

.method public static final readUTF8UntilDelimiterTo(Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;Ljava/lang/String;I)I
    .locals 29
    .param p0, "$this$readUTF8UntilDelimiterTo"    # Lio/ktor/utils/io/core/Input;
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "delimiters"    # Ljava/lang/String;
    .param p3, "limit"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    const-string v0, "<this>"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiters"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "decoded":I
    const/4 v5, 0x0

    .line 125
    .local v5, "delimiter":Z
    move-object/from16 v6, p0

    .local v6, "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    const/4 v7, 0x0

    .line 601
    .local v7, "$i$f$takeWhile":I
    const/4 v8, 0x1

    .line 602
    .local v8, "release$iv":Z
    const/4 v9, 0x1

    invoke-static {v6, v9}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v10

    if-nez v10, :cond_0

    goto/16 :goto_6

    .line 604
    .local v10, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move-object v11, v10

    move v10, v8

    move v8, v5

    move v5, v0

    .line 606
    .end local v0    # "decoded":I
    .local v5, "decoded":I
    .local v8, "delimiter":Z
    .local v10, "release$iv":Z
    .local v11, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    :try_start_0
    move-object v0, v11

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer":Lio/ktor/utils/io/core/Buffer;
    const/4 v12, 0x0

    .line 126
    .local v12, "$i$a$-takeWhile-StringsKt$readUTF8UntilDelimiterTo$1":I
    move-object v13, v0

    .local v13, "$this$decodeASCII$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 607
    .local v14, "$i$f$decodeASCII":I
    move-object v15, v13

    .local v15, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v16, 0x0

    .line 608
    .local v16, "$i$f$read":I
    nop

    .line 612
    invoke-virtual {v15}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-virtual {v15}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v18

    invoke-virtual {v15}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .local v17, "memory$iv":Ljava/nio/ByteBuffer;
    move/from16 v20, v19

    .local v18, "start$iv":I
    .local v20, "endExclusive$iv":I
    const/16 v19, 0x0

    .line 613
    .local v19, "$i$a$-read-UTF8Kt$decodeASCII$1$iv":I
    move/from16 v21, v18

    move/from16 v9, v21

    .local v9, "index$iv":I
    :goto_1
    move-object/from16 v22, v0

    move/from16 v0, v20

    .end local v20    # "endExclusive$iv":I
    .local v0, "endExclusive$iv":I
    .local v22, "buffer":Lio/ktor/utils/io/core/Buffer;
    if-ge v9, v0, :cond_5

    .line 614
    move-object/from16 v20, v17

    .local v20, "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    const/16 v23, 0x0

    .line 615
    .local v23, "$i$f$get-eY85DW0":I
    const/16 v24, 0x0

    .line 616
    .local v24, "$i$f$loadAt-impl":I
    move/from16 v25, v7

    move-object/from16 v7, v20

    move/from16 v20, v8

    .end local v8    # "delimiter":Z
    .local v7, "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    .local v20, "delimiter":Z
    .local v25, "$i$f$takeWhile":I
    :try_start_1
    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 615
    .end local v24    # "$i$f$loadAt-impl":I
    nop

    .line 614
    .end local v7    # "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    .end local v23    # "$i$f$get-eY85DW0":I
    and-int/lit16 v7, v8, 0xff

    .line 617
    .local v7, "codepoint$iv":I
    and-int/lit16 v8, v7, 0x80

    move/from16 v23, v10

    .end local v10    # "release$iv":Z
    .local v23, "release$iv":Z
    const/16 v10, 0x80

    move/from16 v24, v12

    .end local v12    # "$i$a$-takeWhile-StringsKt$readUTF8UntilDelimiterTo$1":I
    .local v24, "$i$a$-takeWhile-StringsKt$readUTF8UntilDelimiterTo$1":I
    if-eq v8, v10, :cond_4

    int-to-char v8, v7

    .local v8, "ch":C
    const/4 v10, 0x0

    .line 127
    .local v10, "$i$a$-decodeASCII-StringsKt$readUTF8UntilDelimiterTo$1$1":I
    :try_start_2
    move-object v12, v3

    check-cast v12, Ljava/lang/CharSequence;

    move/from16 v26, v7

    .end local v7    # "codepoint$iv":I
    .local v26, "codepoint$iv":I
    const/4 v7, 0x2

    move/from16 v27, v10

    .end local v10    # "$i$a$-decodeASCII-StringsKt$readUTF8UntilDelimiterTo$1$1":I
    .local v27, "$i$a$-decodeASCII-StringsKt$readUTF8UntilDelimiterTo$1$1":I
    const/4 v10, 0x0

    move/from16 v28, v14

    const/4 v14, 0x0

    .end local v14    # "$i$f$decodeASCII":I
    .local v28, "$i$f$decodeASCII":I
    invoke-static {v12, v8, v14, v7, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 128
    const/4 v7, 0x1

    .line 129
    .end local v20    # "delimiter":Z
    .local v7, "delimiter":Z
    move/from16 v20, v7

    move v7, v14

    goto :goto_2

    .line 131
    .end local v7    # "delimiter":Z
    .restart local v20    # "delimiter":Z
    :cond_1
    if-eq v5, v4, :cond_3

    .line 132
    add-int/lit8 v5, v5, 0x1

    .line 133
    invoke-interface {v2, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 134
    const/4 v7, 0x1

    .line 127
    :goto_2
    nop

    .line 617
    .end local v8    # "ch":C
    .end local v27    # "$i$a$-decodeASCII-StringsKt$readUTF8UntilDelimiterTo$1$1":I
    if-nez v7, :cond_2

    goto :goto_3

    .line 613
    .end local v26    # "codepoint$iv":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v20

    move/from16 v10, v23

    move/from16 v12, v24

    move/from16 v7, v25

    move/from16 v14, v28

    move/from16 v20, v0

    move-object/from16 v0, v22

    goto :goto_1

    .line 131
    .restart local v8    # "ch":C
    .restart local v26    # "codepoint$iv":I
    .restart local v27    # "$i$a$-decodeASCII-StringsKt$readUTF8UntilDelimiterTo$1$1":I
    :cond_3
    invoke-static/range {p3 .. p3}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v7, Lkotlin/KotlinNothingValueException;

    invoke-direct {v7}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v5    # "decoded":I
    .end local v6    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .end local v11    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v20    # "delimiter":Z
    .end local v23    # "release$iv":Z
    .end local v25    # "$i$f$takeWhile":I
    .end local p0    # "$this$readUTF8UntilDelimiterTo":Lio/ktor/utils/io/core/Input;
    .end local p1    # "out":Ljava/lang/Appendable;
    .end local p2    # "delimiters":Ljava/lang/String;
    .end local p3    # "limit":I
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 617
    .end local v8    # "ch":C
    .end local v26    # "codepoint$iv":I
    .end local v27    # "$i$a$-decodeASCII-StringsKt$readUTF8UntilDelimiterTo$1$1":I
    .end local v28    # "$i$f$decodeASCII":I
    .restart local v5    # "decoded":I
    .restart local v6    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .local v7, "codepoint$iv":I
    .restart local v11    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v14    # "$i$f$decodeASCII":I
    .restart local v20    # "delimiter":Z
    .restart local v23    # "release$iv":Z
    .restart local v25    # "$i$f$takeWhile":I
    .restart local p0    # "$this$readUTF8UntilDelimiterTo":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "out":Ljava/lang/Appendable;
    .restart local p2    # "delimiters":Ljava/lang/String;
    .restart local p3    # "limit":I
    :cond_4
    move/from16 v26, v7

    move/from16 v28, v14

    const/4 v14, 0x0

    .end local v7    # "codepoint$iv":I
    .end local v14    # "$i$f$decodeASCII":I
    .restart local v26    # "codepoint$iv":I
    .restart local v28    # "$i$f$decodeASCII":I
    :goto_3
    move/from16 v8, v20

    .line 618
    .end local v20    # "delimiter":Z
    .local v8, "delimiter":Z
    sub-int v7, v9, v18

    :try_start_3
    invoke-virtual {v13, v7}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 619
    move v12, v14

    goto :goto_4

    .line 635
    .end local v0    # "endExclusive$iv":I
    .end local v9    # "index$iv":I
    .end local v13    # "$this$decodeASCII$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v16    # "$i$f$read":I
    .end local v17    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v18    # "start$iv":I
    .end local v19    # "$i$a$-read-UTF8Kt$decodeASCII$1$iv":I
    .end local v22    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v24    # "$i$a$-takeWhile-StringsKt$readUTF8UntilDelimiterTo$1":I
    .end local v26    # "codepoint$iv":I
    .end local v28    # "$i$f$decodeASCII":I
    :catchall_0
    move-exception v0

    move/from16 v10, v23

    goto :goto_7

    .end local v8    # "delimiter":Z
    .end local v23    # "release$iv":Z
    .local v10, "release$iv":Z
    .restart local v20    # "delimiter":Z
    :catchall_1
    move-exception v0

    move/from16 v23, v10

    move/from16 v8, v20

    .end local v10    # "release$iv":Z
    .restart local v23    # "release$iv":Z
    goto :goto_7

    .line 613
    .end local v20    # "delimiter":Z
    .end local v23    # "release$iv":Z
    .end local v25    # "$i$f$takeWhile":I
    .restart local v0    # "endExclusive$iv":I
    .local v7, "$i$f$takeWhile":I
    .restart local v8    # "delimiter":Z
    .restart local v9    # "index$iv":I
    .restart local v10    # "release$iv":Z
    .restart local v12    # "$i$a$-takeWhile-StringsKt$readUTF8UntilDelimiterTo$1":I
    .restart local v13    # "$this$decodeASCII$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v14    # "$i$f$decodeASCII":I
    .restart local v15    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v16    # "$i$f$read":I
    .restart local v17    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v18    # "start$iv":I
    .restart local v19    # "$i$a$-read-UTF8Kt$decodeASCII$1$iv":I
    .restart local v22    # "buffer":Lio/ktor/utils/io/core/Buffer;
    :cond_5
    move/from16 v25, v7

    move/from16 v20, v8

    move/from16 v23, v10

    move/from16 v24, v12

    move/from16 v28, v14

    .line 623
    .end local v7    # "$i$f$takeWhile":I
    .end local v8    # "delimiter":Z
    .end local v9    # "index$iv":I
    .end local v10    # "release$iv":Z
    .end local v12    # "$i$a$-takeWhile-StringsKt$readUTF8UntilDelimiterTo$1":I
    .end local v14    # "$i$f$decodeASCII":I
    .restart local v20    # "delimiter":Z
    .restart local v23    # "release$iv":Z
    .restart local v24    # "$i$a$-takeWhile-StringsKt$readUTF8UntilDelimiterTo$1":I
    .restart local v25    # "$i$f$takeWhile":I
    .restart local v28    # "$i$f$decodeASCII":I
    sub-int v0, v0, v18

    .line 612
    .end local v0    # "endExclusive$iv":I
    .end local v17    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v18    # "start$iv":I
    .end local v19    # "$i$a$-read-UTF8Kt$decodeASCII$1$iv":I
    nop

    .line 624
    .local v0, "rc$iv$iv":I
    :try_start_4
    invoke-virtual {v15, v0}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 625
    nop

    .line 626
    .end local v0    # "rc$iv$iv":I
    .end local v15    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v16    # "$i$f$read":I
    move/from16 v8, v20

    const/4 v12, 0x1

    .line 126
    .end local v13    # "$this$decodeASCII$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v20    # "delimiter":Z
    .end local v28    # "$i$f$decodeASCII":I
    .restart local v8    # "delimiter":Z
    :goto_4
    nop

    .line 606
    .end local v22    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v24    # "$i$a$-takeWhile-StringsKt$readUTF8UntilDelimiterTo$1":I
    if-nez v12, :cond_6

    .line 627
    move/from16 v10, v23

    goto :goto_5

    .line 629
    :cond_6
    const/4 v10, 0x0

    .line 630
    .end local v23    # "release$iv":Z
    .restart local v10    # "release$iv":Z
    :try_start_5
    invoke-static {v6, v11}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v0, :cond_9

    .line 635
    :goto_5
    if-eqz v10, :cond_7

    .line 636
    invoke-static {v6, v11}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 638
    :cond_7
    nop

    .line 639
    move v0, v5

    move v5, v8

    .line 139
    .end local v6    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .end local v8    # "delimiter":Z
    .end local v10    # "release$iv":Z
    .end local v11    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v25    # "$i$f$takeWhile":I
    .local v0, "decoded":I
    .local v5, "delimiter":Z
    :goto_6
    if-nez v5, :cond_8

    .line 140
    invoke-static {v1, v2, v3, v4, v0}, Lio/ktor/utils/io/core/StringsKt;->readUTF8UntilDelimiterToSlowUtf8(Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;Ljava/lang/String;II)I

    move-result v0

    .line 143
    :cond_8
    return v0

    .line 631
    .local v0, "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v5, "decoded":I
    .restart local v6    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .restart local v8    # "delimiter":Z
    .restart local v10    # "release$iv":Z
    .restart local v11    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v25    # "$i$f$takeWhile":I
    :cond_9
    move-object v11, v0

    .line 632
    const/4 v10, 0x1

    .line 633
    .end local v0    # "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move/from16 v7, v25

    const/4 v9, 0x1

    goto/16 :goto_0

    .line 635
    :catchall_2
    move-exception v0

    goto :goto_7

    .end local v8    # "delimiter":Z
    .end local v10    # "release$iv":Z
    .restart local v20    # "delimiter":Z
    .restart local v23    # "release$iv":Z
    :catchall_3
    move-exception v0

    move/from16 v8, v20

    move/from16 v10, v23

    goto :goto_7

    .end local v20    # "delimiter":Z
    .end local v23    # "release$iv":Z
    .end local v25    # "$i$f$takeWhile":I
    .restart local v7    # "$i$f$takeWhile":I
    .restart local v8    # "delimiter":Z
    .restart local v10    # "release$iv":Z
    :catchall_4
    move-exception v0

    move/from16 v25, v7

    move/from16 v23, v10

    .end local v7    # "$i$f$takeWhile":I
    .restart local v25    # "$i$f$takeWhile":I
    :goto_7
    if-eqz v10, :cond_a

    .line 636
    invoke-static {v6, v11}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_a
    throw v0
.end method

.method public static synthetic readUTF8UntilDelimiterTo$default(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/Output;Ljava/lang/String;IILjava/lang/Object;)I
    .locals 0

    .line 154
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const p3, 0x7fffffff

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/StringsKt;->readUTF8UntilDelimiterTo(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/Output;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static synthetic readUTF8UntilDelimiterTo$default(Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;Ljava/lang/String;IILjava/lang/Object;)I
    .locals 0

    .line 121
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const p3, 0x7fffffff

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/StringsKt;->readUTF8UntilDelimiterTo(Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static final readUTF8UntilDelimiterToSlowUtf8(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/Output;Ljava/lang/String;II)I
    .locals 35
    .param p0, "$this$readUTF8UntilDelimiterToSlowUtf8"    # Lio/ktor/utils/io/core/Input;
    .param p1, "out"    # Lio/ktor/utils/io/core/Output;
    .param p2, "delimiters"    # Ljava/lang/String;
    .param p3, "limit"    # I
    .param p4, "decoded0"    # I

    .line 402
    move/from16 v1, p3

    const/4 v0, 0x0

    .local v0, "decoded":I
    move/from16 v0, p4

    .line 403
    const/4 v2, 0x0

    .local v2, "size":I
    const/4 v2, 0x1

    .line 405
    move-object/from16 v3, p0

    .line 699
    .local v3, "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    const/4 v4, 0x1

    .local v4, "initialSize$iv":I
    const/4 v5, 0x0

    .line 700
    .local v5, "$i$f$takeWhileSize":I
    const/4 v6, 0x1

    .line 701
    .local v6, "release$iv":Z
    invoke-static {v3, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v7

    if-nez v7, :cond_0

    move-object/from16 v6, p1

    goto/16 :goto_13

    .line 702
    .local v7, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move v9, v4

    .line 704
    .local v9, "size$iv":I
    move v10, v9

    move-object v9, v7

    move v7, v6

    move v6, v2

    move v2, v0

    .line 706
    .end local v0    # "decoded":I
    .local v2, "decoded":I
    .local v6, "size":I
    .local v7, "release$iv":Z
    .local v9, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v10, "size$iv":I
    :goto_0
    :try_start_0
    move-object v0, v9

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v11, 0x0

    .line 707
    .local v11, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v12

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    sub-int/2addr v12, v13

    .line 706
    .end local v0    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v11    # "$i$f$getReadRemaining":I
    move v11, v12

    .local v11, "before$iv":I
    const/4 v12, 0x0

    .line 708
    .local v12, "after$iv":I
    if-lt v11, v10, :cond_18

    .line 709
    nop

    .line 710
    :try_start_1
    move-object v0, v9

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer":Lio/ktor/utils/io/core/Buffer;
    const/4 v13, 0x0

    .line 406
    .local v13, "$i$a$-takeWhileSize$default-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1":I
    move-object v14, v0

    .local v14, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v15, 0x0

    .line 711
    .local v15, "$i$f$getReadRemaining":I
    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v16

    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v17

    sub-int v16, v16, v17

    .line 406
    .end local v14    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "$i$f$getReadRemaining":I
    move/from16 v14, v16

    .line 408
    .local v14, "before":I
    move-object v15, v0

    .local v15, "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v16, 0x0

    .line 712
    .local v16, "$i$f$decodeUTF8":I
    const/16 v17, 0x0

    .line 713
    .local v17, "byteCount$iv":I
    const/16 v18, 0x0

    .line 714
    .local v18, "value$iv":I
    const/16 v19, 0x0

    .line 716
    .local v19, "lastByteCount$iv":I
    move-object/from16 v20, v15

    .local v20, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v21, 0x0

    .line 717
    .local v21, "$i$f$read":I
    nop

    .line 721
    invoke-virtual/range {v20 .. v20}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v22

    invoke-virtual/range {v20 .. v20}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v23

    invoke-virtual/range {v20 .. v20}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .local v22, "memory$iv":Ljava/nio/ByteBuffer;
    move/from16 v25, v24

    .local v23, "start$iv":I
    .local v25, "endExclusive$iv":I
    const/16 v24, 0x0

    .line 722
    .local v24, "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    move/from16 v26, v23

    move/from16 v8, v26

    .local v8, "index$iv":I
    :goto_1
    move/from16 v27, v4

    .end local v4    # "initialSize$iv":I
    .local v27, "initialSize$iv":I
    move/from16 v4, v25

    .end local v25    # "endExclusive$iv":I
    .local v4, "endExclusive$iv":I
    if-ge v8, v4, :cond_15

    .line 723
    move-object/from16 v25, v22

    .local v25, "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    const/16 v28, 0x0

    .line 724
    .local v28, "$i$f$get-eY85DW0":I
    const/16 v29, 0x0

    .line 725
    .local v29, "$i$f$loadAt-impl":I
    move/from16 v30, v5

    move-object/from16 v5, v25

    move/from16 v25, v6

    .end local v6    # "size":I
    .local v5, "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    .local v25, "size":I
    .local v30, "$i$f$takeWhileSize":I
    :try_start_2
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 724
    .end local v29    # "$i$f$loadAt-impl":I
    nop

    .line 723
    .end local v5    # "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    .end local v28    # "$i$f$get-eY85DW0":I
    and-int/lit16 v5, v6, 0xff

    .line 726
    .local v5, "v$iv":I
    nop

    .line 727
    and-int/lit16 v6, v5, 0x80

    move/from16 v28, v7

    .end local v7    # "release$iv":Z
    .local v28, "release$iv":Z
    if-nez v6, :cond_4

    .line 728
    if-nez v17, :cond_3

    .line 729
    int-to-char v6, v5

    .local v6, "ch":C
    const/16 v31, 0x0

    .line 409
    .local v31, "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1$1":I
    :try_start_3
    move-object/from16 v7, p2

    check-cast v7, Ljava/lang/CharSequence;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v32, v10

    move/from16 v33, v12

    move/from16 v34, v13

    const/4 v10, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    .end local v10    # "size$iv":I
    .end local v12    # "after$iv":I
    .end local v13    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1":I
    .local v32, "size$iv":I
    .local v33, "after$iv":I
    .local v34, "$i$a$-takeWhileSize$default-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1":I
    :try_start_4
    invoke-static {v7, v6, v13, v12, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 410
    const/4 v7, 0x0

    goto :goto_2

    .line 412
    :cond_1
    if-eq v2, v1, :cond_2

    .line 415
    add-int/lit8 v2, v2, 0x1

    .line 416
    const/4 v7, 0x1

    .line 409
    :goto_2
    nop

    .line 729
    .end local v6    # "ch":C
    .end local v31    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1$1":I
    if-nez v7, :cond_14

    .line 730
    sub-int v6, v8, v23

    invoke-virtual {v15, v6}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 731
    const/4 v10, -0x1

    const/4 v13, 0x0

    goto/16 :goto_a

    .line 413
    .restart local v6    # "ch":C
    .restart local v31    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1$1":I
    :cond_2
    invoke-static/range {p3 .. p3}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v7, Lkotlin/KotlinNothingValueException;

    invoke-direct {v7}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v2    # "decoded":I
    .end local v3    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v9    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v11    # "before$iv":I
    .end local v25    # "size":I
    .end local v27    # "initialSize$iv":I
    .end local v28    # "release$iv":Z
    .end local v30    # "$i$f$takeWhileSize":I
    .end local v32    # "size$iv":I
    .end local v33    # "after$iv":I
    .end local p0    # "$this$readUTF8UntilDelimiterToSlowUtf8":Lio/ktor/utils/io/core/Input;
    .end local p1    # "out":Lio/ktor/utils/io/core/Output;
    .end local p2    # "delimiters":Ljava/lang/String;
    .end local p3    # "limit":I
    .end local p4    # "decoded0":I
    throw v7

    .line 791
    .end local v0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "endExclusive$iv":I
    .end local v5    # "v$iv":I
    .end local v6    # "ch":C
    .end local v8    # "index$iv":I
    .end local v14    # "before":I
    .end local v15    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v16    # "$i$f$decodeUTF8":I
    .end local v17    # "byteCount$iv":I
    .end local v18    # "value$iv":I
    .end local v19    # "lastByteCount$iv":I
    .end local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v21    # "$i$f$read":I
    .end local v22    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v23    # "start$iv":I
    .end local v24    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    .end local v31    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1$1":I
    .end local v34    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1":I
    .restart local v2    # "decoded":I
    .restart local v3    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v9    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v10    # "size$iv":I
    .restart local v11    # "before$iv":I
    .restart local v12    # "after$iv":I
    .restart local v25    # "size":I
    .restart local v27    # "initialSize$iv":I
    .restart local v28    # "release$iv":Z
    .restart local v30    # "$i$f$takeWhileSize":I
    .restart local p0    # "$this$readUTF8UntilDelimiterToSlowUtf8":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "out":Lio/ktor/utils/io/core/Output;
    .restart local p2    # "delimiters":Ljava/lang/String;
    .restart local p3    # "limit":I
    .restart local p4    # "decoded0":I
    :catchall_0
    move-exception v0

    move/from16 v32, v10

    move/from16 v33, v12

    move-object/from16 v6, p1

    .end local v10    # "size$iv":I
    .end local v12    # "after$iv":I
    .restart local v32    # "size$iv":I
    .restart local v33    # "after$iv":I
    goto/16 :goto_e

    .line 728
    .end local v32    # "size$iv":I
    .end local v33    # "after$iv":I
    .restart local v0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .restart local v4    # "endExclusive$iv":I
    .restart local v5    # "v$iv":I
    .restart local v8    # "index$iv":I
    .restart local v10    # "size$iv":I
    .restart local v12    # "after$iv":I
    .restart local v13    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1":I
    .restart local v14    # "before":I
    .restart local v15    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v16    # "$i$f$decodeUTF8":I
    .restart local v17    # "byteCount$iv":I
    .restart local v18    # "value$iv":I
    .restart local v19    # "lastByteCount$iv":I
    .restart local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v21    # "$i$f$read":I
    .restart local v22    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v23    # "start$iv":I
    .restart local v24    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    :cond_3
    move/from16 v32, v10

    move/from16 v33, v12

    move/from16 v34, v13

    .end local v10    # "size$iv":I
    .end local v12    # "after$iv":I
    .end local v13    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1":I
    .restart local v32    # "size$iv":I
    .restart local v33    # "after$iv":I
    .restart local v34    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1":I
    invoke-static/range {v17 .. v17}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedByteCount(I)Ljava/lang/Void;

    new-instance v6, Lkotlin/KotlinNothingValueException;

    invoke-direct {v6}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v2    # "decoded":I
    .end local v3    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v9    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v11    # "before$iv":I
    .end local v25    # "size":I
    .end local v27    # "initialSize$iv":I
    .end local v28    # "release$iv":Z
    .end local v30    # "$i$f$takeWhileSize":I
    .end local v32    # "size$iv":I
    .end local v33    # "after$iv":I
    .end local p0    # "$this$readUTF8UntilDelimiterToSlowUtf8":Lio/ktor/utils/io/core/Input;
    .end local p1    # "out":Lio/ktor/utils/io/core/Output;
    .end local p2    # "delimiters":Ljava/lang/String;
    .end local p3    # "limit":I
    .end local p4    # "decoded0":I
    throw v6

    .line 734
    .end local v34    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1":I
    .restart local v2    # "decoded":I
    .restart local v3    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v9    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v10    # "size$iv":I
    .restart local v11    # "before$iv":I
    .restart local v12    # "after$iv":I
    .restart local v13    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1":I
    .restart local v25    # "size":I
    .restart local v27    # "initialSize$iv":I
    .restart local v28    # "release$iv":Z
    .restart local v30    # "$i$f$takeWhileSize":I
    .restart local p0    # "$this$readUTF8UntilDelimiterToSlowUtf8":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "out":Lio/ktor/utils/io/core/Output;
    .restart local p2    # "delimiters":Ljava/lang/String;
    .restart local p3    # "limit":I
    .restart local p4    # "decoded0":I
    :cond_4
    move/from16 v32, v10

    move/from16 v33, v12

    move/from16 v34, v13

    .end local v10    # "size$iv":I
    .end local v12    # "after$iv":I
    .end local v13    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1":I
    .restart local v32    # "size$iv":I
    .restart local v33    # "after$iv":I
    .restart local v34    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1":I
    if-nez v17, :cond_8

    .line 737
    const/16 v6, 0x80

    .line 738
    .local v6, "mask$iv":I
    move v7, v5

    .line 740
    .end local v18    # "value$iv":I
    .local v7, "value$iv":I
    const/4 v10, 0x1

    .local v10, "i$iv":I
    :goto_3
    const/4 v12, 0x7

    if-ge v10, v12, :cond_6

    .line 741
    and-int v12, v7, v6

    if-eqz v12, :cond_5

    .line 742
    not-int v12, v6

    and-int/2addr v7, v12

    .line 743
    shr-int/lit8 v6, v6, 0x1

    .line 744
    add-int/lit8 v17, v17, 0x1

    .line 740
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 746
    :cond_5
    nop

    .line 750
    .end local v10    # "i$iv":I
    :cond_6
    move/from16 v10, v17

    .line 751
    .end local v19    # "lastByteCount$iv":I
    .local v10, "lastByteCount$iv":I
    add-int/lit8 v17, v17, -0x1

    .line 753
    sub-int v12, v4, v8

    if-le v10, v12, :cond_7

    .line 754
    sub-int v12, v8, v23

    invoke-virtual {v15, v12}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 755
    const/4 v13, 0x0

    goto/16 :goto_a

    .line 753
    :cond_7
    move/from16 v18, v7

    move/from16 v19, v10

    goto/16 :goto_9

    .line 760
    .end local v6    # "mask$iv":I
    .end local v7    # "value$iv":I
    .end local v10    # "lastByteCount$iv":I
    .restart local v18    # "value$iv":I
    .restart local v19    # "lastByteCount$iv":I
    :cond_8
    shl-int/lit8 v6, v18, 0x6

    and-int/lit8 v7, v5, 0x7f

    or-int/2addr v6, v7

    .line 761
    .end local v18    # "value$iv":I
    .local v6, "value$iv":I
    add-int/lit8 v17, v17, -0x1

    .line 763
    if-nez v17, :cond_13

    .line 764
    invoke-static {v6}, Lio/ktor/utils/io/core/internal/UTF8Kt;->isBmpCodePoint(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 765
    int-to-char v7, v6

    .local v7, "ch":C
    const/4 v10, 0x0

    .line 409
    .local v10, "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1$1":I
    move-object/from16 v12, p2

    check-cast v12, Ljava/lang/CharSequence;

    move/from16 v31, v5

    move/from16 v18, v10

    const/4 v5, 0x2

    const/4 v10, 0x0

    const/4 v13, 0x0

    .end local v5    # "v$iv":I
    .end local v10    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1$1":I
    .local v18, "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1$1":I
    .local v31, "v$iv":I
    invoke-static {v12, v7, v10, v5, v13}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 410
    const/4 v5, 0x0

    goto :goto_4

    .line 412
    :cond_9
    if-eq v2, v1, :cond_a

    .line 415
    add-int/lit8 v2, v2, 0x1

    .line 416
    const/4 v5, 0x1

    .line 409
    :goto_4
    nop

    .line 765
    .end local v7    # "ch":C
    .end local v18    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1$1":I
    if-nez v5, :cond_e

    .line 766
    sub-int v5, v8, v23

    sub-int v5, v5, v19

    const/4 v7, 0x1

    add-int/2addr v5, v7

    invoke-virtual {v15, v5}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 767
    const/4 v10, -0x1

    const/4 v13, 0x0

    goto/16 :goto_a

    .line 413
    .restart local v7    # "ch":C
    .restart local v18    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1$1":I
    :cond_a
    invoke-static/range {p3 .. p3}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v5, Lkotlin/KotlinNothingValueException;

    invoke-direct {v5}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v2    # "decoded":I
    .end local v3    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v9    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v11    # "before$iv":I
    .end local v25    # "size":I
    .end local v27    # "initialSize$iv":I
    .end local v28    # "release$iv":Z
    .end local v30    # "$i$f$takeWhileSize":I
    .end local v32    # "size$iv":I
    .end local v33    # "after$iv":I
    .end local p0    # "$this$readUTF8UntilDelimiterToSlowUtf8":Lio/ktor/utils/io/core/Input;
    .end local p1    # "out":Lio/ktor/utils/io/core/Output;
    .end local p2    # "delimiters":Ljava/lang/String;
    .end local p3    # "limit":I
    .end local p4    # "decoded0":I
    throw v5

    .line 769
    .end local v7    # "ch":C
    .end local v18    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1$1":I
    .end local v31    # "v$iv":I
    .restart local v2    # "decoded":I
    .restart local v3    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v5    # "v$iv":I
    .restart local v9    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v11    # "before$iv":I
    .restart local v25    # "size":I
    .restart local v27    # "initialSize$iv":I
    .restart local v28    # "release$iv":Z
    .restart local v30    # "$i$f$takeWhileSize":I
    .restart local v32    # "size$iv":I
    .restart local v33    # "after$iv":I
    .restart local p0    # "$this$readUTF8UntilDelimiterToSlowUtf8":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "out":Lio/ktor/utils/io/core/Output;
    .restart local p2    # "delimiters":Ljava/lang/String;
    .restart local p3    # "limit":I
    .restart local p4    # "decoded0":I
    :cond_b
    move/from16 v31, v5

    .end local v5    # "v$iv":I
    .restart local v31    # "v$iv":I
    invoke-static {v6}, Lio/ktor/utils/io/core/internal/UTF8Kt;->isValidCodePoint(I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 772
    invoke-static {v6}, Lio/ktor/utils/io/core/internal/UTF8Kt;->highSurrogate(I)I

    move-result v5

    int-to-char v5, v5

    .local v5, "ch":C
    const/4 v7, 0x0

    .line 409
    .local v7, "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1$1":I
    move-object/from16 v10, p2

    check-cast v10, Ljava/lang/CharSequence;

    move/from16 v18, v7

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    .end local v7    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1$1":I
    .restart local v18    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1$1":I
    invoke-static {v10, v5, v7, v13, v12}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 410
    const/4 v7, 0x0

    goto :goto_5

    .line 412
    :cond_c
    if-eq v2, v1, :cond_11

    .line 415
    add-int/lit8 v2, v2, 0x1

    .line 416
    const/4 v7, 0x1

    .line 409
    :goto_5
    nop

    .line 772
    .end local v5    # "ch":C
    .end local v18    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1$1":I
    if-eqz v7, :cond_10

    .line 773
    invoke-static {v6}, Lio/ktor/utils/io/core/internal/UTF8Kt;->lowSurrogate(I)I

    move-result v5

    int-to-char v5, v5

    .restart local v5    # "ch":C
    const/4 v7, 0x0

    .line 409
    .restart local v7    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1$1":I
    move-object/from16 v10, p2

    check-cast v10, Ljava/lang/CharSequence;

    move/from16 v18, v7

    const/4 v7, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    .end local v7    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1$1":I
    .restart local v18    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1$1":I
    invoke-static {v10, v5, v13, v7, v12}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 410
    move v7, v13

    goto :goto_6

    .line 412
    :cond_d
    if-eq v2, v1, :cond_f

    .line 415
    add-int/lit8 v2, v2, 0x1

    .line 416
    const/4 v7, 0x1

    .line 409
    :goto_6
    nop

    .line 773
    .end local v5    # "ch":C
    .end local v18    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1$1":I
    if-nez v7, :cond_e

    goto :goto_8

    .line 780
    :cond_e
    const/4 v5, 0x0

    move/from16 v18, v5

    .end local v6    # "value$iv":I
    .local v5, "value$iv":I
    goto :goto_9

    .line 413
    .local v5, "ch":C
    .restart local v6    # "value$iv":I
    .restart local v18    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1$1":I
    :cond_f
    invoke-static/range {p3 .. p3}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v7, Lkotlin/KotlinNothingValueException;

    invoke-direct {v7}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v2    # "decoded":I
    .end local v3    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v9    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v11    # "before$iv":I
    .end local v25    # "size":I
    .end local v27    # "initialSize$iv":I
    .end local v28    # "release$iv":Z
    .end local v30    # "$i$f$takeWhileSize":I
    .end local v32    # "size$iv":I
    .end local v33    # "after$iv":I
    .end local p0    # "$this$readUTF8UntilDelimiterToSlowUtf8":Lio/ktor/utils/io/core/Input;
    .end local p1    # "out":Lio/ktor/utils/io/core/Output;
    .end local p2    # "delimiters":Ljava/lang/String;
    .end local p3    # "limit":I
    .end local p4    # "decoded0":I
    :goto_7
    throw v7

    .line 772
    .end local v5    # "ch":C
    .end local v18    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1$1":I
    .restart local v2    # "decoded":I
    .restart local v3    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v9    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v11    # "before$iv":I
    .restart local v25    # "size":I
    .restart local v27    # "initialSize$iv":I
    .restart local v28    # "release$iv":Z
    .restart local v30    # "$i$f$takeWhileSize":I
    .restart local v32    # "size$iv":I
    .restart local v33    # "after$iv":I
    .restart local p0    # "$this$readUTF8UntilDelimiterToSlowUtf8":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "out":Lio/ktor/utils/io/core/Output;
    .restart local p2    # "delimiters":Ljava/lang/String;
    .restart local p3    # "limit":I
    .restart local p4    # "decoded0":I
    :cond_10
    const/4 v13, 0x0

    .line 775
    :goto_8
    sub-int v5, v8, v23

    sub-int v5, v5, v19

    const/4 v7, 0x1

    add-int/2addr v5, v7

    invoke-virtual {v15, v5}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 776
    const/4 v10, -0x1

    goto :goto_a

    .line 413
    .restart local v5    # "ch":C
    .restart local v18    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1$1":I
    :cond_11
    invoke-static/range {p3 .. p3}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v7, Lkotlin/KotlinNothingValueException;

    invoke-direct {v7}, Lkotlin/KotlinNothingValueException;-><init>()V

    goto :goto_7

    .line 770
    .end local v5    # "ch":C
    .end local v18    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1$1":I
    :cond_12
    invoke-static {v6}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v5, Lkotlin/KotlinNothingValueException;

    invoke-direct {v5}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v2    # "decoded":I
    .end local v3    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v9    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v11    # "before$iv":I
    .end local v25    # "size":I
    .end local v27    # "initialSize$iv":I
    .end local v28    # "release$iv":Z
    .end local v30    # "$i$f$takeWhileSize":I
    .end local v32    # "size$iv":I
    .end local v33    # "after$iv":I
    .end local p0    # "$this$readUTF8UntilDelimiterToSlowUtf8":Lio/ktor/utils/io/core/Input;
    .end local p1    # "out":Lio/ktor/utils/io/core/Output;
    .end local p2    # "delimiters":Ljava/lang/String;
    .end local p3    # "limit":I
    .end local p4    # "decoded0":I
    throw v5

    .line 763
    .end local v31    # "v$iv":I
    .restart local v2    # "decoded":I
    .restart local v3    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .local v5, "v$iv":I
    .restart local v9    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v11    # "before$iv":I
    .restart local v25    # "size":I
    .restart local v27    # "initialSize$iv":I
    .restart local v28    # "release$iv":Z
    .restart local v30    # "$i$f$takeWhileSize":I
    .restart local v32    # "size$iv":I
    .restart local v33    # "after$iv":I
    .restart local p0    # "$this$readUTF8UntilDelimiterToSlowUtf8":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "out":Lio/ktor/utils/io/core/Output;
    .restart local p2    # "delimiters":Ljava/lang/String;
    .restart local p3    # "limit":I
    .restart local p4    # "decoded0":I
    :cond_13
    move/from16 v31, v5

    .end local v5    # "v$iv":I
    .restart local v31    # "v$iv":I
    move/from16 v18, v6

    .line 722
    .end local v6    # "value$iv":I
    .end local v31    # "v$iv":I
    .local v18, "value$iv":I
    :cond_14
    :goto_9
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v25

    move/from16 v7, v28

    move/from16 v5, v30

    move/from16 v10, v32

    move/from16 v12, v33

    move/from16 v13, v34

    move/from16 v25, v4

    move/from16 v4, v27

    goto/16 :goto_1

    .line 791
    .end local v0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "endExclusive$iv":I
    .end local v8    # "index$iv":I
    .end local v14    # "before":I
    .end local v15    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v16    # "$i$f$decodeUTF8":I
    .end local v17    # "byteCount$iv":I
    .end local v18    # "value$iv":I
    .end local v19    # "lastByteCount$iv":I
    .end local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v21    # "$i$f$read":I
    .end local v22    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v23    # "start$iv":I
    .end local v24    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    .end local v28    # "release$iv":Z
    .end local v32    # "size$iv":I
    .end local v33    # "after$iv":I
    .end local v34    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1":I
    .local v7, "release$iv":Z
    .local v10, "size$iv":I
    .restart local v12    # "after$iv":I
    :catchall_1
    move-exception v0

    move/from16 v28, v7

    move/from16 v32, v10

    move/from16 v33, v12

    move-object/from16 v6, p1

    .end local v7    # "release$iv":Z
    .end local v10    # "size$iv":I
    .end local v12    # "after$iv":I
    .restart local v28    # "release$iv":Z
    .restart local v32    # "size$iv":I
    .restart local v33    # "after$iv":I
    goto/16 :goto_e

    .line 722
    .end local v25    # "size":I
    .end local v28    # "release$iv":Z
    .end local v30    # "$i$f$takeWhileSize":I
    .end local v32    # "size$iv":I
    .end local v33    # "after$iv":I
    .restart local v0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .restart local v4    # "endExclusive$iv":I
    .local v5, "$i$f$takeWhileSize":I
    .local v6, "size":I
    .restart local v7    # "release$iv":Z
    .restart local v8    # "index$iv":I
    .restart local v10    # "size$iv":I
    .restart local v12    # "after$iv":I
    .restart local v13    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1":I
    .restart local v14    # "before":I
    .restart local v15    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v16    # "$i$f$decodeUTF8":I
    .restart local v17    # "byteCount$iv":I
    .restart local v18    # "value$iv":I
    .restart local v19    # "lastByteCount$iv":I
    .restart local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v21    # "$i$f$read":I
    .restart local v22    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v23    # "start$iv":I
    .restart local v24    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    :cond_15
    move/from16 v30, v5

    move/from16 v25, v6

    move/from16 v28, v7

    move/from16 v32, v10

    move/from16 v33, v12

    move/from16 v34, v13

    const/4 v13, 0x0

    .line 786
    .end local v5    # "$i$f$takeWhileSize":I
    .end local v6    # "size":I
    .end local v7    # "release$iv":Z
    .end local v8    # "index$iv":I
    .end local v10    # "size$iv":I
    .end local v12    # "after$iv":I
    .end local v13    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1":I
    .restart local v25    # "size":I
    .restart local v28    # "release$iv":Z
    .restart local v30    # "$i$f$takeWhileSize":I
    .restart local v32    # "size$iv":I
    .restart local v33    # "after$iv":I
    .restart local v34    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1":I
    sub-int v4, v4, v23

    .line 721
    .end local v4    # "endExclusive$iv":I
    .end local v22    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v23    # "start$iv":I
    .end local v24    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    nop

    .line 787
    .local v4, "rc$iv$iv":I
    move-object/from16 v5, v20

    .end local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .local v5, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    invoke-virtual {v5, v4}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 788
    nop

    .line 789
    .end local v4    # "rc$iv$iv":I
    .end local v5    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v21    # "$i$f$read":I
    move v10, v13

    .line 408
    .end local v15    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v16    # "$i$f$decodeUTF8":I
    .end local v17    # "byteCount$iv":I
    .end local v18    # "value$iv":I
    .end local v19    # "lastByteCount$iv":I
    :goto_a
    move v4, v10

    .line 420
    .end local v25    # "size":I
    .local v4, "size":I
    move-object v5, v0

    .local v5, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 790
    .local v6, "$i$f$getReadRemaining":I
    :try_start_5
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v7

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v8

    sub-int/2addr v7, v8

    .line 420
    .end local v5    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$getReadRemaining":I
    sub-int v5, v14, v7

    .line 421
    .local v5, "delta":I
    if-lez v5, :cond_16

    .line 422
    invoke-virtual {v0, v5}, Lio/ktor/utils/io/core/Buffer;->rewind(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 423
    move-object/from16 v6, p1

    :try_start_6
    invoke-static {v6, v0, v5}, Lio/ktor/utils/io/core/OutputKt;->writeFully(Lio/ktor/utils/io/core/Output;Lio/ktor/utils/io/core/Buffer;I)V

    goto :goto_b

    .line 421
    :cond_16
    move-object/from16 v6, p1

    .line 426
    :goto_b
    const/4 v7, -0x1

    if-ne v4, v7, :cond_17

    goto :goto_c

    :cond_17
    const/4 v7, 0x1

    invoke-static {v4, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move v13, v8

    :goto_c
    move v4, v13

    .line 427
    nop

    .line 710
    .end local v0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "delta":I
    .end local v14    # "before":I
    .end local v34    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8UntilDelimiterToSlowUtf8$1":I
    move v10, v4

    .line 791
    .end local v32    # "size$iv":I
    .restart local v10    # "size$iv":I
    :try_start_7
    move-object v0, v9

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v5, 0x0

    .line 707
    .local v5, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v7

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    sub-int/2addr v7, v8

    .line 791
    .end local v0    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "$i$f$getReadRemaining":I
    move v0, v7

    .line 792
    .end local v33    # "after$iv":I
    .local v0, "after$iv":I
    goto :goto_f

    .line 813
    .end local v0    # "after$iv":I
    .end local v11    # "before$iv":I
    :catchall_2
    move-exception v0

    move/from16 v7, v28

    goto/16 :goto_14

    .line 791
    .end local v10    # "size$iv":I
    .restart local v11    # "before$iv":I
    .restart local v32    # "size$iv":I
    .restart local v33    # "after$iv":I
    :catchall_3
    move-exception v0

    goto :goto_d

    :catchall_4
    move-exception v0

    move-object/from16 v6, p1

    :goto_d
    move/from16 v25, v4

    goto :goto_e

    .end local v4    # "size":I
    .restart local v25    # "size":I
    :catchall_5
    move-exception v0

    move-object/from16 v6, p1

    goto :goto_e

    .end local v25    # "size":I
    .end local v27    # "initialSize$iv":I
    .end local v28    # "release$iv":Z
    .end local v30    # "$i$f$takeWhileSize":I
    .end local v32    # "size$iv":I
    .end local v33    # "after$iv":I
    .local v4, "initialSize$iv":I
    .local v5, "$i$f$takeWhileSize":I
    .local v6, "size":I
    .restart local v7    # "release$iv":Z
    .restart local v10    # "size$iv":I
    .restart local v12    # "after$iv":I
    :catchall_6
    move-exception v0

    move/from16 v27, v4

    move/from16 v30, v5

    move/from16 v25, v6

    move/from16 v28, v7

    move/from16 v32, v10

    move/from16 v33, v12

    move-object/from16 v6, p1

    .end local v4    # "initialSize$iv":I
    .end local v5    # "$i$f$takeWhileSize":I
    .end local v6    # "size":I
    .end local v7    # "release$iv":Z
    .end local v10    # "size$iv":I
    .end local v12    # "after$iv":I
    .restart local v25    # "size":I
    .restart local v27    # "initialSize$iv":I
    .restart local v28    # "release$iv":Z
    .restart local v30    # "$i$f$takeWhileSize":I
    .restart local v32    # "size$iv":I
    .restart local v33    # "after$iv":I
    :goto_e
    :try_start_8
    move-object v4, v9

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .local v4, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v5, 0x0

    .line 707
    .local v5, "$i$f$getReadRemaining":I
    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v7

    invoke-virtual {v4}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v8

    sub-int/2addr v7, v8

    .line 791
    .end local v4    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "$i$f$getReadRemaining":I
    move v4, v7

    .end local v2    # "decoded":I
    .end local v3    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v9    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v25    # "size":I
    .end local v27    # "initialSize$iv":I
    .end local v28    # "release$iv":Z
    .end local v30    # "$i$f$takeWhileSize":I
    .end local v32    # "size$iv":I
    .end local v33    # "after$iv":I
    .end local p0    # "$this$readUTF8UntilDelimiterToSlowUtf8":Lio/ktor/utils/io/core/Input;
    .end local p1    # "out":Lio/ktor/utils/io/core/Output;
    .end local p2    # "delimiters":Ljava/lang/String;
    .end local p3    # "limit":I
    .end local p4    # "decoded0":I
    .local v4, "after$iv":I
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 813
    .end local v4    # "after$iv":I
    .end local v11    # "before$iv":I
    .restart local v2    # "decoded":I
    .restart local v3    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v9    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v25    # "size":I
    .restart local v27    # "initialSize$iv":I
    .restart local v28    # "release$iv":Z
    .restart local v30    # "$i$f$takeWhileSize":I
    .restart local v32    # "size$iv":I
    .restart local p0    # "$this$readUTF8UntilDelimiterToSlowUtf8":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "out":Lio/ktor/utils/io/core/Output;
    .restart local p2    # "delimiters":Ljava/lang/String;
    .restart local p3    # "limit":I
    .restart local p4    # "decoded0":I
    :catchall_7
    move-exception v0

    move/from16 v4, v25

    move/from16 v7, v28

    move/from16 v10, v32

    goto/16 :goto_14

    .line 794
    .end local v25    # "size":I
    .end local v27    # "initialSize$iv":I
    .end local v28    # "release$iv":Z
    .end local v30    # "$i$f$takeWhileSize":I
    .end local v32    # "size$iv":I
    .local v4, "initialSize$iv":I
    .local v5, "$i$f$takeWhileSize":I
    .restart local v6    # "size":I
    .restart local v7    # "release$iv":Z
    .restart local v10    # "size$iv":I
    .restart local v11    # "before$iv":I
    .restart local v12    # "after$iv":I
    :cond_18
    move/from16 v27, v4

    move/from16 v30, v5

    move/from16 v25, v6

    move/from16 v28, v7

    move/from16 v32, v10

    move/from16 v33, v12

    move-object/from16 v6, p1

    .end local v4    # "initialSize$iv":I
    .end local v5    # "$i$f$takeWhileSize":I
    .end local v6    # "size":I
    .end local v7    # "release$iv":Z
    .end local v10    # "size$iv":I
    .end local v12    # "after$iv":I
    .restart local v25    # "size":I
    .restart local v27    # "initialSize$iv":I
    .restart local v28    # "release$iv":Z
    .restart local v30    # "$i$f$takeWhileSize":I
    .restart local v32    # "size$iv":I
    .restart local v33    # "after$iv":I
    move v0, v11

    move/from16 v4, v25

    .line 797
    .end local v25    # "size":I
    .end local v32    # "size$iv":I
    .end local v33    # "after$iv":I
    .restart local v0    # "after$iv":I
    .local v4, "size":I
    .restart local v10    # "size$iv":I
    :goto_f
    const/4 v7, 0x0

    .line 799
    .end local v28    # "release$iv":Z
    .restart local v7    # "release$iv":Z
    nop

    .line 800
    if-nez v0, :cond_19

    :try_start_9
    invoke-static {v3, v9}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5

    goto :goto_11

    .line 813
    .end local v0    # "after$iv":I
    .end local v11    # "before$iv":I
    :catchall_8
    move-exception v0

    goto :goto_14

    .line 801
    .restart local v0    # "after$iv":I
    .restart local v11    # "before$iv":I
    :cond_19
    if-lt v0, v10, :cond_1b

    move-object v5, v9

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    .local v5, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v8, 0x0

    .line 802
    .local v8, "$i$f$getEndGap":I
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v12

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v13

    sub-int/2addr v12, v13

    .line 801
    .end local v5    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v8    # "$i$f$getEndGap":I
    const/16 v5, 0x8

    if-ge v12, v5, :cond_1a

    goto :goto_10

    .line 806
    :cond_1a
    move-object v5, v9

    goto :goto_11

    .line 803
    :cond_1b
    :goto_10
    invoke-static {v3, v9}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 804
    invoke-static {v3, v10}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 799
    :goto_11
    if-nez v5, :cond_1c

    .line 807
    goto :goto_12

    .line 809
    .local v5, "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_1c
    move-object v9, v5

    .line 810
    const/4 v7, 0x1

    .line 811
    .end local v0    # "after$iv":I
    .end local v5    # "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v11    # "before$iv":I
    if-gtz v10, :cond_1f

    .line 813
    :goto_12
    if-eqz v7, :cond_1d

    .line 814
    invoke-static {v3, v9}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 816
    :cond_1d
    nop

    .line 817
    move v0, v2

    move v2, v4

    .line 430
    .end local v3    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "size":I
    .end local v7    # "release$iv":Z
    .end local v9    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v10    # "size$iv":I
    .end local v27    # "initialSize$iv":I
    .end local v30    # "$i$f$takeWhileSize":I
    .local v0, "decoded":I
    .local v2, "size":I
    :goto_13
    const/4 v5, 0x1

    if-gt v2, v5, :cond_1e

    .line 432
    return v0

    .line 430
    :cond_1e
    invoke-static {v2}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3

    .line 811
    .end local v0    # "decoded":I
    .local v2, "decoded":I
    .restart local v3    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v4    # "size":I
    .restart local v7    # "release$iv":Z
    .restart local v9    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v10    # "size$iv":I
    .restart local v27    # "initialSize$iv":I
    .restart local v30    # "$i$f$takeWhileSize":I
    :cond_1f
    const/4 v5, 0x1

    move v6, v4

    move/from16 v4, v27

    move/from16 v5, v30

    goto/16 :goto_0

    .line 813
    .end local v27    # "initialSize$iv":I
    .end local v30    # "$i$f$takeWhileSize":I
    .local v4, "initialSize$iv":I
    .local v5, "$i$f$takeWhileSize":I
    .restart local v6    # "size":I
    :catchall_9
    move-exception v0

    move/from16 v27, v4

    move/from16 v30, v5

    move/from16 v25, v6

    move/from16 v28, v7

    move/from16 v32, v10

    move-object/from16 v6, p1

    move/from16 v4, v25

    .end local v5    # "$i$f$takeWhileSize":I
    .end local v6    # "size":I
    .local v4, "size":I
    .restart local v27    # "initialSize$iv":I
    .restart local v30    # "$i$f$takeWhileSize":I
    :goto_14
    if-eqz v7, :cond_20

    .line 814
    invoke-static {v3, v9}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_20
    throw v0
.end method

.method private static final readUTF8UntilDelimiterToSlowUtf8(Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;Ljava/lang/String;II)I
    .locals 35
    .param p0, "$this$readUTF8UntilDelimiterToSlowUtf8"    # Lio/ktor/utils/io/core/Input;
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "delimiters"    # Ljava/lang/String;
    .param p3, "limit"    # I
    .param p4, "decoded0"    # I

    .line 442
    move-object/from16 v1, p1

    move/from16 v2, p3

    const/4 v0, 0x0

    .local v0, "decoded":I
    move/from16 v0, p4

    .line 443
    const/4 v3, 0x0

    .local v3, "size":I
    const/4 v3, 0x1

    .line 445
    move-object/from16 v4, p0

    .line 818
    .local v4, "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    const/4 v5, 0x1

    .local v5, "initialSize$iv":I
    const/4 v6, 0x0

    .line 819
    .local v6, "$i$f$takeWhileSize":I
    const/4 v7, 0x1

    .line 820
    .local v7, "release$iv":Z
    invoke-static {v4, v5}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v8

    if-nez v8, :cond_0

    goto/16 :goto_11

    .line 821
    .local v8, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move v10, v5

    .line 823
    .local v10, "size$iv":I
    move v11, v10

    move-object v10, v8

    move v8, v7

    move v7, v3

    move v3, v0

    .line 825
    .end local v0    # "decoded":I
    .local v3, "decoded":I
    .local v7, "size":I
    .local v8, "release$iv":Z
    .local v10, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v11, "size$iv":I
    :goto_0
    :try_start_0
    move-object v0, v10

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v12, 0x0

    .line 826
    .local v12, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v13

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    sub-int/2addr v13, v14

    .line 825
    .end local v0    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "$i$f$getReadRemaining":I
    move v12, v13

    .local v12, "before$iv":I
    const/4 v13, 0x0

    .line 827
    .local v13, "after$iv":I
    if-lt v12, v11, :cond_17

    .line 828
    nop

    .line 829
    :try_start_1
    move-object v0, v10

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 446
    .local v14, "$i$a$-takeWhileSize$default-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2":I
    move-object v15, v0

    .local v15, "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v16, 0x0

    .line 830
    .local v16, "$i$f$decodeUTF8":I
    const/16 v17, 0x0

    .line 831
    .local v17, "byteCount$iv":I
    const/16 v18, 0x0

    .line 832
    .local v18, "value$iv":I
    const/16 v19, 0x0

    .line 834
    .local v19, "lastByteCount$iv":I
    move-object/from16 v20, v15

    .local v20, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v21, 0x0

    .line 835
    .local v21, "$i$f$read":I
    nop

    .line 839
    invoke-virtual/range {v20 .. v20}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v22

    invoke-virtual/range {v20 .. v20}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v23

    invoke-virtual/range {v20 .. v20}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .local v22, "memory$iv":Ljava/nio/ByteBuffer;
    move/from16 v25, v24

    .local v23, "start$iv":I
    .local v25, "endExclusive$iv":I
    const/16 v24, 0x0

    .line 840
    .local v24, "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    move/from16 v26, v23

    move/from16 v9, v26

    .local v9, "index$iv":I
    :goto_1
    move-object/from16 v27, v0

    .end local v0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .local v27, "buffer":Lio/ktor/utils/io/core/Buffer;
    move/from16 v0, v25

    .end local v25    # "endExclusive$iv":I
    .local v0, "endExclusive$iv":I
    if-ge v9, v0, :cond_15

    .line 841
    move-object/from16 v25, v22

    .local v25, "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    const/16 v28, 0x0

    .line 842
    .local v28, "$i$f$get-eY85DW0":I
    const/16 v29, 0x0

    .line 843
    .local v29, "$i$f$loadAt-impl":I
    move/from16 v30, v5

    move-object/from16 v5, v25

    move/from16 v25, v6

    .end local v6    # "$i$f$takeWhileSize":I
    .local v5, "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    .local v25, "$i$f$takeWhileSize":I
    .local v30, "initialSize$iv":I
    :try_start_2
    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 842
    .end local v29    # "$i$f$loadAt-impl":I
    nop

    .line 841
    .end local v5    # "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    .end local v28    # "$i$f$get-eY85DW0":I
    and-int/lit16 v5, v6, 0xff

    .line 844
    .local v5, "v$iv":I
    nop

    .line 845
    and-int/lit16 v6, v5, 0x80

    move/from16 v28, v7

    .end local v7    # "size":I
    .local v28, "size":I
    if-nez v6, :cond_4

    .line 846
    if-nez v17, :cond_3

    .line 847
    int-to-char v6, v5

    .local v6, "ch":C
    const/16 v31, 0x0

    .line 447
    .local v31, "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2$1":I
    :try_start_3
    move-object/from16 v7, p2

    check-cast v7, Ljava/lang/CharSequence;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v32, v8

    move/from16 v33, v11

    move/from16 v34, v13

    const/4 v8, 0x0

    const/4 v11, 0x2

    const/4 v13, 0x0

    .end local v8    # "release$iv":Z
    .end local v11    # "size$iv":I
    .end local v13    # "after$iv":I
    .local v32, "release$iv":Z
    .local v33, "size$iv":I
    .local v34, "after$iv":I
    :try_start_4
    invoke-static {v7, v6, v13, v11, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 448
    const/4 v7, 0x0

    goto :goto_2

    .line 450
    :cond_1
    if-eq v3, v2, :cond_2

    .line 453
    add-int/lit8 v3, v3, 0x1

    .line 454
    invoke-interface {v1, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 455
    const/4 v7, 0x1

    .line 447
    :goto_2
    nop

    .line 847
    .end local v6    # "ch":C
    .end local v31    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2$1":I
    if-nez v7, :cond_14

    .line 848
    sub-int v6, v9, v23

    invoke-virtual {v15, v6}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 849
    const/4 v8, -0x1

    const/4 v13, 0x0

    goto/16 :goto_a

    .line 451
    .restart local v6    # "ch":C
    .restart local v31    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2$1":I
    :cond_2
    invoke-static/range {p3 .. p3}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v7, Lkotlin/KotlinNothingValueException;

    invoke-direct {v7}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v3    # "decoded":I
    .end local v4    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v10    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v12    # "before$iv":I
    .end local v25    # "$i$f$takeWhileSize":I
    .end local v28    # "size":I
    .end local v30    # "initialSize$iv":I
    .end local v32    # "release$iv":Z
    .end local v33    # "size$iv":I
    .end local v34    # "after$iv":I
    .end local p0    # "$this$readUTF8UntilDelimiterToSlowUtf8":Lio/ktor/utils/io/core/Input;
    .end local p1    # "out":Ljava/lang/Appendable;
    .end local p2    # "delimiters":Ljava/lang/String;
    .end local p3    # "limit":I
    .end local p4    # "decoded0":I
    throw v7

    .line 908
    .end local v0    # "endExclusive$iv":I
    .end local v5    # "v$iv":I
    .end local v6    # "ch":C
    .end local v9    # "index$iv":I
    .end local v14    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2":I
    .end local v15    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v16    # "$i$f$decodeUTF8":I
    .end local v17    # "byteCount$iv":I
    .end local v18    # "value$iv":I
    .end local v19    # "lastByteCount$iv":I
    .end local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v21    # "$i$f$read":I
    .end local v22    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v23    # "start$iv":I
    .end local v24    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    .end local v27    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v31    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2$1":I
    .restart local v3    # "decoded":I
    .restart local v4    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v8    # "release$iv":Z
    .restart local v10    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v11    # "size$iv":I
    .restart local v12    # "before$iv":I
    .restart local v13    # "after$iv":I
    .restart local v25    # "$i$f$takeWhileSize":I
    .restart local v28    # "size":I
    .restart local v30    # "initialSize$iv":I
    .restart local p0    # "$this$readUTF8UntilDelimiterToSlowUtf8":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "out":Ljava/lang/Appendable;
    .restart local p2    # "delimiters":Ljava/lang/String;
    .restart local p3    # "limit":I
    .restart local p4    # "decoded0":I
    :catchall_0
    move-exception v0

    move/from16 v32, v8

    move/from16 v33, v11

    move/from16 v34, v13

    move/from16 v7, v28

    .end local v8    # "release$iv":Z
    .end local v11    # "size$iv":I
    .end local v13    # "after$iv":I
    .restart local v32    # "release$iv":Z
    .restart local v33    # "size$iv":I
    .restart local v34    # "after$iv":I
    goto/16 :goto_c

    .line 846
    .end local v32    # "release$iv":Z
    .end local v33    # "size$iv":I
    .end local v34    # "after$iv":I
    .restart local v0    # "endExclusive$iv":I
    .restart local v5    # "v$iv":I
    .restart local v8    # "release$iv":Z
    .restart local v9    # "index$iv":I
    .restart local v11    # "size$iv":I
    .restart local v13    # "after$iv":I
    .restart local v14    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2":I
    .restart local v15    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v16    # "$i$f$decodeUTF8":I
    .restart local v17    # "byteCount$iv":I
    .restart local v18    # "value$iv":I
    .restart local v19    # "lastByteCount$iv":I
    .restart local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v21    # "$i$f$read":I
    .restart local v22    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v23    # "start$iv":I
    .restart local v24    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    .restart local v27    # "buffer":Lio/ktor/utils/io/core/Buffer;
    :cond_3
    move/from16 v32, v8

    move/from16 v33, v11

    move/from16 v34, v13

    .end local v8    # "release$iv":Z
    .end local v11    # "size$iv":I
    .end local v13    # "after$iv":I
    .restart local v32    # "release$iv":Z
    .restart local v33    # "size$iv":I
    .restart local v34    # "after$iv":I
    invoke-static/range {v17 .. v17}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedByteCount(I)Ljava/lang/Void;

    new-instance v6, Lkotlin/KotlinNothingValueException;

    invoke-direct {v6}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v3    # "decoded":I
    .end local v4    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v10    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v12    # "before$iv":I
    .end local v25    # "$i$f$takeWhileSize":I
    .end local v28    # "size":I
    .end local v30    # "initialSize$iv":I
    .end local v32    # "release$iv":Z
    .end local v33    # "size$iv":I
    .end local v34    # "after$iv":I
    .end local p0    # "$this$readUTF8UntilDelimiterToSlowUtf8":Lio/ktor/utils/io/core/Input;
    .end local p1    # "out":Ljava/lang/Appendable;
    .end local p2    # "delimiters":Ljava/lang/String;
    .end local p3    # "limit":I
    .end local p4    # "decoded0":I
    throw v6

    .line 852
    .restart local v3    # "decoded":I
    .restart local v4    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v8    # "release$iv":Z
    .restart local v10    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v11    # "size$iv":I
    .restart local v12    # "before$iv":I
    .restart local v13    # "after$iv":I
    .restart local v25    # "$i$f$takeWhileSize":I
    .restart local v28    # "size":I
    .restart local v30    # "initialSize$iv":I
    .restart local p0    # "$this$readUTF8UntilDelimiterToSlowUtf8":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "out":Ljava/lang/Appendable;
    .restart local p2    # "delimiters":Ljava/lang/String;
    .restart local p3    # "limit":I
    .restart local p4    # "decoded0":I
    :cond_4
    move/from16 v32, v8

    move/from16 v33, v11

    move/from16 v34, v13

    .end local v8    # "release$iv":Z
    .end local v11    # "size$iv":I
    .end local v13    # "after$iv":I
    .restart local v32    # "release$iv":Z
    .restart local v33    # "size$iv":I
    .restart local v34    # "after$iv":I
    if-nez v17, :cond_8

    .line 855
    const/16 v6, 0x80

    .line 856
    .local v6, "mask$iv":I
    move v7, v5

    .line 858
    .end local v18    # "value$iv":I
    .local v7, "value$iv":I
    const/4 v8, 0x1

    .local v8, "i$iv":I
    :goto_3
    const/4 v11, 0x7

    if-ge v8, v11, :cond_6

    .line 859
    and-int v11, v7, v6

    if-eqz v11, :cond_5

    .line 860
    not-int v11, v6

    and-int/2addr v7, v11

    .line 861
    shr-int/lit8 v6, v6, 0x1

    .line 862
    add-int/lit8 v17, v17, 0x1

    .line 858
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 864
    :cond_5
    nop

    .line 868
    .end local v8    # "i$iv":I
    :cond_6
    move/from16 v8, v17

    .line 869
    .end local v19    # "lastByteCount$iv":I
    .local v8, "lastByteCount$iv":I
    add-int/lit8 v17, v17, -0x1

    .line 871
    sub-int v11, v0, v9

    if-le v8, v11, :cond_7

    .line 872
    sub-int v11, v9, v23

    invoke-virtual {v15, v11}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 873
    const/4 v13, 0x0

    goto/16 :goto_a

    .line 871
    :cond_7
    move/from16 v18, v7

    move/from16 v19, v8

    goto/16 :goto_9

    .line 878
    .end local v6    # "mask$iv":I
    .end local v7    # "value$iv":I
    .end local v8    # "lastByteCount$iv":I
    .restart local v18    # "value$iv":I
    .restart local v19    # "lastByteCount$iv":I
    :cond_8
    shl-int/lit8 v6, v18, 0x6

    and-int/lit8 v7, v5, 0x7f

    or-int/2addr v6, v7

    .line 879
    .end local v18    # "value$iv":I
    .local v6, "value$iv":I
    add-int/lit8 v17, v17, -0x1

    .line 881
    if-nez v17, :cond_13

    .line 882
    invoke-static {v6}, Lio/ktor/utils/io/core/internal/UTF8Kt;->isBmpCodePoint(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 883
    int-to-char v7, v6

    .local v7, "ch":C
    const/4 v8, 0x0

    .line 447
    .local v8, "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2$1":I
    move-object/from16 v11, p2

    check-cast v11, Ljava/lang/CharSequence;

    move/from16 v31, v5

    move/from16 v18, v8

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v13, 0x0

    .end local v5    # "v$iv":I
    .end local v8    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2$1":I
    .local v18, "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2$1":I
    .local v31, "v$iv":I
    invoke-static {v11, v7, v8, v5, v13}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 448
    const/4 v5, 0x0

    goto :goto_4

    .line 450
    :cond_9
    if-eq v3, v2, :cond_a

    .line 453
    add-int/lit8 v3, v3, 0x1

    .line 454
    invoke-interface {v1, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 455
    const/4 v5, 0x1

    .line 447
    :goto_4
    nop

    .line 883
    .end local v7    # "ch":C
    .end local v18    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2$1":I
    if-nez v5, :cond_e

    .line 884
    sub-int v5, v9, v23

    sub-int v5, v5, v19

    const/4 v7, 0x1

    add-int/2addr v5, v7

    invoke-virtual {v15, v5}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 885
    const/4 v8, -0x1

    const/4 v13, 0x0

    goto/16 :goto_a

    .line 451
    .restart local v7    # "ch":C
    .restart local v18    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2$1":I
    :cond_a
    invoke-static/range {p3 .. p3}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v5, Lkotlin/KotlinNothingValueException;

    invoke-direct {v5}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v3    # "decoded":I
    .end local v4    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v10    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v12    # "before$iv":I
    .end local v25    # "$i$f$takeWhileSize":I
    .end local v28    # "size":I
    .end local v30    # "initialSize$iv":I
    .end local v32    # "release$iv":Z
    .end local v33    # "size$iv":I
    .end local v34    # "after$iv":I
    .end local p0    # "$this$readUTF8UntilDelimiterToSlowUtf8":Lio/ktor/utils/io/core/Input;
    .end local p1    # "out":Ljava/lang/Appendable;
    .end local p2    # "delimiters":Ljava/lang/String;
    .end local p3    # "limit":I
    .end local p4    # "decoded0":I
    throw v5

    .line 887
    .end local v7    # "ch":C
    .end local v18    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2$1":I
    .end local v31    # "v$iv":I
    .restart local v3    # "decoded":I
    .restart local v4    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v5    # "v$iv":I
    .restart local v10    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v12    # "before$iv":I
    .restart local v25    # "$i$f$takeWhileSize":I
    .restart local v28    # "size":I
    .restart local v30    # "initialSize$iv":I
    .restart local v32    # "release$iv":Z
    .restart local v33    # "size$iv":I
    .restart local v34    # "after$iv":I
    .restart local p0    # "$this$readUTF8UntilDelimiterToSlowUtf8":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "out":Ljava/lang/Appendable;
    .restart local p2    # "delimiters":Ljava/lang/String;
    .restart local p3    # "limit":I
    .restart local p4    # "decoded0":I
    :cond_b
    move/from16 v31, v5

    .end local v5    # "v$iv":I
    .restart local v31    # "v$iv":I
    invoke-static {v6}, Lio/ktor/utils/io/core/internal/UTF8Kt;->isValidCodePoint(I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 890
    invoke-static {v6}, Lio/ktor/utils/io/core/internal/UTF8Kt;->highSurrogate(I)I

    move-result v5

    int-to-char v5, v5

    .local v5, "ch":C
    const/4 v7, 0x0

    .line 447
    .local v7, "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2$1":I
    move-object/from16 v8, p2

    check-cast v8, Ljava/lang/CharSequence;

    move/from16 v18, v7

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x2

    .end local v7    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2$1":I
    .restart local v18    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2$1":I
    invoke-static {v8, v5, v7, v13, v11}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 448
    const/4 v7, 0x0

    goto :goto_5

    .line 450
    :cond_c
    if-eq v3, v2, :cond_11

    .line 453
    add-int/lit8 v3, v3, 0x1

    .line 454
    invoke-interface {v1, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 455
    const/4 v7, 0x1

    .line 447
    :goto_5
    nop

    .line 890
    .end local v5    # "ch":C
    .end local v18    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2$1":I
    if-eqz v7, :cond_10

    .line 891
    invoke-static {v6}, Lio/ktor/utils/io/core/internal/UTF8Kt;->lowSurrogate(I)I

    move-result v5

    int-to-char v5, v5

    .restart local v5    # "ch":C
    const/4 v7, 0x0

    .line 447
    .restart local v7    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2$1":I
    move-object/from16 v8, p2

    check-cast v8, Ljava/lang/CharSequence;

    move/from16 v18, v7

    const/4 v7, 0x2

    const/4 v11, 0x0

    const/4 v13, 0x0

    .end local v7    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2$1":I
    .restart local v18    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2$1":I
    invoke-static {v8, v5, v13, v7, v11}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 448
    move v7, v13

    goto :goto_6

    .line 450
    :cond_d
    if-eq v3, v2, :cond_f

    .line 453
    add-int/lit8 v3, v3, 0x1

    .line 454
    invoke-interface {v1, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 455
    const/4 v7, 0x1

    .line 447
    :goto_6
    nop

    .line 891
    .end local v5    # "ch":C
    .end local v18    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2$1":I
    if-nez v7, :cond_e

    goto :goto_8

    .line 898
    :cond_e
    const/4 v5, 0x0

    move/from16 v18, v5

    .end local v6    # "value$iv":I
    .local v5, "value$iv":I
    goto :goto_9

    .line 451
    .local v5, "ch":C
    .restart local v6    # "value$iv":I
    .restart local v18    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2$1":I
    :cond_f
    invoke-static/range {p3 .. p3}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v7, Lkotlin/KotlinNothingValueException;

    invoke-direct {v7}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v3    # "decoded":I
    .end local v4    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v10    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v12    # "before$iv":I
    .end local v25    # "$i$f$takeWhileSize":I
    .end local v28    # "size":I
    .end local v30    # "initialSize$iv":I
    .end local v32    # "release$iv":Z
    .end local v33    # "size$iv":I
    .end local v34    # "after$iv":I
    .end local p0    # "$this$readUTF8UntilDelimiterToSlowUtf8":Lio/ktor/utils/io/core/Input;
    .end local p1    # "out":Ljava/lang/Appendable;
    .end local p2    # "delimiters":Ljava/lang/String;
    .end local p3    # "limit":I
    .end local p4    # "decoded0":I
    :goto_7
    throw v7

    .line 890
    .end local v5    # "ch":C
    .end local v18    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2$1":I
    .restart local v3    # "decoded":I
    .restart local v4    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v10    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v12    # "before$iv":I
    .restart local v25    # "$i$f$takeWhileSize":I
    .restart local v28    # "size":I
    .restart local v30    # "initialSize$iv":I
    .restart local v32    # "release$iv":Z
    .restart local v33    # "size$iv":I
    .restart local v34    # "after$iv":I
    .restart local p0    # "$this$readUTF8UntilDelimiterToSlowUtf8":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "out":Ljava/lang/Appendable;
    .restart local p2    # "delimiters":Ljava/lang/String;
    .restart local p3    # "limit":I
    .restart local p4    # "decoded0":I
    :cond_10
    const/4 v13, 0x0

    .line 893
    :goto_8
    sub-int v5, v9, v23

    sub-int v5, v5, v19

    const/4 v7, 0x1

    add-int/2addr v5, v7

    invoke-virtual {v15, v5}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 894
    const/4 v8, -0x1

    goto :goto_a

    .line 451
    .restart local v5    # "ch":C
    .restart local v18    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2$1":I
    :cond_11
    invoke-static/range {p3 .. p3}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v7, Lkotlin/KotlinNothingValueException;

    invoke-direct {v7}, Lkotlin/KotlinNothingValueException;-><init>()V

    goto :goto_7

    .line 888
    .end local v5    # "ch":C
    .end local v18    # "$i$a$-decodeUTF8-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2$1":I
    :cond_12
    invoke-static {v6}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v5, Lkotlin/KotlinNothingValueException;

    invoke-direct {v5}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v3    # "decoded":I
    .end local v4    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v10    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v12    # "before$iv":I
    .end local v25    # "$i$f$takeWhileSize":I
    .end local v28    # "size":I
    .end local v30    # "initialSize$iv":I
    .end local v32    # "release$iv":Z
    .end local v33    # "size$iv":I
    .end local v34    # "after$iv":I
    .end local p0    # "$this$readUTF8UntilDelimiterToSlowUtf8":Lio/ktor/utils/io/core/Input;
    .end local p1    # "out":Ljava/lang/Appendable;
    .end local p2    # "delimiters":Ljava/lang/String;
    .end local p3    # "limit":I
    .end local p4    # "decoded0":I
    throw v5

    .line 881
    .end local v31    # "v$iv":I
    .restart local v3    # "decoded":I
    .restart local v4    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .local v5, "v$iv":I
    .restart local v10    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v12    # "before$iv":I
    .restart local v25    # "$i$f$takeWhileSize":I
    .restart local v28    # "size":I
    .restart local v30    # "initialSize$iv":I
    .restart local v32    # "release$iv":Z
    .restart local v33    # "size$iv":I
    .restart local v34    # "after$iv":I
    .restart local p0    # "$this$readUTF8UntilDelimiterToSlowUtf8":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "out":Ljava/lang/Appendable;
    .restart local p2    # "delimiters":Ljava/lang/String;
    .restart local p3    # "limit":I
    .restart local p4    # "decoded0":I
    :cond_13
    move/from16 v31, v5

    .end local v5    # "v$iv":I
    .restart local v31    # "v$iv":I
    move/from16 v18, v6

    .line 840
    .end local v6    # "value$iv":I
    .end local v31    # "v$iv":I
    .local v18, "value$iv":I
    :cond_14
    :goto_9
    add-int/lit8 v9, v9, 0x1

    move/from16 v6, v25

    move/from16 v7, v28

    move/from16 v5, v30

    move/from16 v8, v32

    move/from16 v11, v33

    move/from16 v13, v34

    move/from16 v25, v0

    move-object/from16 v0, v27

    goto/16 :goto_1

    .line 908
    .end local v0    # "endExclusive$iv":I
    .end local v9    # "index$iv":I
    .end local v14    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2":I
    .end local v15    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v16    # "$i$f$decodeUTF8":I
    .end local v17    # "byteCount$iv":I
    .end local v18    # "value$iv":I
    .end local v19    # "lastByteCount$iv":I
    .end local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v21    # "$i$f$read":I
    .end local v22    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v23    # "start$iv":I
    .end local v24    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    .end local v27    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v28    # "size":I
    .end local v32    # "release$iv":Z
    .end local v33    # "size$iv":I
    .end local v34    # "after$iv":I
    .local v7, "size":I
    .local v8, "release$iv":Z
    .restart local v11    # "size$iv":I
    .restart local v13    # "after$iv":I
    :catchall_1
    move-exception v0

    move/from16 v28, v7

    move/from16 v32, v8

    move/from16 v33, v11

    move/from16 v34, v13

    .end local v7    # "size":I
    .end local v8    # "release$iv":Z
    .end local v11    # "size$iv":I
    .end local v13    # "after$iv":I
    .restart local v28    # "size":I
    .restart local v32    # "release$iv":Z
    .restart local v33    # "size$iv":I
    .restart local v34    # "after$iv":I
    goto :goto_c

    .line 840
    .end local v25    # "$i$f$takeWhileSize":I
    .end local v28    # "size":I
    .end local v30    # "initialSize$iv":I
    .end local v32    # "release$iv":Z
    .end local v33    # "size$iv":I
    .end local v34    # "after$iv":I
    .restart local v0    # "endExclusive$iv":I
    .local v5, "initialSize$iv":I
    .local v6, "$i$f$takeWhileSize":I
    .restart local v7    # "size":I
    .restart local v8    # "release$iv":Z
    .restart local v9    # "index$iv":I
    .restart local v11    # "size$iv":I
    .restart local v13    # "after$iv":I
    .restart local v14    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2":I
    .restart local v15    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v16    # "$i$f$decodeUTF8":I
    .restart local v17    # "byteCount$iv":I
    .restart local v18    # "value$iv":I
    .restart local v19    # "lastByteCount$iv":I
    .restart local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v21    # "$i$f$read":I
    .restart local v22    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v23    # "start$iv":I
    .restart local v24    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    .restart local v27    # "buffer":Lio/ktor/utils/io/core/Buffer;
    :cond_15
    move/from16 v30, v5

    move/from16 v25, v6

    move/from16 v28, v7

    move/from16 v32, v8

    move/from16 v33, v11

    move/from16 v34, v13

    const/4 v13, 0x0

    .line 904
    .end local v5    # "initialSize$iv":I
    .end local v6    # "$i$f$takeWhileSize":I
    .end local v7    # "size":I
    .end local v8    # "release$iv":Z
    .end local v9    # "index$iv":I
    .end local v11    # "size$iv":I
    .end local v13    # "after$iv":I
    .restart local v25    # "$i$f$takeWhileSize":I
    .restart local v28    # "size":I
    .restart local v30    # "initialSize$iv":I
    .restart local v32    # "release$iv":Z
    .restart local v33    # "size$iv":I
    .restart local v34    # "after$iv":I
    sub-int v0, v0, v23

    .line 839
    .end local v0    # "endExclusive$iv":I
    .end local v22    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v23    # "start$iv":I
    .end local v24    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    nop

    .line 905
    .local v0, "rc$iv$iv":I
    move-object/from16 v5, v20

    .end local v20    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .local v5, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    invoke-virtual {v5, v0}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 906
    nop

    .line 907
    .end local v0    # "rc$iv$iv":I
    .end local v5    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v21    # "$i$f$read":I
    move v8, v13

    .line 446
    .end local v15    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v16    # "$i$f$decodeUTF8":I
    .end local v17    # "byteCount$iv":I
    .end local v18    # "value$iv":I
    .end local v19    # "lastByteCount$iv":I
    :goto_a
    move v5, v8

    .line 459
    .end local v28    # "size":I
    .local v5, "size":I
    const/4 v0, -0x1

    if-ne v5, v0, :cond_16

    move v0, v13

    goto :goto_b

    :cond_16
    const/4 v0, 0x1

    :try_start_5
    invoke-static {v5, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move v0, v6

    :goto_b
    move v7, v0

    .line 460
    .end local v5    # "size":I
    .restart local v7    # "size":I
    nop

    .line 829
    .end local v14    # "$i$a$-takeWhileSize$default-StringsKt$readUTF8UntilDelimiterToSlowUtf8$2":I
    .end local v27    # "buffer":Lio/ktor/utils/io/core/Buffer;
    move v11, v7

    .line 908
    .end local v33    # "size$iv":I
    .restart local v11    # "size$iv":I
    :try_start_6
    move-object v0, v10

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v5, 0x0

    .line 826
    .local v5, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    sub-int/2addr v6, v8

    .line 908
    .end local v0    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "$i$f$getReadRemaining":I
    move v0, v6

    .line 909
    .end local v34    # "after$iv":I
    .local v0, "after$iv":I
    goto :goto_d

    .line 930
    .end local v0    # "after$iv":I
    .end local v12    # "before$iv":I
    :catchall_2
    move-exception v0

    move/from16 v8, v32

    goto/16 :goto_12

    .line 908
    .end local v7    # "size":I
    .end local v11    # "size$iv":I
    .local v5, "size":I
    .restart local v12    # "before$iv":I
    .restart local v33    # "size$iv":I
    .restart local v34    # "after$iv":I
    :catchall_3
    move-exception v0

    move v7, v5

    goto :goto_c

    .end local v5    # "size":I
    .restart local v28    # "size":I
    :catchall_4
    move-exception v0

    move/from16 v7, v28

    goto :goto_c

    .end local v25    # "$i$f$takeWhileSize":I
    .end local v28    # "size":I
    .end local v30    # "initialSize$iv":I
    .end local v32    # "release$iv":Z
    .end local v33    # "size$iv":I
    .end local v34    # "after$iv":I
    .local v5, "initialSize$iv":I
    .restart local v6    # "$i$f$takeWhileSize":I
    .restart local v7    # "size":I
    .restart local v8    # "release$iv":Z
    .restart local v11    # "size$iv":I
    .restart local v13    # "after$iv":I
    :catchall_5
    move-exception v0

    move/from16 v30, v5

    move/from16 v25, v6

    move/from16 v28, v7

    move/from16 v32, v8

    move/from16 v33, v11

    move/from16 v34, v13

    .end local v5    # "initialSize$iv":I
    .end local v6    # "$i$f$takeWhileSize":I
    .end local v8    # "release$iv":Z
    .end local v11    # "size$iv":I
    .end local v13    # "after$iv":I
    .restart local v25    # "$i$f$takeWhileSize":I
    .restart local v30    # "initialSize$iv":I
    .restart local v32    # "release$iv":Z
    .restart local v33    # "size$iv":I
    .restart local v34    # "after$iv":I
    :goto_c
    :try_start_7
    move-object v5, v10

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    .local v5, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 826
    .local v6, "$i$f$getReadRemaining":I
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v8

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v9

    sub-int/2addr v8, v9

    .line 908
    .end local v5    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$getReadRemaining":I
    move v5, v8

    .end local v3    # "decoded":I
    .end local v4    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v7    # "size":I
    .end local v10    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v25    # "$i$f$takeWhileSize":I
    .end local v30    # "initialSize$iv":I
    .end local v32    # "release$iv":Z
    .end local v33    # "size$iv":I
    .end local v34    # "after$iv":I
    .end local p0    # "$this$readUTF8UntilDelimiterToSlowUtf8":Lio/ktor/utils/io/core/Input;
    .end local p1    # "out":Ljava/lang/Appendable;
    .end local p2    # "delimiters":Ljava/lang/String;
    .end local p3    # "limit":I
    .end local p4    # "decoded0":I
    .local v5, "after$iv":I
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 930
    .end local v5    # "after$iv":I
    .end local v12    # "before$iv":I
    .restart local v3    # "decoded":I
    .restart local v4    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v7    # "size":I
    .restart local v10    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v25    # "$i$f$takeWhileSize":I
    .restart local v30    # "initialSize$iv":I
    .restart local v32    # "release$iv":Z
    .restart local v33    # "size$iv":I
    .restart local p0    # "$this$readUTF8UntilDelimiterToSlowUtf8":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "out":Ljava/lang/Appendable;
    .restart local p2    # "delimiters":Ljava/lang/String;
    .restart local p3    # "limit":I
    .restart local p4    # "decoded0":I
    :catchall_6
    move-exception v0

    move/from16 v8, v32

    move/from16 v11, v33

    goto/16 :goto_12

    .line 911
    .end local v25    # "$i$f$takeWhileSize":I
    .end local v30    # "initialSize$iv":I
    .end local v32    # "release$iv":Z
    .end local v33    # "size$iv":I
    .local v5, "initialSize$iv":I
    .local v6, "$i$f$takeWhileSize":I
    .restart local v8    # "release$iv":Z
    .restart local v11    # "size$iv":I
    .restart local v12    # "before$iv":I
    .restart local v13    # "after$iv":I
    :cond_17
    move/from16 v30, v5

    move/from16 v25, v6

    move/from16 v28, v7

    move/from16 v32, v8

    move/from16 v33, v11

    move/from16 v34, v13

    .end local v5    # "initialSize$iv":I
    .end local v6    # "$i$f$takeWhileSize":I
    .end local v7    # "size":I
    .end local v8    # "release$iv":Z
    .end local v11    # "size$iv":I
    .end local v13    # "after$iv":I
    .restart local v25    # "$i$f$takeWhileSize":I
    .restart local v28    # "size":I
    .restart local v30    # "initialSize$iv":I
    .restart local v32    # "release$iv":Z
    .restart local v33    # "size$iv":I
    .restart local v34    # "after$iv":I
    move v0, v12

    .line 914
    .end local v28    # "size":I
    .end local v33    # "size$iv":I
    .end local v34    # "after$iv":I
    .restart local v0    # "after$iv":I
    .restart local v7    # "size":I
    .restart local v11    # "size$iv":I
    :goto_d
    const/4 v8, 0x0

    .line 916
    .end local v32    # "release$iv":Z
    .restart local v8    # "release$iv":Z
    nop

    .line 917
    if-nez v0, :cond_18

    :try_start_8
    invoke-static {v4, v10}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5

    goto :goto_f

    .line 930
    .end local v0    # "after$iv":I
    .end local v12    # "before$iv":I
    :catchall_7
    move-exception v0

    goto :goto_12

    .line 918
    .restart local v0    # "after$iv":I
    .restart local v12    # "before$iv":I
    :cond_18
    if-lt v0, v11, :cond_1a

    move-object v5, v10

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    .local v5, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 919
    .local v6, "$i$f$getEndGap":I
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v9

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v13

    sub-int/2addr v9, v13

    .line 918
    .end local v5    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$getEndGap":I
    const/16 v5, 0x8

    if-ge v9, v5, :cond_19

    goto :goto_e

    .line 923
    :cond_19
    move-object v5, v10

    goto :goto_f

    .line 920
    :cond_1a
    :goto_e
    invoke-static {v4, v10}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 921
    invoke-static {v4, v11}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 916
    :goto_f
    if-nez v5, :cond_1b

    .line 924
    goto :goto_10

    .line 926
    .local v5, "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_1b
    move-object v10, v5

    .line 927
    const/4 v8, 0x1

    .line 928
    .end local v0    # "after$iv":I
    .end local v5    # "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v12    # "before$iv":I
    if-gtz v11, :cond_1e

    .line 930
    :goto_10
    if-eqz v8, :cond_1c

    .line 931
    invoke-static {v4, v10}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 933
    :cond_1c
    nop

    .line 934
    move v0, v3

    move v3, v7

    .line 463
    .end local v4    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v7    # "size":I
    .end local v8    # "release$iv":Z
    .end local v10    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v11    # "size$iv":I
    .end local v25    # "$i$f$takeWhileSize":I
    .end local v30    # "initialSize$iv":I
    .local v0, "decoded":I
    .local v3, "size":I
    :goto_11
    const/4 v5, 0x1

    if-gt v3, v5, :cond_1d

    .line 465
    return v0

    .line 463
    :cond_1d
    invoke-static {v3}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4

    .line 928
    .end local v0    # "decoded":I
    .local v3, "decoded":I
    .restart local v4    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v7    # "size":I
    .restart local v8    # "release$iv":Z
    .restart local v10    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v11    # "size$iv":I
    .restart local v25    # "$i$f$takeWhileSize":I
    .restart local v30    # "initialSize$iv":I
    :cond_1e
    const/4 v5, 0x1

    move/from16 v6, v25

    move/from16 v5, v30

    goto/16 :goto_0

    .line 930
    .end local v25    # "$i$f$takeWhileSize":I
    .end local v30    # "initialSize$iv":I
    .local v5, "initialSize$iv":I
    .local v6, "$i$f$takeWhileSize":I
    :catchall_8
    move-exception v0

    move/from16 v30, v5

    move/from16 v25, v6

    move/from16 v28, v7

    move/from16 v32, v8

    move/from16 v33, v11

    .end local v5    # "initialSize$iv":I
    .end local v6    # "$i$f$takeWhileSize":I
    .restart local v25    # "$i$f$takeWhileSize":I
    .restart local v30    # "initialSize$iv":I
    :goto_12
    if-eqz v8, :cond_1f

    .line 931
    invoke-static {v4, v10}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_1f
    throw v0
.end method

.method private static final readUTFUntilDelimiterToSlowAscii(Lio/ktor/utils/io/core/Input;Ljava/lang/String;ILio/ktor/utils/io/core/Output;)I
    .locals 28
    .param p0, "$this$readUTFUntilDelimiterToSlowAscii"    # Lio/ktor/utils/io/core/Input;
    .param p1, "delimiters"    # Ljava/lang/String;
    .param p2, "limit"    # I
    .param p3, "out"    # Lio/ktor/utils/io/core/Output;

    .line 362
    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v0, 0x0

    .line 363
    .local v0, "decoded":I
    const/4 v4, 0x0

    .line 365
    .local v4, "delimiter":Z
    move-object/from16 v5, p0

    .local v5, "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    const/4 v6, 0x0

    .line 658
    .local v6, "$i$f$takeWhile":I
    const/4 v7, 0x1

    .line 659
    .local v7, "release$iv":Z
    const/4 v8, 0x1

    invoke-static {v5, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v9

    if-nez v9, :cond_0

    goto/16 :goto_6

    .line 661
    .local v9, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move-object v10, v9

    move v9, v7

    move v7, v4

    move v4, v0

    .line 663
    .end local v0    # "decoded":I
    .local v4, "decoded":I
    .local v7, "delimiter":Z
    .local v9, "release$iv":Z
    .local v10, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    :try_start_0
    move-object v0, v10

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer":Lio/ktor/utils/io/core/Buffer;
    const/4 v11, 0x0

    .line 366
    .local v11, "$i$a$-takeWhile-StringsKt$readUTFUntilDelimiterToSlowAscii$1":I
    move-object v12, v0

    .local v12, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v13, 0x0

    .line 664
    .local v13, "$i$f$getReadRemaining":I
    invoke-virtual {v12}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v14

    invoke-virtual {v12}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v15

    sub-int/2addr v14, v15

    .line 366
    .end local v12    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$f$getReadRemaining":I
    move v12, v14

    .line 368
    .local v12, "before":I
    move-object v13, v0

    .local v13, "$this$decodeASCII$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 665
    .local v14, "$i$f$decodeASCII":I
    move-object v15, v13

    .local v15, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v16, 0x0

    .line 666
    .local v16, "$i$f$read":I
    nop

    .line 670
    invoke-virtual {v15}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-virtual {v15}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v18

    invoke-virtual {v15}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .local v17, "memory$iv":Ljava/nio/ByteBuffer;
    .local v18, "start$iv":I
    move/from16 v20, v19

    .local v20, "endExclusive$iv":I
    const/16 v19, 0x0

    .line 671
    .local v19, "$i$a$-read-UTF8Kt$decodeASCII$1$iv":I
    move/from16 v21, v18

    move/from16 v8, v21

    .local v8, "index$iv":I
    :goto_1
    move/from16 v22, v6

    move/from16 v6, v20

    .end local v20    # "endExclusive$iv":I
    .local v6, "endExclusive$iv":I
    .local v22, "$i$f$takeWhile":I
    if-ge v8, v6, :cond_5

    .line 672
    move-object/from16 v20, v17

    .local v20, "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    const/16 v23, 0x0

    .line 673
    .local v23, "$i$f$get-eY85DW0":I
    const/16 v24, 0x0

    .line 674
    .local v24, "$i$f$loadAt-impl":I
    move/from16 v25, v7

    move-object/from16 v7, v20

    move/from16 v20, v9

    .end local v9    # "release$iv":Z
    .local v7, "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    .local v20, "release$iv":Z
    .local v25, "delimiter":Z
    :try_start_1
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    .line 673
    .end local v24    # "$i$f$loadAt-impl":I
    nop

    .line 672
    .end local v7    # "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    .end local v23    # "$i$f$get-eY85DW0":I
    and-int/lit16 v7, v9, 0xff

    .line 675
    .local v7, "codepoint$iv":I
    and-int/lit16 v9, v7, 0x80

    move/from16 v23, v11

    .end local v11    # "$i$a$-takeWhile-StringsKt$readUTFUntilDelimiterToSlowAscii$1":I
    .local v23, "$i$a$-takeWhile-StringsKt$readUTFUntilDelimiterToSlowAscii$1":I
    const/16 v11, 0x80

    move/from16 v24, v14

    .end local v14    # "$i$f$decodeASCII":I
    .local v24, "$i$f$decodeASCII":I
    if-eq v9, v11, :cond_4

    int-to-char v9, v7

    .local v9, "ch":C
    const/4 v11, 0x0

    .line 369
    .local v11, "$i$a$-decodeASCII-StringsKt$readUTFUntilDelimiterToSlowAscii$1$rc$1":I
    move-object v14, v1

    check-cast v14, Ljava/lang/CharSequence;

    move/from16 v26, v7

    .end local v7    # "codepoint$iv":I
    .local v26, "codepoint$iv":I
    const/4 v7, 0x2

    move/from16 v27, v11

    .end local v11    # "$i$a$-decodeASCII-StringsKt$readUTFUntilDelimiterToSlowAscii$1$rc$1":I
    .local v27, "$i$a$-decodeASCII-StringsKt$readUTFUntilDelimiterToSlowAscii$1$rc$1":I
    const/4 v11, 0x0

    const/4 v1, 0x0

    invoke-static {v14, v9, v1, v7, v11}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 370
    const/4 v7, 0x1

    .line 371
    .end local v25    # "delimiter":Z
    .local v7, "delimiter":Z
    move v11, v1

    goto :goto_2

    .line 373
    .end local v7    # "delimiter":Z
    .restart local v25    # "delimiter":Z
    :cond_1
    if-eq v4, v2, :cond_3

    .line 374
    add-int/lit8 v4, v4, 0x1

    .line 375
    move/from16 v7, v25

    const/4 v11, 0x1

    .line 369
    .end local v25    # "delimiter":Z
    .restart local v7    # "delimiter":Z
    :goto_2
    nop

    .line 675
    .end local v9    # "ch":C
    .end local v27    # "$i$a$-decodeASCII-StringsKt$readUTFUntilDelimiterToSlowAscii$1$rc$1":I
    if-nez v11, :cond_2

    goto :goto_3

    .line 671
    .end local v26    # "codepoint$iv":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    move/from16 v9, v20

    move/from16 v11, v23

    move/from16 v14, v24

    move/from16 v20, v6

    move/from16 v6, v22

    goto :goto_1

    .line 373
    .end local v7    # "delimiter":Z
    .restart local v9    # "ch":C
    .restart local v25    # "delimiter":Z
    .restart local v26    # "codepoint$iv":I
    .restart local v27    # "$i$a$-decodeASCII-StringsKt$readUTFUntilDelimiterToSlowAscii$1$rc$1":I
    :cond_3
    invoke-static/range {p2 .. p2}, Lio/ktor/utils/io/core/StringsKt;->bufferLimitExceeded(I)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v4    # "decoded":I
    .end local v5    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .end local v10    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v20    # "release$iv":Z
    .end local v22    # "$i$f$takeWhile":I
    .end local v25    # "delimiter":Z
    .end local p0    # "$this$readUTFUntilDelimiterToSlowAscii":Lio/ktor/utils/io/core/Input;
    .end local p1    # "delimiters":Ljava/lang/String;
    .end local p2    # "limit":I
    .end local p3    # "out":Lio/ktor/utils/io/core/Output;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 675
    .end local v9    # "ch":C
    .end local v26    # "codepoint$iv":I
    .end local v27    # "$i$a$-decodeASCII-StringsKt$readUTFUntilDelimiterToSlowAscii$1$rc$1":I
    .restart local v4    # "decoded":I
    .restart local v5    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .local v7, "codepoint$iv":I
    .restart local v10    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v20    # "release$iv":Z
    .restart local v22    # "$i$f$takeWhile":I
    .restart local v25    # "delimiter":Z
    .restart local p0    # "$this$readUTFUntilDelimiterToSlowAscii":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "delimiters":Ljava/lang/String;
    .restart local p2    # "limit":I
    .restart local p3    # "out":Lio/ktor/utils/io/core/Output;
    :cond_4
    move/from16 v26, v7

    const/4 v1, 0x0

    .end local v7    # "codepoint$iv":I
    .restart local v26    # "codepoint$iv":I
    move/from16 v7, v25

    .line 676
    .end local v25    # "delimiter":Z
    .local v7, "delimiter":Z
    :goto_3
    sub-int v9, v8, v18

    :try_start_2
    invoke-virtual {v13, v9}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 677
    move v14, v1

    goto :goto_4

    .line 671
    .end local v20    # "release$iv":Z
    .end local v23    # "$i$a$-takeWhile-StringsKt$readUTFUntilDelimiterToSlowAscii$1":I
    .end local v24    # "$i$f$decodeASCII":I
    .end local v26    # "codepoint$iv":I
    .local v9, "release$iv":Z
    .local v11, "$i$a$-takeWhile-StringsKt$readUTFUntilDelimiterToSlowAscii$1":I
    .restart local v14    # "$i$f$decodeASCII":I
    :cond_5
    move/from16 v25, v7

    move/from16 v20, v9

    move/from16 v23, v11

    move/from16 v24, v14

    .line 681
    .end local v7    # "delimiter":Z
    .end local v8    # "index$iv":I
    .end local v9    # "release$iv":Z
    .end local v11    # "$i$a$-takeWhile-StringsKt$readUTFUntilDelimiterToSlowAscii$1":I
    .end local v14    # "$i$f$decodeASCII":I
    .restart local v20    # "release$iv":Z
    .restart local v23    # "$i$a$-takeWhile-StringsKt$readUTFUntilDelimiterToSlowAscii$1":I
    .restart local v24    # "$i$f$decodeASCII":I
    .restart local v25    # "delimiter":Z
    sub-int v1, v6, v18

    .line 670
    .end local v6    # "endExclusive$iv":I
    .end local v17    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v18    # "start$iv":I
    .end local v19    # "$i$a$-read-UTF8Kt$decodeASCII$1$iv":I
    nop

    .line 682
    .local v1, "rc$iv$iv":I
    :try_start_3
    invoke-virtual {v15, v1}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 683
    nop

    .line 684
    .end local v1    # "rc$iv$iv":I
    .end local v15    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v16    # "$i$f$read":I
    move/from16 v7, v25

    const/4 v14, 0x1

    .line 368
    .end local v13    # "$this$decodeASCII$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v24    # "$i$f$decodeASCII":I
    .end local v25    # "delimiter":Z
    .restart local v7    # "delimiter":Z
    :goto_4
    move v1, v14

    .line 379
    .local v1, "rc":Z
    move-object v6, v0

    .local v6, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v8, 0x0

    .line 685
    .local v8, "$i$f$getReadRemaining":I
    :try_start_4
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v9

    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v11

    sub-int/2addr v9, v11

    .line 379
    .end local v6    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v8    # "$i$f$getReadRemaining":I
    sub-int v6, v12, v9

    .line 380
    .local v6, "delta":I
    if-lez v6, :cond_6

    .line 381
    invoke-virtual {v0, v6}, Lio/ktor/utils/io/core/Buffer;->rewind(I)V

    .line 382
    invoke-static {v3, v0, v6}, Lio/ktor/utils/io/core/OutputKt;->writeFully(Lio/ktor/utils/io/core/Output;Lio/ktor/utils/io/core/Buffer;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 385
    :cond_6
    nop

    .line 663
    .end local v0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "rc":Z
    .end local v6    # "delta":I
    .end local v12    # "before":I
    .end local v23    # "$i$a$-takeWhile-StringsKt$readUTFUntilDelimiterToSlowAscii$1":I
    if-nez v1, :cond_7

    .line 686
    move/from16 v9, v20

    goto :goto_5

    .line 688
    :cond_7
    const/4 v9, 0x0

    .line 689
    .end local v20    # "release$iv":Z
    .restart local v9    # "release$iv":Z
    :try_start_5
    invoke-static {v5, v10}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_a

    .line 694
    :goto_5
    if-eqz v9, :cond_8

    .line 695
    invoke-static {v5, v10}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 697
    :cond_8
    nop

    .line 698
    move v0, v4

    move v4, v7

    .line 388
    .end local v5    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .end local v7    # "delimiter":Z
    .end local v9    # "release$iv":Z
    .end local v10    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v22    # "$i$f$takeWhile":I
    .local v0, "decoded":I
    .local v4, "delimiter":Z
    :goto_6
    if-nez v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/core/Input;->getEndOfInput()Z

    move-result v1

    if-nez v1, :cond_9

    .line 389
    move-object/from16 v1, p0

    move-object/from16 v6, p1

    invoke-static {v1, v3, v6, v2, v0}, Lio/ktor/utils/io/core/StringsKt;->readUTF8UntilDelimiterToSlowUtf8(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/Output;Ljava/lang/String;II)I

    move-result v0

    goto :goto_7

    .line 388
    :cond_9
    move-object/from16 v1, p0

    move-object/from16 v6, p1

    .line 392
    :goto_7
    return v0

    .line 689
    .end local v0    # "decoded":I
    .local v4, "decoded":I
    .restart local v5    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .restart local v7    # "delimiter":Z
    .restart local v9    # "release$iv":Z
    .restart local v10    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v22    # "$i$f$takeWhile":I
    :cond_a
    move-object/from16 v1, p0

    move-object/from16 v6, p1

    .line 690
    .local v0, "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move-object v10, v0

    .line 691
    const/4 v9, 0x1

    .line 692
    .end local v0    # "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move-object v1, v6

    move/from16 v6, v22

    const/4 v8, 0x1

    goto/16 :goto_0

    .line 694
    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    goto :goto_8

    .end local v9    # "release$iv":Z
    .restart local v20    # "release$iv":Z
    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move/from16 v9, v20

    goto :goto_8

    .end local v7    # "delimiter":Z
    .restart local v25    # "delimiter":Z
    :catchall_2
    move-exception v0

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move/from16 v9, v20

    move/from16 v7, v25

    goto :goto_8

    .end local v20    # "release$iv":Z
    .end local v22    # "$i$f$takeWhile":I
    .end local v25    # "delimiter":Z
    .local v6, "$i$f$takeWhile":I
    .restart local v7    # "delimiter":Z
    .restart local v9    # "release$iv":Z
    :catchall_3
    move-exception v0

    move/from16 v22, v6

    move/from16 v20, v9

    move-object v6, v1

    move-object/from16 v1, p0

    .end local v6    # "$i$f$takeWhile":I
    .restart local v22    # "$i$f$takeWhile":I
    :goto_8
    if-eqz v9, :cond_b

    .line 695
    invoke-static {v5, v10}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_b
    throw v0
.end method

.method public static final toByteArray(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 5
    .param p0, "$this$toByteArray"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 8
    .local v0, "$i$f$toByteArray":I
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    const-string v2, "charset.newEncoder()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeToByteArray(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B

    move-result-object v1

    return-object v1
.end method

.method public static synthetic toByteArray$default(Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)[B
    .locals 3
    .param p0, "$this$toByteArray_u24default"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 7
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_0
    const-string p2, "<this>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "charset"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 8
    .local p2, "$i$f$toByteArray":I
    sget-object p3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p0}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object p3

    return-object p3

    .line 10
    :cond_1
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p3

    const-string v0, "charset.newEncoder()"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p3, v0, v1, v2}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeToByteArray(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B

    move-result-object p3

    return-object p3
.end method

.method public static final writeText(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)V
    .locals 2
    .param p0, "$this$writeText"    # Lio/ktor/utils/io/core/Output;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-ne p4, v0, :cond_0

    .line 311
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/StringsKt;->writeTextUtf8(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;II)V

    return-void

    .line 314
    :cond_0
    invoke-virtual {p4}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    const-string v1, "charset.newEncoder()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0, p1, p2, p3}, Lio/ktor/utils/io/charsets/EncodingKt;->encodeToImpl(Ljava/nio/charset/CharsetEncoder;Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;II)I

    .line 315
    return-void
.end method

.method public static final writeText(Lio/ktor/utils/io/core/Output;[CIILjava/nio/charset/Charset;)V
    .locals 3
    .param p0, "$this$writeText"    # Lio/ktor/utils/io/core/Output;
    .param p1, "text"    # [C
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-ne p4, v0, :cond_0

    .line 328
    new-instance v0, Lio/ktor/utils/io/core/internal/CharArraySequence;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {v0, p1, v1, v2}, Lio/ktor/utils/io/core/internal/CharArraySequence;-><init>([CII)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p0, v0, p2, p3}, Lio/ktor/utils/io/core/StringsKt;->writeTextUtf8(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;II)V

    return-void

    .line 331
    :cond_0
    invoke-virtual {p4}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    const-string v1, "charset.newEncoder()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, p2, p3, p0}, Lio/ktor/utils/io/charsets/EncodingKt;->encode(Ljava/nio/charset/CharsetEncoder;[CIILio/ktor/utils/io/core/Output;)V

    .line 332
    return-void
.end method

.method public static synthetic writeText$default(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;ILjava/lang/Object;)V
    .locals 0

    .line 304
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 306
    const/4 p2, 0x0

    .line 304
    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 307
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    .line 304
    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 308
    sget-object p4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 304
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/core/StringsKt;->writeText(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)V

    return-void
.end method

.method public static synthetic writeText$default(Lio/ktor/utils/io/core/Output;[CIILjava/nio/charset/Charset;ILjava/lang/Object;)V
    .locals 0

    .line 321
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 323
    const/4 p2, 0x0

    .line 321
    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 324
    array-length p3, p1

    .line 321
    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 325
    sget-object p4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 321
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/core/StringsKt;->writeText(Lio/ktor/utils/io/core/Output;[CIILjava/nio/charset/Charset;)V

    return-void
.end method

.method private static final writeTextUtf8(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;II)V
    .locals 16
    .param p0, "$this$writeTextUtf8"    # Lio/ktor/utils/io/core/Output;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I

    .line 336
    move/from16 v7, p3

    const/4 v0, 0x0

    .local v0, "index":I
    move/from16 v0, p2

    .line 337
    const/4 v8, 0x1

    .local v8, "initialSize$iv":I
    move-object/from16 v9, p0

    .local v9, "$this$writeWhileSize$iv":Lio/ktor/utils/io/core/Output;
    const/4 v10, 0x0

    .line 645
    .local v10, "$i$f$writeWhileSize":I
    const/4 v1, 0x0

    invoke-static {v9, v8, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    .line 647
    .local v1, "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v2, 0x0

    move v11, v0

    move-object v12, v1

    move v0, v2

    .line 649
    .end local v1    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v0, "size$iv":I
    .local v11, "index":I
    .local v12, "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    nop

    .line 650
    :try_start_0
    move-object v1, v12

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    move-object v13, v1

    .local v13, "buffer":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 338
    .local v14, "$i$a$-writeWhileSize-StringsKt$writeTextUtf8$1":I
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 339
    .local v1, "memory":Ljava/nio/ByteBuffer;
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    .line 340
    .local v5, "dstOffset":I
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v6

    .line 342
    .local v6, "dstLimit":I
    move-object/from16 v2, p1

    move v3, v11

    move/from16 v4, p3

    invoke-static/range {v1 .. v6}, Lio/ktor/utils/io/core/internal/UTF8Kt;->encodeUTF8-lBXzO7A(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;IIII)I

    move-result v2

    invoke-static {v2}, Lio/ktor/utils/io/core/internal/EncodeResult;->component1-Mh2AYeg(I)S

    move-result v3

    .local v3, "characters":S
    invoke-static {v2}, Lio/ktor/utils/io/core/internal/EncodeResult;->component2-Mh2AYeg(I)S

    move-result v2

    .line 344
    .local v2, "bytes":S
    const v4, 0xffff

    and-int v15, v3, v4

    add-int/2addr v11, v15

    .line 345
    and-int v15, v2, v4

    invoke-virtual {v13, v15}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 347
    nop

    .line 348
    and-int/2addr v4, v3

    if-nez v4, :cond_0

    if-ge v11, v7, :cond_0

    const/16 v4, 0x8

    goto :goto_1

    .line 349
    :cond_0
    if-ge v11, v7, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    .line 350
    :cond_1
    const/4 v4, 0x0

    .line 347
    :goto_1
    nop

    .line 650
    .end local v1    # "memory":Ljava/nio/ByteBuffer;
    .end local v2    # "bytes":S
    .end local v3    # "characters":S
    .end local v5    # "dstOffset":I
    .end local v6    # "dstLimit":I
    .end local v13    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$a$-writeWhileSize-StringsKt$writeTextUtf8$1":I
    move v0, v4

    .line 651
    if-lez v0, :cond_2

    .line 652
    invoke-static {v9, v0, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v1

    goto :goto_0

    .line 655
    .end local v0    # "size$iv":I
    :cond_2
    invoke-virtual {v9}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 656
    nop

    .line 657
    nop

    .line 353
    .end local v8    # "initialSize$iv":I
    .end local v9    # "$this$writeWhileSize$iv":Lio/ktor/utils/io/core/Output;
    .end local v10    # "$i$f$writeWhileSize":I
    .end local v12    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    return-void

    .line 655
    .restart local v8    # "initialSize$iv":I
    .restart local v9    # "$this$writeWhileSize$iv":Lio/ktor/utils/io/core/Output;
    .restart local v10    # "$i$f$writeWhileSize":I
    .restart local v12    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_0
    move-exception v0

    invoke-virtual {v9}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw v0
.end method
