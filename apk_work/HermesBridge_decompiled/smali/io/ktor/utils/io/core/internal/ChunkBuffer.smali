.class public Lio/ktor/utils/io/core/internal/ChunkBuffer;
.super Lio/ktor/utils/io/core/Buffer;
.source "ChunkBuffer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChunkBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChunkBuffer.kt\nio/ktor/utils/io/core/internal/ChunkBuffer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,180:1\n1#2:181\n360#3,4:182\n360#3,4:186\n382#3,4:190\n*S KotlinDebug\n*F\n+ 1 ChunkBuffer.kt\nio/ktor/utils/io/core/internal/ChunkBuffer\n*L\n89#1:182,4\n99#1:186,4\n116#1:190,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "\n    We\'re migrating to the new kotlinx-io library.\n    This declaration is deprecated and will be removed in Ktor 4.0.0\n    If you have any problems with migration, please contact us in \n    https://youtrack.jetbrains.com/issue/KTOR-6030/Migrate-to-new-kotlinx.io-library\n    "
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0014\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\u0008\u0017\u0018\u0000 +2\u00020-:\u0001+B,\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0000\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u000b\u001a\u00020\u0008H\u0000\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0000H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u0004\u0018\u00010\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0000H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u000f\u0010\u0015\u001a\u00020\u0012H\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001d\u0010\u0015\u001a\u00020\u00082\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0004H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0017J\r\u0010\u0018\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0018\u0010\nJ\u000f\u0010\u001a\u001a\u00020\u0008H\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\nJ\u000f\u0010\u001c\u001a\u00020\u0008H\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\nR(\u0010 \u001a\u0004\u0018\u00010\u00002\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00008F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001e\u0010\u0010\"\u0004\u0008\u001f\u0010\u000eR(\u0010\u0003\u001a\u0004\u0018\u00010\u00002\u0008\u0010!\u001a\u0004\u0018\u00010\u00008\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\"\u001a\u0004\u0008#\u0010\u0010R\"\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u00048\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010$\u001a\u0004\u0008%\u0010&R\u0011\u0010*\u001a\u00020\'8F\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006,"
    }
    d2 = {
        "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
        "Lio/ktor/utils/io/bits/Memory;",
        "memory",
        "origin",
        "Lio/ktor/utils/io/pool/ObjectPool;",
        "parentPool",
        "<init>",
        "(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "",
        "acquire$ktor_io",
        "()V",
        "acquire",
        "chunk",
        "appendNext",
        "(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V",
        "cleanNext",
        "()Lio/ktor/utils/io/core/internal/ChunkBuffer;",
        "duplicate",
        "",
        "release$ktor_io",
        "()Z",
        "release",
        "pool",
        "(Lio/ktor/utils/io/pool/ObjectPool;)V",
        "reset",
        "unlink$ktor_io",
        "unlink",
        "unpark$ktor_io",
        "unpark",
        "newValue",
        "getNext",
        "setNext",
        "next",
        "<set-?>",
        "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
        "getOrigin",
        "Lio/ktor/utils/io/pool/ObjectPool;",
        "getParentPool$ktor_io",
        "()Lio/ktor/utils/io/pool/ObjectPool;",
        "",
        "getReferenceCount",
        "()I",
        "referenceCount",
        "Companion",
        "ktor-io",
        "Lio/ktor/utils/io/core/Buffer;"
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
.field public static final Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

.field private static final Empty:Lio/ktor/utils/io/core/internal/ChunkBuffer;

.field private static final EmptyPool:Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NoPool:Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NoPoolManuallyManaged:Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic nextRef$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic refCount$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic nextRef:Ljava/lang/Object;

.field private origin:Lio/ktor/utils/io/core/internal/ChunkBuffer;

.field private final parentPool:Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile synthetic refCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    .line 135
    new-instance v0, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion$EmptyPool$1;

    invoke-direct {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion$EmptyPool$1;-><init>()V

    check-cast v0, Lio/ktor/utils/io/pool/ObjectPool;

    sput-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->EmptyPool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 148
    new-instance v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    sget-object v2, Lio/ktor/utils/io/bits/Memory;->Companion:Lio/ktor/utils/io/bits/Memory$Companion;

    invoke-virtual {v2}, Lio/ktor/utils/io/bits/Memory$Companion;->getEmpty-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Lio/ktor/utils/io/core/internal/ChunkBuffer;->EmptyPool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-direct {v0, v2, v1, v3, v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;-><init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Empty:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 150
    new-instance v0, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion$NoPool$1;

    invoke-direct {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion$NoPool$1;-><init>()V

    check-cast v0, Lio/ktor/utils/io/pool/ObjectPool;

    sput-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->NoPool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 160
    new-instance v0, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion$NoPoolManuallyManaged$1;

    invoke-direct {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion$NoPoolManuallyManaged$1;-><init>()V

    check-cast v0, Lio/ktor/utils/io/pool/ObjectPool;

    sput-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->NoPoolManuallyManaged:Lio/ktor/utils/io/pool/ObjectPool;

    const-class v0, Ljava/lang/Object;

    const-string v1, "nextRef"

    const-class v2, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->nextRef$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "refCount"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->refCount$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;)V
    .locals 3
    .param p1, "memory"    # Ljava/nio/ByteBuffer;
    .param p2, "origin"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p3, "parentPool"    # Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "memory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/ktor/utils/io/core/Buffer;-><init>(Ljava/nio/ByteBuffer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    iput-object p3, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->parentPool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 16
    nop

    .line 17
    const/4 v1, 0x1

    if-eq p2, p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 18
    nop

    .line 20
    iput-object v0, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->nextRef:Ljava/lang/Object;

    .line 21
    iput v1, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->refCount:I

    .line 26
    iput-object p2, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->origin:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 11
    return-void

    .line 181
    :cond_1
    const/4 v0, 0x0

    .line 17
    .local v0, "$i$a$-require-ChunkBuffer$1":I
    nop

    .end local v0    # "$i$a$-require-ChunkBuffer$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A chunk couldn\'t be a view of itself."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/core/internal/ChunkBuffer;-><init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;)V

    return-void
.end method

.method public static final synthetic access$getEmpty$cp()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 1

    .line 9
    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Empty:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    return-object v0
.end method

.method public static final synthetic access$getEmptyPool$cp()Lio/ktor/utils/io/pool/ObjectPool;
    .locals 1

    .line 9
    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->EmptyPool:Lio/ktor/utils/io/pool/ObjectPool;

    return-object v0
.end method

.method public static final synthetic access$getNoPool$cp()Lio/ktor/utils/io/pool/ObjectPool;
    .locals 1

    .line 9
    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->NoPool:Lio/ktor/utils/io/pool/ObjectPool;

    return-object v0
.end method

.method public static final synthetic access$getNoPoolManuallyManaged$cp()Lio/ktor/utils/io/pool/ObjectPool;
    .locals 1

    .line 9
    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->NoPoolManuallyManaged:Lio/ktor/utils/io/pool/ObjectPool;

    return-object v0
.end method

.method private final appendNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 2
    .param p1, "chunk"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 47
    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->nextRef$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lio/ktor/network/selector/InterestSuspensionsMap$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This chunk has already a next chunk."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final acquire$ktor_io()V
    .locals 7

    .line 89
    move-object v0, p0

    .local v0, "$this$update$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v1, 0x0

    .line 182
    .local v1, "$i$f$update":I
    :cond_0
    nop

    .line 183
    iget v2, v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->refCount:I

    .line 184
    .local v2, "cur$iv":I
    move v3, v2

    .local v3, "old":I
    const/4 v4, 0x0

    .line 90
    .local v4, "$i$a$-update-ChunkBuffer$acquire$1":I
    if-lez v3, :cond_1

    .line 91
    add-int/lit8 v3, v3, 0x1

    .line 184
    .end local v3    # "old":I
    .end local v4    # "$i$a$-update-ChunkBuffer$acquire$1":I
    nop

    .line 185
    .local v3, "upd$iv":I
    sget-object v4, Lio/ktor/utils/io/core/internal/ChunkBuffer;->refCount$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    .end local v0    # "$this$update$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v1    # "$i$f$update":I
    .end local v2    # "cur$iv":I
    .end local v3    # "upd$iv":I
    return-void

    .line 90
    .restart local v0    # "$this$update$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v1    # "$i$f$update":I
    .restart local v2    # "cur$iv":I
    .local v3, "old":I
    .restart local v4    # "$i$a$-update-ChunkBuffer$acquire$1":I
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Unable to acquire chunk: it is already released."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public final cleanNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 2

    .line 53
    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->nextRef$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/ktor/utils/io/core/Buffer;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->duplicate()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    return-object v0
.end method

.method public duplicate()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 6

    .line 56
    iget-object v0, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->origin:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    check-cast v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .local v0, "newOrigin":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v1, 0x0

    .line 57
    .local v1, "$i$a$-let-ChunkBuffer$duplicate$1":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->acquire$ktor_io()V

    .line 58
    new-instance v2, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->parentPool:Lio/ktor/utils/io/pool/ObjectPool;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v0, v4, v5}, Lio/ktor/utils/io/core/internal/ChunkBuffer;-><init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v2

    .local v3, "copy":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v4, 0x0

    .line 59
    .local v4, "$i$a$-also-ChunkBuffer$duplicate$1$1":I
    move-object v5, v3

    check-cast v5, Lio/ktor/utils/io/core/Buffer;

    invoke-virtual {p0, v5}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->duplicateTo(Lio/ktor/utils/io/core/Buffer;)V

    .line 60
    nop

    .line 58
    .end local v3    # "copy":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v4    # "$i$a$-also-ChunkBuffer$duplicate$1$1":I
    nop

    .line 56
    .end local v0    # "newOrigin":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v1    # "$i$a$-let-ChunkBuffer$duplicate$1":I
    nop

    .line 61
    return-object v2
.end method

.method public final getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 1

    .line 35
    iget-object v0, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->nextRef:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    return-object v0
.end method

.method public final getOrigin()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 1

    .line 26
    iget-object v0, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->origin:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    return-object v0
.end method

.method public final getParentPool$ktor_io()Lio/ktor/utils/io/pool/ObjectPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->parentPool:Lio/ktor/utils/io/pool/ObjectPool;

    return-object v0
.end method

.method public final getReferenceCount()I
    .locals 1

    .line 44
    iget v0, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->refCount:I

    return v0
.end method

.method public release(Lio/ktor/utils/io/pool/ObjectPool;)V
    .locals 2
    .param p1, "pool"    # Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release$ktor_io()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->origin:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 66
    .local v0, "origin":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->unlink$ktor_io()V

    .line 68
    invoke-virtual {v0, p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    goto :goto_0

    .line 70
    :cond_0
    iget-object v1, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->parentPool:Lio/ktor/utils/io/pool/ObjectPool;

    if-nez v1, :cond_1

    move-object v1, p1

    .line 71
    .local v1, "poolToUse":Lio/ktor/utils/io/pool/ObjectPool;
    :cond_1
    invoke-interface {v1, p0}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 74
    .end local v0    # "origin":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v1    # "poolToUse":Lio/ktor/utils/io/pool/ObjectPool;
    :cond_2
    :goto_0
    return-void
.end method

.method public final release$ktor_io()Z
    .locals 7

    .line 116
    move-object v0, p0

    .local v0, "$this$updateAndGet$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v1, 0x0

    .line 190
    .local v1, "$i$f$updateAndGet":I
    :cond_0
    nop

    .line 191
    iget v2, v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->refCount:I

    .line 192
    .local v2, "cur$iv":I
    move v3, v2

    .local v3, "old":I
    const/4 v4, 0x0

    .line 117
    .local v4, "$i$a$-updateAndGet-ChunkBuffer$release$1":I
    if-lez v3, :cond_2

    .line 118
    add-int/lit8 v3, v3, -0x1

    .line 192
    .end local v3    # "old":I
    .end local v4    # "$i$a$-updateAndGet-ChunkBuffer$release$1":I
    nop

    .line 193
    .local v3, "upd$iv":I
    sget-object v4, Lio/ktor/utils/io/core/internal/ChunkBuffer;->refCount$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v0    # "$this$updateAndGet$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v1    # "$i$f$updateAndGet":I
    .end local v2    # "cur$iv":I
    .end local v3    # "upd$iv":I
    if-nez v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    .line 117
    .restart local v0    # "$this$updateAndGet$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v1    # "$i$f$updateAndGet":I
    .restart local v2    # "cur$iv":I
    .local v3, "old":I
    .restart local v4    # "$i$a$-updateAndGet-ChunkBuffer$release$1":I
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Unable to release: it is already released."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public final reset()V
    .locals 2

    .line 123
    iget-object v0, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->origin:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 125
    invoke-super {p0}, Lio/ktor/utils/io/core/Buffer;->reset()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->nextRef:Ljava/lang/Object;

    .line 127
    return-void

    .line 181
    :cond_1
    const/4 v0, 0x0

    .line 123
    .local v0, "$i$a$-require-ChunkBuffer$reset$1":I
    nop

    .end local v0    # "$i$a$-require-ChunkBuffer$reset$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to reset buffer with origin"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 0
    .param p1, "newValue"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 37
    if-nez p1, :cond_0

    .line 38
    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->cleanNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    goto :goto_0

    .line 40
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->appendNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 42
    :goto_0
    return-void
.end method

.method public final unlink$ktor_io()V
    .locals 3

    .line 77
    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->refCount$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->cleanNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->origin:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 83
    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to unlink: buffer is in use."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final unpark$ktor_io()V
    .locals 7

    .line 99
    move-object v0, p0

    .local v0, "$this$update$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v1, 0x0

    .line 186
    .local v1, "$i$f$update":I
    :cond_0
    nop

    .line 187
    iget v2, v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->refCount:I

    .line 188
    .local v2, "cur$iv":I
    move v3, v2

    .local v3, "old":I
    const/4 v4, 0x0

    .line 100
    .local v4, "$i$a$-update-ChunkBuffer$unpark$1":I
    if-ltz v3, :cond_2

    .line 103
    if-gtz v3, :cond_1

    .line 107
    nop

    .line 188
    .end local v3    # "old":I
    .end local v4    # "$i$a$-update-ChunkBuffer$unpark$1":I
    const/4 v3, 0x1

    .line 189
    .local v3, "upd$iv":I
    sget-object v4, Lio/ktor/utils/io/core/internal/ChunkBuffer;->refCount$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    .end local v0    # "$this$update$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v1    # "$i$f$update":I
    .end local v2    # "cur$iv":I
    .end local v3    # "upd$iv":I
    return-void

    .line 104
    .restart local v0    # "$this$update$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v1    # "$i$f$update":I
    .restart local v2    # "cur$iv":I
    .local v3, "old":I
    .restart local v4    # "$i$a$-update-ChunkBuffer$unpark$1":I
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "This instance is already in use but somehow appeared in the pool."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 101
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "This instance is already disposed and couldn\'t be borrowed."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
