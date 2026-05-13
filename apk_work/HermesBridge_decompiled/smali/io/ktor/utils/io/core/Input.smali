.class public abstract Lio/ktor/utils/io/core/Input;
.super Ljava/lang/Object;
.source "Input.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/core/Input$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Input.kt\nio/ktor/utils/io/core/Input\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 4 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 5 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n+ 6 Input.kt\nio/ktor/utils/io/core/InputKt\n+ 7 UTF8.kt\nio/ktor/utils/io/core/internal/UTF8Kt\n+ 8 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 9 BufferPrimitives.kt\nio/ktor/utils/io/core/BufferPrimitivesKt\n*L\n1#1,932:1\n77#1:933\n77#1:935\n77#1:938\n77#1:940\n77#1:941\n77#1:943\n77#1:950\n77#1:1124\n1#2:934\n15#3:936\n26#3:947\n26#3:949\n26#3:968\n26#3:1017\n69#4:937\n69#4:939\n69#4:942\n69#4:944\n74#4:945\n74#4:951\n69#4:952\n69#4:1000\n59#4:1093\n69#4:1109\n69#4:1110\n69#4:1111\n69#4:1114\n69#4:1115\n59#4:1116\n69#4:1117\n69#4:1118\n59#4:1119\n69#4:1121\n74#4:1122\n69#4:1126\n69#4:1127\n69#4:1128\n84#5:946\n84#5:948\n84#5:967\n84#5:1016\n823#6,6:953\n829#6,13:979\n852#6,8:992\n862#6,3:1001\n866#6,11:1082\n877#6,15:1094\n9#7:959\n10#7,2:965\n12#7,7:969\n21#7:978\n123#7,5:1004\n128#7,2:1014\n130#7,61:1018\n193#7:1081\n372#8,5:960\n377#8,2:976\n372#8,5:1009\n377#8,2:1079\n355#8:1120\n355#8:1123\n355#8:1125\n261#9,2:1112\n*S KotlinDebug\n*F\n+ 1 Input.kt\nio/ktor/utils/io/core/Input\n*L\n25#1:933\n81#1:935\n150#1:938\n177#1:940\n187#1:941\n253#1:943\n330#1:950\n732#1:1124\n119#1:936\n286#1:947\n295#1:949\n439#1:968\n480#1:1017\n122#1:937\n159#1:939\n240#1:942\n262#1:944\n264#1:945\n342#1:951\n342#1:952\n479#1:1000\n479#1:1093\n505#1:1109\n524#1:1110\n537#1:1111\n542#1:1114\n567#1:1115\n568#1:1116\n582#1:1117\n596#1:1118\n597#1:1119\n648#1:1121\n664#1:1122\n757#1:1126\n768#1:1127\n776#1:1128\n286#1:946\n295#1:948\n439#1:967\n480#1:1016\n438#1:953,6\n438#1:979,13\n479#1:992,8\n479#1:1001,3\n479#1:1082,11\n479#1:1094,15\n439#1:959\n439#1:965,2\n439#1:969,7\n439#1:978\n480#1:1004,5\n480#1:1014,2\n480#1:1018,61\n480#1:1081\n439#1:960,5\n439#1:976,2\n480#1:1009,5\n480#1:1079,2\n646#1:1120\n669#1:1123\n748#1:1125\n539#1:1112,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "\n    We\'re migrating to the new kotlinx-io library.\n    This declaration is deprecated and will be removed in Ktor 4.0.0\n    If you have any problems with migration, please contact us in \n    https://youtrack.jetbrains.com/issue/KTOR-6030/Migrate-to-new-kotlinx.io-library\n    "
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0001\n\u0002\u00082\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0019\n\u0002\u0008\u0004\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\'\u0018\u0000 \u008e\u00012\u00060\u0001j\u0002`\u0002:\u0002\u008e\u0001B)\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0008\u00a2\u0006\u0002\u0010\tJ\u0010\u00107\u001a\u0002082\u0006\u0010\u0003\u001a\u00020\u0004H\u0002J\u0015\u00109\u001a\u0002082\u0006\u0010:\u001a\u00020\u0004H\u0000\u00a2\u0006\u0002\u0008;J\u0010\u0010<\u001a\u0002082\u0006\u0010=\u001a\u00020\u0004H\u0002J\u0010\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020\u0017H\u0002J\u0006\u0010A\u001a\u00020\u000fJ\u0008\u0010B\u001a\u000208H\u0016J\u0008\u0010C\u001a\u000208H$J\u000e\u0010D\u001a\u00020\u00172\u0006\u0010E\u001a\u00020\u0017J\u000e\u0010D\u001a\u00020\u00062\u0006\u0010E\u001a\u00020\u0006J\u0018\u0010F\u001a\u00020\u00172\u0006\u0010E\u001a\u00020\u00172\u0006\u0010G\u001a\u00020\u0017H\u0002J\u0019\u0010F\u001a\u00020\u00062\u0006\u0010E\u001a\u00020\u00062\u0006\u0010G\u001a\u00020\u0006H\u0082\u0010J\u000e\u0010H\u001a\u0002082\u0006\u0010E\u001a\u00020\u0017J\n\u0010I\u001a\u0004\u0018\u00010\u0004H\u0002J\u0010\u0010J\u001a\u00020\u000f2\u0006\u0010@\u001a\u00020\u0006H\u0002J\u0012\u0010K\u001a\u0004\u0018\u00010\u00042\u0006\u0010L\u001a\u00020\u0004H\u0001J\u001b\u0010K\u001a\u0004\u0018\u00010\u00042\u0006\u0010L\u001a\u00020\u00042\u0006\u0010M\u001a\u00020\u0004H\u0082\u0010J\u0017\u0010N\u001a\u0004\u0018\u00010\u00042\u0006\u0010L\u001a\u00020\u0004H\u0000\u00a2\u0006\u0002\u0008OJ\n\u0010P\u001a\u0004\u0018\u00010\u0004H\u0014J-\u0010P\u001a\u00020\u00172\u0006\u0010Q\u001a\u00020\u001e2\u0006\u0010R\u001a\u00020\u00172\u0006\u0010S\u001a\u00020\u0017H$\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008T\u0010UJ\u0015\u0010V\u001a\u0002082\u0006\u0010L\u001a\u00020\u0004H\u0000\u00a2\u0006\u0002\u0008WJ\u0010\u0010X\u001a\u0002082\u0006\u0010L\u001a\u00020\u0004H\u0002J \u0010Y\u001a\u0002082\u0006\u0010L\u001a\u00020\u00042\u0006\u0010Z\u001a\u00020\u00172\u0006\u0010[\u001a\u00020\u0017H\u0002J\u000e\u0010\\\u001a\u00020\u000f2\u0006\u0010E\u001a\u00020\u0017J\u0008\u0010]\u001a\u000208H\u0004J\u0018\u0010^\u001a\u00020?2\u0006\u0010@\u001a\u00020\u00172\u0006\u0010_\u001a\u00020\u0017H\u0002J\u0010\u0010`\u001a\u00020?2\u0006\u0010a\u001a\u00020\u0017H\u0002J\u0010\u0010b\u001a\u00020?2\u0006\u0010E\u001a\u00020\u0017H\u0002JA\u0010c\u001a\u00020\u00062\u0006\u0010Q\u001a\u00020\u001e2\u0006\u0010d\u001a\u00020\u00062\u0008\u0008\u0002\u0010R\u001a\u00020\u00062\u0008\u0008\u0002\u0010@\u001a\u00020\u00062\u0008\u0008\u0002\u0010_\u001a\u00020\u0006\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008e\u0010fJ\u000e\u0010c\u001a\u00020\u00172\u0006\u0010g\u001a\u00020\u0004J\u0015\u0010h\u001a\u00020\u000f2\u0006\u0010@\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008iJ\u0018\u0010j\u001a\u00020?2\u0006\u0010@\u001a\u00020\u00172\u0006\u0010k\u001a\u00020\u0017H\u0002J\u0012\u0010l\u001a\u0004\u0018\u00010\u00042\u0006\u0010a\u001a\u00020\u0017H\u0001J\u001a\u0010l\u001a\u0004\u0018\u00010\u00042\u0006\u0010a\u001a\u00020\u00172\u0006\u0010\u0003\u001a\u00020\u0004H\u0001J\u0017\u0010m\u001a\u0004\u0018\u00010\u00042\u0006\u0010a\u001a\u00020\u0017H\u0000\u00a2\u0006\u0002\u0008nJ\u001b\u0010o\u001a\u0004\u0018\u00010\u00042\u0006\u0010a\u001a\u00020\u00172\u0006\u0010\u0003\u001a\u00020\u0004H\u0082\u0010J$\u0010p\u001a\u00020\u00172\n\u0010q\u001a\u00060rj\u0002`s2\u0006\u0010@\u001a\u00020\u00172\u0006\u0010_\u001a\u00020\u0017H\u0002J)\u0010t\u001a\u00020\u00172\u0006\u0010u\u001a\u00020v2\u0006\u0010R\u001a\u00020\u00172\u0006\u0010S\u001a\u00020\u00172\u0006\u0010k\u001a\u00020\u0017H\u0082\u0010J%\u0010w\u001a\u00020\u00172\u0006\u0010Q\u001a\u00020x2\u0006\u0010y\u001a\u00020\u00172\u0006\u0010z\u001a\u00020\u0017H\u0000\u00a2\u0006\u0002\u0008{J\u0006\u0010|\u001a\u00020}J\u0008\u0010~\u001a\u00020}H\u0002J\u001b\u0010\u007f\u001a\u00030\u0080\u00012\u0008\u0008\u0002\u0010@\u001a\u00020\u00172\u0008\u0008\u0002\u0010_\u001a\u00020\u0017J&\u0010\u007f\u001a\u00020\u00172\n\u0010q\u001a\u00060rj\u0002`s2\u0008\u0008\u0002\u0010@\u001a\u00020\u00172\u0008\u0008\u0002\u0010_\u001a\u00020\u0017J\u0011\u0010\u0081\u0001\u001a\u00030\u0080\u00012\u0007\u0010\u0082\u0001\u001a\u00020\u0017J\u001c\u0010\u0081\u0001\u001a\u0002082\n\u0010q\u001a\u00060rj\u0002`s2\u0007\u0010\u0082\u0001\u001a\u00020\u0017J%\u0010\u0083\u0001\u001a\u00020\u00172\n\u0010q\u001a\u00060rj\u0002`s2\u0006\u0010@\u001a\u00020\u00172\u0006\u0010_\u001a\u00020\u0017H\u0002J\u0007\u0010\u0084\u0001\u001a\u000208J\u0017\u0010\u0085\u0001\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u00a2\u0006\u0003\u0008\u0086\u0001J\u0011\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u0004H\u0000\u00a2\u0006\u0003\u0008\u0088\u0001J\u0011\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u0004H\u0000\u00a2\u0006\u0003\u0008\u008a\u0001J\u0007\u0010\u008b\u0001\u001a\u00020\u0017J\u0017\u0010\u008c\u0001\u001a\u00020\u000f2\u0006\u0010:\u001a\u00020\u0004H\u0000\u00a2\u0006\u0003\u0008\u008d\u0001R\u001e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004@BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\"\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0003\u001a\u00020\u00048@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R$\u0010\u0016\u001a\u00020\u00178\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0018\u0010\u0013\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR/\u0010\u001d\u001a\u00020\u001e8\u0000@\u0000X\u0081\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0016\n\u0002\u0010$\u0012\u0004\u0008\u001f\u0010\u0013\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R$\u0010%\u001a\u00020\u00178\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008&\u0010\u0013\u001a\u0004\u0008\'\u0010\u001a\"\u0004\u0008(\u0010\u001cR\u001b\u0010)\u001a\u00020\u00178\u00c0\u0002X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008*\u0010\u0013\u001a\u0004\u0008+\u0010\u001aR\u000e\u0010,\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008/\u00100R,\u00102\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u00068\u0000@@X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00083\u0010\u0013\u001a\u0004\u00084\u00100\"\u0004\u00085\u00106\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u008f\u0001"
    }
    d2 = {
        "Lio/ktor/utils/io/core/Input;",
        "Ljava/io/Closeable;",
        "Lio/ktor/utils/io/core/Closeable;",
        "head",
        "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
        "remaining",
        "",
        "pool",
        "Lio/ktor/utils/io/pool/ObjectPool;",
        "(Lio/ktor/utils/io/core/internal/ChunkBuffer;JLio/ktor/utils/io/pool/ObjectPool;)V",
        "newHead",
        "_head",
        "set_head",
        "(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V",
        "endOfInput",
        "",
        "getEndOfInput",
        "()Z",
        "getHead$annotations",
        "()V",
        "getHead",
        "()Lio/ktor/utils/io/core/internal/ChunkBuffer;",
        "headEndExclusive",
        "",
        "getHeadEndExclusive$annotations",
        "getHeadEndExclusive",
        "()I",
        "setHeadEndExclusive",
        "(I)V",
        "headMemory",
        "Lio/ktor/utils/io/bits/Memory;",
        "getHeadMemory-SK3TCg8$annotations",
        "getHeadMemory-SK3TCg8",
        "()Ljava/nio/ByteBuffer;",
        "setHeadMemory-3GNKZMM",
        "(Ljava/nio/ByteBuffer;)V",
        "Ljava/nio/ByteBuffer;",
        "headPosition",
        "getHeadPosition$annotations",
        "getHeadPosition",
        "setHeadPosition",
        "headRemaining",
        "getHeadRemaining$annotations",
        "getHeadRemaining",
        "noMoreChunksAvailable",
        "getPool",
        "()Lio/ktor/utils/io/pool/ObjectPool;",
        "getRemaining",
        "()J",
        "newValue",
        "tailRemaining",
        "getTailRemaining$annotations",
        "getTailRemaining",
        "setTailRemaining",
        "(J)V",
        "afterRead",
        "",
        "append",
        "chain",
        "append$ktor_io",
        "appendView",
        "chunk",
        "atLeastMinCharactersRequire",
        "",
        "min",
        "canRead",
        "close",
        "closeSource",
        "discard",
        "n",
        "discardAsMuchAsPossible",
        "skipped",
        "discardExact",
        "doFill",
        "doPrefetch",
        "ensureNext",
        "current",
        "empty",
        "ensureNextHead",
        "ensureNextHead$ktor_io",
        "fill",
        "destination",
        "offset",
        "length",
        "fill-62zg_DM",
        "(Ljava/nio/ByteBuffer;II)I",
        "fixGapAfterRead",
        "fixGapAfterRead$ktor_io",
        "fixGapAfterReadFallback",
        "fixGapAfterReadFallbackUnreserved",
        "size",
        "overrun",
        "hasBytes",
        "markNoMoreChunksAvailable",
        "minShouldBeLess",
        "max",
        "minSizeIsTooBig",
        "minSize",
        "notEnoughBytesAvailable",
        "peekTo",
        "destinationOffset",
        "peekTo-9zorpBc",
        "(Ljava/nio/ByteBuffer;JJJJ)J",
        "buffer",
        "prefetch",
        "prefetch$ktor_io",
        "prematureEndOfStreamChars",
        "copied",
        "prepareRead",
        "prepareReadHead",
        "prepareReadHead$ktor_io",
        "prepareReadLoop",
        "readASCII",
        "out",
        "Ljava/lang/Appendable;",
        "Lkotlin/text/Appendable;",
        "readAsMuchAsPossible",
        "array",
        "",
        "readAvailableCharacters",
        "",
        "off",
        "len",
        "readAvailableCharacters$ktor_io",
        "readByte",
        "",
        "readByteSlow",
        "readText",
        "",
        "readTextExact",
        "exactCharacters",
        "readUtf8",
        "release",
        "releaseHead",
        "releaseHead$ktor_io",
        "steal",
        "steal$ktor_io",
        "stealAll",
        "stealAll$ktor_io",
        "tryPeek",
        "tryWriteAppend",
        "tryWriteAppend$ktor_io",
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


# static fields
.field public static final Companion:Lio/ktor/utils/io/core/Input$Companion;


# instance fields
.field private _head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

.field private headEndExclusive:I

.field private headMemory:Ljava/nio/ByteBuffer;

.field private headPosition:I

.field private noMoreChunksAvailable:Z

.field private final pool:Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private tailRemaining:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/utils/io/core/Input$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/utils/io/core/Input$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/utils/io/core/Input;->Companion:Lio/ktor/utils/io/core/Input$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lio/ktor/utils/io/core/Input;-><init>(Lio/ktor/utils/io/core/internal/ChunkBuffer;JLio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/ktor/utils/io/core/internal/ChunkBuffer;JLio/ktor/utils/io/pool/ObjectPool;)V
    .locals 2
    .param p1, "head"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p2, "remaining"    # J
    .param p4, "pool"    # Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            "J",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "head"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pool"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p4, p0, Lio/ktor/utils/io/core/Input;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 47
    iput-object p1, p0, Lio/ktor/utils/io/core/Input;->_head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 60
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/utils/io/core/Input;->headMemory:Ljava/nio/ByteBuffer;

    .line 63
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v0

    iput v0, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    .line 66
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v0

    iput v0, p0, Lio/ktor/utils/io/core/Input;->headEndExclusive:I

    .line 69
    iget v0, p0, Lio/ktor/utils/io/core/Input;->headEndExclusive:I

    iget v1, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long v0, p2, v0

    iput-wide v0, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lio/ktor/utils/io/core/internal/ChunkBuffer;JLio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 13
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 14
    sget-object p1, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object p1

    .line 13
    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 15
    invoke-static {p1}, Lio/ktor/utils/io/core/BuffersKt;->remainingAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;)J

    move-result-wide p2

    .line 13
    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    .line 16
    sget-object p4, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {p4}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p4

    .line 13
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/core/Input;-><init>(Lio/ktor/utils/io/core/internal/ChunkBuffer;JLio/ktor/utils/io/pool/ObjectPool;)V

    .line 783
    return-void
