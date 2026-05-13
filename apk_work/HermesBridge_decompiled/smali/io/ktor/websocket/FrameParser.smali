.class public final Lio/ktor/websocket/FrameParser;
.super Ljava/lang/Object;
.source "FrameParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/websocket/FrameParser$State;,
        Lio/ktor/websocket/FrameParser$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFrameParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrameParser.kt\nio/ktor/websocket/FrameParser\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,155:1\n1#2:156\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0010\t\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001/B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010&\u001a\u00020\'J\u000e\u0010(\u001a\u00020\'2\u0006\u0010)\u001a\u00020*J\u0010\u0010+\u001a\u00020\u00042\u0006\u0010)\u001a\u00020*H\u0002J\u0010\u0010,\u001a\u00020\u00042\u0006\u0010)\u001a\u00020*H\u0002J\u0010\u0010-\u001a\u00020\u00042\u0006\u0010)\u001a\u00020*H\u0002J\u0010\u0010.\u001a\u00020\u00042\u0006\u0010)\u001a\u00020*H\u0002R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u001e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0006R\u0011\u0010\n\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0010@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006R$\u0010\u0017\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u000f@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u0010\u001a\u001a\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u001b\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0006R\u001e\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0006R\u001e\u0010 \u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0006R\u001c\u0010\"\u001a\u0010\u0012\u000c\u0012\n %*\u0004\u0018\u00010$0$0#X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lio/ktor/websocket/FrameParser;",
        "",
        "()V",
        "bodyReady",
        "",
        "getBodyReady",
        "()Z",
        "<set-?>",
        "fin",
        "getFin",
        "frameType",
        "Lio/ktor/websocket/FrameType;",
        "getFrameType",
        "()Lio/ktor/websocket/FrameType;",
        "lastOpcode",
        "",
        "",
        "length",
        "getLength",
        "()J",
        "lengthLength",
        "mask",
        "getMask",
        "maskKey",
        "getMaskKey",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "opcode",
        "rsv1",
        "getRsv1",
        "rsv2",
        "getRsv2",
        "rsv3",
        "getRsv3",
        "state",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Lio/ktor/websocket/FrameParser$State;",
        "kotlin.jvm.PlatformType",
        "bodyComplete",
        "",
        "frame",
        "bb",
        "Ljava/nio/ByteBuffer;",
        "handleStep",
        "parseHeader1",
        "parseLength",
        "parseMaskKey",
        "State",
        "ktor-websockets"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private fin:Z

.field private lastOpcode:I

.field private length:J

.field private lengthLength:I

.field private mask:Z

.field private maskKey:Ljava/lang/Integer;

.field private opcode:I

.field private rsv1:Z

.field private rsv2:Z

.field private rsv3:Z

.field private final state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/ktor/websocket/FrameParser$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/ktor/websocket/FrameParser$State;->HEADER0:Lio/ktor/websocket/FrameParser$State;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/ktor/websocket/FrameParser;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    return-void
.end method

