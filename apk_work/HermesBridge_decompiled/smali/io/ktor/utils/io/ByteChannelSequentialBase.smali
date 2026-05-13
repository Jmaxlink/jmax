.class public abstract Lio/ktor/utils/io/ByteChannelSequentialBase;
.super Ljava/lang/Object;
.source "ByteChannelSequential.kt"

# interfaces
.implements Lio/ktor/utils/io/ByteChannel;
.implements Lio/ktor/utils/io/ByteReadChannel;
.implements Lio/ktor/utils/io/ByteWriteChannel;
.implements Lio/ktor/utils/io/SuspendableReadSession;
.implements Lio/ktor/utils/io/HasReadSession;
.implements Lio/ktor/utils/io/HasWriteSession;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteChannelSequential.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteChannelSequential.kt\nio/ktor/utils/io/ByteChannelSequentialBase\n+ 2 AtomicFU.kt\nkotlinx/atomicfu/AtomicInt\n+ 3 AtomicFU.kt\nkotlinx/atomicfu/AtomicRef\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 6 Packet.kt\nio/ktor/utils/io/core/PacketKt\n*L\n1#1,855:1\n207#2,3:856\n302#2,2:874\n302#2,2:876\n295#2,2:878\n87#3,3:859\n1#4:862\n69#5:863\n69#5:864\n74#5:867\n74#5:868\n74#5:869\n69#5:870\n69#5:873\n43#6:865\n43#6:866\n43#6:871\n39#6:872\n*S KotlinDebug\n*F\n+ 1 ByteChannelSequential.kt\nio/ktor/utils/io/ByteChannelSequentialBase\n*L\n42#1:856,3\n838#1:874,2\n840#1:876,2\n849#1:878,2\n43#1:859,3\n194#1:863\n229#1:864\n483#1:867\n493#1:868\n504#1:869\n576#1:870\n651#1:873\n293#1:865\n315#1:866\n602#1:871\n640#1:872\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\t\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0006\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\n\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008<\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0008&\u0018\u00002\u00030\u00d6\u00012\u00030\u00d7\u00012\u00030\u00d8\u00012\u00020{2\u00030\u00d9\u00012\u00030\u00da\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0004\u00a2\u0006\u0004\u0008\u000f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0004\u00a2\u0006\u0004\u0008\u0010\u0010\rJ\u001b\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\tH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001b\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\u001b\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0013J\u0013\u0010\u0018\u001a\u00020\u000bH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\u000bH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001a\u0010\u0019J\u0013\u0010\u001c\u001a\u00020\u0003H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u0019J\u001b\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\tH\u0084@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u0013J\u000f\u0010\u001f\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0019\u0010#\u001a\u00020\u00032\u0008\u0010\"\u001a\u0004\u0018\u00010!H\u0016\u00a2\u0006\u0004\u0008#\u0010$J#\u0010(\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020\t2\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010&H\u0002\u00a2\u0006\u0004\u0008(\u0010)J\u0019\u0010*\u001a\u00020\u00032\u0008\u0010\"\u001a\u0004\u0018\u00010!H\u0016\u00a2\u0006\u0004\u0008*\u0010$J\u000f\u0010+\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008+\u0010,J\u0017\u0010.\u001a\u00020\t2\u0006\u0010-\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008.\u0010/J\u001b\u0010.\u001a\u0002002\u0006\u00101\u001a\u000200H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008.\u00102J#\u00104\u001a\u0002002\u0006\u00101\u001a\u0002002\u0006\u00103\u001a\u000200H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00084\u00105J\u000f\u00106\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u00086\u0010,J\u0017\u00108\u001a\u00020\u000b2\u0006\u00107\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u00088\u0010\rJ\u000f\u00109\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u00089\u0010,J\u000f\u0010:\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008:\u0010,J\u0017\u0010:\u001a\u00020\u000b2\u0006\u0010\'\u001a\u00020&H\u0002\u00a2\u0006\u0004\u0008:\u0010;J\u000f\u0010<\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008<\u0010,J\u000f\u0010=\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008=\u0010>J\u000f\u0010?\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008?\u0010,JA\u0010G\u001a\u0002002\u0006\u0010A\u001a\u00020@2\u0006\u0010B\u001a\u0002002\u0006\u0010C\u001a\u0002002\u0006\u0010D\u001a\u0002002\u0006\u00101\u001a\u000200H\u0086@\u00f8\u0001\u0001\u00f8\u0001\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008E\u0010FJ\u000f\u0010H\u001a\u00020\u000bH\u0004\u00a2\u0006\u0004\u0008H\u0010,J\u001b\u0010M\u001a\u00020\t2\u0006\u0010J\u001a\u00020IH\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008K\u0010LJ\u001b\u0010M\u001a\u00020\t2\u0006\u0010J\u001a\u00020\u0001H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008M\u0010NJ+\u0010M\u001a\u00020\t2\u0006\u0010J\u001a\u00020O2\u0006\u0010C\u001a\u00020\t2\u0006\u0010P\u001a\u00020\tH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008M\u0010QJ\u000f\u0010R\u001a\u00020\tH\u0004\u00a2\u0006\u0004\u0008R\u0010SJ\u0013\u0010T\u001a\u00020\u0003H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008T\u0010\u0019J\u0013\u0010U\u001a\u00020\u0003H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008U\u0010\u0019J\u0013\u0010W\u001a\u00020VH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008W\u0010\u0019J\u0013\u0010X\u001a\u00020VH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008X\u0010\u0019J\u0013\u0010Z\u001a\u00020YH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008Z\u0010\u0019J\u0013\u0010[\u001a\u00020YH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008[\u0010\u0019J\u0013\u0010]\u001a\u00020\\H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008]\u0010\u0019J\u0013\u0010^\u001a\u00020\\H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008^\u0010\u0019J#\u0010_\u001a\u00020\u000b2\u0006\u0010J\u001a\u00020I2\u0006\u0010-\u001a\u00020\tH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008_\u0010`J#\u0010_\u001a\u00020\u000b2\u0006\u0010J\u001a\u00020\u00012\u0006\u0010-\u001a\u00020\tH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008_\u0010aJ+\u0010_\u001a\u00020\u000b2\u0006\u0010J\u001a\u00020O2\u0006\u0010C\u001a\u00020\t2\u0006\u0010P\u001a\u00020\tH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008_\u0010QJ#\u0010b\u001a\u00020\u000b2\u0006\u0010J\u001a\u00020I2\u0006\u0010-\u001a\u00020\tH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008b\u0010`J+\u0010b\u001a\u00020\u000b2\u0006\u0010J\u001a\u00020O2\u0006\u0010C\u001a\u00020\t2\u0006\u0010P\u001a\u00020\tH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008b\u0010QJ\u0013\u0010c\u001a\u00020\tH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008c\u0010\u0019J\u0013\u0010d\u001a\u00020\tH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008d\u0010\u0019J\u0013\u0010e\u001a\u000200H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008e\u0010\u0019J\u0013\u0010f\u001a\u000200H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008f\u0010\u0019J\u001b\u0010i\u001a\u00020h2\u0006\u0010g\u001a\u00020\tH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008i\u0010\u0013J#\u0010k\u001a\u00020h2\u0006\u0010j\u001a\u00020&2\u0006\u0010g\u001a\u00020\tH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008k\u0010lJ\u001b\u0010n\u001a\u00020h2\u0006\u0010m\u001a\u000200H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008n\u00102J#\u0010o\u001a\u00020h2\u0006\u0010j\u001a\u00020&2\u0006\u0010m\u001a\u000200H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008o\u0010pJ(\u0010u\u001a\u00020\u000b2\u0017\u0010t\u001a\u0013\u0012\u0004\u0012\u00020r\u0012\u0004\u0012\u00020\u000b0q\u00a2\u0006\u0002\u0008sH\u0017\u00a2\u0006\u0004\u0008u\u0010vJ\u0013\u0010x\u001a\u00020wH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008x\u0010\u0019J\u0013\u0010y\u001a\u00020wH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008y\u0010\u0019J<\u0010~\u001a\u00020\u000b2\'\u0010t\u001a#\u0008\u0001\u0012\u0004\u0012\u00020{\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0|\u0012\u0006\u0012\u0004\u0018\u00010}0z\u00a2\u0006\u0002\u0008sH\u0097@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008~\u0010\u007fJ \u0010\u0081\u0001\u001a\u0005\u0018\u00010\u0080\u00012\u0006\u0010m\u001a\u00020\tH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0005\u0008\u0081\u0001\u0010\u0013J8\u0010\u0086\u0001\u001a\u00020\u0003\"\u000f\u0008\u0000\u0010\u0084\u0001*\u00080\u0082\u0001j\u0003`\u0083\u00012\u0007\u0010\u0085\u0001\u001a\u00028\u00002\u0006\u0010m\u001a\u00020\tH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0086\u0001\u0010\u0087\u0001J\u001c\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0011\u001a\u00020\tH\u0016\u00a2\u0006\u0006\u0008\u0088\u0001\u0010\u0089\u0001J\u001c\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0011\u001a\u00020\tH\u0002\u00a2\u0006\u0006\u0008\u008a\u0001\u0010\u0089\u0001J\u0012\u0010\u008b\u0001\u001a\u00020{H\u0016\u00a2\u0006\u0006\u0008\u008b\u0001\u0010\u008c\u0001J\"\u0010\u008f\u0001\u001a\u0002002\u0006\u0010J\u001a\u00020\u00002\u0006\u0010m\u001a\u000200H\u0000\u00a2\u0006\u0006\u0008\u008d\u0001\u0010\u008e\u0001J\u001e\u0010\u0091\u0001\u001a\u00020\t2\u0007\u0010\u0090\u0001\u001a\u00020\u0001H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0005\u0008\u0091\u0001\u0010NJ.\u0010\u0091\u0001\u001a\u00020\t2\u0007\u0010\u0090\u0001\u001a\u00020O2\u0006\u0010C\u001a\u00020\t2\u0006\u0010P\u001a\u00020\tH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0005\u0008\u0091\u0001\u0010QJ\u001e\u0010\u0092\u0001\u001a\u00020\t2\u0007\u0010\u0090\u0001\u001a\u00020\u0001H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0005\u0008\u0092\u0001\u0010NJ.\u0010\u0092\u0001\u001a\u00020\t2\u0007\u0010\u0090\u0001\u001a\u00020O2\u0006\u0010C\u001a\u00020\t2\u0006\u0010P\u001a\u00020\tH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0005\u0008\u0092\u0001\u0010QJ\u001f\u0010\u0094\u0001\u001a\u00020\u000b2\u0007\u0010\u0093\u0001\u001a\u00020VH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0094\u0001\u0010\u0095\u0001J\u001f\u0010\u0097\u0001\u001a\u00020\u000b2\u0007\u0010\u0096\u0001\u001a\u00020YH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u0097\u0001\u0010\u0098\u0001J\u001f\u0010\u009a\u0001\u001a\u00020\u000b2\u0007\u0010\u0099\u0001\u001a\u00020\\H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u009a\u0001\u0010\u009b\u0001J7\u0010\u00a1\u0001\u001a\u00020\u000b2\u0007\u0010\u009c\u0001\u001a\u00020@2\u0007\u0010\u009d\u0001\u001a\u00020\t2\u0007\u0010\u009e\u0001\u001a\u00020\tH\u0096@\u00f8\u0001\u0001\u00f8\u0001\u0000\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u009f\u0001\u0010\u00a0\u0001J\u001e\u0010\u00a1\u0001\u001a\u00020\u000b2\u0007\u0010\u0090\u0001\u001a\u00020IH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0005\u0008\u00a1\u0001\u0010LJ.\u0010\u00a1\u0001\u001a\u00020\u000b2\u0007\u0010\u0090\u0001\u001a\u00020O2\u0006\u0010C\u001a\u00020\t2\u0006\u0010P\u001a\u00020\tH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0005\u0008\u00a1\u0001\u0010QJ\u001e\u0010\u00a3\u0001\u001a\u00020\u000b2\u0007\u0010\u00a2\u0001\u001a\u00020\tH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0005\u0008\u00a3\u0001\u0010\u0013J\u001e\u0010\u00a5\u0001\u001a\u00020\u000b2\u0007\u0010\u00a4\u0001\u001a\u000200H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0005\u0008\u00a5\u0001\u00102J\u001f\u0010\u00a7\u0001\u001a\u00020\u000b2\u0007\u0010\u00a6\u0001\u001a\u00020hH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00a7\u0001\u0010\u00a8\u0001J\u001f\u0010\u00aa\u0001\u001a\u00020\u000b2\u0007\u0010\u00a9\u0001\u001a\u00020wH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0006\u0008\u00aa\u0001\u0010\u00ab\u0001J?\u0010\u00ad\u0001\u001a\u00020\u000b2(\u0010\u00ac\u0001\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u001e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0|\u0012\u0006\u0012\u0004\u0018\u00010}0z\u00a2\u0006\u0002\u0008sH\u0097@\u00f8\u0001\u0000\u00a2\u0006\u0005\u0008\u00ad\u0001\u0010\u007fR\u001c\u0010\u0004\u001a\u00020\u00038\u0016X\u0096\u0004\u00a2\u0006\u000e\n\u0005\u0008\u0004\u0010\u00ae\u0001\u001a\u0005\u0008\u00af\u0001\u0010>R\u0016\u0010\u00b1\u0001\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00b0\u0001\u0010SR\u0016\u0010\u00b3\u0001\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00b2\u0001\u0010SR)\u0010\u00b8\u0001\u001a\u00020\u00032\u0007\u0010\u00b4\u0001\u001a\u00020\u00038D@DX\u0084\u000e\u00a2\u0006\u000f\u001a\u0005\u0008\u00b5\u0001\u0010>\"\u0006\u0008\u00b6\u0001\u0010\u00b7\u0001R.\u0010\u00bd\u0001\u001a\u0004\u0018\u00010!2\t\u0010\u00b4\u0001\u001a\u0004\u0018\u00010!8F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u00b9\u0001\u0010\u00ba\u0001\"\u0006\u0008\u00bb\u0001\u0010\u00bc\u0001R\u0017\u0010\u00be\u0001\u001a\u00020&8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00be\u0001\u0010\u00bf\u0001R\u001c\u0010\u00c1\u0001\u001a\u00070}j\u0003`\u00c0\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00c1\u0001\u0010\u00c2\u0001R\u0016\u0010\u00c3\u0001\u001a\u00020\u00038BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00c3\u0001\u0010>R\u0016\u0010\u00c4\u0001\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00c4\u0001\u0010>R\u0016\u0010\u00c5\u0001\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00c5\u0001\u0010>R\u001f\u0010\u00c6\u0001\u001a\u00020h8\u0004X\u0084\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00c6\u0001\u0010\u00c7\u0001\u001a\u0006\u0008\u00c8\u0001\u0010\u00c9\u0001R\u0018\u0010\u00cb\u0001\u001a\u00030\u00ca\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00cb\u0001\u0010\u00cc\u0001R\u0017\u0010\u00cf\u0001\u001a\u0002008VX\u0096\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00cd\u0001\u0010\u00ce\u0001R\u0017\u0010\u00d1\u0001\u001a\u0002008VX\u0096\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00d0\u0001\u0010\u00ce\u0001R\u001f\u0010\u00d2\u0001\u001a\u00020&8\u0004X\u0084\u0004\u00a2\u0006\u0010\n\u0006\u0008\u00d2\u0001\u0010\u00bf\u0001\u001a\u0006\u0008\u00d3\u0001\u0010\u00d4\u0001\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u00d5\u0001"
    }
    d2 = {
        "Lio/ktor/utils/io/ByteChannelSequentialBase;",
        "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
        "initial",
        "",
        "autoFlush",
        "Lio/ktor/utils/io/pool/ObjectPool;",
        "pool",
        "<init>",
        "(Lio/ktor/utils/io/core/internal/ChunkBuffer;ZLio/ktor/utils/io/pool/ObjectPool;)V",
        "",
        "count",
        "",
        "addBytesRead",
        "(I)V",
        "addBytesWritten",
        "afterRead",
        "afterWrite",
        "atLeast",
        "await",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "awaitAtLeastNBytesAvailableForRead$ktor_io",
        "awaitAtLeastNBytesAvailableForRead",
        "awaitAtLeastNBytesAvailableForWrite$ktor_io",
        "awaitAtLeastNBytesAvailableForWrite",
        "awaitContent",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "awaitFreeSpace",
        "awaitInternalAtLeast1$ktor_io",
        "awaitInternalAtLeast1",
        "awaitSuspend",
        "Lio/ktor/utils/io/WriterSuspendSession;",
        "beginWriteSession",
        "()Lio/ktor/utils/io/WriterSuspendSession;",
        "",
        "cause",
        "cancel",
        "(Ljava/lang/Throwable;)Z",
        "remaining",
        "Lio/ktor/utils/io/core/BytePacketBuilder;",
        "closeable",
        "checkClosed",
        "(ILio/ktor/utils/io/core/BytePacketBuilder;)V",
        "close",
        "completeReading",
        "()V",
        "n",
        "discard",
        "(I)I",
        "",
        "max",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "discarded0",
        "discardSuspend",
        "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "endReadSession",
        "written",
        "endWriteSession",
        "ensureNotClosed",
        "ensureNotFailed",
        "(Lio/ktor/utils/io/core/BytePacketBuilder;)V",
        "flush",
        "flushImpl",
        "()Z",
        "flushWrittenBytes",
        "Lio/ktor/utils/io/bits/Memory;",
        "destination",
        "destinationOffset",
        "offset",
        "min",
        "peekTo-lBXzO7A",
        "(Ljava/nio/ByteBuffer;JJJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "peekTo",
        "prepareFlushedBytes",
        "Lio/ktor/utils/io/core/Buffer;",
        "dst",
        "readAvailable$ktor_io",
        "(Lio/ktor/utils/io/core/Buffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readAvailable",
        "(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "length",
        "([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readAvailableClosed",
        "()I",
        "readBoolean",
        "readBooleanSlow",
        "",
        "readByte",
        "readByteSlow",
        "",
        "readDouble",
        "readDoubleSlow",
        "",
        "readFloat",
        "readFloatSlow",
        "readFully",
        "(Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "(Lio/ktor/utils/io/core/internal/ChunkBuffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readFullySuspend",
        "readInt",
        "readIntSlow",
        "readLong",
        "readLongSlow",
        "size",
        "Lio/ktor/utils/io/core/ByteReadPacket;",
        "readPacket",
        "builder",
        "readPacketSuspend",
        "(Lio/ktor/utils/io/core/BytePacketBuilder;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "limit",
        "readRemaining",
        "readRemainingSuspend",
        "(Lio/ktor/utils/io/core/BytePacketBuilder;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlin/Function1;",
        "Lio/ktor/utils/io/ReadSession;",
        "Lkotlin/ExtensionFunctionType;",
        "consumer",
        "readSession",
        "(Lkotlin/jvm/functions/Function1;)V",
        "",
        "readShort",
        "readShortSlow",
        "Lkotlin/Function2;",
        "Lio/ktor/utils/io/SuspendableReadSession;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "readSuspendableSession",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "readUTF8Line",
        "Ljava/lang/Appendable;",
        "Lkotlin/text/Appendable;",
        "A",
        "out",
        "readUTF8LineTo",
        "(Ljava/lang/Appendable;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "request",
        "(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;",
        "requestNextView",
        "startReadSession",
        "()Lio/ktor/utils/io/SuspendableReadSession;",
        "transferTo$ktor_io",
        "(Lio/ktor/utils/io/ByteChannelSequentialBase;J)J",
        "transferTo",
        "src",
        "writeAvailable",
        "writeAvailableSuspend",
        "b",
        "writeByte",
        "(BLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "d",
        "writeDouble",
        "(DLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "f",
        "writeFloat",
        "(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "memory",
        "startIndex",
        "endIndex",
        "writeFully-JT6ljtQ",
        "(Ljava/nio/ByteBuffer;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "writeFully",
        "i",
        "writeInt",
        "l",
        "writeLong",
        "packet",
        "writePacket",
        "(Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "s",
        "writeShort",
        "(SLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "visitor",
        "writeSuspendSession",
        "Z",
        "getAutoFlush",
        "getAvailableForRead",
        "availableForRead",
        "getAvailableForWrite",
        "availableForWrite",
        "<anonymous parameter 0>",
        "getClosed",
        "setClosed",
        "(Z)V",
        "closed",
        "getClosedCause",
        "()Ljava/lang/Throwable;",
        "setClosedCause",
        "(Ljava/lang/Throwable;)V",
        "closedCause",
        "flushBuffer",
        "Lio/ktor/utils/io/core/BytePacketBuilder;",
        "Lkotlinx/atomicfu/locks/SynchronizedObject;",
        "flushMutex",
        "Ljava/lang/Object;",
        "isCancelled",
        "isClosedForRead",
        "isClosedForWrite",
        "readable",
        "Lio/ktor/utils/io/core/ByteReadPacket;",
        "getReadable",
        "()Lio/ktor/utils/io/core/ByteReadPacket;",
        "Lio/ktor/utils/io/internal/AwaitingSlot;",
        "slot",
        "Lio/ktor/utils/io/internal/AwaitingSlot;",
        "getTotalBytesRead",
        "()J",
        "totalBytesRead",
        "getTotalBytesWritten",
        "totalBytesWritten",
        "writable",
        "getWritable",
        "()Lio/ktor/utils/io/core/BytePacketBuilder;",
        "ktor-io",
        "Lio/ktor/utils/io/ByteChannel;",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "Lio/ktor/utils/io/ByteWriteChannel;",
        "Lio/ktor/utils/io/HasReadSession;",
        "Lio/ktor/utils/io/HasWriteSession;"
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
.field private static final synthetic _availableForRead$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final synthetic _closed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic _totalBytesRead$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final synthetic _totalBytesWritten$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final synthetic channelSize$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _availableForRead:I

.field private volatile synthetic _closed:Ljava/lang/Object;

.field private volatile synthetic _lastReadView:Ljava/lang/Object;

.field private volatile synthetic _totalBytesRead:J

.field private volatile synthetic _totalBytesWritten:J

.field private final autoFlush:Z

.field private volatile synthetic channelSize:I

.field private final flushBuffer:Lio/ktor/utils/io/core/BytePacketBuilder;

.field private final flushMutex:Ljava/lang/Object;

.field private volatile synthetic lastReadAvailable$delegate:I

.field private volatile synthetic lastReadView$delegate:Ljava/lang/Object;

.field private final readable:Lio/ktor/utils/io/core/ByteReadPacket;

.field private final slot:Lio/ktor/utils/io/internal/AwaitingSlot;

.field private final writable:Lio/ktor/utils/io/core/BytePacketBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_totalBytesRead"

    const-class v1, Lio/ktor/utils/io/ByteChannelSequentialBase;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/ByteChannelSequentialBase;->_totalBytesRead$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "_totalBytesWritten"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/ByteChannelSequentialBase;->_totalBytesWritten$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "_availableForRead"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/ByteChannelSequentialBase;->_availableForRead$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "channelSize"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/ByteChannelSequentialBase;->channelSize$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v0, Ljava/lang/Object;

    const-string v2, "_closed"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/ByteChannelSequentialBase;->_closed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lio/ktor/utils/io/core/internal/ChunkBuffer;ZLio/ktor/utils/io/pool/ObjectPool;)V
    .locals 3
    .param p1, "initial"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p2, "autoFlush"    # Z
    .param p3, "pool"    # Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            "Z",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "initial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pool"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p2, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->autoFlush:Z

    .line 23
    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->_lastReadView:Ljava/lang/Object;

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->_totalBytesRead:J

    .line 26
    iput-wide v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->_totalBytesWritten:J

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->_availableForRead:I

    .line 28
    iput v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->channelSize:I

    .line 30
    const/4 v1, 0x0

    iput-object v1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->_closed:Ljava/lang/Object;

    .line 39
    new-instance v2, Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-direct {v2, p3}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;)V

    iput-object v2, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->writable:Lio/ktor/utils/io/core/BytePacketBuilder;

    .line 40
    new-instance v2, Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-direct {v2, p1, p3}, Lio/ktor/utils/io/core/ByteReadPacket;-><init>(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;)V

    iput-object v2, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    .line 42
    iput v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->lastReadAvailable$delegate:I

    .line 43
    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->lastReadView$delegate:Ljava/lang/Object;

    .line 45
    new-instance v0, Lio/ktor/utils/io/internal/AwaitingSlot;

    invoke-direct {v0}, Lio/ktor/utils/io/internal/AwaitingSlot;-><init>()V

    iput-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->slot:Lio/ktor/utils/io/internal/AwaitingSlot;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->flushMutex:Ljava/lang/Object;

    .line 70
    new-instance v0, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->flushBuffer:Lio/ktor/utils/io/core/BytePacketBuilder;

    .line 72
    nop

    .line 73
    invoke-static {p1}, Lio/ktor/utils/io/core/BuffersKt;->remainingAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 74
    .local v0, "count":I
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterWrite(I)V

    .line 75
    sget-object v1, Lio/ktor/utils/io/ByteChannelSequentialBase;->_availableForRead$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->addAndGet(Ljava/lang/Object;I)I

    .line 76
    .end local v0    # "count":I
    nop

    .line 18
    return-void