.end method

.method private final afterRead(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 4
    .param p1, "head"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 768
    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x0

    .line 1127
    .local v1, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    sub-int/2addr v2, v3

    .line 768
    .end local v0    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "$i$f$getReadRemaining":I
    if-nez v2, :cond_0

    .line 769
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Input;->releaseHead$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 771
    :cond_0
    return-void
.end method

.method private final appendView(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 5
    .param p1, "chunk"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 705
    iget-object v0, p0, Lio/ktor/utils/io/core/Input;->_head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    invoke-static {v0}, Lio/ktor/utils/io/core/BuffersKt;->findTail(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 706
    .local v0, "tail":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    sget-object v1, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 707
    invoke-direct {p0, p1}, Lio/ktor/utils/io/core/Input;->set_head(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 708
    iget-wide v1, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 711
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lio/ktor/utils/io/core/BuffersKt;->remainingAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;)J

    move-result-wide v3

    :cond_1
    invoke-virtual {p0, v3, v4}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    goto :goto_1

    .line 708
    :cond_2
    const/4 v1, 0x0

    .line 709
    .local v1, "$i$a$-require-Input$appendView$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "It should be no tail remaining bytes if current tail is EmptyBuffer"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 713
    .end local v1    # "$i$a$-require-Input$appendView$1":I
    :cond_3
    invoke-virtual {v0, p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->setNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 714
    iget-wide v1, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    invoke-static {p1}, Lio/ktor/utils/io/core/BuffersKt;->remainingAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;)J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    .line 716
    :goto_1
    return-void
.end method

.method private final atLeastMinCharactersRequire(I)Ljava/lang/Void;
    .locals 3
    .param p1, "min"    # I

    .line 467
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " characters required but no bytes available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final discardAsMuchAsPossible(II)I
    .locals 7
    .param p1, "n"    # I
    .param p2, "skipped"    # I

    .line 514
    move v0, p1

    .line 515
    .local v0, "currentCount":I
    move v1, p2

    .line 517
    .local v1, "currentSkipped":I
    :goto_0
    nop

    .line 518
    if-nez v0, :cond_0

    .line 519
    return v1

    .line 522
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lio/ktor/utils/io/core/Input;->prepareRead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 524
    .local v2, "current":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_1
    move-object v3, v2

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    .local v3, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 1110
    .local v4, "$i$f$getReadRemaining":I
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v6

    sub-int/2addr v5, v6

    .line 524
    .end local v3    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$getReadRemaining":I
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 525
    .local v3, "size":I
    invoke-virtual {v2, v3}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->discardExact(I)V

    .line 526
    iget v4, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    add-int/2addr v4, v3

    iput v4, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    .line 527
    invoke-direct {p0, v2}, Lio/ktor/utils/io/core/Input;->afterRead(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 529
    sub-int/2addr v0, v3

    .line 530
    add-int/2addr v1, v3

    .end local v2    # "current":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v3    # "size":I
    goto :goto_0
.end method

.method private final discardAsMuchAsPossible(JJ)J
    .locals 5
    .param p1, "n"    # J
    .param p3, "skipped"    # J

    .line 503
    nop

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-wide p3

    .line 504
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Input;->prepareRead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    return-wide p3

    .line 505
    .local v0, "current":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_1
    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 1109
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 505
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    int-to-long v1, v3

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 506
    .local v1, "size":I
    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->discardExact(I)V

    .line 507
    iget v2, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    add-int/2addr v2, v1

    iput v2, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    .line 508
    invoke-direct {p0, v0}, Lio/ktor/utils/io/core/Input;->afterRead(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 510
    int-to-long v2, v1

    sub-long/2addr p1, v2

    int-to-long v2, v1

    add-long/2addr p3, v2

    .end local v0    # "current":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v1    # "size":I
    goto :goto_0
.end method

.method private final doFill()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 3

    .line 694
    iget-boolean v0, p0, Lio/ktor/utils/io/core/Input;->noMoreChunksAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 695
    :cond_0
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->fill()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 696
    .local v0, "chunk":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    if-nez v0, :cond_1

    .line 697
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/ktor/utils/io/core/Input;->noMoreChunksAvailable:Z

    .line 698
    return-object v1

    .line 700
    :cond_1
    invoke-direct {p0, v0}, Lio/ktor/utils/io/core/Input;->appendView(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 701
    return-object v0
.end method

.method private final doPrefetch(J)Z
    .locals 10
    .param p1, "min"    # J

    .line 149
    iget-object v0, p0, Lio/ktor/utils/io/core/Input;->_head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    invoke-static {v0}, Lio/ktor/utils/io/core/BuffersKt;->findTail(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 150
    .local v0, "tail":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move-object v1, p0

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Input;
    const/4 v2, 0x0

    .line 938
    .local v2, "$i$f$getHeadRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Input;->getHeadEndExclusive()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Input;
    .end local v2    # "$i$f$getHeadRemaining":I
    int-to-long v1, v3

    .line 150
    iget-wide v3, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    add-long/2addr v1, v3

    .line 153
    .local v1, "available":J
    :cond_0
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->fill()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3

    .line 154
    .local v3, "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 155
    iput-boolean v4, p0, Lio/ktor/utils/io/core/Input;->noMoreChunksAvailable:Z

    .line 156
    const/4 v4, 0x0

    return v4

    .line 159
    :cond_1
    move-object v5, v3

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    .local v5, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 939
    .local v6, "$i$f$getReadRemaining":I
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v7

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v8

    sub-int/2addr v7, v8

    .line 159
    .end local v5    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$getReadRemaining":I
    move v5, v7

    .line 160
    .local v5, "chunkSize":I
    sget-object v6, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v6}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v6

    if-ne v0, v6, :cond_2

    .line 161
    invoke-direct {p0, v3}, Lio/ktor/utils/io/core/Input;->set_head(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 162
    move-object v0, v3

    goto :goto_0

    .line 164
    :cond_2
    invoke-virtual {v0, v3}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->setNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 165
    iget-wide v6, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    .line 168
    :goto_0
    int-to-long v6, v5

    add-long/2addr v1, v6

    .line 169
    .end local v3    # "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v5    # "chunkSize":I
    cmp-long v3, v1, p1

    if-ltz v3, :cond_0

    .line 171
    return v4
.end method

.method private final ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 7
    .param p1, "current"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p2, "empty"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 633
    nop

    :goto_0
    if-ne p1, p2, :cond_0

    .line 634
    invoke-direct {p0}, Lio/ktor/utils/io/core/Input;->doFill()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    return-object v0

    .line 637
    :cond_0
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->cleanNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 638
    .local v0, "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    iget-object v1, p0, Lio/ktor/utils/io/core/Input;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-virtual {p1, v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    .line 640
    nop

    .line 641
    if-nez v0, :cond_1

    .line 642
    invoke-direct {p0, p2}, Lio/ktor/utils/io/core/Input;->set_head(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 643
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    .line 644
    move-object p1, p2

    goto :goto_0

    .line 646
    :cond_1
    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    .local v1, "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 1120
    .local v2, "$i$f$canRead":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    if-le v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 646
    .end local v1    # "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$canRead":I
    :goto_1
    if-eqz v3, :cond_3

    .line 647
    invoke-direct {p0, v0}, Lio/ktor/utils/io/core/Input;->set_head(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 648
    iget-wide v1, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    move-object v3, v0

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    .local v3, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 1121
    .local v4, "$i$f$getReadRemaining":I
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v6

    sub-int/2addr v5, v6

    .end local v3    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$getReadRemaining":I
    int-to-long v3, v5

    .line 648
    sub-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    .line 649
    nop

    .line 640
    return-object v0

    .line 651
    :cond_3
    move-object p1, v0

    goto :goto_0
.end method

.method private final fixGapAfterReadFallback(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 5
    .param p1, "current"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 589
    iget-boolean v0, p0, Lio/ktor/utils/io/core/Input;->noMoreChunksAvailable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 590
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v0

    iput v0, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    .line 591
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v0

    iput v0, p0, Lio/ktor/utils/io/core/Input;->headEndExclusive:I

    .line 592
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    .line 593
    return-void

    .line 596
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x0

    .line 1118
    .local v1, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    sub-int/2addr v2, v3

    .line 596
    .end local v0    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "$i$f$getReadRemaining":I
    move v0, v2

    .line 597
    .local v0, "size":I
    move-object v1, p1

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 1119
    .local v2, "$i$f$getEndGap":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v4

    sub-int/2addr v3, v4

    .line 597
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getEndGap":I
    const/16 v1, 0x8

    rsub-int/lit8 v2, v3, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 599
    .local v2, "overrun":I
    if-le v0, v2, :cond_1

    .line 600
    invoke-direct {p0, p1, v0, v2}, Lio/ktor/utils/io/core/Input;->fixGapAfterReadFallbackUnreserved(Lio/ktor/utils/io/core/internal/ChunkBuffer;II)V

    goto :goto_0

    .line 602
    :cond_1
    iget-object v3, p0, Lio/ktor/utils/io/core/Input;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-interface {v3}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 603
    .local v3, "new":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    invoke-virtual {v3, v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->reserveEndGap(I)V

    .line 604
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->cleanNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->setNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 606
    move-object v1, v3

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    move-object v4, p1

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v1, v4, v0}, Lio/ktor/utils/io/core/BufferAppendKt;->writeBufferAppend(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;I)I

    .line 607
    invoke-direct {p0, v3}, Lio/ktor/utils/io/core/Input;->set_head(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 610
    .end local v3    # "new":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    iget-object v1, p0, Lio/ktor/utils/io/core/Input;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-virtual {p1, v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    .line 611
    return-void
.end method

.method private final fixGapAfterReadFallbackUnreserved(Lio/ktor/utils/io/core/internal/ChunkBuffer;II)V
    .locals 5
    .param p1, "current"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p2, "size"    # I
    .param p3, "overrun"    # I

    .line 617
    iget-object v0, p0, Lio/ktor/utils/io/core/Input;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-interface {v0}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 618
    .local v0, "chunk1":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    iget-object v1, p0, Lio/ktor/utils/io/core/Input;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-interface {v1}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 620
    .local v1, "chunk2":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->reserveEndGap(I)V

    .line 621
    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->reserveEndGap(I)V

    .line 622
    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->setNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 623
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->cleanNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->setNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 625
    move-object v2, v0

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    move-object v3, p1

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    sub-int v4, p2, p3

    invoke-static {v2, v3, v4}, Lio/ktor/utils/io/core/BufferAppendKt;->writeBufferAppend(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;I)I

    .line 626
    move-object v2, v1

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    move-object v3, p1

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v2, v3, p3}, Lio/ktor/utils/io/core/BufferAppendKt;->writeBufferAppend(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;I)I

    .line 628
    invoke-direct {p0, v0}, Lio/ktor/utils/io/core/Input;->set_head(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 629
    invoke-static {v1}, Lio/ktor/utils/io/core/BuffersKt;->remainingAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    .line 630
    return-void
.end method

.method public static synthetic getHead$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getHeadEndExclusive$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getHeadMemory-SK3TCg8$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getHeadPosition$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getHeadRemaining$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getTailRemaining$annotations()V
    .locals 0

    return-void
.end method

.method private final minShouldBeLess(II)Ljava/lang/Void;
    .locals 3
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 470
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "min should be less or equal to max but min = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final minSizeIsTooBig(I)Ljava/lang/Void;
    .locals 3
    .param p1, "minSize"    # I

    .line 764
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minSize of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is too big (should be less than 8)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final notEnoughBytesAvailable(I)Ljava/lang/Void;
    .locals 4
    .param p1, "n"    # I

    .line 551
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough data in packet ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getRemaining()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " byte(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic peekTo-9zorpBc$default(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;JJJJILjava/lang/Object;)J
    .locals 12

    .line 106
    if-nez p11, :cond_3

    and-int/lit8 v0, p10, 0x4

    if-eqz v0, :cond_0

    .line 109
    const-wide/16 v0, 0x0

    move-wide v6, v0

    goto :goto_0

    .line 106
    :cond_0
    move-wide/from16 v6, p4

    :goto_0
    and-int/lit8 v0, p10, 0x8

    if-eqz v0, :cond_1

    .line 110
    const-wide/16 v0, 0x1

    move-wide v8, v0

    goto :goto_1

    .line 106
    :cond_1
    move-wide/from16 v8, p6

    :goto_1
    and-int/lit8 v0, p10, 0x10

    if-eqz v0, :cond_2

    .line 111
    const-wide v0, 0x7fffffffffffffffL

    move-wide v10, v0

    goto :goto_2

    .line 106
    :cond_2
    move-wide/from16 v10, p8

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-virtual/range {v2 .. v11}, Lio/ktor/utils/io/core/Input;->peekTo-9zorpBc(Ljava/nio/ByteBuffer;JJJJ)J

    move-result-wide v0

    return-wide v0

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: peekTo-9zorpBc"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final prematureEndOfStreamChars(II)Ljava/lang/Void;
    .locals 3
    .param p1, "min"    # I
    .param p2, "copied"    # I

    .line 472
    new-instance v0, Lio/ktor/utils/io/core/internal/MalformedUTF8InputException;

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Premature end of stream: expected at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chars but had only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-direct {v0, v1}, Lio/ktor/utils/io/core/internal/MalformedUTF8InputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final prepareReadLoop(ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 9
    .param p1, "minSize"    # I
    .param p2, "head"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 732
    nop

    :goto_0
    move-object v0, p0

    .local v0, "this_$iv":Lio/ktor/utils/io/core/Input;
    const/4 v1, 0x0

    .line 1124
    .local v1, "$i$f$getHeadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Input;->getHeadEndExclusive()I

    move-result v2

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v3

    sub-int/2addr v2, v3

    .line 732
    .end local v0    # "this_$iv":Lio/ktor/utils/io/core/Input;
    .end local v1    # "$i$f$getHeadRemaining":I
    move v0, v2

    .line 733
    .local v0, "headSize":I
    if-lt v0, p1, :cond_0

    return-object p2

    .line 735
    :cond_0
    invoke-virtual {p2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-direct {p0}, Lio/ktor/utils/io/core/Input;->doFill()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    .line 737
    .local v1, "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_1
    if-nez v0, :cond_3

    .line 738
    sget-object v2, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    if-eq p2, v2, :cond_2

    .line 739
    invoke-virtual {p0, p2}, Lio/ktor/utils/io/core/Input;->releaseHead$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 742
    :cond_2
    move-object p2, v1

    goto :goto_0

    .line 744
    :cond_3
    sub-int v3, p1, v0

    .line 745
    .local v3, "desiredExtraBytes":I
    move-object v4, p2

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    move-object v5, v1

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v4, v5, v3}, Lio/ktor/utils/io/core/BufferAppendKt;->writeBufferAppend(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;I)I

    move-result v4

    .line 746
    .local v4, "copied":I
    invoke-virtual {p2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v5

    iput v5, p0, Lio/ktor/utils/io/core/Input;->headEndExclusive:I

    .line 747
    iget-wide v5, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    int-to-long v7, v4

    sub-long/2addr v5, v7

    invoke-virtual {p0, v5, v6}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    .line 748
    move-object v5, v1

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    .local v5, "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 1125
    .local v6, "$i$f$canRead":I
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v7

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v8

    if-le v7, v8, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    .line 748
    .end local v5    # "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$canRead":I
    :goto_1
    if-nez v7, :cond_5

    .line 749
    invoke-virtual {p2, v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->setNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 750
    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->cleanNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->setNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 751
    iget-object v2, p0, Lio/ktor/utils/io/core/Input;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    goto :goto_2

    .line 753
    :cond_5
    invoke-virtual {v1, v4}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->reserveStartGap(I)V

    .line 757
    .end local v3    # "desiredExtraBytes":I
    .end local v4    # "copied":I
    :goto_2
    move-object v2, p2

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 1126
    .local v3, "$i$f$getReadRemaining":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    sub-int/2addr v4, v5

    .line 757
    .end local v2    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getReadRemaining":I
    if-lt v4, p1, :cond_6

    return-object p2

    .line 758
    :cond_6
    const/16 v2, 0x8

    if-gt p1, v2, :cond_7

    .line 760
    nop

    .end local v0    # "headSize":I
    .end local v1    # "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    goto/16 :goto_0

    .line 758
    .restart local v0    # "headSize":I
    .restart local v1    # "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_7
    invoke-direct {p0, p1}, Lio/ktor/utils/io/core/Input;->minSizeIsTooBig(I)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method private final readASCII(Ljava/lang/Appendable;II)I
    .locals 26
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 429
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    .line 430
    const/4 v0, 0x0

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    return v0

    .line 431
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/core/Input;->getEndOfInput()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v3, :cond_1

    return v0

    :cond_1
    invoke-direct {v1, v3}, Lio/ktor/utils/io/core/Input;->atLeastMinCharactersRequire(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 432
    :cond_2
    if-lt v4, v3, :cond_10

    .line 435
    const/4 v5, 0x0

    .line 436
    .local v5, "copied":I
    const/4 v6, 0x0

    .line 438
    .local v6, "utf8":Z
    move-object/from16 v7, p0

    .local v7, "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    const/4 v8, 0x0

    .line 953
    .local v8, "$i$f$takeWhile":I
    const/4 v9, 0x1

    .line 954
    .local v9, "release$iv":Z
    const/4 v10, 0x1

    invoke-static {v7, v10}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v11

    if-nez v11, :cond_3

    goto/16 :goto_7

    .line 956
    .local v11, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_3
    nop

    .line 958
    :goto_0
    :try_start_0
    move-object v12, v11

    check-cast v12, Lio/ktor/utils/io/core/Buffer;

    .local v12, "buffer":Lio/ktor/utils/io/core/Buffer;
    const/4 v13, 0x0

    .line 439
    .local v13, "$i$a$-takeWhile-Input$readASCII$1":I
    move-object v14, v12

    .local v14, "$this$decodeASCII$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v15, 0x0

    .line 959
    .local v15, "$i$f$decodeASCII":I
    move-object/from16 v16, v14

    .local v16, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v17, 0x0

    .line 960
    .local v17, "$i$f$read":I
    nop

    .line 964
    invoke-virtual/range {v16 .. v16}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v19

    invoke-virtual/range {v16 .. v16}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .local v18, "memory$iv":Ljava/nio/ByteBuffer;
    move/from16 v21, v20

    .local v19, "start$iv":I
    .local v21, "endExclusive$iv":I
    const/16 v20, 0x0

    .line 965
    .local v20, "$i$a$-read-UTF8Kt$decodeASCII$1$iv":I
    move/from16 v22, v19

    move/from16 v0, v22

    .local v0, "index$iv":I
    :goto_1
    move/from16 v10, v21

    .end local v21    # "endExclusive$iv":I
    .local v10, "endExclusive$iv":I
    if-ge v0, v10, :cond_7

    .line 966
    move-object/from16 v21, v18

    .local v21, "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    const/16 v23, 0x0

    .line 967
    .local v23, "$i$f$get-eY85DW0":I
    const/16 v24, 0x0

    .line 968
    .local v24, "$i$f$loadAt-impl":I
    move/from16 v25, v6

    move-object/from16 v6, v21

    move/from16 v21, v8

    .end local v8    # "$i$f$takeWhile":I
    .local v6, "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    .local v21, "$i$f$takeWhile":I
    .local v25, "utf8":Z
    :try_start_1
    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 967
    .end local v24    # "$i$f$loadAt-impl":I
    nop

    .line 966
    .end local v6    # "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    .end local v23    # "$i$f$get-eY85DW0":I
    and-int/lit16 v6, v8, 0xff

    .line 969
    .local v6, "codepoint$iv":I
    and-int/lit16 v8, v6, 0x80

    move/from16 v23, v9

    .end local v9    # "release$iv":Z
    .local v23, "release$iv":Z
    const/16 v9, 0x80

    if-eq v8, v9, :cond_6

    int-to-char v8, v6

    .local v8, "it":C
    const/4 v9, 0x0

    .line 440
    .local v9, "$i$a$-decodeASCII-Input$readASCII$1$rc$1":I
    if-ne v5, v4, :cond_4

    .line 441
    const/16 v24, 0x0

    goto :goto_2

    .line 443
    :cond_4
    :try_start_2
    invoke-interface {v2, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 444
    add-int/lit8 v5, v5, 0x1

    .line 445
    const/16 v24, 0x1

    .line 440
    :goto_2
    nop

    .line 969
    .end local v8    # "it":C
    .end local v9    # "$i$a$-decodeASCII-Input$readASCII$1$rc$1":I
    if-nez v24, :cond_5

    goto :goto_3

    .line 965
    .end local v6    # "codepoint$iv":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    move/from16 v8, v21

    move/from16 v9, v23

    move/from16 v6, v25

    move/from16 v21, v10

    const/4 v10, 0x1

    goto :goto_1

    .line 970
    .restart local v6    # "codepoint$iv":I
    :cond_6
    :goto_3
    sub-int v8, v0, v19

    invoke-virtual {v14, v8}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 971
    const/4 v0, 0x0

    goto :goto_4

    .line 987
    .end local v0    # "index$iv":I
    .end local v6    # "codepoint$iv":I
    .end local v10    # "endExclusive$iv":I
    .end local v12    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$a$-takeWhile-Input$readASCII$1":I
    .end local v14    # "$this$decodeASCII$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "$i$f$decodeASCII":I
    .end local v16    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v17    # "$i$f$read":I
    .end local v18    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v19    # "start$iv":I
    .end local v20    # "$i$a$-read-UTF8Kt$decodeASCII$1$iv":I
    .end local v23    # "release$iv":Z
    .local v9, "release$iv":Z
    :catchall_0
    move-exception v0

    move/from16 v23, v9

    move/from16 v6, v25

    .end local v9    # "release$iv":Z
    .restart local v23    # "release$iv":Z
    goto/16 :goto_8

    .line 965
    .end local v21    # "$i$f$takeWhile":I
    .end local v23    # "release$iv":Z
    .end local v25    # "utf8":Z
    .restart local v0    # "index$iv":I
    .local v6, "utf8":Z
    .local v8, "$i$f$takeWhile":I
    .restart local v9    # "release$iv":Z
    .restart local v10    # "endExclusive$iv":I
    .restart local v12    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .restart local v13    # "$i$a$-takeWhile-Input$readASCII$1":I
    .restart local v14    # "$this$decodeASCII$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v15    # "$i$f$decodeASCII":I
    .restart local v16    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v17    # "$i$f$read":I
    .restart local v18    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v19    # "start$iv":I
    .restart local v20    # "$i$a$-read-UTF8Kt$decodeASCII$1$iv":I
    :cond_7
    move/from16 v25, v6

    move/from16 v21, v8

    move/from16 v23, v9

    .line 975
    .end local v0    # "index$iv":I
    .end local v6    # "utf8":Z
    .end local v8    # "$i$f$takeWhile":I
    .end local v9    # "release$iv":Z
    .restart local v21    # "$i$f$takeWhile":I
    .restart local v23    # "release$iv":Z
    .restart local v25    # "utf8":Z
    sub-int v0, v10, v19

    .line 964
    .end local v10    # "endExclusive$iv":I
    .end local v18    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v19    # "start$iv":I
    .end local v20    # "$i$a$-read-UTF8Kt$decodeASCII$1$iv":I
    nop

    .line 976
    .local v0, "rc$iv$iv":I
    move-object/from16 v6, v16

    .end local v16    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .local v6, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    invoke-virtual {v6, v0}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 977
    nop

    .line 978
    .end local v0    # "rc$iv$iv":I
    .end local v6    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v17    # "$i$f$read":I
    const/4 v0, 0x1

    .line 439
    .end local v14    # "$this$decodeASCII$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "$i$f$decodeASCII":I
    :goto_4
    nop

    .line 449
    .local v0, "rc":Z
    nop

    .line 450
    if-eqz v0, :cond_8

    move/from16 v6, v25

    const/4 v8, 0x1

    goto :goto_5

    .line 451
    :cond_8
    if-ne v5, v4, :cond_9

    move/from16 v6, v25

    const/4 v8, 0x0

    goto :goto_5

    .line 453
    :cond_9
    const/4 v6, 0x1

    .line 454
    .end local v25    # "utf8":Z
    .local v6, "utf8":Z
    const/4 v8, 0x0

    .line 449
    :goto_5
    nop

    .line 958
    .end local v0    # "rc":Z
    .end local v12    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$a$-takeWhile-Input$readASCII$1":I
    if-nez v8, :cond_a

    .line 979
    move/from16 v9, v23

    goto :goto_6

    .line 981
    :cond_a
    const/4 v9, 0x0

    .line 982
    .end local v23    # "release$iv":Z
    .restart local v9    # "release$iv":Z
    :try_start_3
    invoke-static {v7, v11}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_e

    .line 987
    :goto_6
    if-eqz v9, :cond_b

    .line 988
    invoke-static {v7, v11}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 990
    :cond_b
    nop

    .line 991
    nop

    .line 459
    .end local v7    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .end local v9    # "release$iv":Z
    .end local v11    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v21    # "$i$f$takeWhile":I
    :goto_7
    if-eqz v6, :cond_c

    .line 460
    sub-int v0, v3, v5

    sub-int v7, v4, v5

    invoke-direct {v1, v2, v0, v7}, Lio/ktor/utils/io/core/Input;->readUtf8(Ljava/lang/Appendable;II)I

    move-result v0

    add-int/2addr v0, v5

    return v0

    .line 462
    :cond_c
    if-lt v5, v3, :cond_d

    .line 463
    return v5

    .line 462
    :cond_d
    invoke-direct {v1, v3, v5}, Lio/ktor/utils/io/core/Input;->prematureEndOfStreamChars(II)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 983
    .local v0, "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v7    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .restart local v9    # "release$iv":Z
    .restart local v11    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v21    # "$i$f$takeWhile":I
    :cond_e
    move-object v11, v0

    .line 984
    const/4 v9, 0x1

    .line 985
    .end local v0    # "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move/from16 v8, v21

    const/4 v0, 0x0

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 987
    :catchall_1
    move-exception v0

    goto :goto_8

    .end local v6    # "utf8":Z
    .end local v9    # "release$iv":Z
    .restart local v23    # "release$iv":Z
    .restart local v25    # "utf8":Z
    :catchall_2
    move-exception v0

    move/from16 v9, v23

    move/from16 v6, v25

    goto :goto_8

    .end local v21    # "$i$f$takeWhile":I
    .end local v23    # "release$iv":Z
    .end local v25    # "utf8":Z
    .restart local v6    # "utf8":Z
    .restart local v8    # "$i$f$takeWhile":I
    .restart local v9    # "release$iv":Z
    :catchall_3
    move-exception v0

    move/from16 v25, v6

    move/from16 v21, v8

    move/from16 v23, v9

    .end local v8    # "$i$f$takeWhile":I
    .restart local v21    # "$i$f$takeWhile":I
    :goto_8
    if-eqz v9, :cond_f

    .line 988
    invoke-static {v7, v11}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_f
    throw v0

    .line 432
    .end local v5    # "copied":I
    .end local v6    # "utf8":Z
    .end local v7    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .end local v9    # "release$iv":Z
    .end local v11    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v21    # "$i$f$takeWhile":I
    :cond_10
    invoke-direct {v1, v3, v4}, Lio/ktor/utils/io/core/Input;->minShouldBeLess(II)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method private final readAsMuchAsPossible([BIII)I
    .locals 6
    .param p1, "array"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "copied"    # I

    .line 535
    nop

    :goto_0
    if-nez p3, :cond_0

    return p4

    .line 536
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Input;->prepareRead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    return p4

    .line 537
    .local v0, "current":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_1
    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 1111
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 537
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 539
    .local v1, "size":I
    move-object v2, v0

    .local v2, "$this$readFully$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v3, 0x0

    .line 1112
    .local v3, "$i$f$readFully":I
    move-object v4, v2

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v4, p1, p2, v1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[BII)V

    .line 1113
    nop

    .line 540
    .end local v2    # "$this$readFully$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v3    # "$i$f$readFully":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v2

    iput v2, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    .line 542
    if-ne v1, p3, :cond_3

    move-object v2, v0

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 1114
    .local v3, "$i$f$getReadRemaining":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    sub-int/2addr v4, v5

    .line 542
    .end local v2    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getReadRemaining":I
    if-nez v4, :cond_2

    goto :goto_1

    .line 546
    :cond_2
    add-int v2, p4, v1

    .line 542
    return v2

    .line 543
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lio/ktor/utils/io/core/Input;->afterRead(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 544
    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    add-int/2addr p4, v1

    goto :goto_0
.end method

.method private final readByteSlow()B
    .locals 4

    .line 293
    iget v0, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    .line 294
    .local v0, "index":I
    iget v1, p0, Lio/ktor/utils/io/core/Input;->headEndExclusive:I

    if-ge v0, v1, :cond_0

    .line 295
    iget-object v1, p0, Lio/ktor/utils/io/core/Input;->headMemory:Ljava/nio/ByteBuffer;

    .local v1, "$this$get_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 948
    .local v2, "$i$f$get-eY85DW0":I
    const/4 v3, 0x0

    .line 949
    .local v3, "$i$f$loadAt-impl":I
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    .line 948
    .end local v3    # "$i$f$loadAt-impl":I
    nop

    .line 295
    .end local v1    # "$this$get_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v2    # "$i$f$get-eY85DW0":I
    move v1, v3

    .line 296
    .local v1, "value":B
    iput v0, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    .line 297
    iget-object v2, p0, Lio/ktor/utils/io/core/Input;->_head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 298
    .local v2, "head":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    invoke-virtual {v2, v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->discardUntilIndex$ktor_io(I)V

    .line 299
    invoke-virtual {p0, v2}, Lio/ktor/utils/io/core/Input;->ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 300
    return v1

    .line 303
    .end local v1    # "value":B
    .end local v2    # "head":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lio/ktor/utils/io/core/Input;->prepareRead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v1, v2

    .line 304
    .local v1, "head":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->readByte()B

    move-result v2

    .line 305
    .local v2, "byte":B
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 306
    return v2

    .line 303
    .end local v1    # "head":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v2    # "byte":B
    :cond_1
    invoke-static {v1}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method

.method public static synthetic readText$default(Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;IIILjava/lang/Object;)I
    .locals 0

    .line 392
    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const p3, 0x7fffffff

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/utils/io/core/Input;->readText(Ljava/lang/Appendable;II)I

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: readText"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic readText$default(Lio/ktor/utils/io/core/Input;IIILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 411
    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const p2, 0x7fffffff

    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/core/Input;->readText(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: readText"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final readUtf8(Ljava/lang/Appendable;II)I
    .locals 34
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 477
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v0, 0x0

    .line 479
    .local v0, "copied":I
    move-object/from16 v4, p0

    .line 992
    .local v4, "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    const/4 v5, 0x1

    .local v5, "initialSize$iv":I
    const/4 v6, 0x0

    .line 993
    .local v6, "$i$f$takeWhileSize":I
    const/4 v7, 0x1

    .line 994
    .local v7, "release$iv":Z
    invoke-static {v4, v5}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v8

    if-nez v8, :cond_0

    goto/16 :goto_10

    .line 995
    .local v8, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move v9, v5

    .line 997
    .local v9, "size$iv":I
    move v10, v9

    move-object v9, v8

    move v8, v7

    move v7, v0

    .line 999
    .end local v0    # "copied":I
    .local v7, "copied":I
    .local v8, "release$iv":Z
    .local v9, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v10, "size$iv":I
    :goto_0
    :try_start_0
    move-object v0, v9

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v11, 0x0

    .line 1000
    .local v11, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v12

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    sub-int/2addr v12, v13

    .line 999
    .end local v0    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v11    # "$i$f$getReadRemaining":I
    move v11, v12

    .local v11, "before$iv":I
    const/4 v12, 0x0

    .line 1001
    .local v12, "after$iv":I
    if-lt v11, v10, :cond_14

    .line 1002
    nop

    .line 1003
    :try_start_1
    move-object v0, v9

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer":Lio/ktor/utils/io/core/Buffer;
    const/4 v13, 0x0

    .line 480
    .local v13, "$i$a$-takeWhileSize$default-Input$readUtf8$1":I
    move-object v14, v0

    .local v14, "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v15, 0x0

    .line 1004
    .local v15, "$i$f$decodeUTF8":I
    const/16 v16, 0x0

    .line 1005
    .local v16, "byteCount$iv":I
    const/16 v17, 0x0

    .line 1006
    .local v17, "value$iv":I
    const/16 v18, 0x0

    .line 1008
    .local v18, "lastByteCount$iv":I
    move-object/from16 v19, v14

    .local v19, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v20, 0x0

    .line 1009
    .local v20, "$i$f$read":I
    nop

    .line 1013
    invoke-virtual/range {v19 .. v19}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v22

    invoke-virtual/range {v19 .. v19}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .local v21, "memory$iv":Ljava/nio/ByteBuffer;
    .local v22, "start$iv":I
    move/from16 v24, v23

    .local v24, "endExclusive$iv":I
    const/16 v23, 0x0

    .line 1014
    .local v23, "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    move/from16 v25, v22

    move/from16 v33, v25

    move-object/from16 v25, v0

    move/from16 v0, v33

    .local v0, "index$iv":I
    .local v25, "buffer":Lio/ktor/utils/io/core/Buffer;
    :goto_1
    const/16 v26, 0x0

    const/16 v27, 0x1

    move/from16 v28, v5

    move/from16 v5, v24

    .end local v24    # "endExclusive$iv":I
    .local v5, "endExclusive$iv":I
    .local v28, "initialSize$iv":I
    if-ge v0, v5, :cond_11

    .line 1015
    move-object/from16 v24, v21

    .local v24, "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    const/16 v29, 0x0

    .line 1016
    .local v29, "$i$f$get-eY85DW0":I
    const/16 v30, 0x0

    .line 1017
    .local v30, "$i$f$loadAt-impl":I
    move/from16 v31, v6

    move-object/from16 v6, v24

    move/from16 v24, v8

    .end local v8    # "release$iv":Z
    .local v6, "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    .local v24, "release$iv":Z
    .local v31, "$i$f$takeWhileSize":I
    :try_start_2
    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1016
    .end local v30    # "$i$f$loadAt-impl":I
    nop

    .line 1015
    .end local v6    # "$this$get_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    .end local v29    # "$i$f$get-eY85DW0":I
    and-int/lit16 v6, v8, 0xff

    .line 1018
    .local v6, "v$iv":I
    nop

    .line 1019
    and-int/lit16 v8, v6, 0x80

    const/16 v29, -0x1

    if-nez v8, :cond_4

    .line 1020
    if-nez v16, :cond_3

    .line 1021
    int-to-char v8, v6

    .local v8, "it":C
    const/16 v30, 0x0

    .line 481
    .local v30, "$i$a$-decodeUTF8-Input$readUtf8$1$size$1":I
    if-ne v7, v3, :cond_1

    .line 482
    move/from16 v32, v26

    goto :goto_2

    .line 484
    :cond_1
    :try_start_3
    invoke-interface {v1, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 485
    add-int/lit8 v7, v7, 0x1

    .line 486
    move/from16 v32, v27

    .line 481
    :goto_2
    nop

    .line 1021
    .end local v8    # "it":C
    .end local v30    # "$i$a$-decodeUTF8-Input$readUtf8$1$size$1":I
    if-nez v32, :cond_2

    .line 1022
    sub-int v8, v0, v22

    invoke-virtual {v14, v8}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 1023
    move/from16 v30, v10

    move/from16 v32, v12

    goto/16 :goto_9

    .line 1021
    :cond_2
    move/from16 v30, v10

    move/from16 v32, v12

    goto/16 :goto_8

    .line 1020
    :cond_3
    invoke-static/range {v16 .. v16}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedByteCount(I)Ljava/lang/Void;

    new-instance v8, Lkotlin/KotlinNothingValueException;

    invoke-direct {v8}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v4    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v7    # "copied":I
    .end local v9    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v10    # "size$iv":I
    .end local v11    # "before$iv":I
    .end local v12    # "after$iv":I
    .end local v24    # "release$iv":Z
    .end local v28    # "initialSize$iv":I
    .end local v31    # "$i$f$takeWhileSize":I
    .end local p1    # "out":Ljava/lang/Appendable;
    .end local p2    # "min":I
    .end local p3    # "max":I
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1082
    .end local v0    # "index$iv":I
    .end local v5    # "endExclusive$iv":I
    .end local v6    # "v$iv":I
    .end local v13    # "$i$a$-takeWhileSize$default-Input$readUtf8$1":I
    .end local v14    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "$i$f$decodeUTF8":I
    .end local v16    # "byteCount$iv":I
    .end local v17    # "value$iv":I
    .end local v18    # "lastByteCount$iv":I
    .end local v19    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v20    # "$i$f$read":I
    .end local v21    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v22    # "start$iv":I
    .end local v23    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    .end local v25    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .restart local v4    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v7    # "copied":I
    .restart local v9    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v10    # "size$iv":I
    .restart local v11    # "before$iv":I
    .restart local v12    # "after$iv":I
    .restart local v24    # "release$iv":Z
    .restart local v28    # "initialSize$iv":I
    .restart local v31    # "$i$f$takeWhileSize":I
    .restart local p1    # "out":Ljava/lang/Appendable;
    .restart local p2    # "min":I
    .restart local p3    # "max":I
    :catchall_0
    move-exception v0

    move/from16 v30, v10

    move/from16 v32, v12

    goto/16 :goto_b

    .line 1026
    .restart local v0    # "index$iv":I
    .restart local v5    # "endExclusive$iv":I
    .restart local v6    # "v$iv":I
    .restart local v13    # "$i$a$-takeWhileSize$default-Input$readUtf8$1":I
    .restart local v14    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v15    # "$i$f$decodeUTF8":I
    .restart local v16    # "byteCount$iv":I
    .restart local v17    # "value$iv":I
    .restart local v18    # "lastByteCount$iv":I
    .restart local v19    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v20    # "$i$f$read":I
    .restart local v21    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v22    # "start$iv":I
    .restart local v23    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    .restart local v25    # "buffer":Lio/ktor/utils/io/core/Buffer;
    :cond_4
    if-nez v16, :cond_8

    .line 1029
    const/16 v8, 0x80

    .line 1030
    .local v8, "mask$iv":I
    move/from16 v17, v6

    .line 1032
    const/16 v29, 0x1

    move/from16 v30, v10

    move/from16 v10, v29

    .local v10, "i$iv":I
    .local v30, "size$iv":I
    :goto_3
    move/from16 v32, v12

    .end local v12    # "after$iv":I
    .local v32, "after$iv":I
    const/4 v12, 0x7

    if-ge v10, v12, :cond_6

    .line 1033
    and-int v12, v17, v8

    if-eqz v12, :cond_5

    .line 1034
    not-int v12, v8

    and-int v17, v17, v12

    .line 1035
    shr-int/lit8 v8, v8, 0x1

    .line 1036
    add-int/lit8 v16, v16, 0x1

    .line 1032
    add-int/lit8 v10, v10, 0x1

    move/from16 v12, v32

    goto :goto_3

    .line 1038
    :cond_5
    nop

    .line 1042
    .end local v10    # "i$iv":I
    :cond_6
    move/from16 v10, v16

    .line 1043
    .end local v18    # "lastByteCount$iv":I
    .local v10, "lastByteCount$iv":I
    add-int/lit8 v16, v16, -0x1

    .line 1045
    sub-int v12, v5, v0

    if-le v10, v12, :cond_7

    .line 1046
    sub-int v12, v0, v22

    :try_start_4
    invoke-virtual {v14, v12}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 1047
    move/from16 v29, v10

    goto/16 :goto_9

    .line 1045
    :cond_7
    move/from16 v18, v10

    goto/16 :goto_8

    .line 1052
    .end local v8    # "mask$iv":I
    .end local v30    # "size$iv":I
    .end local v32    # "after$iv":I
    .local v10, "size$iv":I
    .restart local v12    # "after$iv":I
    .restart local v18    # "lastByteCount$iv":I
    :cond_8
    move/from16 v30, v10

    move/from16 v32, v12

    .end local v10    # "size$iv":I
    .end local v12    # "after$iv":I
    .restart local v30    # "size$iv":I
    .restart local v32    # "after$iv":I
    shl-int/lit8 v8, v17, 0x6

    and-int/lit8 v10, v6, 0x7f

    or-int/2addr v8, v10

    .line 1053
    .end local v17    # "value$iv":I
    .local v8, "value$iv":I
    add-int/lit8 v16, v16, -0x1

    .line 1055
    if-nez v16, :cond_10

    .line 1056
    invoke-static {v8}, Lio/ktor/utils/io/core/internal/UTF8Kt;->isBmpCodePoint(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1057
    int-to-char v10, v8

    .local v10, "it":C
    const/4 v12, 0x0

    .line 481
    .local v12, "$i$a$-decodeUTF8-Input$readUtf8$1$size$1":I
    if-ne v7, v3, :cond_9

    .line 482
    move/from16 v17, v26

    goto :goto_4

    .line 484
    :cond_9
    invoke-interface {v1, v10}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 485
    add-int/lit8 v7, v7, 0x1

    .line 486
    move/from16 v17, v27

    .line 481
    :goto_4
    nop

    .line 1057
    .end local v10    # "it":C
    .end local v12    # "$i$a$-decodeUTF8-Input$readUtf8$1$size$1":I
    if-nez v17, :cond_d

    .line 1058
    sub-int v10, v0, v22

    sub-int v10, v10, v18

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v14, v10}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 1059
    goto/16 :goto_9

    .line 1061
    :cond_a
    invoke-static {v8}, Lio/ktor/utils/io/core/internal/UTF8Kt;->isValidCodePoint(I)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1064
    invoke-static {v8}, Lio/ktor/utils/io/core/internal/UTF8Kt;->highSurrogate(I)I

    move-result v10

    int-to-char v10, v10

    .restart local v10    # "it":C
    const/4 v12, 0x0

    .line 481
    .restart local v12    # "$i$a$-decodeUTF8-Input$readUtf8$1$size$1":I
    if-ne v7, v3, :cond_b

    .line 482
    move/from16 v17, v26

    goto :goto_5

    .line 484
    :cond_b
    invoke-interface {v1, v10}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 485
    add-int/lit8 v7, v7, 0x1

    .line 486
    move/from16 v17, v27

    .line 481
    :goto_5
    nop

    .line 1064
    .end local v10    # "it":C
    .end local v12    # "$i$a$-decodeUTF8-Input$readUtf8$1$size$1":I
    if-eqz v17, :cond_e

    .line 1065
    invoke-static {v8}, Lio/ktor/utils/io/core/internal/UTF8Kt;->lowSurrogate(I)I

    move-result v10

    int-to-char v10, v10

    .restart local v10    # "it":C
    const/4 v12, 0x0

    .line 481
    .restart local v12    # "$i$a$-decodeUTF8-Input$readUtf8$1$size$1":I
    if-ne v7, v3, :cond_c

    .line 482
    move/from16 v17, v26

    goto :goto_6

    .line 484
    :cond_c
    invoke-interface {v1, v10}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 485
    add-int/lit8 v7, v7, 0x1

    .line 486
    move/from16 v17, v27

    .line 481
    :goto_6
    nop

    .line 1065
    .end local v10    # "it":C
    .end local v12    # "$i$a$-decodeUTF8-Input$readUtf8$1$size$1":I
    if-nez v17, :cond_d

    goto :goto_7

    .line 1072
    :cond_d
    const/4 v8, 0x0

    move/from16 v17, v8

    goto :goto_8

    .line 1067
    :cond_e
    :goto_7
    sub-int v10, v0, v22

    sub-int v10, v10, v18

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v14, v10}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 1068
    goto :goto_9

    .line 1062
    :cond_f
    invoke-static {v8}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v10, Lkotlin/KotlinNothingValueException;

    invoke-direct {v10}, Lkotlin/KotlinNothingValueException;-><init>()V

    .end local v4    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v7    # "copied":I
    .end local v9    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v11    # "before$iv":I
    .end local v24    # "release$iv":Z
    .end local v28    # "initialSize$iv":I
    .end local v30    # "size$iv":I
    .end local v31    # "$i$f$takeWhileSize":I
    .end local v32    # "after$iv":I
    .end local p1    # "out":Ljava/lang/Appendable;
    .end local p2    # "min":I
    .end local p3    # "max":I
    throw v10

    .line 1055
    .restart local v4    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v7    # "copied":I
    .restart local v9    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v11    # "before$iv":I
    .restart local v24    # "release$iv":Z
    .restart local v28    # "initialSize$iv":I
    .restart local v30    # "size$iv":I
    .restart local v31    # "$i$f$takeWhileSize":I
    .restart local v32    # "after$iv":I
    .restart local p1    # "out":Ljava/lang/Appendable;
    .restart local p2    # "min":I
    .restart local p3    # "max":I
    :cond_10
    move/from16 v17, v8

    .line 1014
    .end local v6    # "v$iv":I
    .end local v8    # "value$iv":I
    .restart local v17    # "value$iv":I
    :goto_8
    add-int/lit8 v0, v0, 0x1

    move/from16 v8, v24

    move/from16 v10, v30

    move/from16 v6, v31

    move/from16 v12, v32

    move/from16 v24, v5

    move/from16 v5, v28

    goto/16 :goto_1

    .line 1082
    .end local v0    # "index$iv":I
    .end local v5    # "endExclusive$iv":I
    .end local v13    # "$i$a$-takeWhileSize$default-Input$readUtf8$1":I
    .end local v14    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "$i$f$decodeUTF8":I
    .end local v16    # "byteCount$iv":I
    .end local v17    # "value$iv":I
    .end local v18    # "lastByteCount$iv":I
    .end local v19    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v20    # "$i$f$read":I
    .end local v21    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v22    # "start$iv":I
    .end local v23    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    .end local v25    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v30    # "size$iv":I
    .end local v32    # "after$iv":I
    .local v10, "size$iv":I
    .local v12, "after$iv":I
    :catchall_1
    move-exception v0

    move/from16 v30, v10

    move/from16 v32, v12

    .end local v10    # "size$iv":I
    .end local v12    # "after$iv":I
    .restart local v30    # "size$iv":I
    .restart local v32    # "after$iv":I
    goto :goto_b

    .line 1014
    .end local v24    # "release$iv":Z
    .end local v30    # "size$iv":I
    .end local v31    # "$i$f$takeWhileSize":I
    .end local v32    # "after$iv":I
    .restart local v0    # "index$iv":I
    .restart local v5    # "endExclusive$iv":I
    .local v6, "$i$f$takeWhileSize":I
    .local v8, "release$iv":Z
    .restart local v10    # "size$iv":I
    .restart local v12    # "after$iv":I
    .restart local v13    # "$i$a$-takeWhileSize$default-Input$readUtf8$1":I
    .restart local v14    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v15    # "$i$f$decodeUTF8":I
    .restart local v16    # "byteCount$iv":I
    .restart local v17    # "value$iv":I
    .restart local v18    # "lastByteCount$iv":I
    .restart local v19    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v20    # "$i$f$read":I
    .restart local v21    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v22    # "start$iv":I
    .restart local v23    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    .restart local v25    # "buffer":Lio/ktor/utils/io/core/Buffer;
    :cond_11
    move/from16 v31, v6

    move/from16 v24, v8

    move/from16 v30, v10

    move/from16 v32, v12

    .line 1078
    .end local v0    # "index$iv":I
    .end local v6    # "$i$f$takeWhileSize":I
    .end local v8    # "release$iv":Z
    .end local v10    # "size$iv":I
    .end local v12    # "after$iv":I
    .restart local v24    # "release$iv":Z
    .restart local v30    # "size$iv":I
    .restart local v31    # "$i$f$takeWhileSize":I
    .restart local v32    # "after$iv":I
    sub-int v0, v5, v22

    .line 1013
    .end local v5    # "endExclusive$iv":I
    .end local v21    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v22    # "start$iv":I
    .end local v23    # "$i$a$-read-UTF8Kt$decodeUTF8$1$iv":I
    nop

    .line 1079
    .local v0, "rc$iv$iv":I
    move-object/from16 v5, v19

    .end local v19    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .local v5, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    invoke-virtual {v5, v0}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1080
    nop

    .line 1081
    .end local v0    # "rc$iv$iv":I
    .end local v5    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v20    # "$i$f$read":I
    move/from16 v29, v26

    .line 480
    .end local v14    # "$this$decodeUTF8$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "$i$f$decodeUTF8":I
    .end local v16    # "byteCount$iv":I
    .end local v17    # "value$iv":I
    .end local v18    # "lastByteCount$iv":I
    :goto_9
    move/from16 v0, v29

    .line 490
    .local v0, "size":I
    nop

    .line 491
    if-nez v0, :cond_12

    move/from16 v26, v27

    goto :goto_a

    .line 492
    :cond_12
    if-lez v0, :cond_13

    move/from16 v26, v0

    goto :goto_a

    .line 493
    :cond_13
    nop

    .line 490
    :goto_a
    nop

    .line 1003
    .end local v0    # "size":I
    .end local v13    # "$i$a$-takeWhileSize$default-Input$readUtf8$1":I
    .end local v25    # "buffer":Lio/ktor/utils/io/core/Buffer;
    move/from16 v10, v26

    .line 1082
    .end local v30    # "size$iv":I
    .restart local v10    # "size$iv":I
    :try_start_5
    move-object v0, v9

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v5, 0x0

    .line 1000
    .local v5, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    sub-int/2addr v6, v8

    .line 1082
    .end local v0    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "$i$f$getReadRemaining":I
    move v0, v6

    .line 1083
    .end local v32    # "after$iv":I
    .local v0, "after$iv":I
    goto :goto_c

    .line 1104
    .end local v0    # "after$iv":I
    .end local v11    # "before$iv":I
    :catchall_2
    move-exception v0

    move-object/from16 v5, p0

    move/from16 v8, v24

    goto/16 :goto_11

    .line 1082
    .end local v10    # "size$iv":I
    .restart local v11    # "before$iv":I
    .restart local v30    # "size$iv":I
    .restart local v32    # "after$iv":I
    :catchall_3
    move-exception v0

    goto :goto_b

    .end local v24    # "release$iv":Z
    .end local v28    # "initialSize$iv":I
    .end local v30    # "size$iv":I
    .end local v31    # "$i$f$takeWhileSize":I
    .end local v32    # "after$iv":I
    .local v5, "initialSize$iv":I
    .restart local v6    # "$i$f$takeWhileSize":I
    .restart local v8    # "release$iv":Z
    .restart local v10    # "size$iv":I
    .restart local v12    # "after$iv":I
    :catchall_4
    move-exception v0

    move/from16 v28, v5

    move/from16 v31, v6

    move/from16 v24, v8

    move/from16 v30, v10

    move/from16 v32, v12

    .end local v5    # "initialSize$iv":I
    .end local v6    # "$i$f$takeWhileSize":I
    .end local v8    # "release$iv":Z
    .end local v10    # "size$iv":I
    .end local v12    # "after$iv":I
    .restart local v24    # "release$iv":Z
    .restart local v28    # "initialSize$iv":I
    .restart local v30    # "size$iv":I
    .restart local v31    # "$i$f$takeWhileSize":I
    .restart local v32    # "after$iv":I
    :goto_b
    :try_start_6
    move-object v5, v9

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    .local v5, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 1000
    .local v6, "$i$f$getReadRemaining":I
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v8

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v10

    sub-int/2addr v8, v10

    .line 1082
    .end local v5    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$getReadRemaining":I
    move v5, v8

    .end local v4    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v7    # "copied":I
    .end local v9    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v24    # "release$iv":Z
    .end local v28    # "initialSize$iv":I
    .end local v30    # "size$iv":I
    .end local v31    # "$i$f$takeWhileSize":I
    .end local v32    # "after$iv":I
    .end local p1    # "out":Ljava/lang/Appendable;
    .end local p2    # "min":I
    .end local p3    # "max":I
    .local v5, "after$iv":I
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1104
    .end local v5    # "after$iv":I
    .end local v11    # "before$iv":I
    .restart local v4    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v7    # "copied":I
    .restart local v9    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v24    # "release$iv":Z
    .restart local v28    # "initialSize$iv":I
    .restart local v30    # "size$iv":I
    .restart local v31    # "$i$f$takeWhileSize":I
    .restart local p1    # "out":Ljava/lang/Appendable;
    .restart local p2    # "min":I
    .restart local p3    # "max":I
    :catchall_5
    move-exception v0

    move-object/from16 v5, p0

    move/from16 v8, v24

    move/from16 v10, v30

    goto/16 :goto_11

    .line 1085
    .end local v24    # "release$iv":Z
    .end local v28    # "initialSize$iv":I
    .end local v30    # "size$iv":I
    .end local v31    # "$i$f$takeWhileSize":I
    .local v5, "initialSize$iv":I
    .local v6, "$i$f$takeWhileSize":I
    .restart local v8    # "release$iv":Z
    .restart local v10    # "size$iv":I
    .restart local v11    # "before$iv":I
    .restart local v12    # "after$iv":I
    :cond_14
    move/from16 v28, v5

    move/from16 v31, v6

    move/from16 v24, v8

    move/from16 v30, v10

    move/from16 v32, v12

    .end local v5    # "initialSize$iv":I
    .end local v6    # "$i$f$takeWhileSize":I
    .end local v8    # "release$iv":Z
    .end local v10    # "size$iv":I
    .end local v12    # "after$iv":I
    .restart local v24    # "release$iv":Z
    .restart local v28    # "initialSize$iv":I
    .restart local v30    # "size$iv":I
    .restart local v31    # "$i$f$takeWhileSize":I
    .restart local v32    # "after$iv":I
    move v0, v11

    .line 1088
    .end local v30    # "size$iv":I
    .end local v32    # "after$iv":I
    .restart local v0    # "after$iv":I
    .restart local v10    # "size$iv":I
    :goto_c
    const/4 v8, 0x0

    .line 1090
    .end local v24    # "release$iv":Z
    .restart local v8    # "release$iv":Z
    nop

    .line 1091
    if-nez v0, :cond_15

    :try_start_7
    invoke-static {v4, v9}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5

    goto :goto_e

    .line 1104
    .end local v0    # "after$iv":I
    .end local v11    # "before$iv":I
    :catchall_6
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_11

    .line 1092
    .restart local v0    # "after$iv":I
    .restart local v11    # "before$iv":I
    :cond_15
    if-lt v0, v10, :cond_17

    move-object v5, v9

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    .local v5, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 1093
    .local v6, "$i$f$getEndGap":I
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v12

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v13

    sub-int/2addr v12, v13

    .line 1092
    .end local v5    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$getEndGap":I
    const/16 v5, 0x8

    if-ge v12, v5, :cond_16

    goto :goto_d

    .line 1097
    :cond_16
    move-object v5, v9

    goto :goto_e

    .line 1094
    :cond_17
    :goto_d
    invoke-static {v4, v9}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 1095
    invoke-static {v4, v10}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 1090
    :goto_e
    if-nez v5, :cond_18

    .line 1098
    goto :goto_f

    .line 1100
    .local v5, "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_18
    move-object v9, v5

    .line 1101
    const/4 v8, 0x1

    .line 1102
    .end local v0    # "after$iv":I
    .end local v5    # "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v11    # "before$iv":I
    if-gtz v10, :cond_1b

    .line 1104
    :goto_f
    if-eqz v8, :cond_19

    .line 1105
    invoke-static {v4, v9}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 1107
    :cond_19
    nop

    .line 1108
    move v0, v7

    .line 497
    .end local v4    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v7    # "copied":I
    .end local v8    # "release$iv":Z
    .end local v9    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v10    # "size$iv":I
    .end local v28    # "initialSize$iv":I
    .end local v31    # "$i$f$takeWhileSize":I
    .local v0, "copied":I
    :goto_10
    if-lt v0, v2, :cond_1a

    .line 499
    return v0

    .line 497
    :cond_1a
    move-object/from16 v5, p0

    invoke-direct {v5, v2, v0}, Lio/ktor/utils/io/core/Input;->prematureEndOfStreamChars(II)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4

    .line 1102
    .end local v0    # "copied":I
    .restart local v4    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v7    # "copied":I
    .restart local v8    # "release$iv":Z
    .restart local v9    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v10    # "size$iv":I
    .restart local v28    # "initialSize$iv":I
    .restart local v31    # "$i$f$takeWhileSize":I
    :cond_1b
    move-object/from16 v5, p0

    move/from16 v5, v28

    move/from16 v6, v31

    goto/16 :goto_0

    .line 1104
    .end local v28    # "initialSize$iv":I
    .end local v31    # "$i$f$takeWhileSize":I
    .local v5, "initialSize$iv":I
    .local v6, "$i$f$takeWhileSize":I
    :catchall_7
    move-exception v0

    move/from16 v28, v5

    move/from16 v31, v6

    move/from16 v24, v8

    move/from16 v30, v10

    move-object/from16 v5, p0

    .end local v5    # "initialSize$iv":I
    .end local v6    # "$i$f$takeWhileSize":I
    .restart local v28    # "initialSize$iv":I
    .restart local v31    # "$i$f$takeWhileSize":I
    :goto_11
    if-eqz v8, :cond_1c

    .line 1105
    invoke-static {v4, v9}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_1c
    throw v0
.end method

.method private final set_head(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 1
    .param p1, "newHead"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 49
    iput-object p1, p0, Lio/ktor/utils/io/core/Input;->_head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 50
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/utils/io/core/Input;->headMemory:Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v0

    iput v0, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    .line 52
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v0

    iput v0, p0, Lio/ktor/utils/io/core/Input;->headEndExclusive:I

    .line 53
    return-void
.end method


# virtual methods
.method public final append$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 6
    .param p1, "chain"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    .line 250
    :cond_0
    invoke-static {p1}, Lio/ktor/utils/io/core/BuffersKt;->remainingAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;)J

    move-result-wide v0

    .line 251
    .local v0, "size":J
    iget-object v2, p0, Lio/ktor/utils/io/core/Input;->_head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    sget-object v3, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v3}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 252
    invoke-direct {p0, p1}, Lio/ktor/utils/io/core/Input;->set_head(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 253
    move-object v2, p0

    .local v2, "this_$iv":Lio/ktor/utils/io/core/Input;
    const/4 v3, 0x0

    .line 943
    .local v3, "$i$f$getHeadRemaining":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Input;->getHeadEndExclusive()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v5

    sub-int/2addr v4, v5

    .end local v2    # "this_$iv":Lio/ktor/utils/io/core/Input;
    .end local v3    # "$i$f$getHeadRemaining":I
    int-to-long v2, v4

    .line 253
    sub-long v2, v0, v2

    invoke-virtual {p0, v2, v3}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    goto :goto_0

    .line 255
    :cond_1
    iget-object v2, p0, Lio/ktor/utils/io/core/Input;->_head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    invoke-static {v2}, Lio/ktor/utils/io/core/BuffersKt;->findTail(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->setNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 256
    iget-wide v2, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    add-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    .line 258
    :goto_0
    return-void
.end method

.method public final canRead()Z
    .locals 4

    .line 182
    iget v0, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    iget v1, p0, Lio/ktor/utils/io/core/Input;->headEndExclusive:I

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

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

.method public close()V
    .locals 1

    .line 212
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->release()V

    .line 213
    iget-boolean v0, p0, Lio/ktor/utils/io/core/Input;->noMoreChunksAvailable:Z

    if-nez v0, :cond_0

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/ktor/utils/io/core/Input;->noMoreChunksAvailable:Z

    .line 216
    :cond_0
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->closeSource()V

    .line 217
    return-void
.end method

.method protected abstract closeSource()V
.end method

.method public final discard(I)I
    .locals 3
    .param p1, "n"    # I

    .line 314
    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 315
    invoke-direct {p0, p1, v0}, Lio/ktor/utils/io/core/Input;->discardAsMuchAsPossible(II)I

    move-result v0

    return v0

    .line 934
    :cond_1
    const/4 v0, 0x0

    .line 314
    .local v0, "$i$a$-require-Input$discard$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative discard is not allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Input$discard$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final discard(J)J
    .locals 3
    .param p1, "n"    # J

    .line 352
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    .line 353
    :cond_0
    invoke-direct {p0, p1, p2, v0, v1}, Lio/ktor/utils/io/core/Input;->discardAsMuchAsPossible(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final discardExact(I)V
    .locals 3
    .param p1, "n"    # I

    .line 322
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Input;->discard(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 323
    return-void

    .line 322
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to discard "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes due to end of packet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 1
    .param p1, "current"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "current"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    nop

    .line 560
    nop

    .line 561
    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 559
    invoke-direct {p0, p1, v0}, Lio/ktor/utils/io/core/Input;->ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 562
    return-object v0
.end method

.method public final ensureNextHead$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 1
    .param p1, "current"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "current"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Input;->ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected fill()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 7

    .line 661
    iget-object v0, p0, Lio/ktor/utils/io/core/Input;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-interface {v0}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 662
    .local v0, "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 663
    const/16 v1, 0x8

    :try_start_0
    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->reserveEndGap(I)V

    .line 664
    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v2

    move-object v3, v0

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    .local v3, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 1122
    .local v4, "$i$f$getWriteRemaining":I
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v5

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    sub-int/2addr v5, v6

    .line 664
    .end local v3    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$getWriteRemaining":I
    invoke-virtual {p0, v1, v2, v5}, Lio/ktor/utils/io/core/Input;->fill-62zg_DM(Ljava/nio/ByteBuffer;II)I

    move-result v1

    .line 666
    .local v1, "copied":I
    if-nez v1, :cond_1

    .line 667
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/ktor/utils/io/core/Input;->noMoreChunksAvailable:Z

    .line 669
    move-object v3, v0

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    .local v3, "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 1123
    .local v4, "$i$f$canRead":I
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v6

    if-le v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 669
    .end local v3    # "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$canRead":I
    :goto_0
    if-nez v2, :cond_1

    .line 670
    iget-object v2, p0, Lio/ktor/utils/io/core/Input;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-virtual {v0, v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    .line 671
    const/4 v2, 0x0

    return-object v2

    .line 675
    :cond_1
    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->commitWritten(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    return-object v0

    .line 678
    .end local v1    # "copied":I
    :catchall_0
    move-exception v1

    .line 679
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/ktor/utils/io/core/Input;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-virtual {v0, v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    .line 680
    throw v1
.end method

.method protected abstract fill-62zg_DM(Ljava/nio/ByteBuffer;II)I
.end method

.method public final fixGapAfterRead$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 9
    .param p1, "current"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "current"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lio/ktor/utils/io/core/Input;->fixGapAfterReadFallback(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    return-void

    .line 567
    .local v0, "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move-object v1, p1

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 1115
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 567
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    move v1, v3

    .line 568
    .local v1, "remaining":I
    move-object v2, p1

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 1116
    .local v3, "$i$f$getEndGap":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v5

    sub-int/2addr v4, v5

    .line 568
    .end local v2    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getEndGap":I
    rsub-int/lit8 v2, v4, 0x8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 569
    .local v2, "overrunSize":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getStartGap()I

    move-result v3

    if-ge v3, v2, :cond_1

    .line 570
    invoke-direct {p0, p1}, Lio/ktor/utils/io/core/Input;->fixGapAfterReadFallback(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    return-void

    .line 573
    :cond_1
    move-object v3, v0

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v3, v2}, Lio/ktor/utils/io/core/BufferKt;->restoreStartGap(Lio/ktor/utils/io/core/Buffer;I)V

    .line 575
    if-le v1, v2, :cond_2

    .line 576
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->releaseEndGap$ktor_io()V

    .line 578
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v3

    iput v3, p0, Lio/ktor/utils/io/core/Input;->headEndExclusive:I

    .line 579
    iget-wide v3, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    goto :goto_0

    .line 581
    :cond_2
    invoke-direct {p0, v0}, Lio/ktor/utils/io/core/Input;->set_head(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 582
    iget-wide v3, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    move-object v5, v0

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    .local v5, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 1117
    .local v6, "$i$f$getReadRemaining":I
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v7

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v8

    sub-int/2addr v7, v8

    .line 582
    .end local v5    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$getReadRemaining":I
    sub-int/2addr v7, v2

    int-to-long v5, v7

    sub-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    .line 583
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->cleanNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 584
    iget-object v3, p0, Lio/ktor/utils/io/core/Input;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-virtual {p1, v3}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    .line 586
    :goto_0
    return-void
.end method

.method public final getEndOfInput()Z
    .locals 4

    .line 25
    move-object v0, p0

    .local v0, "this_$iv":Lio/ktor/utils/io/core/Input;
    const/4 v1, 0x0

    .line 933
    .local v1, "$i$f$getHeadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Input;->getHeadEndExclusive()I

    move-result v2

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v3

    sub-int/2addr v2, v3

    .end local v0    # "this_$iv":Lio/ktor/utils/io/core/Input;
    .end local v1    # "$i$f$getHeadRemaining":I
    if-nez v2, :cond_1

    .line 25
    iget-wide v0, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/ktor/utils/io/core/Input;->noMoreChunksAvailable:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lio/ktor/utils/io/core/Input;->doFill()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getHead()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 4

    .line 57
    iget-object v0, p0, Lio/ktor/utils/io/core/Input;->_head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-object v1, v0

    .line 934
    .local v1, "it":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v2, 0x0

    .line 57
    .local v2, "$i$a$-also-Input$head$1":I
    iget v3, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    invoke-virtual {v1, v3}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->discardUntilIndex$ktor_io(I)V

    .end local v1    # "it":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v2    # "$i$a$-also-Input$head$1":I
    return-object v0
.end method

.method public final getHeadEndExclusive()I
    .locals 1

    .line 66
    iget v0, p0, Lio/ktor/utils/io/core/Input;->headEndExclusive:I

    return v0
.end method

.method public final getHeadMemory-SK3TCg8()Ljava/nio/ByteBuffer;
    .locals 1

    .line 60
    iget-object v0, p0, Lio/ktor/utils/io/core/Input;->headMemory:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getHeadPosition()I
    .locals 1

    .line 63
    iget v0, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    return v0
.end method

.method public final getHeadRemaining()I
    .locals 3

    const/4 v0, 0x0

    .line 77
    .local v0, "$i$f$getHeadRemaining":I
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getHeadEndExclusive()I

    move-result v1

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public final getPool()Lio/ktor/utils/io/pool/ObjectPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lio/ktor/utils/io/core/Input;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    return-object v0
.end method

.method public final getRemaining()J
    .locals 4

    .line 177
    move-object v0, p0

    .local v0, "this_$iv":Lio/ktor/utils/io/core/Input;
    const/4 v1, 0x0

    .line 940
    .local v1, "$i$f$getHeadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Input;->getHeadEndExclusive()I

    move-result v2

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v3

    sub-int/2addr v2, v3

    .line 177
    .end local v0    # "this_$iv":Lio/ktor/utils/io/core/Input;
    .end local v1    # "$i$f$getHeadRemaining":I
    int-to-long v0, v2

    iget-wide v2, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final getTailRemaining()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    return-wide v0
.end method

.method public final hasBytes(I)Z
    .locals 4
    .param p1, "n"    # I

    .line 187
    move-object v0, p0

    .local v0, "this_$iv":Lio/ktor/utils/io/core/Input;
    const/4 v1, 0x0

    .line 941
    .local v1, "$i$f$getHeadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Input;->getHeadEndExclusive()I

    move-result v2

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v3

    sub-int/2addr v2, v3

    .end local v0    # "this_$iv":Lio/ktor/utils/io/core/Input;
    .end local v1    # "$i$f$getHeadRemaining":I
    int-to-long v0, v2

    .line 187
    iget-wide v2, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    add-long/2addr v0, v2

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final markNoMoreChunksAvailable()V
    .locals 1

    .line 685
    iget-boolean v0, p0, Lio/ktor/utils/io/core/Input;->noMoreChunksAvailable:Z

    if-nez v0, :cond_0

    .line 686
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/ktor/utils/io/core/Input;->noMoreChunksAvailable:Z

    .line 688
    :cond_0
    return-void
.end method

.method public final peekTo(Lio/ktor/utils/io/core/internal/ChunkBuffer;)I
    .locals 6
    .param p1, "buffer"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Input;->prepareReadHead$ktor_io(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 342
    .local v0, "head":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move-object v1, p1

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 951
    .local v2, "$i$f$getWriteRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 342
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getWriteRemaining":I
    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    .restart local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 952
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    sub-int/2addr v4, v5

    .line 342
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 343
    .local v1, "size":I
    move-object v2, p1

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    move-object v3, v0

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v2, v3, v1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;I)V

    .line 345
    return v1
.end method

.method public final peekTo-9zorpBc(Ljava/nio/ByteBuffer;JJJJ)J
    .locals 23
    .param p1, "destination"    # Ljava/nio/ByteBuffer;
    .param p2, "destinationOffset"    # J
    .param p4, "offset"    # J
    .param p6, "min"    # J
    .param p8, "max"    # J

    const-string v0, "destination"

    move-object/from16 v9, p1

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    add-long v0, p6, p4

    move-object/from16 v10, p0

    invoke-virtual {v10, v0, v1}, Lio/ktor/utils/io/core/Input;->prefetch$ktor_io(J)Z

    .line 115
    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/core/Input;->getHead()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 116
    .local v0, "current":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const-wide/16 v1, 0x0

    .line 117
    .local v1, "copied":J
    move-wide/from16 v3, p4

    .line 118
    .local v3, "skip":J
    move-wide/from16 v5, p2

    .line 119
    .local v5, "writePosition":J
    const/4 v7, 0x0

    .line 936
    .local v7, "$i$f$getSize-impl":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    int-to-long v7, v8

    .line 119
    .end local v7    # "$i$f$getSize-impl":I
    sub-long v7, v7, p2

    move-wide/from16 v11, p8

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    move-wide v15, v1

    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    .line 121
    .end local v1    # "copied":J
    .end local v3    # "skip":J
    .end local v5    # "writePosition":J
    .local v13, "maxCopySize":J
    .local v15, "copied":J
    .local v17, "skip":J
    .local v19, "writePosition":J
    :goto_0
    cmp-long v1, v15, p6

    if-gez v1, :cond_2

    cmp-long v1, v15, v13

    if-gez v1, :cond_2

    .line 122
    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 937
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 122
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    move v7, v3

    .line 123
    .local v7, "chunkSize":I
    int-to-long v1, v7

    cmp-long v1, v1, v17

    if-lez v1, :cond_0

    .line 124
    int-to-long v1, v7

    sub-long v1, v1, v17

    sub-long v3, v13, v15

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v21

    .line 125
    .local v21, "size":J
    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 126
    nop

    .line 127
    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReadPosition()I

    move-result v2

    int-to-long v2, v2

    add-long v3, v2, v17

    .line 128
    nop

    .line 129
    nop

    .line 125
    move-object/from16 v2, p1

    move-wide/from16 v5, v21

    move v9, v7

    .end local v7    # "chunkSize":I
    .local v9, "chunkSize":I
    move-wide/from16 v7, v19

    invoke-static/range {v1 .. v8}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JJJ)V

    .line 131
    const-wide/16 v1, 0x0

    .line 132
    .end local v17    # "skip":J
    .local v1, "skip":J
    add-long v15, v15, v21

    .line 133
    add-long v19, v19, v21

    move-wide/from16 v17, v1

    .end local v21    # "size":J
    goto :goto_1

    .line 135
    .end local v1    # "skip":J
    .end local v9    # "chunkSize":I
    .restart local v7    # "chunkSize":I
    .restart local v17    # "skip":J
    :cond_0
    move v9, v7

    .end local v7    # "chunkSize":I
    .restart local v9    # "chunkSize":I
    int-to-long v1, v9

    sub-long v17, v17, v1

    .line 138
    :goto_1
    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, v1

    move-object/from16 v9, p1

    .end local v9    # "chunkSize":I
    goto :goto_0

    .line 141
    :cond_2
    :goto_2
    return-wide v15
.end method

.method public final prefetch$ktor_io(J)Z
    .locals 6
    .param p1, "min"    # J

    .line 80
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    .line 81
    :cond_0
    move-object v0, p0

    .local v0, "this_$iv":Lio/ktor/utils/io/core/Input;
    const/4 v2, 0x0

    .line 935
    .local v2, "$i$f$getHeadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Input;->getHeadEndExclusive()I

    move-result v3

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 81
    .end local v0    # "this_$iv":Lio/ktor/utils/io/core/Input;
    .end local v2    # "$i$f$getHeadRemaining":I
    move v0, v3

    .line 82
    .local v0, "headRemaining":I
    int-to-long v2, v0

    cmp-long v2, v2, p1

    if-gez v2, :cond_2

    int-to-long v2, v0

    iget-wide v4, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    add-long/2addr v2, v4

    cmp-long v2, v2, p1

    if-ltz v2, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/core/Input;->doPrefetch(J)Z

    move-result v1

    return v1

    .line 82
    :cond_2
    :goto_0
    return v1
.end method

.method public final prepareRead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 3
    .param p1, "minSize"    # I

    .line 720
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getHead()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 721
    .local v0, "head":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    iget v1, p0, Lio/ktor/utils/io/core/Input;->headEndExclusive:I

    iget v2, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    sub-int/2addr v1, v2

    if-lt v1, p1, :cond_0

    return-object v0

    .line 722
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/ktor/utils/io/core/Input;->prepareReadLoop(ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    return-object v1
.end method

.method public final prepareRead(ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "head"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "head"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 727
    iget v0, p0, Lio/ktor/utils/io/core/Input;->headEndExclusive:I

    iget v1, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    return-object p2

    .line 728
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/core/Input;->prepareReadLoop(ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final prepareReadHead$ktor_io(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 1
    .param p1, "minSize"    # I

    .line 554
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getHead()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/ktor/utils/io/core/Input;->prepareReadLoop(ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final readAvailableCharacters$ktor_io([CII)I
    .locals 3
    .param p1, "destination"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getEndOfInput()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 359
    :cond_0
    new-instance v0, Lio/ktor/utils/io/core/Input$readAvailableCharacters$out$1;

    invoke-direct {v0, p2, p1}, Lio/ktor/utils/io/core/Input$readAvailableCharacters$out$1;-><init>(I[C)V

    .line 385
    .local v0, "out":Lio/ktor/utils/io/core/Input$readAvailableCharacters$out$1;
    move-object v1, v0

    check-cast v1, Ljava/lang/Appendable;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p3}, Lio/ktor/utils/io/core/Input;->readText(Ljava/lang/Appendable;II)I

    move-result v1

    return v1
.end method

.method public final readByte()B
    .locals 5

    .line 281
    iget v0, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    .line 282
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    .line 283
    .local v1, "nextIndex":I
    iget v2, p0, Lio/ktor/utils/io/core/Input;->headEndExclusive:I

    if-ge v1, v2, :cond_0

    .line 285
    iput v1, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    .line 286
    iget-object v2, p0, Lio/ktor/utils/io/core/Input;->headMemory:Ljava/nio/ByteBuffer;

    .local v2, "$this$get_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 946
    .local v3, "$i$f$get-eY85DW0":I
    const/4 v4, 0x0

    .line 947
    .local v4, "$i$f$loadAt-impl":I
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    .line 946
    .end local v4    # "$i$f$loadAt-impl":I
    nop

    .line 286
    .end local v2    # "$this$get_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v3    # "$i$f$get-eY85DW0":I
    return v4

    .line 289
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/core/Input;->readByteSlow()B

    move-result v2

    return v2
.end method

.method public final readText(Ljava/lang/Appendable;II)I
    .locals 4
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "min"    # I
    .param p3, "max"    # I

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    int-to-long v0, p3

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getRemaining()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getRemaining()J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lio/ktor/utils/io/core/StringsKt;->readTextExactBytes$default(Lio/ktor/utils/io/core/Input;ILjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "s":Ljava/lang/String;
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 396
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    return v1

    .line 398
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/core/Input;->readASCII(Ljava/lang/Appendable;II)I

    move-result v0

    return v0
.end method

.method public final readText(II)Ljava/lang/String;
    .locals 6
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 412
    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getEndOfInput()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    return-object v0

    .line 413
    :cond_1
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getRemaining()J

    move-result-wide v0

    .line 414
    .local v0, "remaining":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    int-to-long v2, p2

    cmp-long v2, v2, v0

    if-ltz v2, :cond_2

    long-to-int v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p0, v2, v4, v3, v4}, Lio/ktor/utils/io/core/StringsKt;->readTextExactBytes$default(Lio/ktor/utils/io/core/Input;ILjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 416
    :cond_2
    const/16 v2, 0x10

    invoke-static {p1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    invoke-static {v2, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v3

    .local v2, "$this$readText_u24lambda_u243":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 417
    .local v4, "$i$a$-buildString-Input$readText$1":I
    move-object v5, v2

    check-cast v5, Ljava/lang/Appendable;

    invoke-direct {p0, v5, p1, p2}, Lio/ktor/utils/io/core/Input;->readASCII(Ljava/lang/Appendable;II)I

    .line 418
    nop

    .line 416
    .end local v2    # "$this$readText_u24lambda_u243":Ljava/lang/StringBuilder;
    .end local v4    # "$i$a$-buildString-Input$readText$1":I
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public final readTextExact(I)Ljava/lang/String;
    .locals 1
    .param p1, "exactCharacters"    # I

    .line 425
    invoke-virtual {p0, p1, p1}, Lio/ktor/utils/io/core/Input;->readText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readTextExact(Ljava/lang/Appendable;I)V
    .locals 1
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "exactCharacters"    # I

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0, p1, p2, p2}, Lio/ktor/utils/io/core/Input;->readText(Ljava/lang/Appendable;II)I

    .line 406
    return-void
.end method

.method public final release()V
    .locals 4

    .line 197
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getHead()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 198
    .local v0, "head":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    sget-object v1, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    .line 200
    .local v1, "empty":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    if-eq v0, v1, :cond_0

    .line 201
    invoke-direct {p0, v1}, Lio/ktor/utils/io/core/Input;->set_head(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 202
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    .line 203
    iget-object v2, p0, Lio/ktor/utils/io/core/Input;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-static {v0, v2}, Lio/ktor/utils/io/core/BuffersKt;->releaseAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;)V

    .line 205
    :cond_0
    return-void
.end method

.method public final releaseHead$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 7
    .param p1, "head"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "head"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 774
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->cleanNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 775
    .local v0, "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    invoke-direct {p0, v0}, Lio/ktor/utils/io/core/Input;->set_head(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 776
    iget-wide v1, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    move-object v3, v0

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    .local v3, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 1128
    .local v4, "$i$f$getReadRemaining":I
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v6

    sub-int/2addr v5, v6

    .end local v3    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$getReadRemaining":I
    int-to-long v3, v5

    .line 776
    sub-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    .line 777
    iget-object v1, p0, Lio/ktor/utils/io/core/Input;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-virtual {p1, v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    .line 779
    return-object v0
.end method

.method public final setHeadEndExclusive(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 66
    iput p1, p0, Lio/ktor/utils/io/core/Input;->headEndExclusive:I

    return-void
.end method

.method public final setHeadMemory-3GNKZMM(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/nio/ByteBuffer;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lio/ktor/utils/io/core/Input;->headMemory:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final setHeadPosition(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 63
    iput p1, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    return-void
.end method

.method public final setTailRemaining(J)V
    .locals 3
    .param p1, "newValue"    # J

    .line 71
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 72
    iput-wide p1, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    .line 73
    return-void

    .line 934
    :cond_1
    const/4 v0, 0x0

    .line 71
    .local v0, "$i$a$-require-Input$tailRemaining$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tailRemaining shouldn\'t be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Input$tailRemaining$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final steal$ktor_io()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 10

    .line 230
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getHead()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 231
    .local v0, "head":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    .line 232
    .local v1, "next":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    sget-object v2, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    .line 233
    .local v2, "empty":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    return-object v3

    .line 235
    :cond_0
    if-nez v1, :cond_1

    .line 236
    invoke-direct {p0, v2}, Lio/ktor/utils/io/core/Input;->set_head(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 237
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    goto :goto_0

    .line 239
    :cond_1
    invoke-direct {p0, v1}, Lio/ktor/utils/io/core/Input;->set_head(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 240
    iget-wide v4, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    move-object v6, v1

    check-cast v6, Lio/ktor/utils/io/core/Buffer;

    .local v6, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v7, 0x0

    .line 942
    .local v7, "$i$f$getReadRemaining":I
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v8

    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v9

    sub-int/2addr v8, v9

    .end local v6    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v7    # "$i$f$getReadRemaining":I
    int-to-long v6, v8

    .line 240
    sub-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    .line 243
    :goto_0
    invoke-virtual {v0, v3}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->setNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 244
    return-object v0
.end method

.method public final stealAll$ktor_io()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 4

    .line 220
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getHead()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 221
    .local v0, "head":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    sget-object v1, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    .line 223
    .local v1, "empty":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    .line 224
    :cond_0
    invoke-direct {p0, v1}, Lio/ktor/utils/io/core/Input;->set_head(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 225
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    .line 226
    return-object v0
.end method

.method public final tryPeek()I
    .locals 5

    .line 329
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getHead()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 330
    .local v0, "head":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move-object v1, p0

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Input;
    const/4 v2, 0x0

    .line 950
    .local v2, "$i$f$getHeadRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Input;->getHeadEndExclusive()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 330
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Input;
    .end local v2    # "$i$f$getHeadRemaining":I
    if-lez v3, :cond_0

    .line 331
    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->tryPeekByte()I

    move-result v1

    return v1

    .line 334
    :cond_0
    iget-wide v1, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, -0x1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lio/ktor/utils/io/core/Input;->noMoreChunksAvailable:Z

    if-eqz v1, :cond_1

    return v2

    .line 336
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lio/ktor/utils/io/core/Input;->prepareReadLoop(ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->tryPeekByte()I

    move-result v2

    :cond_2
    return v2
.end method

.method public final tryWriteAppend$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Z
    .locals 6
    .param p1, "chain"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getHead()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/utils/io/core/BuffersKt;->findTail(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 262
    .local v0, "tail":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move-object v1, p1

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 944
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 262
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    move v1, v3

    .line 264
    .local v1, "size":I
    if-eqz v1, :cond_2

    move-object v2, v0

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 945
    .local v3, "$i$f$getWriteRemaining":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    sub-int/2addr v4, v5

    .line 264
    .end local v2    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getWriteRemaining":I
    if-ge v4, v1, :cond_0

    goto :goto_1

    .line 265
    :cond_0
    move-object v2, v0

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    move-object v3, p1

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v2, v3, v1}, Lio/ktor/utils/io/core/BufferAppendKt;->writeBufferAppend(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;I)I

    .line 267
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getHead()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    if-ne v2, v0, :cond_1

    .line 268
    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getWritePosition()I

    move-result v2

    iput v2, p0, Lio/ktor/utils/io/core/Input;->headEndExclusive:I

    goto :goto_0

    .line 270
    :cond_1
    iget-wide v2, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    .line 273
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 264
    :cond_2
    :goto_1
    const/4 v2, 0x0

    return v2
.end method