.method private final handleStep(Ljava/nio/ByteBuffer;)Z
    .locals 2
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .line 72
    iget-object v0, p0, Lio/ktor/websocket/FrameParser;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lio/ktor/websocket/FrameParser$State;

    sget-object v1, Lio/ktor/websocket/FrameParser$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lio/ktor/websocket/FrameParser$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 76
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :pswitch_1
    invoke-direct {p0, p1}, Lio/ktor/websocket/FrameParser;->parseMaskKey(Ljava/nio/ByteBuffer;)Z

    move-result v0

    goto :goto_0

    .line 74
    :pswitch_2
    invoke-direct {p0, p1}, Lio/ktor/websocket/FrameParser;->parseLength(Ljava/nio/ByteBuffer;)Z

    move-result v0

    goto :goto_0

    .line 73
    :pswitch_3
    invoke-direct {p0, p1}, Lio/ktor/websocket/FrameParser;->parseHeader1(Ljava/nio/ByteBuffer;)Z

    move-result v0

    .line 77
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final parseHeader1(Ljava/nio/ByteBuffer;)Z
    .locals 7
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 81
    return v1

    .line 84
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 85
    .local v0, "flagsAndOpcode":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 87
    .local v3, "maskAndLength1":I
    and-int/lit16 v4, v0, 0x80

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    iput-boolean v4, p0, Lio/ktor/websocket/FrameParser;->fin:Z

    .line 88
    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    iput-boolean v4, p0, Lio/ktor/websocket/FrameParser;->rsv1:Z

    .line 89
    and-int/lit8 v4, v0, 0x20

    if-eqz v4, :cond_3

    move v4, v5

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    iput-boolean v4, p0, Lio/ktor/websocket/FrameParser;->rsv2:Z

    .line 90
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    move v4, v5

    goto :goto_3

    :cond_4
    move v4, v1

    :goto_3
    iput-boolean v4, p0, Lio/ktor/websocket/FrameParser;->rsv3:Z

    .line 92
    and-int/lit8 v4, v0, 0xf

    iput v4, p0, Lio/ktor/websocket/FrameParser;->opcode:I

    .line 93
    iget v4, p0, Lio/ktor/websocket/FrameParser;->opcode:I

    if-nez v4, :cond_6

    iget v4, p0, Lio/ktor/websocket/FrameParser;->lastOpcode:I

    if-eqz v4, :cond_5

    goto :goto_4

    .line 94
    :cond_5
    new-instance v1, Lio/ktor/websocket/ProtocolViolationException;

    const-string v2, "Can\'t continue finished frames"

    invoke-direct {v1, v2}, Lio/ktor/websocket/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_6
    :goto_4
    iget v4, p0, Lio/ktor/websocket/FrameParser;->opcode:I

    if-nez v4, :cond_7

    .line 96
    iget v4, p0, Lio/ktor/websocket/FrameParser;->lastOpcode:I

    iput v4, p0, Lio/ktor/websocket/FrameParser;->opcode:I

    goto :goto_5

    .line 97
    :cond_7
    iget v4, p0, Lio/ktor/websocket/FrameParser;->lastOpcode:I

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lio/ktor/websocket/FrameParser;->getFrameType()Lio/ktor/websocket/FrameType;

    move-result-object v4

    invoke-virtual {v4}, Lio/ktor/websocket/FrameType;->getControlFrame()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_5

    .line 99
    :cond_8
    new-instance v1, Lio/ktor/websocket/ProtocolViolationException;

    const-string v2, "Can\'t start new data frame before finishing previous one"

    invoke-direct {v1, v2}, Lio/ktor/websocket/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_9
    :goto_5
    invoke-virtual {p0}, Lio/ktor/websocket/FrameParser;->getFrameType()Lio/ktor/websocket/FrameType;

    move-result-object v4

    invoke-virtual {v4}, Lio/ktor/websocket/FrameType;->getControlFrame()Z

    move-result v4

    if-nez v4, :cond_b

    .line 102
    iget-boolean v4, p0, Lio/ktor/websocket/FrameParser;->fin:Z

    if-eqz v4, :cond_a

    move v4, v1

    goto :goto_6

    :cond_a
    iget v4, p0, Lio/ktor/websocket/FrameParser;->opcode:I

    :goto_6
    iput v4, p0, Lio/ktor/websocket/FrameParser;->lastOpcode:I

    goto :goto_7

    .line 103
    :cond_b
    iget-boolean v4, p0, Lio/ktor/websocket/FrameParser;->fin:Z

    if-eqz v4, :cond_12

    .line 106
    :goto_7
    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_c

    move v4, v5

    goto :goto_8

    :cond_c
    move v4, v1

    :goto_8
    iput-boolean v4, p0, Lio/ktor/websocket/FrameParser;->mask:Z

    .line 107
    and-int/lit8 v4, v3, 0x7f

    .line 109
    .local v4, "length1":I
    invoke-virtual {p0}, Lio/ktor/websocket/FrameParser;->getFrameType()Lio/ktor/websocket/FrameType;

    move-result-object v6

    invoke-virtual {v6}, Lio/ktor/websocket/FrameType;->getControlFrame()Z

    move-result v6

    if-eqz v6, :cond_e

    const/16 v6, 0x7d

    if-gt v4, v6, :cond_d

    goto :goto_9

    .line 110
    :cond_d
    new-instance v1, Lio/ktor/websocket/ProtocolViolationException;

    const-string v2, "control frames can\'t be larger than 125 bytes"

    invoke-direct {v1, v2}, Lio/ktor/websocket/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_e
    :goto_9
    packed-switch v4, :pswitch_data_0

    .line 116
    goto :goto_a

    .line 115
    :pswitch_0
    const/16 v1, 0x8

    goto :goto_a

    .line 114
    :pswitch_1
    move v1, v2

    .line 113
    :goto_a
    iput v1, p0, Lio/ktor/websocket/FrameParser;->lengthLength:I

    .line 119
    iget v1, p0, Lio/ktor/websocket/FrameParser;->lengthLength:I

    if-nez v1, :cond_f

    int-to-long v1, v4

    goto :goto_b

    :cond_f
    const-wide/16 v1, 0x0

    :goto_b
    iput-wide v1, p0, Lio/ktor/websocket/FrameParser;->length:J

    .line 120
    nop

    .line 121
    iget v1, p0, Lio/ktor/websocket/FrameParser;->lengthLength:I

    if-lez v1, :cond_10

    iget-object v1, p0, Lio/ktor/websocket/FrameParser;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/ktor/websocket/FrameParser$State;->LENGTH:Lio/ktor/websocket/FrameParser$State;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_c

    .line 122
    :cond_10
    iget-boolean v1, p0, Lio/ktor/websocket/FrameParser;->mask:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lio/ktor/websocket/FrameParser;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/ktor/websocket/FrameParser$State;->MASK_KEY:Lio/ktor/websocket/FrameParser$State;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_c

    .line 123
    :cond_11
    iget-object v1, p0, Lio/ktor/websocket/FrameParser;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/ktor/websocket/FrameParser$State;->BODY:Lio/ktor/websocket/FrameParser$State;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 126
    :goto_c
    return v5

    .line 104
    .end local v4    # "length1":I
    :cond_12
    new-instance v1, Lio/ktor/websocket/ProtocolViolationException;

    const-string v2, "control frames can\'t be fragmented"

    invoke-direct {v1, v2}, Lio/ktor/websocket/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x7e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final parseLength(Ljava/nio/ByteBuffer;)Z
    .locals 4
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .line 130
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lio/ktor/websocket/FrameParser;->lengthLength:I

    if-ge v0, v1, :cond_0

    .line 131
    const/4 v0, 0x0

    return v0

    .line 134
    :cond_0
    iget v0, p0, Lio/ktor/websocket/FrameParser;->lengthLength:I

    sparse-switch v0, :sswitch_data_0

    .line 137
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 136
    :sswitch_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    goto :goto_0

    .line 135
    :sswitch_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    .line 134
    :goto_0
    iput-wide v0, p0, Lio/ktor/websocket/FrameParser;->length:J

    .line 140
    iget-boolean v0, p0, Lio/ktor/websocket/FrameParser;->mask:Z

    if-eqz v0, :cond_1

    sget-object v0, Lio/ktor/websocket/FrameParser$State;->MASK_KEY:Lio/ktor/websocket/FrameParser$State;

    goto :goto_1

    :cond_1
    sget-object v0, Lio/ktor/websocket/FrameParser$State;->BODY:Lio/ktor/websocket/FrameParser$State;

    .line 141
    .local v0, "mask":Lio/ktor/websocket/FrameParser$State;
    :goto_1
    iget-object v1, p0, Lio/ktor/websocket/FrameParser;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 142
    const/4 v1, 0x1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private final parseMaskKey(Ljava/nio/ByteBuffer;)Z
    .locals 2
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .line 146
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 147
    const/4 v0, 0x0

    return v0

    .line 150
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/websocket/FrameParser;->maskKey:Ljava/lang/Integer;

    .line 151
    iget-object v0, p0, Lio/ktor/websocket/FrameParser;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/ktor/websocket/FrameParser$State;->BODY:Lio/ktor/websocket/FrameParser$State;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 152
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final bodyComplete()V
    .locals 3

    .line 54
    iget-object v0, p0, Lio/ktor/websocket/FrameParser;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/ktor/websocket/FrameParser$State;->BODY:Lio/ktor/websocket/FrameParser$State;

    sget-object v2, Lio/ktor/websocket/FrameParser$State;->HEADER0:Lio/ktor/websocket/FrameParser$State;

    invoke-static {v0, v1, v2}, Lio/ktor/network/selector/ActorSelectorManager$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lio/ktor/websocket/FrameParser;->opcode:I

    .line 60
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lio/ktor/websocket/FrameParser;->length:J

    .line 61
    iput v0, p0, Lio/ktor/websocket/FrameParser;->lengthLength:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lio/ktor/websocket/FrameParser;->maskKey:Ljava/lang/Integer;

    .line 63
    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It should be state BODY but it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/ktor/websocket/FrameParser;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final frame(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    const-string v0, "bb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/websocket/FrameParser;->handleStep(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    return-void

    .line 156
    :cond_1
    const/4 v0, 0x0

    .line 66
    .local v0, "$i$a$-require-FrameParser$frame$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer order should be BIG_ENDIAN but it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-FrameParser$frame$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getBodyReady()Z
    .locals 2

    .line 51
    iget-object v0, p0, Lio/ktor/websocket/FrameParser;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/ktor/websocket/FrameParser$State;->BODY:Lio/ktor/websocket/FrameParser$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getFin()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lio/ktor/websocket/FrameParser;->fin:Z

    return v0
.end method

.method public final getFrameType()Lio/ktor/websocket/FrameType;
    .locals 3

    .line 41
    sget-object v0, Lio/ktor/websocket/FrameType;->Companion:Lio/ktor/websocket/FrameType$Companion;

    iget v1, p0, Lio/ktor/websocket/FrameParser;->opcode:I

    invoke-virtual {v0, v1}, Lio/ktor/websocket/FrameType$Companion;->get(I)Lio/ktor/websocket/FrameType;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported opcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/ktor/websocket/FrameParser;->opcode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getLength()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lio/ktor/websocket/FrameParser;->length:J

    return-wide v0
.end method

.method public final getMask()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lio/ktor/websocket/FrameParser;->mask:Z

    return v0
.end method

.method public final getMaskKey()Ljava/lang/Integer;
    .locals 1

    .line 37
    iget-object v0, p0, Lio/ktor/websocket/FrameParser;->maskKey:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRsv1()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lio/ktor/websocket/FrameParser;->rsv1:Z

    return v0
.end method

.method public final getRsv2()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lio/ktor/websocket/FrameParser;->rsv2:Z

    return v0
.end method

.method public final getRsv3()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lio/ktor/websocket/FrameParser;->rsv3:Z

    return v0
.end method