.end method

.method public synthetic constructor <init>(Lio/ktor/utils/io/core/internal/ChunkBuffer;ZLio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 18
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 21
    sget-object p3, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {p3}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p3

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteChannelSequentialBase;-><init>(Lio/ktor/utils/io/core/internal/ChunkBuffer;ZLio/ktor/utils/io/pool/ObjectPool;)V

    .line 854
    return-void
.end method

.method public static final synthetic access$discardSuspend(Lio/ktor/utils/io/ByteChannelSequentialBase;JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "max"    # J
    .param p3, "discarded0"    # J
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 17
    invoke-direct/range {p0 .. p5}, Lio/ktor/utils/io/ByteChannelSequentialBase;->discardSuspend(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readBooleanSlow(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 17
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readBooleanSlow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readByteSlow(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 17
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readByteSlow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readDoubleSlow(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 17
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readDoubleSlow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readFloatSlow(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 17
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readFloatSlow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readFully(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "dst"    # Lio/ktor/utils/io/core/Buffer;
    .param p2, "n"    # I
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readFully(Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readFullySuspend(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "dst"    # Lio/ktor/utils/io/core/Buffer;
    .param p2, "n"    # I
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readFullySuspend(Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readFullySuspend(Lio/ktor/utils/io/ByteChannelSequentialBase;[BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readFullySuspend([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readIntSlow(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 17
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readIntSlow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readLongSlow(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 17
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readLongSlow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readPacketSuspend(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/core/BytePacketBuilder;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "builder"    # Lio/ktor/utils/io/core/BytePacketBuilder;
    .param p2, "size"    # I
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readPacketSuspend(Lio/ktor/utils/io/core/BytePacketBuilder;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readRemainingSuspend(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/core/BytePacketBuilder;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "builder"    # Lio/ktor/utils/io/core/BytePacketBuilder;
    .param p2, "limit"    # J
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readRemainingSuspend(Lio/ktor/utils/io/core/BytePacketBuilder;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$readShortSlow(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 17
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readShortSlow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$writeAvailableSuspend(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "src"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 17
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->writeAvailableSuspend(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$writeAvailableSuspend(Lio/ktor/utils/io/ByteChannelSequentialBase;[BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase;->writeAvailableSuspend([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final addBytesRead(I)V
    .locals 6
    .param p1, "count"    # I

    .line 836
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_5

    .line 838
    move-object v2, p0

    .local v2, "this_$iv":Lio/ktor/utils/io/ByteChannelSequentialBase;
    const/4 v3, 0x0

    .line 874
    .local v3, "$i$f$minusAssign":I
    sget-object v4, Lio/ktor/utils/io/ByteChannelSequentialBase;->channelSize$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    neg-int v5, p1

    invoke-virtual {v4, v2, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndAdd(Ljava/lang/Object;I)I

    .line 875
    nop

    .line 839
    .end local v2    # "this_$iv":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local v3    # "$i$f$minusAssign":I
    sget-object v2, Lio/ktor/utils/io/ByteChannelSequentialBase;->_totalBytesRead$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v3, p1

    invoke-virtual {v2, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 840
    move-object v2, p0

    .restart local v2    # "this_$iv":Lio/ktor/utils/io/ByteChannelSequentialBase;
    const/4 v3, 0x0

    .line 876
    .restart local v3    # "$i$f$minusAssign":I
    sget-object v4, Lio/ktor/utils/io/ByteChannelSequentialBase;->_availableForRead$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    neg-int v5, p1

    invoke-virtual {v4, v2, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndAdd(Ljava/lang/Object;I)I

    .line 877
    nop

    .line 842
    .end local v2    # "this_$iv":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local v3    # "$i$f$minusAssign":I
    iget v2, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->channelSize:I

    if-ltz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, " in "

    const-string v4, ", "

    const-string v5, "Readable bytes count is negative: "

    if-eqz v2, :cond_4

    .line 843
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getAvailableForRead()I

    move-result v2

    if-ltz v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    .line 844
    return-void

    .line 862
    :cond_3
    const/4 v0, 0x0

    .line 843
    .local v0, "$i$a$-check-ByteChannelSequentialBase$addBytesRead$3":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getAvailableForRead()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-check-ByteChannelSequentialBase$addBytesRead$3":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 862
    :cond_4
    const/4 v0, 0x0

    .line 842
    .local v0, "$i$a$-check-ByteChannelSequentialBase$addBytesRead$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getAvailableForRead()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-check-ByteChannelSequentialBase$addBytesRead$2":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 862
    :cond_5
    const/4 v0, 0x0

    .line 836
    .local v0, "$i$a$-require-ByteChannelSequentialBase$addBytesRead$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t read negative amount of bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-ByteChannelSequentialBase$addBytesRead$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final addBytesWritten(I)V
    .locals 5
    .param p1, "count"    # I

    .line 847
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    .line 849
    move-object v2, p0

    .local v2, "this_$iv":Lio/ktor/utils/io/ByteChannelSequentialBase;
    const/4 v3, 0x0

    .line 878
    .local v3, "$i$f$plusAssign":I
    sget-object v4, Lio/ktor/utils/io/ByteChannelSequentialBase;->channelSize$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, v2, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndAdd(Ljava/lang/Object;I)I

    .line 879
    nop

    .line 850
    .end local v2    # "this_$iv":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local v3    # "$i$f$plusAssign":I
    sget-object v2, Lio/ktor/utils/io/ByteChannelSequentialBase;->_totalBytesWritten$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v3, p1

    invoke-virtual {v2, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 852
    iget v2, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->channelSize:I

    if-ltz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 853
    return-void

    .line 862
    :cond_2
    const/4 v0, 0x0

    .line 852
    .local v0, "$i$a$-check-ByteChannelSequentialBase$addBytesWritten$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Readable bytes count is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->channelSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-check-ByteChannelSequentialBase$addBytesWritten$2":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 862
    :cond_3
    const/4 v0, 0x0

    .line 847
    .local v0, "$i$a$-require-ByteChannelSequentialBase$addBytesWritten$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t write negative amount of bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-ByteChannelSequentialBase$addBytesWritten$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic await$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "atLeast"    # I
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 589
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_5

    .line 590
    int-to-long v2, p1

    const-wide/16 v4, 0xff8

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    move v0, v1

    :cond_1
    if-eqz v0, :cond_4

    .line 594
    invoke-direct {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->completeReading()V

    .line 596
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->isClosedForRead()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 597
    :cond_2
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/ByteReadPacket;->getRemaining()J

    move-result-wide v2

    int-to-long v4, p1

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 599
    :cond_3
    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 590
    :cond_4
    const/4 v0, 0x0

    .line 591
    .local v0, "$i$a$-require-ByteChannelSequentialBase$await$3":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "atLeast parameter shouldn\'t be larger than max buffer size of 4088: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 590
    .end local v0    # "$i$a$-require-ByteChannelSequentialBase$await$3":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 862
    :cond_5
    const/4 v0, 0x0

    .line 589
    .local v0, "$i$a$-require-ByteChannelSequentialBase$await$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "atLeast parameter shouldn\'t be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-ByteChannelSequentialBase$await$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic awaitContent$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 807
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->await(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 808
    return-object v0
.end method

.method static synthetic awaitFreeSpace$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitFreeSpace$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitFreeSpace$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitFreeSpace$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitFreeSpace$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitFreeSpace$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitFreeSpace$1;

    invoke-direct {v0, p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitFreeSpace$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitFreeSpace$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 797
    iget v2, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitFreeSpace$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p0, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitFreeSpace$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local p0, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p0    # "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 798
    .restart local p0    # "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->flush()V

    .line 799
    iput-object p0, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitFreeSpace$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitFreeSpace$1;->label:I

    invoke-virtual {p0, v2, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitAtLeastNBytesAvailableForWrite$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 797
    return-object v1

    .line 800
    :cond_1
    :goto_1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->ensureNotClosed()V

    .line 801
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final checkClosed(ILio/ktor/utils/io/core/BytePacketBuilder;)V
    .locals 3
    .param p1, "remaining"    # I
    .param p2, "closeable"    # Lio/ktor/utils/io/core/BytePacketBuilder;

    .line 301
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "it":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 302
    .local v1, "$i$a$-let-ByteChannelSequentialBase$checkClosed$1":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lio/ktor/utils/io/core/BytePacketBuilder;->close()V

    .line 303
    :cond_0
    throw v0

    .line 305
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-let-ByteChannelSequentialBase$checkClosed$1":I
    :cond_1
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getAvailableForRead()I

    move-result v0

    if-ge v0, p1, :cond_3

    .line 306
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lio/ktor/utils/io/core/BytePacketBuilder;->close()V

    .line 307
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes required but EOF reached"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_3
    return-void
.end method

.method static synthetic checkClosed$default(Lio/ktor/utils/io/ByteChannelSequentialBase;ILio/ktor/utils/io/core/BytePacketBuilder;ILjava/lang/Object;)V
    .locals 0

    .line 300
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->checkClosed(ILio/ktor/utils/io/core/BytePacketBuilder;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: checkClosed"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final completeReading()V
    .locals 4

    .line 576
    invoke-direct {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getLastReadView()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x0

    .line 870
    .local v1, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    sub-int/2addr v2, v3

    .line 576
    .end local v0    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "$i$f$getReadRemaining":I
    move v0, v2

    .line 577
    .local v0, "remaining":I
    invoke-direct {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getLastReadAvailable()I

    move-result v1

    sub-int/2addr v1, v0

    .line 578
    .local v1, "delta":I
    invoke-direct {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getLastReadView()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    sget-object v3, Lio/ktor/utils/io/core/Buffer;->Companion:Lio/ktor/utils/io/core/Buffer$Companion;

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer$Companion;->getEmpty()Lio/ktor/utils/io/core/Buffer;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 579
    iget-object v2, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    check-cast v2, Lio/ktor/utils/io/core/Input;

    invoke-direct {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getLastReadView()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3

    invoke-static {v2, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 581
    :cond_0
    if-lez v1, :cond_1

    .line 582
    invoke-virtual {p0, v1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterRead(I)V

    .line 584
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->setLastReadAvailable(I)V

    .line 585
    sget-object v2, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->setLastReadView(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 586
    return-void
.end method

.method static synthetic discard$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "max"    # J
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 658
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {v0, p1, p2}, Lio/ktor/utils/io/core/ByteReadPacket;->discard(J)J

    move-result-wide v7

    .line 659
    .local v7, "discarded":J
    long-to-int v0, v7

    invoke-virtual {p0, v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterRead(I)V

    .line 661
    cmp-long v0, v7, p1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->isClosedForRead()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 665
    :cond_0
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, v7

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/ktor/utils/io/ByteChannelSequentialBase;->discardSuspend(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 667
    return-object v0

    .line 662
    :cond_1
    :goto_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->ensureNotFailed()V

    .line 663
    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private final discardSuspend(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lio/ktor/utils/io/ByteChannelSequentialBase$discardSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$discardSuspend$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$discardSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p5, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$discardSuspend$1;->label:I

    sub-int/2addr p5, v2

    iput p5, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$discardSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$discardSuspend$1;

    invoke-direct {v0, p0, p5}, Lio/ktor/utils/io/ByteChannelSequentialBase$discardSuspend$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p5, v0

    .local p5, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p5, Lio/ktor/utils/io/ByteChannelSequentialBase$discardSuspend$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 669
    iget v2, p5, Lio/ktor/utils/io/ByteChannelSequentialBase$discardSuspend$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p5    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p5    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-wide p1, p5, Lio/ktor/utils/io/ByteChannelSequentialBase$discardSuspend$1;->J$1:J

    .local p1, "discarded":J
    iget-wide p3, p5, Lio/ktor/utils/io/ByteChannelSequentialBase$discardSuspend$1;->J$0:J

    .local p3, "max":J
    iget-object v2, p5, Lio/ktor/utils/io/ByteChannelSequentialBase$discardSuspend$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local v2, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_2

    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local p1    # "discarded":J
    .end local p3    # "max":J
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 670
    .restart local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local p1, "max":J
    .local p3, "discarded0":J
    move-wide v3, p3

    move-wide p3, p1

    move-wide p1, v3

    .line 673
    .local p1, "discarded":J
    .local p3, "max":J
    :goto_1
    iput-object v2, p5, Lio/ktor/utils/io/ByteChannelSequentialBase$discardSuspend$1;->L$0:Ljava/lang/Object;

    iput-wide p3, p5, Lio/ktor/utils/io/ByteChannelSequentialBase$discardSuspend$1;->J$0:J

    iput-wide p1, p5, Lio/ktor/utils/io/ByteChannelSequentialBase$discardSuspend$1;->J$1:J

    const/4 v3, 0x1

    iput v3, p5, Lio/ktor/utils/io/ByteChannelSequentialBase$discardSuspend$1;->label:I

    invoke-virtual {v2, v3, p5}, Lio/ktor/utils/io/ByteChannelSequentialBase;->await(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1

    .line 669
    return-object v1

    .line 673
    :cond_1
    move-object v6, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v2

    move-object v2, v6

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local v1, "$result":Ljava/lang/Object;
    .local v3, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 674
    iget-object v0, v3, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    sub-long v4, p3, p1

    invoke-virtual {v0, v4, v5}, Lio/ktor/utils/io/core/ByteReadPacket;->discard(J)J

    move-result-wide v4

    .line 675
    .local v4, "count":J
    long-to-int v0, v4

    invoke-virtual {v3, v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterRead(I)V

    .line 676
    add-long/2addr p1, v4

    .line 677
    .end local v4    # "count":J
    cmp-long v0, p1, p3

    if-gez v0, :cond_3

    invoke-virtual {v3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->isClosedForRead()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    .line 679
    .end local p3    # "max":J
    :cond_3
    :goto_3
    invoke-direct {v3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->ensureNotFailed()V

    .line 681
    invoke-static {p1, p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p3

    return-object p3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final ensureNotClosed()V
    .locals 3

    .line 133
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lio/ktor/utils/io/ClosedWriteChannelException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/utils/io/ClosedWriteChannelException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    :cond_0
    throw v0

    .line 136
    :cond_1
    return-void
.end method

.method private final ensureNotFailed()V
    .locals 2

    .line 139
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 140
    return-void

    .line 862
    .local v0, "it":Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    .line 139
    .local v1, "$i$a$-let-ByteChannelSequentialBase$ensureNotFailed$1":I
    throw v0
.end method

.method private final ensureNotFailed(Lio/ktor/utils/io/core/BytePacketBuilder;)V
    .locals 2
    .param p1, "closeable"    # Lio/ktor/utils/io/core/BytePacketBuilder;

    .line 143
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 147
    return-void

    .line 143
    .local v0, "cause":Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    .line 144
    .local v1, "$i$a$-let-ByteChannelSequentialBase$ensureNotFailed$2":I
    invoke-virtual {p1}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    .line 145
    throw v0
.end method

.method private final flushImpl()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->writable:Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/BytePacketBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->slot:Lio/ktor/utils/io/internal/AwaitingSlot;

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/AwaitingSlot;->resume()V

    .line 99
    const/4 v0, 0x0

    return v0

    .line 102
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->flushWrittenBytes()V

    .line 103
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->slot:Lio/ktor/utils/io/internal/AwaitingSlot;

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/AwaitingSlot;->resume()V

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method private final flushWrittenBytes()V
    .locals 5

    .line 113
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->flushMutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 114
    .local v1, "$i$a$-synchronized-ByteChannelSequentialBase$flushWrittenBytes$1":I
    :try_start_0
    iget-object v2, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->writable:Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-virtual {v2}, Lio/ktor/utils/io/core/BytePacketBuilder;->getSize()I

    move-result v2

    .line 115
    .local v2, "size":I
    iget-object v3, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->writable:Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-virtual {v3}, Lio/ktor/utils/io/core/BytePacketBuilder;->stealAll$ktor_io()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 116
    .local v3, "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    iget-object v4, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->flushBuffer:Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-virtual {v4, v3}, Lio/ktor/utils/io/core/BytePacketBuilder;->writeChunkBuffer$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 117
    sget-object v4, Lio/ktor/utils/io/ByteChannelSequentialBase;->_availableForRead$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, p0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->addAndGet(Ljava/lang/Object;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .end local v1    # "$i$a$-synchronized-ByteChannelSequentialBase$flushWrittenBytes$1":I
    .end local v2    # "size":I
    .end local v3    # "buffer":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    monitor-exit v0

    .line 119
    return-void

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final getLastReadAvailable()I
    .locals 1

    .line 42
    iget v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->lastReadAvailable$delegate:I

    return v0
.end method

.method private final getLastReadView()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 1

    .line 43
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->lastReadView$delegate:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    return-object v0
.end method

.method private final isCancelled()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->_closed:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/CloseElement;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/ktor/utils/io/CloseElement;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method static synthetic readAvailable$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "dst"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 477
    const-string v0, "null cannot be cast to non-null type io.ktor.utils.io.core.Buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    invoke-virtual {p0, v0, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readAvailable$ktor_io(Lio/ktor/utils/io/core/Buffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic readAvailable$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;[BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "[BII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;

    invoke-direct {v0, p0, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p4, v0

    .local p4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 523
    iget v2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget p0, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->I$1:I

    .local p0, "length":I
    iget p1, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->I$0:I

    .local p1, "offset":I
    iget-object p2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->L$1:Ljava/lang/Object;

    check-cast p2, [B

    .local p2, "dst":[B
    iget-object p3, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->L$0:Ljava/lang/Object;

    check-cast p3, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local p3, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p0    # "length":I
    .end local p1    # "offset":I
    .end local p2    # "dst":[B
    .end local p3    # "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 524
    .local p0, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local p1, "dst":[B
    .local p2, "offset":I
    .local p3, "length":I
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_6

    .line 525
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getAvailableForRead()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, -0x1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 527
    :cond_1
    if-nez p3, :cond_2

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 529
    :cond_2
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getAvailableForRead()I

    move-result v2

    if-nez v2, :cond_4

    .line 530
    iput-object p0, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->L$0:Ljava/lang/Object;

    iput-object p1, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->L$1:Ljava/lang/Object;

    iput p2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->I$0:I

    iput p3, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->I$1:I

    const/4 v2, 0x1

    iput v2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->label:I

    invoke-virtual {p0, v2, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    .line 523
    return-object v1

    .line 530
    :cond_3
    move v5, p3

    move-object p3, p0

    move p0, v5

    move v6, p2

    move-object p2, p1

    move p1, v6

    .line 533
    .local p0, "length":I
    .local p1, "offset":I
    .local p2, "dst":[B
    .local p3, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :goto_1
    move-object v5, p3

    move p3, p0

    move-object p0, v5

    move-object v6, p2

    move p2, p1

    move-object p1, v6

    .local p0, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local p1, "dst":[B
    .local p2, "offset":I
    .local p3, "length":I
    :cond_4
    iget-object v1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/ByteReadPacket;->canRead()Z

    move-result v1

    if-nez v1, :cond_5

    .line 534
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->prepareFlushedBytes()V

    .line 537
    :cond_5
    int-to-long v1, p3

    iget-object v3, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {v3}, Lio/ktor/utils/io/core/ByteReadPacket;->getRemaining()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 538
    .local v1, "size":I
    iget-object v2, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    check-cast v2, Lio/ktor/utils/io/core/Input;

    invoke-static {v2, p1, p2, v1}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[BII)V

    .line 539
    invoke-virtual {p0, v1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterRead(I)V

    .line 540
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 524
    .end local v1    # "size":I
    .end local p0    # "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local p1    # "dst":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    :cond_6
    move-object p0, v2

    .line 862
    .local p0, "it":Ljava/lang/Throwable;
    const/4 p1, 0x0

    .line 524
    .local p1, "$i$a$-let-ByteChannelSequentialBase$readAvailable$5":I
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic readBoolean$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/ByteReadPacket;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/ByteReadPacket;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    .line 862
    .local v2, "it":Z
    const/4 v3, 0x0

    .line 563
    .local v3, "$i$a$-also-ByteChannelSequentialBase$readBoolean$2":I
    invoke-virtual {p0, v1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterRead(I)V

    .line 567
    .end local v2    # "it":Z
    .end local v3    # "$i$a$-also-ByteChannelSequentialBase$readBoolean$2":I
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 562
    return-object v0

    .line 565
    :cond_1
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readBooleanSlow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 567
    return-object v0
.end method

.method private final readBooleanSlow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readBooleanSlow$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readBooleanSlow$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readBooleanSlow$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readBooleanSlow$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readBooleanSlow$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readBooleanSlow$1;

    invoke-direct {v0, p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase$readBooleanSlow$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readBooleanSlow$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 569
    iget v2, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readBooleanSlow$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v0

    goto :goto_2

    :pswitch_1
    iget-object v2, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readBooleanSlow$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local v2, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 570
    .restart local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    iput-object v2, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readBooleanSlow$1;->L$0:Ljava/lang/Object;

    iput v3, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readBooleanSlow$1;->label:I

    invoke-virtual {v2, v3, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_1

    .line 569
    return-object v1

    .line 571
    :cond_1
    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5, v4}, Lio/ktor/utils/io/ByteChannelSequentialBase;->checkClosed$default(Lio/ktor/utils/io/ByteChannelSequentialBase;ILio/ktor/utils/io/core/BytePacketBuilder;ILjava/lang/Object;)V

    .line 572
    iput-object v4, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readBooleanSlow$1;->L$0:Ljava/lang/Object;

    iput v5, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readBooleanSlow$1;->label:I

    invoke-virtual {v2, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readBoolean(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    if-ne v2, v1, :cond_2

    .line 569
    return-object v1

    .line 572
    :cond_2
    :goto_2
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic readByte$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Byte;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    .local v0, "$this$isNotEmpty$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    const/4 v1, 0x0

    .line 865
    .local v1, "$i$f$isNotEmpty":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/ByteReadPacket;->getEndOfInput()Z

    move-result v2

    .line 293
    .end local v0    # "$this$isNotEmpty$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    .end local v1    # "$i$f$isNotEmpty":I
    const/4 v0, 0x1

    xor-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/ByteReadPacket;->readByte()B

    move-result v1

    move v2, v1

    .line 862
    .local v2, "it":B
    const/4 v3, 0x0

    .line 294
    .local v3, "$i$a$-also-ByteChannelSequentialBase$readByte$2":I
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterRead(I)V

    .line 298
    .end local v2    # "it":B
    .end local v3    # "$i$a$-also-ByteChannelSequentialBase$readByte$2":I
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxByte(B)Ljava/lang/Byte;

    move-result-object v0

    .line 293
    return-object v0

    .line 296
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readByteSlow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 298
    return-object v0
.end method

.method private final readByteSlow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Byte;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readByteSlow$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readByteSlow$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readByteSlow$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readByteSlow$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readByteSlow$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readByteSlow$1;

    invoke-direct {v0, p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase$readByteSlow$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readByteSlow$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 311
    iget v2, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readByteSlow$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object v2, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readByteSlow$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local v2, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 313
    .restart local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :goto_1
    iput-object v2, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readByteSlow$1;->L$0:Ljava/lang/Object;

    iput v3, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readByteSlow$1;->label:I

    invoke-virtual {v2, v3, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_1

    .line 311
    return-object v1

    .line 315
    :cond_1
    :goto_2
    iget-object v4, v2, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    .local v4, "$this$isNotEmpty$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    const/4 v5, 0x0

    .line 866
    .local v5, "$i$f$isNotEmpty":I
    invoke-virtual {v4}, Lio/ktor/utils/io/core/ByteReadPacket;->getEndOfInput()Z

    move-result v6

    if-nez v6, :cond_2

    move v4, v3

    goto :goto_3

    .end local v4    # "$this$isNotEmpty$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    :cond_2
    const/4 v4, 0x0

    .line 315
    .end local v5    # "$i$f$isNotEmpty":I
    :goto_3
    if-eqz v4, :cond_3

    iget-object v1, v2, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/ByteReadPacket;->readByte()B

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxByte(B)Ljava/lang/Byte;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->byteValue()B

    .line 862
    const/4 v4, 0x0

    .line 315
    .local v4, "$i$a$-also-ByteChannelSequentialBase$readByteSlow$2":I
    invoke-virtual {v2, v3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterRead(I)V

    .end local v4    # "$i$a$-also-ByteChannelSequentialBase$readByteSlow$2":I
    return-object v1

    .line 316
    :cond_3
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Lio/ktor/utils/io/ByteChannelSequentialBase;->checkClosed$default(Lio/ktor/utils/io/ByteChannelSequentialBase;ILio/ktor/utils/io/core/BytePacketBuilder;ILjava/lang/Object;)V

    .line 317
    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic readDouble$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/ByteReadPacket;->hasBytes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    check-cast v0, Lio/ktor/utils/io/core/Input;

    invoke-static {v0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readDouble(Lio/ktor/utils/io/core/Input;)D

    move-result-wide v2

    move-wide v4, v2

    .line 862
    .local v4, "it":D
    const/4 v0, 0x0

    .line 384
    .local v0, "$i$a$-also-ByteChannelSequentialBase$readDouble$2":I
    invoke-virtual {p0, v1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterRead(I)V

    .line 387
    .end local v0    # "$i$a$-also-ByteChannelSequentialBase$readDouble$2":I
    .end local v4    # "it":D
    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 386
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readDoubleSlow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 387
    return-object v0
.end method

.method private final readDoubleSlow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readDoubleSlow$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readDoubleSlow$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readDoubleSlow$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readDoubleSlow$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readDoubleSlow$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readDoubleSlow$1;

    invoke-direct {v0, p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase$readDoubleSlow$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readDoubleSlow$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 389
    iget v2, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readDoubleSlow$1;->label:I

    const/16 v3, 0x8

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object v1, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readDoubleSlow$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local v1, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 390
    .local v2, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    iput-object v2, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readDoubleSlow$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readDoubleSlow$1;->label:I

    invoke-virtual {v2, v3, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_1

    .line 389
    return-object v1

    .line 390
    :cond_1
    move-object v1, v2

    .line 391
    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .restart local v1    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :goto_1
    iget-object v2, v1, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    check-cast v2, Lio/ktor/utils/io/core/Input;

    invoke-static {v2}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readDouble(Lio/ktor/utils/io/core/Input;)D

    move-result-wide v4

    .line 392
    .local v4, "result":D
    invoke-virtual {v1, v3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterRead(I)V

    .line 393
    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxDouble(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic readFloat$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/ByteReadPacket;->hasBytes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    check-cast v0, Lio/ktor/utils/io/core/Input;

    invoke-static {v0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readFloat(Lio/ktor/utils/io/core/Input;)F

    move-result v0

    move v2, v0

    .line 862
    .local v2, "it":F
    const/4 v3, 0x0

    .line 371
    .local v3, "$i$a$-also-ByteChannelSequentialBase$readFloat$2":I
    invoke-virtual {p0, v1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterRead(I)V

    .line 374
    .end local v2    # "it":F
    .end local v3    # "$i$a$-also-ByteChannelSequentialBase$readFloat$2":I
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 373
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readFloatSlow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 374
    return-object v0
.end method

.method private final readFloatSlow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readFloatSlow$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readFloatSlow$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readFloatSlow$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readFloatSlow$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readFloatSlow$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readFloatSlow$1;

    invoke-direct {v0, p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase$readFloatSlow$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readFloatSlow$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 376
    iget v2, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readFloatSlow$1;->label:I

    const/4 v3, 0x4

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object v1, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readFloatSlow$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local v1, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 377
    .local v2, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    iput-object v2, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readFloatSlow$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readFloatSlow$1;->label:I

    invoke-virtual {v2, v3, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_1

    .line 376
    return-object v1

    .line 377
    :cond_1
    move-object v1, v2

    .line 378
    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .restart local v1    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :goto_1
    iget-object v2, v1, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    check-cast v2, Lio/ktor/utils/io/core/Input;

    invoke-static {v2}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readFloat(Lio/ktor/utils/io/core/Input;)F

    move-result v2

    .line 379
    .local v2, "result":F
    invoke-virtual {v1, v3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterRead(I)V

    .line 380
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final readFully(Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p1, "dst"    # Lio/ktor/utils/io/core/Buffer;
    .param p2, "n"    # I
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Buffer;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 504
    move-object v0, p1

    .local v0, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x0

    .line 869
    .local v1, "$i$f$getWriteRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v2

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    sub-int/2addr v2, v3

    .end local v0    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "$i$f$getWriteRemaining":I
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gt p2, v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 504
    :goto_0
    if-eqz v2, :cond_7

    .line 505
    if-ltz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_6

    .line 507
    nop

    .line 508
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_5

    .line 509
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/ByteReadPacket;->getRemaining()J

    move-result-wide v0

    int-to-long v2, p2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    check-cast v0, Lio/ktor/utils/io/core/Input;

    invoke-static {v0, p1, p2}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/Buffer;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 862
    .local v0, "it":Lkotlin/Unit;
    const/4 v1, 0x0

    .line 509
    .local v1, "$i$a$-also-ByteChannelSequentialBase$readFully$5":I
    invoke-virtual {p0, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterRead(I)V

    .line 516
    .end local v0    # "it":Lkotlin/Unit;
    .end local v1    # "$i$a$-also-ByteChannelSequentialBase$readFully$5":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 507
    return-object v0

    .line 510
    :cond_2
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 514
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readFullySuspend(Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_3

    return-object v0

    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 516
    return-object v0

    .line 510
    :cond_4
    new-instance v0, Ljava/io/EOFException;

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel is closed and not enough bytes available: required "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getAvailableForRead()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_5
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    throw v0

    .line 862
    :cond_6
    const/4 v0, 0x0

    .line 505
    .local v0, "$i$a$-require-ByteChannelSequentialBase$readFully$4":I
    nop

    .end local v0    # "$i$a$-require-ByteChannelSequentialBase$readFully$4":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n shouldn\'t be negative"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 862
    :cond_7
    const/4 v0, 0x0

    .line 504
    .local v0, "$i$a$-require-ByteChannelSequentialBase$readFully$3":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space in the destination buffer to write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-ByteChannelSequentialBase$readFully$3":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic readFully$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/core/internal/ChunkBuffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "dst"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p2, "n"    # I
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 500
    const-string v0, "null cannot be cast to non-null type io.ktor.utils.io.core.Buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    invoke-direct {p0, v0, p2, p3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readFully(Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 501
    return-object v0
.end method

.method static synthetic readFully$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;[BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "[BII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFully$6;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readFully$6;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readFully$6;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readFully$6;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readFully$6;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readFully$6;

    invoke-direct {v0, p0, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase$readFully$6;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p4, v0

    .local p4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFully$6;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 543
    iget v2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFully$6;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    iget p0, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFully$6;->I$1:I

    .local p0, "length":I
    iget p1, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFully$6;->I$0:I

    .local p1, "offset":I
    iget-object p2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFully$6;->L$1:Ljava/lang/Object;

    check-cast p2, [B

    .local p2, "dst":[B
    iget-object p3, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFully$6;->L$0:Ljava/lang/Object;

    check-cast p3, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local p3, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v0

    goto :goto_1

    .end local p0    # "length":I
    .end local p1    # "offset":I
    .end local p2    # "dst":[B
    .end local p3    # "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 544
    .local p0, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local p1, "dst":[B
    .local p2, "offset":I
    .local p3, "length":I
    iput-object p0, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFully$6;->L$0:Ljava/lang/Object;

    iput-object p1, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFully$6;->L$1:Ljava/lang/Object;

    iput p2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFully$6;->I$0:I

    iput p3, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFully$6;->I$1:I

    const/4 v2, 0x1

    iput v2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFully$6;->label:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readAvailable([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 543
    return-object v1

    .line 544
    :cond_1
    move v6, p3

    move-object p3, p0

    move p0, v6

    move v7, p2

    move-object p2, p1

    move p1, v7

    .local p0, "length":I
    .local p1, "offset":I
    .local p2, "dst":[B
    .local p3, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :goto_1
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 545
    .local v2, "rc":I
    if-ne v2, p0, :cond_2

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 546
    :cond_2
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 548
    add-int v3, p1, v2

    sub-int v4, p0, v2

    const/4 v5, 0x0

    iput-object v5, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFully$6;->L$0:Ljava/lang/Object;

    iput-object v5, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFully$6;->L$1:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFully$6;->label:I

    invoke-direct {p3, p2, v3, v4, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readFullySuspend([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local v2    # "rc":I
    .end local p0    # "length":I
    .end local p1    # "offset":I
    .end local p2    # "dst":[B
    .end local p3    # "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    if-ne p0, v1, :cond_3

    .line 543
    return-object v1

    .line 548
    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 546
    .restart local v2    # "rc":I
    .restart local p0    # "length":I
    .restart local p1    # "offset":I
    .restart local p2    # "dst":[B
    .restart local p3    # "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :cond_4
    new-instance v1, Ljava/io/EOFException;

    const-string v3, "Unexpected end of stream"

    invoke-direct {v1, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final readFullySuspend(Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Buffer;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$1;

    invoke-direct {v0, p0, p3}, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 518
    iget v2, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    iget p1, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$1;->I$0:I

    .local p1, "n":I
    iget-object p2, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lio/ktor/utils/io/core/Buffer;

    .local p2, "dst":Lio/ktor/utils/io/core/Buffer;
    iget-object v2, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local v2, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local p1    # "n":I
    .end local p2    # "dst":Lio/ktor/utils/io/core/Buffer;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 519
    .restart local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local p1, "dst":Lio/ktor/utils/io/core/Buffer;
    .local p2, "n":I
    iput-object v2, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$1;->L$0:Ljava/lang/Object;

    iput-object p1, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$1;->L$1:Ljava/lang/Object;

    iput p2, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$1;->I$0:I

    const/4 v3, 0x1

    iput v3, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$1;->label:I

    invoke-virtual {v2, p2, p3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1

    .line 518
    return-object v1

    .line 519
    :cond_1
    move v4, p2

    move-object p2, p1

    move p1, v4

    .line 520
    .local p1, "n":I
    .local p2, "dst":Lio/ktor/utils/io/core/Buffer;
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$1;->L$0:Ljava/lang/Object;

    iput-object v3, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$1;->label:I

    invoke-direct {v2, p2, p1, p3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readFully(Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local p1    # "n":I
    .end local p2    # "dst":Lio/ktor/utils/io/core/Buffer;
    if-ne p1, v1, :cond_2

    .line 518
    return-object v1

    .line 520
    :cond_2
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final readFullySuspend([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$2;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$2;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$2;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$2;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$2;

    invoke-direct {v0, p0, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$2;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p4, v0

    .local p4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$2;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 551
    iget v2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$2;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget p1, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$2;->I$2:I

    .local p1, "written":I
    iget p2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$2;->I$1:I

    .local p2, "length":I
    iget p3, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$2;->I$0:I

    .local p3, "offset":I
    iget-object v2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$2;->L$1:Ljava/lang/Object;

    check-cast v2, [B

    .local v2, "dst":[B
    iget-object v3, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local v3, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_2

    .end local v2    # "dst":[B
    .end local v3    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local p1    # "written":I
    .end local p2    # "length":I
    .end local p3    # "offset":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 552
    .local v2, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local p1, "dst":[B
    .local p2, "offset":I
    .local p3, "length":I
    const/4 v3, 0x0

    move-object v7, v2

    move-object v2, p1

    move p1, v3

    move-object v3, v7

    move v8, p3

    move p3, p2

    move p2, v8

    .line 554
    .local v2, "dst":[B
    .restart local v3    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local p1, "written":I
    .local p2, "length":I
    .local p3, "offset":I
    :goto_1
    if-ge p1, p2, :cond_3

    .line 555
    add-int v4, p3, p1

    sub-int v5, p2, p1

    iput-object v3, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$2;->L$0:Ljava/lang/Object;

    iput-object v2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$2;->L$1:Ljava/lang/Object;

    iput p3, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$2;->I$0:I

    iput p2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$2;->I$1:I

    iput p1, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$2;->I$2:I

    const/4 v6, 0x1

    iput v6, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readFullySuspend$2;->label:I

    invoke-virtual {v3, v2, v4, v5, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readAvailable([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_1

    .line 551
    return-object v1

    .line 555
    :cond_1
    move-object v7, v1

    move-object v1, v0

    move-object v0, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v7

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "dst":[B
    .local v1, "$result":Ljava/lang/Object;
    .local v3, "dst":[B
    .local v4, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :goto_2
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 556
    .local v0, "rc":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 557
    add-int/2addr p1, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    .end local v0    # "rc":I
    goto :goto_1

    .line 556
    .restart local v0    # "rc":I
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    const-string v5, "Unexpected end of stream"

    invoke-direct {v2, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 559
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v4    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local v0, "$result":Ljava/lang/Object;
    .restart local v2    # "dst":[B
    .local v3, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :cond_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic readInt$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/ByteReadPacket;->hasBytes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    check-cast v0, Lio/ktor/utils/io/core/Input;

    invoke-static {v0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readInt(Lio/ktor/utils/io/core/Input;)I

    move-result v0

    move v2, v0

    .line 862
    .local v2, "it":I
    const/4 v3, 0x0

    .line 342
    .local v3, "$i$a$-also-ByteChannelSequentialBase$readInt$2":I
    invoke-virtual {p0, v1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterRead(I)V

    .line 346
    .end local v2    # "it":I
    .end local v3    # "$i$a$-also-ByteChannelSequentialBase$readInt$2":I
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 341
    return-object v0

    .line 344
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readIntSlow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 346
    return-object v0
.end method

.method private final readIntSlow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readIntSlow$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readIntSlow$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readIntSlow$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readIntSlow$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readIntSlow$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readIntSlow$1;

    invoke-direct {v0, p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase$readIntSlow$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readIntSlow$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 348
    iget v2, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readIntSlow$1;->label:I

    const/4 v3, 0x4

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object v1, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readIntSlow$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local v1, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 349
    .local v2, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    iput-object v2, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readIntSlow$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readIntSlow$1;->label:I

    invoke-virtual {v2, v3, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_1

    .line 348
    return-object v1

    .line 349
    :cond_1
    move-object v1, v2

    .line 350
    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .restart local v1    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :goto_1
    iget-object v2, v1, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    check-cast v2, Lio/ktor/utils/io/core/Input;

    invoke-static {v2}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readInt(Lio/ktor/utils/io/core/Input;)I

    move-result v2

    .line 351
    .local v2, "result":I
    invoke-virtual {v1, v3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterRead(I)V

    .line 352
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic readLong$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/ByteReadPacket;->hasBytes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    check-cast v0, Lio/ktor/utils/io/core/Input;

    invoke-static {v0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readLong(Lio/ktor/utils/io/core/Input;)J

    move-result-wide v2

    move-wide v4, v2

    .line 862
    .local v4, "it":J
    const/4 v0, 0x0

    .line 357
    .local v0, "$i$a$-also-ByteChannelSequentialBase$readLong$2":I
    invoke-virtual {p0, v1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterRead(I)V

    .line 361
    .end local v0    # "$i$a$-also-ByteChannelSequentialBase$readLong$2":I
    .end local v4    # "it":J
    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0

    .line 356
    return-object v0

    .line 359
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readLongSlow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 361
    return-object v0
.end method

.method private final readLongSlow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readLongSlow$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readLongSlow$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readLongSlow$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readLongSlow$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readLongSlow$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readLongSlow$1;

    invoke-direct {v0, p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase$readLongSlow$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readLongSlow$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 363
    iget v2, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readLongSlow$1;->label:I

    const/16 v3, 0x8

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object v1, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readLongSlow$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local v1, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 364
    .local v2, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    iput-object v2, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readLongSlow$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readLongSlow$1;->label:I

    invoke-virtual {v2, v3, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_1

    .line 363
    return-object v1

    .line 364
    :cond_1
    move-object v1, v2

    .line 365
    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .restart local v1    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :goto_1
    iget-object v2, v1, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    check-cast v2, Lio/ktor/utils/io/core/Input;

    invoke-static {v2}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readLong(Lio/ktor/utils/io/core/Input;)J

    move-result-wide v4

    .line 366
    .local v4, "result":J
    invoke-virtual {v1, v3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterRead(I)V

    .line 367
    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic readPacket$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "size"    # I
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/core/ByteReadPacket;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 433
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->checkClosed$default(Lio/ktor/utils/io/ByteChannelSequentialBase;ILio/ktor/utils/io/core/BytePacketBuilder;ILjava/lang/Object;)V

    .line 435
    new-instance v0, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 437
    .local v0, "builder":Lio/ktor/utils/io/core/BytePacketBuilder;
    move v1, p1

    .line 438
    .local v1, "remaining":I
    int-to-long v2, v1

    iget-object v4, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {v4}, Lio/ktor/utils/io/core/ByteReadPacket;->getRemaining()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 439
    .local v2, "partSize":I
    sub-int/2addr v1, v2

    .line 440
    iget-object v3, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {v0, v3, v2}, Lio/ktor/utils/io/core/BytePacketBuilder;->writePacket(Lio/ktor/utils/io/core/ByteReadPacket;I)V

    .line 441
    invoke-virtual {p0, v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterRead(I)V

    .line 442
    invoke-direct {p0, v1, v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->checkClosed(ILio/ktor/utils/io/core/BytePacketBuilder;)V

    .line 444
    if-lez v1, :cond_0

    .line 445
    invoke-direct {p0, v0, v1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readPacketSuspend(Lio/ktor/utils/io/core/BytePacketBuilder;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .line 447
    return-object v3

    .line 446
    :cond_0
    invoke-virtual {v0}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v3

    .line 444
    return-object v3
.end method

.method private final readPacketSuspend(Lio/ktor/utils/io/core/BytePacketBuilder;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/BytePacketBuilder;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/core/ByteReadPacket;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$readPacketSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readPacketSuspend$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readPacketSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readPacketSuspend$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readPacketSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readPacketSuspend$1;

    invoke-direct {v0, p0, p3}, Lio/ktor/utils/io/ByteChannelSequentialBase$readPacketSuspend$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$readPacketSuspend$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 449
    iget v2, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$readPacketSuspend$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget p1, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$readPacketSuspend$1;->I$0:I

    .local p1, "remaining":I
    iget-object p2, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$readPacketSuspend$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lio/ktor/utils/io/core/BytePacketBuilder;

    .local p2, "builder":Lio/ktor/utils/io/core/BytePacketBuilder;
    iget-object v2, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$readPacketSuspend$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local v2, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v3, p1

    goto :goto_2

    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local p1    # "remaining":I
    .end local p2    # "builder":Lio/ktor/utils/io/core/BytePacketBuilder;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 450
    .restart local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local p1, "builder":Lio/ktor/utils/io/core/BytePacketBuilder;
    .local p2, "size":I
    move v3, p2

    move-object p2, p1

    .line 451
    .end local p1    # "builder":Lio/ktor/utils/io/core/BytePacketBuilder;
    .local v3, "remaining":I
    .local p2, "builder":Lio/ktor/utils/io/core/BytePacketBuilder;
    :cond_1
    :goto_1
    if-lez v3, :cond_3

    .line 452
    int-to-long v4, v3

    iget-object p1, v2, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteReadPacket;->getRemaining()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int p1, v4

    .line 453
    .local p1, "partSize":I
    sub-int/2addr v3, p1

    .line 454
    iget-object v4, v2, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {p2, v4, p1}, Lio/ktor/utils/io/core/BytePacketBuilder;->writePacket(Lio/ktor/utils/io/core/ByteReadPacket;I)V

    .line 455
    invoke-virtual {v2, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterRead(I)V

    .line 456
    .end local p1    # "partSize":I
    invoke-direct {v2, v3, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->checkClosed(ILio/ktor/utils/io/core/BytePacketBuilder;)V

    .line 458
    if-lez v3, :cond_1

    .line 459
    iput-object v2, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$readPacketSuspend$1;->L$0:Ljava/lang/Object;

    iput-object p2, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$readPacketSuspend$1;->L$1:Ljava/lang/Object;

    iput v3, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$readPacketSuspend$1;->I$0:I

    const/4 p1, 0x1

    iput p1, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$readPacketSuspend$1;->label:I

    invoke-virtual {v2, p1, p3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    .line 449
    return-object v1

    .line 459
    :cond_2
    :goto_2
    goto :goto_1

    .line 463
    :cond_3
    invoke-direct {v2, v3, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->checkClosed(ILio/ktor/utils/io/core/BytePacketBuilder;)V

    .line 464
    invoke-virtual {p2}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic readRemaining$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "limit"    # J
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/core/ByteReadPacket;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 397
    invoke-direct {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->ensureNotFailed()V

    .line 399
    new-instance v0, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 401
    .local v0, "builder":Lio/ktor/utils/io/core/BytePacketBuilder;
    iget-object v1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/ByteReadPacket;->getRemaining()J

    move-result-wide v1

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 402
    .local v1, "size":J
    iget-object v3, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {v0, v3, v1, v2}, Lio/ktor/utils/io/core/BytePacketBuilder;->writePacket(Lio/ktor/utils/io/core/ByteReadPacket;J)V

    .line 403
    long-to-int v3, v1

    invoke-virtual {p0, v3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterRead(I)V

    .line 405
    invoke-virtual {v0}, Lio/ktor/utils/io/core/BytePacketBuilder;->getSize()I

    move-result v3

    int-to-long v3, v3

    sub-long v3, p1, v3

    .line 406
    .local v3, "newLimit":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->isClosedForRead()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    invoke-direct {p0, v0, p1, p2, p3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readRemainingSuspend(Lio/ktor/utils/io/core/BytePacketBuilder;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .line 412
    return-object v5

    .line 407
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->ensureNotFailed(Lio/ktor/utils/io/core/BytePacketBuilder;)V

    .line 408
    invoke-virtual {v0}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v5

    .line 406
    return-object v5
.end method

.method private final readRemainingSuspend(Lio/ktor/utils/io/core/BytePacketBuilder;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/BytePacketBuilder;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/core/ByteReadPacket;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;

    invoke-direct {v0, p0, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p4, v0

    .local p4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 414
    iget v2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-wide p1, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;->J$0:J

    .local p1, "limit":J
    iget-object p3, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;->L$1:Ljava/lang/Object;

    check-cast p3, Lio/ktor/utils/io/core/BytePacketBuilder;

    .local p3, "builder":Lio/ktor/utils/io/core/BytePacketBuilder;
    iget-object v2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local v2, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local p1    # "limit":J
    .end local p3    # "builder":Lio/ktor/utils/io/core/BytePacketBuilder;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .restart local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local p2, "limit":J
    move-wide v7, p2

    move-object p3, p1

    move-wide p1, v7

    .line 415
    .end local p2    # "limit":J
    .restart local p1    # "limit":J
    .restart local p3    # "builder":Lio/ktor/utils/io/core/BytePacketBuilder;
    :goto_1
    invoke-virtual {p3}, Lio/ktor/utils/io/core/BytePacketBuilder;->getSize()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v3, p1

    if-gez v3, :cond_4

    .line 416
    invoke-virtual {p3}, Lio/ktor/utils/io/core/BytePacketBuilder;->getSize()I

    move-result v3

    int-to-long v3, v3

    sub-long v3, p1, v3

    iget-object v5, v2, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {v5}, Lio/ktor/utils/io/core/ByteReadPacket;->getRemaining()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 417
    .local v3, "partLimit":J
    iget-object v5, v2, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {p3, v5, v3, v4}, Lio/ktor/utils/io/core/BytePacketBuilder;->writePacket(Lio/ktor/utils/io/core/ByteReadPacket;J)V

    .line 418
    long-to-int v5, v3

    invoke-virtual {v2, v5}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterRead(I)V

    .line 419
    .end local v3    # "partLimit":J
    invoke-direct {v2, p3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->ensureNotFailed(Lio/ktor/utils/io/core/BytePacketBuilder;)V

    .line 421
    invoke-virtual {v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->isClosedForRead()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p3}, Lio/ktor/utils/io/core/BytePacketBuilder;->getSize()I

    move-result v3

    long-to-int v4, p1

    if-ne v3, v4, :cond_1

    goto :goto_3

    .line 425
    :cond_1
    iput-object v2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;->L$0:Ljava/lang/Object;

    iput-object p3, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;->L$1:Ljava/lang/Object;

    iput-wide p1, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;->J$0:J

    const/4 v3, 0x1

    iput v3, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;->label:I

    invoke-virtual {v2, v3, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_2

    .line 414
    return-object v1

    .line 425
    :cond_2
    :goto_2
    goto :goto_1

    .line 422
    .end local p1    # "limit":J
    :cond_3
    :goto_3
    nop

    .line 428
    :cond_4
    invoke-direct {v2, p3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->ensureNotFailed(Lio/ktor/utils/io/core/BytePacketBuilder;)V

    .line 429
    invoke-virtual {p3}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic readShort$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Short;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/ByteReadPacket;->hasBytes(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    check-cast v0, Lio/ktor/utils/io/core/Input;

    invoke-static {v0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readShort(Lio/ktor/utils/io/core/Input;)S

    move-result v0

    move v2, v0

    .line 862
    .local v2, "it":S
    const/4 v3, 0x0

    .line 322
    .local v3, "$i$a$-also-ByteChannelSequentialBase$readShort$2":I
    invoke-virtual {p0, v1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterRead(I)V

    .line 326
    .end local v2    # "it":S
    .end local v3    # "$i$a$-also-ByteChannelSequentialBase$readShort$2":I
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxShort(S)Ljava/lang/Short;

    move-result-object v0

    .line 321
    return-object v0

    .line 324
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readShortSlow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 326
    return-object v0
.end method

.method private final readShortSlow(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Short;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readShortSlow$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readShortSlow$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readShortSlow$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readShortSlow$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readShortSlow$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readShortSlow$1;

    invoke-direct {v0, p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase$readShortSlow$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readShortSlow$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 328
    iget v2, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readShortSlow$1;->label:I

    const/4 v3, 0x2

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object v1, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readShortSlow$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local v1, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 329
    .local v2, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    iput-object v2, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readShortSlow$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p1, Lio/ktor/utils/io/ByteChannelSequentialBase$readShortSlow$1;->label:I

    invoke-virtual {v2, v3, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_1

    .line 328
    return-object v1

    .line 329
    :cond_1
    move-object v1, v2

    .line 330
    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .restart local v1    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :goto_1
    iget-object v2, v1, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    check-cast v2, Lio/ktor/utils/io/core/Input;

    invoke-static {v2}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readShort(Lio/ktor/utils/io/core/Input;)S

    move-result v2

    .line 331
    .local v2, "result":S
    invoke-virtual {v1, v3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterRead(I)V

    .line 332
    int-to-short v3, v2

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxShort(S)Ljava/lang/Short;

    move-result-object v3

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic readSuspendableSession$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/utils/io/SuspendableReadSession;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use read instead."
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$readSuspendableSession$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readSuspendableSession$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readSuspendableSession$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readSuspendableSession$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readSuspendableSession$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readSuspendableSession$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase$readSuspendableSession$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$readSuspendableSession$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 702
    iget v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$readSuspendableSession$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$readSuspendableSession$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local p0, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local p0    # "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 703
    .restart local p0    # "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local p1, "consumer":Lkotlin/jvm/functions/Function2;
    nop

    .line 704
    :try_start_1
    iput-object p0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$readSuspendableSession$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$readSuspendableSession$1;->label:I

    invoke-interface {p1, p0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "consumer":Lkotlin/jvm/functions/Function2;
    if-ne v2, v1, :cond_1

    .line 702
    return-object v1

    .line 706
    :cond_1
    :goto_1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->completeReading()V

    .line 707
    .end local p0    # "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    nop

    .line 708
    .restart local p0    # "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 706
    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->completeReading()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic readUTF8Line$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$readUTF8Line$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readUTF8Line$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readUTF8Line$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readUTF8Line$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readUTF8Line$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readUTF8Line$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase$readUTF8Line$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$readUTF8Line$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 729
    iget v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$readUTF8Line$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$readUTF8Line$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/StringBuilder;

    .local p0, "builder":Ljava/lang/StringBuilder;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    move-object p0, v0

    goto :goto_1

    .end local p0    # "builder":Ljava/lang/StringBuilder;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 730
    .local p0, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local p1, "limit":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 731
    .local v2, "builder":Ljava/lang/StringBuilder;
    move-object v3, v2

    check-cast v3, Ljava/lang/Appendable;

    iput-object v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$readUTF8Line$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$readUTF8Line$1;->label:I

    invoke-virtual {p0, v3, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readUTF8LineTo(Ljava/lang/Appendable;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local p1    # "limit":I
    if-ne p0, v1, :cond_1

    .line 729
    return-object v1

    .line 731
    :cond_1
    :goto_1
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_2

    .line 732
    const/4 p0, 0x0

    return-object p0

    .line 735
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic readUTF8LineTo$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Ljava/lang/Appendable;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "limit"    # I
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "TA;I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 711
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->isClosedForRead()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 712
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 713
    .local v0, "cause":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 717
    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 714
    :cond_0
    throw v0

    .line 720
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readUTF8LineTo$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/ktor/utils/io/ByteChannelSequentialBase$readUTF8LineTo$2;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    new-instance v1, Lio/ktor/utils/io/ByteChannelSequentialBase$readUTF8LineTo$3;

    invoke-direct {v1, p0}, Lio/ktor/utils/io/ByteChannelSequentialBase$readUTF8LineTo$3;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p2, v0, v1, p3}, Lio/ktor/utils/io/core/internal/UTF8Kt;->decodeUTF8LineLoopSuspend(Ljava/lang/Appendable;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final requestNextView(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 5
    .param p1, "atLeast"    # I

    .line 640
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    .local v0, "$this$isEmpty$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    const/4 v1, 0x0

    .line 872
    .local v1, "$i$f$isEmpty":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/ByteReadPacket;->getEndOfInput()Z

    move-result v0

    .line 640
    .end local v0    # "$this$isEmpty$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    .end local v1    # "$i$f$isEmpty":I
    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->prepareFlushedBytes()V

    .line 644
    :cond_0
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {v0, p1}, Lio/ktor/utils/io/core/ByteReadPacket;->prepareReadHead$ktor_io(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 646
    .local v0, "view":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    if-nez v0, :cond_1

    .line 647
    sget-object v1, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->setLastReadView(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 648
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->setLastReadAvailable(I)V

    goto :goto_0

    .line 650
    :cond_1
    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->setLastReadView(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 651
    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 873
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 651
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    invoke-direct {p0, v3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->setLastReadAvailable(I)V

    .line 654
    :goto_0
    return-object v0
.end method

.method private final setLastReadAvailable(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 42
    iput p1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->lastReadAvailable$delegate:I

    return-void
.end method

.method private final setLastReadView(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 43
    iput-object p1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->lastReadView$delegate:Ljava/lang/Object;

    return-void
.end method

.method static synthetic writeAvailable$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "src"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 229
    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x0

    .line 864
    .local v1, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    sub-int/2addr v2, v3

    .line 229
    .end local v0    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "$i$f$getReadRemaining":I
    move v0, v2

    .line 230
    .local v0, "srcRemaining":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 231
    :cond_0
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getAvailableForWrite()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 233
    .local v1, "size":I
    if-nez v1, :cond_1

    .line 234
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->writeAvailableSuspend(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .line 240
    return-object v2

    .line 236
    :cond_1
    iget-object v2, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->writable:Lio/ktor/utils/io/core/BytePacketBuilder;

    check-cast v2, Lio/ktor/utils/io/core/Output;

    move-object v3, p1

    check-cast v3, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v2, v3, v1}, Lio/ktor/utils/io/core/OutputKt;->writeFully(Lio/ktor/utils/io/core/Output;Lio/ktor/utils/io/core/Buffer;I)V

    .line 237
    invoke-virtual {p0, v1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterWrite(I)V

    .line 238
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    .line 233
    return-object v2
.end method

.method static synthetic writeAvailable$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;[BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "[BII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 243
    if-nez p3, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getAvailableForWrite()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 246
    .local v0, "size":I
    if-nez v0, :cond_1

    .line 247
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase;->writeAvailableSuspend([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .line 253
    return-object v1

    .line 249
    :cond_1
    iget-object v1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->writable:Lio/ktor/utils/io/core/BytePacketBuilder;

    check-cast v1, Lio/ktor/utils/io/core/Output;

    invoke-static {v1, p1, p2, v0}, Lio/ktor/utils/io/core/OutputKt;->writeFully(Lio/ktor/utils/io/core/Output;[BII)V

    .line 250
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterWrite(I)V

    .line 251
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    .line 246
    return-object v1
.end method

.method private final writeAvailableSuspend(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 775
    iget v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_2

    :pswitch_1
    iget-object p1, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .local p1, "src":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    iget-object v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local v2, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local p1    # "src":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 776
    .restart local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .restart local p1    # "src":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    iput-object v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$1;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$1;->label:I

    invoke-virtual {v2, v3, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitAtLeastNBytesAvailableForWrite$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1

    .line 775
    return-object v1

    .line 777
    :cond_1
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$1;->L$0:Ljava/lang/Object;

    iput-object v3, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$1;->label:I

    invoke-virtual {v2, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->writeAvailable(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local p1    # "src":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    if-ne p1, v1, :cond_2

    .line 775
    return-object v1

    .line 777
    :cond_2
    :goto_2
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final writeAvailableSuspend([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$2;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$2;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$2;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$2;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$2;

    invoke-direct {v0, p0, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$2;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p4, v0

    .local p4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$2;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 780
    iget v2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$2;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_2

    :pswitch_1
    iget p1, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$2;->I$1:I

    .local p1, "length":I
    iget p2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$2;->I$0:I

    .local p2, "offset":I
    iget-object p3, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$2;->L$1:Ljava/lang/Object;

    check-cast p3, [B

    .local p3, "src":[B
    iget-object v2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local v2, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local p1    # "length":I
    .end local p2    # "offset":I
    .end local p3    # "src":[B
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 781
    .restart local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local p1, "src":[B
    .restart local p2    # "offset":I
    .local p3, "length":I
    iput-object v2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$2;->L$0:Ljava/lang/Object;

    iput-object p1, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$2;->L$1:Ljava/lang/Object;

    iput p2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$2;->I$0:I

    iput p3, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$2;->I$1:I

    const/4 v3, 0x1

    iput v3, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$2;->label:I

    invoke-virtual {v2, v3, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitAtLeastNBytesAvailableForWrite$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1

    .line 780
    return-object v1

    .line 781
    :cond_1
    move v4, p3

    move-object p3, p1

    move p1, v4

    .line 782
    .local p1, "length":I
    .local p3, "src":[B
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$2;->L$0:Ljava/lang/Object;

    iput-object v3, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$2;->L$1:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeAvailableSuspend$2;->label:I

    invoke-virtual {v2, p3, p2, p1, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase;->writeAvailable([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local p1    # "length":I
    .end local p2    # "offset":I
    .end local p3    # "src":[B
    if-ne p1, v1, :cond_2

    .line 780
    return-object v1

    .line 782
    :cond_2
    :goto_2
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic writeByte$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;BLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "B",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeByte$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeByte$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeByte$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeByte$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeByte$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeByte$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase$writeByte$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeByte$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 149
    iget v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeByte$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-byte p0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeByte$1;->B$0:B

    .local p0, "b":B
    iget-object p1, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeByte$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local p1, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p0    # "b":B
    .end local p1    # "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 150
    .local p0, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local p1, "b":B
    iput-object p0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeByte$1;->L$0:Ljava/lang/Object;

    iput-byte p1, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeByte$1;->B$0:B

    iput v3, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeByte$1;->label:I

    invoke-virtual {p0, v3, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitAtLeastNBytesAvailableForWrite$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 149
    return-object v1

    .line 150
    :cond_1
    move v4, p1

    move-object p1, p0

    move p0, v4

    .line 151
    .local p0, "b":B
    .local p1, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :goto_1
    iget-object v1, p1, Lio/ktor/utils/io/ByteChannelSequentialBase;->writable:Lio/ktor/utils/io/core/BytePacketBuilder;

    int-to-byte v2, p0

    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/BytePacketBuilder;->writeByte(B)V

    .line 152
    invoke-virtual {p1, v3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterWrite(I)V

    .line 153
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic writeDouble$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;DLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "D",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$writeDouble$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeDouble$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeDouble$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeDouble$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeDouble$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeDouble$1;

    invoke-direct {v0, p0, p3}, Lio/ktor/utils/io/ByteChannelSequentialBase$writeDouble$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$writeDouble$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 179
    iget v2, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$writeDouble$1;->label:I

    const/16 v3, 0x8

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-wide p0, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$writeDouble$1;->D$0:D

    .local p0, "d":D
    iget-object p2, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$writeDouble$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local p2, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p0    # "d":D
    .end local p2    # "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 180
    .local p0, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local p1, "d":D
    iput-object p0, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$writeDouble$1;->L$0:Ljava/lang/Object;

    iput-wide p1, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$writeDouble$1;->D$0:D

    const/4 v2, 0x1

    iput v2, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$writeDouble$1;->label:I

    invoke-virtual {p0, v3, p3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitAtLeastNBytesAvailableForWrite$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 179
    return-object v1

    .line 180
    :cond_1
    move-wide v4, p1

    move-object p2, p0

    move-wide p0, v4

    .line 181
    .end local p1    # "d":D
    .local p0, "d":D
    .restart local p2    # "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :goto_1
    iget-object v1, p2, Lio/ktor/utils/io/ByteChannelSequentialBase;->writable:Lio/ktor/utils/io/core/BytePacketBuilder;

    check-cast v1, Lio/ktor/utils/io/core/Output;

    invoke-static {v1, p0, p1}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeDouble(Lio/ktor/utils/io/core/Output;D)V

    .line 182
    invoke-virtual {p2, v3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterWrite(I)V

    .line 183
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic writeFloat$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFloat$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFloat$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFloat$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFloat$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFloat$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFloat$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFloat$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFloat$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 173
    iget v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFloat$1;->label:I

    const/4 v3, 0x4

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget p0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFloat$1;->F$0:F

    .local p0, "f":F
    iget-object p1, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFloat$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local p1, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p0    # "f":F
    .end local p1    # "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 174
    .local p0, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local p1, "f":F
    iput-object p0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFloat$1;->L$0:Ljava/lang/Object;

    iput p1, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFloat$1;->F$0:F

    const/4 v2, 0x1

    iput v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFloat$1;->label:I

    invoke-virtual {p0, v3, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitAtLeastNBytesAvailableForWrite$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 173
    return-object v1

    .line 174
    :cond_1
    move v4, p1

    move-object p1, p0

    move p0, v4

    .line 175
    .local p0, "f":F
    .local p1, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :goto_1
    iget-object v1, p1, Lio/ktor/utils/io/ByteChannelSequentialBase;->writable:Lio/ktor/utils/io/core/BytePacketBuilder;

    check-cast v1, Lio/ktor/utils/io/core/Output;

    invoke-static {v1, p0}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeFloat(Lio/ktor/utils/io/core/Output;F)V

    .line 176
    invoke-virtual {p1, v3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterWrite(I)V

    .line 177
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic writeFully$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/core/Buffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Lio/ktor/utils/io/core/Buffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 192
    iget v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lio/ktor/utils/io/core/Buffer;

    .local p0, "src":Lio/ktor/utils/io/core/Buffer;
    iget-object p1, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local p1, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p0    # "src":Lio/ktor/utils/io/core/Buffer;
    .end local p1    # "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 193
    .local p0, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local p1, "src":Lio/ktor/utils/io/core/Buffer;
    iput-object p0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$1;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$1;->L$1:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$1;->label:I

    invoke-virtual {p0, v2, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitAtLeastNBytesAvailableForWrite$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 192
    return-object v1

    .line 193
    :cond_1
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    .line 194
    .local p0, "src":Lio/ktor/utils/io/core/Buffer;
    .local p1, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :goto_1
    move-object v1, p0

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 863
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 194
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    move v1, v3

    .line 195
    .local v1, "count":I
    iget-object v2, p1, Lio/ktor/utils/io/ByteChannelSequentialBase;->writable:Lio/ktor/utils/io/core/BytePacketBuilder;

    check-cast v2, Lio/ktor/utils/io/core/Output;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, p0, v5, v3, v4}, Lio/ktor/utils/io/core/OutputKt;->writeFully$default(Lio/ktor/utils/io/core/Output;Lio/ktor/utils/io/core/Buffer;IILjava/lang/Object;)V

    .line 196
    invoke-virtual {p1, v1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterWrite(I)V

    .line 197
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic writeFully$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;[BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "[BII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;

    invoke-direct {v0, p0, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p4, v0

    .local p4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 199
    iget v2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget p0, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;->I$1:I

    .local p0, "endIndex":I
    iget p1, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;->I$0:I

    .local p1, "currentIndex":I
    iget-object p2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;->L$1:Ljava/lang/Object;

    check-cast p2, [B

    .local p2, "src":[B
    iget-object p3, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;->L$0:Ljava/lang/Object;

    check-cast p3, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local p3, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local p0    # "endIndex":I
    .end local p1    # "currentIndex":I
    .end local p2    # "src":[B
    .end local p3    # "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 200
    .local p0, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local p1, "src":[B
    .local p2, "offset":I
    .local p3, "length":I
    move v2, p2

    .line 201
    .local v2, "currentIndex":I
    add-int v3, p2, p3

    move-object p3, p0

    move-object p2, p1

    move p1, v2

    move p0, v3

    .line 203
    .end local v2    # "currentIndex":I
    .local p0, "endIndex":I
    .local p1, "currentIndex":I
    .local p2, "src":[B
    .local p3, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :goto_1
    if-ge p1, p0, :cond_2

    .line 204
    iput-object p3, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;->L$0:Ljava/lang/Object;

    iput-object p2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;->L$1:Ljava/lang/Object;

    iput p1, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;->I$0:I

    iput p0, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;->I$1:I

    const/4 v2, 0x1

    iput v2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;->label:I

    invoke-virtual {p3, v2, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitAtLeastNBytesAvailableForWrite$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 199
    return-object v1

    .line 206
    :cond_1
    :goto_2
    invoke-virtual {p3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getAvailableForWrite()I

    move-result v2

    sub-int v3, p0, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 207
    .local v2, "bytesCount":I
    iget-object v3, p3, Lio/ktor/utils/io/ByteChannelSequentialBase;->writable:Lio/ktor/utils/io/core/BytePacketBuilder;

    check-cast v3, Lio/ktor/utils/io/core/Output;

    invoke-static {v3, p2, p1, v2}, Lio/ktor/utils/io/core/OutputKt;->writeFully(Lio/ktor/utils/io/core/Output;[BII)V

    .line 209
    add-int/2addr p1, v2

    .line 210
    invoke-virtual {p3, v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterWrite(I)V

    .end local v2    # "bytesCount":I
    goto :goto_1

    .line 212
    :cond_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic writeFully-JT6ljtQ$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Ljava/nio/ByteBuffer;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Ljava/nio/ByteBuffer;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$3;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$3;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$3;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$3;

    invoke-direct {v0, p0, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$3;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p4, v0

    .local p4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$3;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 214
    iget v2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$3;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget p0, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$3;->I$1:I

    .local p0, "currentIndex":I
    iget p1, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$3;->I$0:I

    .local p1, "endIndex":I
    iget-object p2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$3;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/nio/ByteBuffer;

    .local p2, "memory":Ljava/nio/ByteBuffer;
    iget-object p3, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$3;->L$0:Ljava/lang/Object;

    check-cast p3, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local p3, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local p0    # "currentIndex":I
    .end local p1    # "endIndex":I
    .end local p2    # "memory":Ljava/nio/ByteBuffer;
    .end local p3    # "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 215
    .local p0, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local p1, "memory":Ljava/nio/ByteBuffer;
    .local p2, "startIndex":I
    .local p3, "endIndex":I
    move v2, p2

    move-object p2, p1

    move p1, p3

    move-object p3, p0

    move p0, v2

    .line 217
    .local p0, "currentIndex":I
    .local p1, "endIndex":I
    .local p2, "memory":Ljava/nio/ByteBuffer;
    .local p3, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :goto_1
    if-ge p0, p1, :cond_2

    .line 218
    iput-object p3, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$3;->L$0:Ljava/lang/Object;

    iput-object p2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$3;->L$1:Ljava/lang/Object;

    iput p1, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$3;->I$0:I

    iput p0, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$3;->I$1:I

    const/4 v2, 0x1

    iput v2, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$3;->label:I

    invoke-virtual {p3, v2, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitAtLeastNBytesAvailableForWrite$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 214
    return-object v1

    .line 220
    :cond_1
    :goto_2
    invoke-virtual {p3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getAvailableForWrite()I

    move-result v2

    sub-int v3, p1, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 221
    .local v2, "bytesCount":I
    iget-object v3, p3, Lio/ktor/utils/io/ByteChannelSequentialBase;->writable:Lio/ktor/utils/io/core/BytePacketBuilder;

    check-cast v3, Lio/ktor/utils/io/core/Output;

    invoke-static {v3, p2, p0, v2}, Lio/ktor/utils/io/core/OutputKt;->writeFully-UAd2zVI(Lio/ktor/utils/io/core/Output;Ljava/nio/ByteBuffer;II)V

    .line 223
    add-int/2addr p0, v2

    .line 224
    invoke-virtual {p3, v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterWrite(I)V

    .end local v2    # "bytesCount":I
    goto :goto_1

    .line 226
    :cond_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic writeInt$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeInt$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeInt$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeInt$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeInt$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeInt$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeInt$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase$writeInt$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeInt$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 161
    iget v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeInt$1;->label:I

    const/4 v3, 0x4

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget p0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeInt$1;->I$0:I

    .local p0, "i":I
    iget-object p1, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeInt$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local p1, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p0    # "i":I
    .end local p1    # "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 162
    .local p0, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local p1, "i":I
    iput-object p0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeInt$1;->L$0:Ljava/lang/Object;

    iput p1, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeInt$1;->I$0:I

    const/4 v2, 0x1

    iput v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeInt$1;->label:I

    invoke-virtual {p0, v3, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitAtLeastNBytesAvailableForWrite$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 161
    return-object v1

    .line 162
    :cond_1
    move v4, p1

    move-object p1, p0

    move p0, v4

    .line 163
    .local p0, "i":I
    .local p1, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :goto_1
    iget-object v1, p1, Lio/ktor/utils/io/ByteChannelSequentialBase;->writable:Lio/ktor/utils/io/core/BytePacketBuilder;

    check-cast v1, Lio/ktor/utils/io/core/Output;

    invoke-static {v1, p0}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeInt(Lio/ktor/utils/io/core/Output;I)V

    .line 164
    invoke-virtual {p1, v3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterWrite(I)V

    .line 165
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic writeLong$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$writeLong$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeLong$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeLong$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeLong$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeLong$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeLong$1;

    invoke-direct {v0, p0, p3}, Lio/ktor/utils/io/ByteChannelSequentialBase$writeLong$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$writeLong$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 167
    iget v2, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$writeLong$1;->label:I

    const/16 v3, 0x8

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-wide p0, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$writeLong$1;->J$0:J

    .local p0, "l":J
    iget-object p2, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$writeLong$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local p2, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p0    # "l":J
    .end local p2    # "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 168
    .local p0, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local p1, "l":J
    iput-object p0, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$writeLong$1;->L$0:Ljava/lang/Object;

    iput-wide p1, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$writeLong$1;->J$0:J

    const/4 v2, 0x1

    iput v2, p3, Lio/ktor/utils/io/ByteChannelSequentialBase$writeLong$1;->label:I

    invoke-virtual {p0, v3, p3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitAtLeastNBytesAvailableForWrite$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 167
    return-object v1

    .line 168
    :cond_1
    move-wide v4, p1

    move-object p2, p0

    move-wide p0, v4

    .line 169
    .end local p1    # "l":J
    .local p0, "l":J
    .restart local p2    # "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :goto_1
    iget-object v1, p2, Lio/ktor/utils/io/ByteChannelSequentialBase;->writable:Lio/ktor/utils/io/core/BytePacketBuilder;

    check-cast v1, Lio/ktor/utils/io/core/Output;

    invoke-static {v1, p0, p1}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeLong(Lio/ktor/utils/io/core/Output;J)V

    .line 170
    invoke-virtual {p2, v3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterWrite(I)V

    .line 171
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic writePacket$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Lio/ktor/utils/io/core/ByteReadPacket;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writePacket$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writePacket$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writePacket$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writePacket$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writePacket$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writePacket$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase$writePacket$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writePacket$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 185
    iget v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writePacket$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writePacket$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lio/ktor/utils/io/core/ByteReadPacket;

    .local p0, "packet":Lio/ktor/utils/io/core/ByteReadPacket;
    iget-object p1, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writePacket$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local p1, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p0    # "packet":Lio/ktor/utils/io/core/ByteReadPacket;
    .end local p1    # "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 186
    .local p0, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local p1, "packet":Lio/ktor/utils/io/core/ByteReadPacket;
    iput-object p0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writePacket$1;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writePacket$1;->L$1:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writePacket$1;->label:I

    invoke-virtual {p0, v2, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitAtLeastNBytesAvailableForWrite$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 185
    return-object v1

    .line 186
    :cond_1
    move-object v3, p1

    move-object p1, p0

    move-object p0, v3

    .line 187
    .local p0, "packet":Lio/ktor/utils/io/core/ByteReadPacket;
    .local p1, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :goto_1
    invoke-virtual {p0}, Lio/ktor/utils/io/core/ByteReadPacket;->getRemaining()J

    move-result-wide v1

    long-to-int v1, v1

    .line 188
    .local v1, "size":I
    iget-object v2, p1, Lio/ktor/utils/io/ByteChannelSequentialBase;->writable:Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-virtual {v2, p0}, Lio/ktor/utils/io/core/BytePacketBuilder;->writePacket(Lio/ktor/utils/io/core/ByteReadPacket;)V

    .line 189
    invoke-virtual {p1, v1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterWrite(I)V

    .line 190
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic writeShort$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;SLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "S",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeShort$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeShort$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeShort$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeShort$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeShort$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeShort$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase$writeShort$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeShort$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 155
    iget v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeShort$1;->label:I

    const/4 v3, 0x2

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-short p0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeShort$1;->S$0:S

    .local p0, "s":S
    iget-object p1, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeShort$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local p1, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p0    # "s":S
    .end local p1    # "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 156
    .local p0, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local p1, "s":S
    iput-object p0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeShort$1;->L$0:Ljava/lang/Object;

    iput-short p1, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeShort$1;->S$0:S

    const/4 v2, 0x1

    iput v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeShort$1;->label:I

    invoke-virtual {p0, v3, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitAtLeastNBytesAvailableForWrite$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 155
    return-object v1

    .line 156
    :cond_1
    move v4, p1

    move-object p1, p0

    move p0, v4

    .line 157
    .local p0, "s":S
    .local p1, "$this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :goto_1
    iget-object v1, p1, Lio/ktor/utils/io/ByteChannelSequentialBase;->writable:Lio/ktor/utils/io/core/BytePacketBuilder;

    check-cast v1, Lio/ktor/utils/io/core/Output;

    int-to-short v2, p0

    invoke-static {v1, v2}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeShort(Lio/ktor/utils/io/core/Output;S)V

    .line 158
    invoke-virtual {p1, v3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterWrite(I)V

    .line 159
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic writeSuspendSession$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p1, "visitor"    # Lkotlin/jvm/functions/Function2;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/utils/io/WriterSuspendSession;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use write { } instead."
    .end annotation

    .line 258
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->beginWriteSession()Lio/ktor/utils/io/WriterSuspendSession;

    move-result-object v0

    .line 259
    .local v0, "session":Lio/ktor/utils/io/WriterSuspendSession;
    invoke-interface {p1, v0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    return-object v1

    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 260
    return-object v1
.end method


# virtual methods
.method protected final afterRead(I)V
    .locals 1
    .param p1, "count"    # I

    .line 336
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->addBytesRead(I)V

    .line 337
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->slot:Lio/ktor/utils/io/internal/AwaitingSlot;

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/AwaitingSlot;->resume()V

    .line 338
    return-void
.end method

.method protected final afterWrite(I)V
    .locals 1
    .param p1, "count"    # I

    .line 786
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->addBytesWritten(I)V

    .line 788
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->writable:Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    .line 790
    invoke-direct {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->ensureNotClosed()V

    .line 792
    :cond_0
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getAutoFlush()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getAvailableForWrite()I

    move-result v0

    if-nez v0, :cond_2

    .line 793
    :cond_1
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->flush()V

    .line 795
    :cond_2
    return-void
.end method

.method public await(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->await$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final awaitAtLeastNBytesAvailableForRead$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 86
    iget v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget p1, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1;->I$0:I

    .local p1, "count":I
    iget-object v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local v2, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local p1    # "count":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 87
    .restart local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .restart local p1    # "count":I
    :goto_1
    invoke-virtual {v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getAvailableForRead()I

    move-result v3

    if-ge v3, p1, :cond_2

    invoke-virtual {v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->isClosedForRead()Z

    move-result v3

    if-nez v3, :cond_2

    .line 88
    iget-object v3, v2, Lio/ktor/utils/io/ByteChannelSequentialBase;->slot:Lio/ktor/utils/io/internal/AwaitingSlot;

    new-instance v4, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$2;

    invoke-direct {v4, v2, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$2;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;I)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    iput-object v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1;->L$0:Ljava/lang/Object;

    iput p1, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1;->I$0:I

    const/4 v5, 0x1

    iput v5, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1;->label:I

    invoke-virtual {v3, v4, p2}, Lio/ktor/utils/io/internal/AwaitingSlot;->sleep(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1

    .line 86
    return-object v1

    .line 88
    :cond_1
    :goto_2
    goto :goto_1

    .line 90
    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local p1    # "count":I
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final awaitAtLeastNBytesAvailableForWrite$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 78
    iget v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget p1, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1;->I$0:I

    .local p1, "count":I
    iget-object v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local v2, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local p1    # "count":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 79
    .restart local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .restart local p1    # "count":I
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getAvailableForWrite()I

    move-result v3

    if-ge v3, p1, :cond_3

    invoke-virtual {v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 80
    invoke-direct {v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->flushImpl()Z

    move-result v3

    if-nez v3, :cond_1

    .line 81
    iget-object v3, v2, Lio/ktor/utils/io/ByteChannelSequentialBase;->slot:Lio/ktor/utils/io/internal/AwaitingSlot;

    new-instance v4, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$2;

    invoke-direct {v4, v2, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$2;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;I)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    iput-object v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1;->L$0:Ljava/lang/Object;

    iput p1, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1;->I$0:I

    const/4 v5, 0x1

    iput v5, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1;->label:I

    invoke-virtual {v3, v4, p2}, Lio/ktor/utils/io/internal/AwaitingSlot;->sleep(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_2

    .line 78
    return-object v1

    .line 81
    :cond_2
    :goto_2
    goto :goto_1

    .line 84
    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local p1    # "count":I
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public awaitContent(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitContent$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public awaitFreeSpace(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitFreeSpace$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final awaitInternalAtLeast1$ktor_io(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 602
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    .local v0, "$this$isNotEmpty$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    const/4 v1, 0x0

    .line 871
    .local v1, "$i$f$isNotEmpty":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/ByteReadPacket;->getEndOfInput()Z

    move-result v2

    .line 602
    .end local v0    # "$this$isNotEmpty$iv":Lio/ktor/utils/io/core/ByteReadPacket;
    .end local v1    # "$i$f$isNotEmpty":I
    const/4 v0, 0x1

    xor-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_0

    .line 603
    nop

    .line 606
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 605
    :cond_0
    invoke-virtual {p0, v0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    .line 606
    return-object v0
.end method

.method protected final awaitSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitSuspend$1;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitSuspend$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitSuspend$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitSuspend$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitSuspend$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 608
    iget v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitSuspend$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget p1, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitSuspend$1;->I$0:I

    .local p1, "atLeast":I
    iget-object v1, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitSuspend$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local v1, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v1    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local p1    # "atLeast":I
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 609
    .local v2, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .restart local p1    # "atLeast":I
    if-ltz p1, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    if-eqz v5, :cond_5

    .line 611
    iput-object v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitSuspend$1;->L$0:Ljava/lang/Object;

    iput p1, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitSuspend$1;->I$0:I

    iput v4, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitSuspend$1;->label:I

    invoke-virtual {v2, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitAtLeastNBytesAvailableForRead$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_2

    .line 608
    return-object v1

    .line 611
    :cond_2
    move-object v1, v2

    .line 612
    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .restart local v1    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :goto_2
    invoke-virtual {v1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->prepareFlushedBytes()V

    .line 614
    invoke-virtual {v1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_4

    .line 615
    invoke-virtual {v1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->isClosedForRead()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getAvailableForRead()I

    move-result v2

    if-lt v2, p1, :cond_3

    move v3, v4

    .end local v1    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local p1    # "atLeast":I
    :cond_3
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 614
    :cond_4
    move-object p1, v2

    .line 862
    .local p1, "it":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 614
    .local v1, "$i$a$-let-ByteChannelSequentialBase$awaitSuspend$2":I
    throw p1

    .line 609
    .end local v1    # "$i$a$-let-ByteChannelSequentialBase$awaitSuspend$2":I
    .restart local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .local p1, "atLeast":I
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Failed requirement."

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public beginWriteSession()Lio/ktor/utils/io/WriterSuspendSession;
    .locals 1

    .line 264
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$beginWriteSession$1;

    invoke-direct {v0, p0}, Lio/ktor/utils/io/ByteChannelSequentialBase$beginWriteSession$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;)V

    check-cast v0, Lio/ktor/utils/io/WriterSuspendSession;

    return-object v0
.end method

.method public cancel(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 739
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 743
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Channel cancelled"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->close(Ljava/lang/Throwable;)Z

    move-result v0

    return v0

    .line 740
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public close(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 747
    if-nez p1, :cond_0

    invoke-static {}, Lio/ktor/utils/io/CloseElementKt;->getCLOSED_SUCCESS()Lio/ktor/utils/io/CloseElement;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/CloseElement;

    invoke-direct {v0, p1}, Lio/ktor/utils/io/CloseElement;-><init>(Ljava/lang/Throwable;)V

    .line 748
    .local v0, "closeElement":Lio/ktor/utils/io/CloseElement;
    :goto_0
    sget-object v1, Lio/ktor/utils/io/ByteChannelSequentialBase;->_closed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, v0}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    return v1

    .line 750
    :cond_1
    if-eqz p1, :cond_2

    .line 751
    iget-object v1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/ByteReadPacket;->release()V

    .line 752
    iget-object v1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->writable:Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    .line 753
    iget-object v1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->flushBuffer:Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    goto :goto_1

    .line 755
    :cond_2
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->flush()V

    .line 756
    iget-object v1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->writable:Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    .line 759
    :goto_1
    iget-object v1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->slot:Lio/ktor/utils/io/internal/AwaitingSlot;

    invoke-virtual {v1, p1}, Lio/ktor/utils/io/internal/AwaitingSlot;->cancel(Ljava/lang/Throwable;)V

    .line 760
    const/4 v1, 0x1

    return v1
.end method

.method public discard(I)I
    .locals 4
    .param p1, "n"    # I

    .line 619
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 621
    if-nez p1, :cond_0

    .line 622
    const/4 v0, 0x0

    return v0

    .line 625
    :cond_0
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {v0, p1}, Lio/ktor/utils/io/core/ByteReadPacket;->discard(I)I

    move-result v0

    move v1, v0

    .local v1, "it":I
    const/4 v2, 0x0

    .line 626
    .local v2, "$i$a$-also-ByteChannelSequentialBase$discard$2":I
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterRead(I)V

    .line 627
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->requestNextView(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 628
    nop

    .line 625
    .end local v1    # "it":I
    .end local v2    # "$i$a$-also-ByteChannelSequentialBase$discard$2":I
    return v0

    .line 862
    .local v0, "it":Ljava/lang/Throwable;
    :cond_1
    const/4 v1, 0x0

    .line 619
    .local v1, "$i$a$-let-ByteChannelSequentialBase$discard$1":I
    throw v0
.end method

.method public discard(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->discard$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public endReadSession()V
    .locals 0

    .line 697
    invoke-direct {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->completeReading()V

    .line 698
    return-void
.end method

.method public endWriteSession(I)V
    .locals 1
    .param p1, "written"    # I

    .line 288
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->writable:Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/BytePacketBuilder;->afterHeadWrite()V

    .line 289
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterWrite(I)V

    .line 290
    return-void
.end method

.method public flush()V
    .locals 0

    .line 93
    invoke-direct {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->flushImpl()Z

    .line 94
    return-void
.end method

.method public getAutoFlush()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->autoFlush:Z

    return v0
.end method

.method public getAvailableForRead()I
    .locals 1

    .line 47
    iget v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->_availableForRead:I

    return v0
.end method

.method public getAvailableForWrite()I
    .locals 2

    .line 50
    iget v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->channelSize:I

    rsub-int v0, v0, 0xff8

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected final getClosed()Z
    .locals 1

    .line 34
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->_closed:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getClosedCause()Ljava/lang/Throwable;
    .locals 1

    .line 64
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->_closed:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/CloseElement;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/ktor/utils/io/CloseElement;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected final getReadable()Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    return-object v0
.end method

.method public getTotalBytesRead()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->_totalBytesRead:J

    return-wide v0
.end method

.method public getTotalBytesWritten()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->_totalBytesWritten:J

    return-wide v0
.end method

.method protected final getWritable()Lio/ktor/utils/io/core/BytePacketBuilder;
    .locals 1

    .line 39
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->writable:Lio/ktor/utils/io/core/BytePacketBuilder;

    return-object v0
.end method

.method public isClosedForRead()Z
    .locals 1

    .line 53
    invoke-direct {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->channelSize:I

    if-nez v0, :cond_0

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

.method public isClosedForWrite()Z
    .locals 1

    .line 56
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosed()Z

    move-result v0

    return v0
.end method

.method public final peekTo-lBXzO7A(Ljava/nio/ByteBuffer;JJJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "JJJJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p10

    instance-of v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$1;

    iget v2, v1, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 810
    iget v4, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$1;->label:I

    packed-switch v4, :pswitch_data_0

    move-object/from16 v16, v1

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v3, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$LongRef;

    .local v3, "bytesCopied":Lkotlin/jvm/internal/Ref$LongRef;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v1

    goto :goto_1

    .end local v3    # "bytesCopied":Lkotlin/jvm/internal/Ref$LongRef;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p0

    .local v4, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    move-wide/from16 v14, p2

    .local v14, "destinationOffset":J
    move-wide/from16 v6, p6

    .local v6, "min":J
    move-wide/from16 v8, p4

    .local v8, "offset":J
    move-wide/from16 v11, p8

    .local v11, "max":J
    move-object/from16 v13, p1

    .line 817
    .local v13, "destination":Ljava/nio/ByteBuffer;
    new-instance v5, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    move-object v10, v5

    .line 820
    .local v10, "bytesCopied":Lkotlin/jvm/internal/Ref$LongRef;
    new-instance v17, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;

    const/16 v16, 0x0

    move-object/from16 v5, v17

    move-object/from16 p1, v10

    .end local v10    # "bytesCopied":Lkotlin/jvm/internal/Ref$LongRef;
    .local p1, "bytesCopied":Lkotlin/jvm/internal/Ref$LongRef;
    invoke-direct/range {v5 .. v16}, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$2;-><init>(JJLkotlin/jvm/internal/Ref$LongRef;JLjava/nio/ByteBuffer;JLkotlin/coroutines/Continuation;)V

    move-object/from16 v5, v17

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .end local p1    # "bytesCopied":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v10    # "bytesCopied":Lkotlin/jvm/internal/Ref$LongRef;
    iput-object v10, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$1;->L$0:Ljava/lang/Object;

    move-object/from16 v16, v1

    .end local v1    # "$result":Ljava/lang/Object;
    .local v16, "$result":Ljava/lang/Object;
    const/4 v1, 0x1

    iput v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$peekTo$1;->label:I

    invoke-virtual {v4, v5, v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readSuspendableSession(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .end local v4    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local v6    # "min":J
    .end local v8    # "offset":J
    .end local v11    # "max":J
    .end local v13    # "destination":Ljava/nio/ByteBuffer;
    .end local v14    # "destinationOffset":J
    if-ne v1, v3, :cond_1

    .line 810
    return-object v3

    .line 820
    :cond_1
    move-object v3, v10

    .line 832
    .end local v10    # "bytesCopied":Lkotlin/jvm/internal/Ref$LongRef;
    .restart local v3    # "bytesCopied":Lkotlin/jvm/internal/Ref$LongRef;
    :goto_1
    iget-wide v4, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final prepareFlushedBytes()V
    .locals 4

    .line 127
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->flushMutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 128
    .local v1, "$i$a$-synchronized-ByteChannelSequentialBase$prepareFlushedBytes$1":I
    :try_start_0
    iget-object v2, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    iget-object v3, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->flushBuffer:Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-static {v2, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->unsafeAppend(Lio/ktor/utils/io/core/ByteReadPacket;Lio/ktor/utils/io/core/BytePacketBuilder;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .end local v1    # "$i$a$-synchronized-ByteChannelSequentialBase$prepareFlushedBytes$1":I
    monitor-exit v0

    .line 130
    return-void

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public readAvailable(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readAvailable$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readAvailable([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readAvailable$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;[BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final readAvailable$ktor_io(Lio/ktor/utils/io/core/Buffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Buffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$2;

    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$2;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$2;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$2;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$2;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$2;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 479
    iget v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$2;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p1, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$2;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/core/Buffer;

    .local p1, "dst":Lio/ktor/utils/io/core/Buffer;
    iget-object v1, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .local v1, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local p1    # "dst":Lio/ktor/utils/io/core/Buffer;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 480
    .local v2, "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .restart local p1    # "dst":Lio/ktor/utils/io/core/Buffer;
    invoke-virtual {v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_6

    .line 481
    invoke-virtual {v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getAvailableForRead()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, -0x1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 483
    :cond_1
    move-object v3, p1

    .local v3, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 867
    .local v4, "$i$f$getWriteRemaining":I
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v5

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    sub-int/2addr v5, v6

    .line 483
    .end local v3    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$getWriteRemaining":I
    if-nez v5, :cond_2

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 485
    :cond_2
    invoke-virtual {v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getAvailableForRead()I

    move-result v3

    if-nez v3, :cond_4

    .line 486
    iput-object v2, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$2;->L$0:Ljava/lang/Object;

    iput-object p1, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$2;->L$1:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$2;->label:I

    invoke-virtual {v2, v3, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->awaitSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_3

    .line 479
    return-object v1

    .line 486
    :cond_3
    move-object v1, v2

    .line 489
    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .restart local v1    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :goto_1
    move-object v2, v1

    .end local v1    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .restart local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    :cond_4
    iget-object v1, v2, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/ByteReadPacket;->canRead()Z

    move-result v1

    if-nez v1, :cond_5

    .line 490
    invoke-virtual {v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->prepareFlushedBytes()V

    .line 493
    :cond_5
    move-object v1, p1

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 868
    .local v3, "$i$f$getWriteRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v4

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    sub-int/2addr v4, v5

    .line 493
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getWriteRemaining":I
    int-to-long v3, v4

    iget-object v1, v2, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/ByteReadPacket;->getRemaining()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v1, v3

    .line 494
    .local v1, "size":I
    iget-object v3, v2, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    check-cast v3, Lio/ktor/utils/io/core/Input;

    invoke-static {v3, p1, v1}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/Buffer;I)V

    .line 495
    invoke-virtual {v2, v1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterRead(I)V

    .line 496
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 480
    .end local v1    # "size":I
    .end local v2    # "this":Lio/ktor/utils/io/ByteChannelSequentialBase;
    .end local p1    # "dst":Lio/ktor/utils/io/core/Buffer;
    :cond_6
    move-object p1, v3

    .line 862
    .local p1, "it":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 480
    .local v1, "$i$a$-let-ByteChannelSequentialBase$readAvailable$3":I
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final readAvailableClosed()I
    .locals 2

    .line 468
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 470
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getAvailableForRead()I

    move-result v0

    if-lez v0, :cond_0

    .line 471
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->prepareFlushedBytes()V

    .line 474
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 862
    .local v0, "it":Ljava/lang/Throwable;
    :cond_1
    const/4 v1, 0x0

    .line 468
    .local v1, "$i$a$-let-ByteChannelSequentialBase$readAvailableClosed$1":I
    throw v0
.end method

.method public readBoolean(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readBoolean$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readByte(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Byte;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readByte$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readDouble(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readDouble$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readFloat(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readFloat$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readFully(Lio/ktor/utils/io/core/internal/ChunkBuffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readFully$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/core/internal/ChunkBuffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readFully([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readFully$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;[BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readInt(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readInt$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readLong(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readLong$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readPacket(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/core/ByteReadPacket;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readPacket$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readRemaining(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/core/ByteReadPacket;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readRemaining$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readSession(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "consumer"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/utils/io/ReadSession;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use read instead."
    .end annotation

    const-string v0, "consumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 687
    nop

    .line 688
    :try_start_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    invoke-direct {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->completeReading()V

    .line 691
    nop

    .line 692
    return-void

    .line 690
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->completeReading()V

    throw v0
.end method

.method public readShort(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Short;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readShort$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readSuspendableSession(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/utils/io/SuspendableReadSession;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use read instead."
    .end annotation

    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readSuspendableSession$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readUTF8Line(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readUTF8Line$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readUTF8LineTo(Ljava/lang/Appendable;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->readUTF8LineTo$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Ljava/lang/Appendable;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public request(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 2
    .param p1, "atLeast"    # I

    .line 632
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 634
    invoke-direct {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->completeReading()V

    .line 636
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->requestNextView(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    return-object v0

    .line 862
    .local v0, "it":Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    .line 632
    .local v1, "$i$a$-let-ByteChannelSequentialBase$request$1":I
    throw v0
.end method

.method protected final setClosed(Z)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    const-string v0, "Setting is not allowed for closed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setClosedCause(Ljava/lang/Throwable;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    .line 66
    const-string v0, "Closed cause shouldn\'t be changed directly"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startReadSession()Lio/ktor/utils/io/SuspendableReadSession;
    .locals 1

    .line 694
    move-object v0, p0

    check-cast v0, Lio/ktor/utils/io/SuspendableReadSession;

    return-object v0
.end method

.method public final transferTo$ktor_io(Lio/ktor/utils/io/ByteChannelSequentialBase;J)J
    .locals 4
    .param p1, "dst"    # Lio/ktor/utils/io/ByteChannelSequentialBase;
    .param p2, "limit"    # J

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/ByteReadPacket;->getRemaining()J

    move-result-wide v0

    .line 765
    .local v0, "size":J
    cmp-long v2, v0, p2

    if-gtz v2, :cond_0

    .line 766
    iget-object v2, p1, Lio/ktor/utils/io/ByteChannelSequentialBase;->writable:Lio/ktor/utils/io/core/BytePacketBuilder;

    iget-object v3, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->readable:Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-virtual {v2, v3}, Lio/ktor/utils/io/core/BytePacketBuilder;->writePacket(Lio/ktor/utils/io/core/ByteReadPacket;)V

    .line 767
    long-to-int v2, v0

    invoke-virtual {p1, v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterWrite(I)V

    .line 768
    long-to-int v2, v0

    invoke-virtual {p0, v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->afterRead(I)V

    .line 769
    move-wide v2, v0

    goto :goto_0

    .line 771
    :cond_0
    const-wide/16 v2, 0x0

    .line 765
    :goto_0
    return-wide v2
.end method

.method public writeAvailable(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->writeAvailable$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeAvailable([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase;->writeAvailable$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;[BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeByte(BLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->writeByte$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;BLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeDouble(DLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->writeDouble$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;DLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeFloat(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->writeFloat$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeFully(Lio/ktor/utils/io/core/Buffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Buffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->writeFully$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/core/Buffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeFully([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase;->writeFully$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;[BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeFully-JT6ljtQ(Ljava/nio/ByteBuffer;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase;->writeFully-JT6ljtQ$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Ljava/nio/ByteBuffer;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeInt(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->writeInt$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeLong(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->writeLong$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writePacket(Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/ByteReadPacket;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->writePacket$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeShort(SLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->writeShort$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;SLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeSuspendSession(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/utils/io/WriterSuspendSession;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use write { } instead."
    .end annotation

    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->writeSuspendSession$suspendImpl(Lio/ktor/utils/io/ByteChannelSequentialBase;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
