.class public Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;
.super Ljava/lang/Object;
.source "DefaultHttp2LocalFlowController.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2LocalFlowController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$WindowUpdateVisitor;,
        Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;,
        Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;,
        Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$AutoRefillState;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DEFAULT_WINDOW_UPDATE_RATIO:F = 0.5f

.field private static final REDUCED_FLOW_STATE:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;


# instance fields
.field private final connection:Lio/netty/handler/codec/http2/Http2Connection;

.field private ctx:Lio/netty/channel/ChannelHandlerContext;

.field private frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

.field private initialWindowSize:I

.field private final stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

.field private windowUpdateRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    nop

    .line 493
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$2;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$2;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->REDUCED_FLOW_STATE:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;)V
    .locals 2
    .param p1, "connection"    # Lio/netty/handler/codec/http2/Http2Connection;

    .line 59
    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;-><init>(Lio/netty/handler/codec/http2/Http2Connection;FZ)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;FZ)V
    .locals 3
    .param p1, "connection"    # Lio/netty/handler/codec/http2/Http2Connection;
    .param p2, "windowUpdateRatio"    # F
    .param p3, "autoRefillConnectionWindow"    # Z

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const v0, 0xffff

    iput v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->initialWindowSize:I

    .line 78
    const-string v0, "connection"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Connection;

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    .line 79
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->windowUpdateRatio(F)V

    .line 82
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->newKey()Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    .line 83
    if-eqz p3, :cond_0

    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$AutoRefillState;

    .line 84
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->connectionStream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v1

    iget v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->initialWindowSize:I

    invoke-direct {v0, p0, v1, v2}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$AutoRefillState;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;Lio/netty/handler/codec/http2/Http2Stream;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;

    .line 85
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->connectionStream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v1

    iget v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->initialWindowSize:I

    invoke-direct {v0, p0, v1, v2}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$DefaultState;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;Lio/netty/handler/codec/http2/Http2Stream;I)V

    :goto_0
    nop

    .line 86
    .local v0, "connectionState":Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->connectionStream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {v1, v2, v0}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v1, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$1;

    invoke-direct {v1, p0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$1;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)V

    invoke-interface {p1, v1}, Lio/netty/handler/codec/http2/Http2Connection;->addListener(Lio/netty/handler/codec/http2/Http2Connection$Listener;)V

    .line 128
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    .line 44
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    return-object v0
.end method

.method static synthetic access$100()Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;
    .locals 1

    .line 44
    sget-object v0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->REDUCED_FLOW_STATE:Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    return-object v0
.end method

.method static synthetic access$200(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    .line 44
    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->initialWindowSize:I

    return v0
.end method

.method static synthetic access$300(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;
    .param p1, "x1"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 44
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)Lio/netty/channel/ChannelHandlerContext;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    .line 44
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method static synthetic access$500(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;I)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;
    .param p1, "x1"    # Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->consumeAllBytes(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)F
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    .line 44
    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->windowUpdateRatio:F

    return v0
.end method

.method static synthetic access$700(Lio/netty/handler/codec/http2/Http2Stream;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 44
    invoke-static {p0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->isClosed(Lio/netty/handler/codec/http2/Http2Stream;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;)Lio/netty/handler/codec/http2/Http2FrameWriter;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    .line 44
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    return-object v0
.end method

.method private static checkValidRatio(F)V
    .locals 4
    .param p0, "ratio"    # F

    .line 207
    float-to-double v0, p0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-lez v0, :cond_0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-gez v0, :cond_0

    .line 210
    return-void

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ratio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private connectionState()Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;
    .locals 2

    .line 287
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Connection;->connectionStream()Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    return-object v0
.end method

.method private consumeAllBytes(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;I)Z
    .locals 2
    .param p1, "state"    # Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;
    .param p2, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 198
    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->connectionState()Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->consumeBytes(I)Z

    move-result v0

    invoke-interface {p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->consumeBytes(I)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static isClosed(Lio/netty/handler/codec/http2/Http2Stream;)Z
    .locals 2
    .param p0, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 295
    invoke-interface {p0}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http2/Http2Stream$State;->CLOSED:Lio/netty/handler/codec/http2/Http2Stream$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;
    .locals 1
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 291
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    invoke-interface {p1, v0}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    return-object v0
.end method


# virtual methods
.method public channelHandlerContext(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 138
    const-string v0, "ctx"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelHandlerContext;

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 139
    return-void
.end method

.method public consumeBytes(Lio/netty/handler/codec/http2/Http2Stream;I)Z
    .locals 2
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;
    .param p2, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    const-string v0, "numBytes"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 181
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 182
    return v0

    .line 187
    :cond_0
    if-eqz p1, :cond_2

    invoke-static {p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->isClosed(Lio/netty/handler/codec/http2/Http2Stream;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 188
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->consumeAllBytes(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;I)Z

    move-result v0

    return v0

    .line 189
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Returning bytes for the connection window is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_2
    return v0

    .line 179
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public frameWriter(Lio/netty/handler/codec/http2/Http2FrameWriter;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;
    .locals 1
    .param p1, "frameWriter"    # Lio/netty/handler/codec/http2/Http2FrameWriter;

    .line 132
    const-string v0, "frameWriter"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2FrameWriter;

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->frameWriter:Lio/netty/handler/codec/http2/Http2FrameWriter;

    .line 133
    return-object p0
.end method

.method public bridge synthetic frameWriter(Lio/netty/handler/codec/http2/Http2FrameWriter;)Lio/netty/handler/codec/http2/Http2LocalFlowController;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->frameWriter(Lio/netty/handler/codec/http2/Http2FrameWriter;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;

    move-result-object p1

    return-object p1
.end method

.method public incrementWindowSize(Lio/netty/handler/codec/http2/Http2Stream;I)V
    .locals 1
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;
    .param p2, "delta"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object v0

    .line 173
    .local v0, "state":Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;
    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->incrementInitialStreamWindow(I)V

    .line 174
    invoke-interface {v0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->writeWindowUpdateIfNeeded()Z

    .line 175
    return-void

    .line 169
    .end local v0    # "state":Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public initialWindowSize()I
    .locals 1

    .line 154
    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->initialWindowSize:I

    return v0
.end method

.method public initialWindowSize(Lio/netty/handler/codec/http2/Http2Stream;)I
    .locals 1
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 164
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->initialWindowSize()I

    move-result v0

    return v0
.end method

.method public initialWindowSize(I)V
    .locals 3
    .param p1, "newWindowSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 144
    :cond_1
    :goto_0
    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->initialWindowSize:I

    sub-int v0, p1, v0

    .line 145
    .local v0, "delta":I
    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->initialWindowSize:I

    .line 147
    new-instance v1, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$WindowUpdateVisitor;

    invoke-direct {v1, p0, v0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$WindowUpdateVisitor;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;I)V

    .line 148
    .local v1, "visitor":Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$WindowUpdateVisitor;
    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v2, v1}, Lio/netty/handler/codec/http2/Http2Connection;->forEachActiveStream(Lio/netty/handler/codec/http2/Http2StreamVisitor;)Lio/netty/handler/codec/http2/Http2Stream;

    .line 149
    invoke-virtual {v1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$WindowUpdateVisitor;->throwIfError()V

    .line 150
    return-void
.end method

.method public receiveFlowControlledFrame(Lio/netty/handler/codec/http2/Http2Stream;Lio/netty/buffer/ByteBuf;IZ)V
    .locals 3
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;
    .param p2, "data"    # Lio/netty/buffer/ByteBuf;
    .param p3, "padding"    # I
    .param p4, "endOfStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    add-int/2addr v0, p3

    .line 272
    .local v0, "dataLength":I
    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->connectionState()Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object v1

    .line 273
    .local v1, "connectionState":Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;
    invoke-interface {v1, v0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->receiveFlowControlledFrame(I)V

    .line 275
    if-eqz p1, :cond_0

    invoke-static {p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->isClosed(Lio/netty/handler/codec/http2/Http2Stream;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 277
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object v2

    .line 278
    .local v2, "state":Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;
    invoke-interface {v2, p4}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->endOfStream(Z)V

    .line 279
    invoke-interface {v2, v0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->receiveFlowControlledFrame(I)V

    .end local v2    # "state":Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;
    goto :goto_0

    .line 280
    :cond_0
    if-lez v0, :cond_1

    .line 282
    invoke-interface {v1, v0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->consumeBytes(I)Z

    goto :goto_1

    .line 280
    :cond_1
    :goto_0
    nop

    .line 284
    :goto_1
    return-void

    .line 268
    .end local v0    # "dataLength":I
    .end local v1    # "connectionState":Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public unconsumedBytes(Lio/netty/handler/codec/http2/Http2Stream;)I
    .locals 1
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 203
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->unconsumedBytes()I

    move-result v0

    return v0
.end method

.method public windowSize(Lio/netty/handler/codec/http2/Http2Stream;)I
    .locals 1
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 159
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->windowSize()I

    move-result v0

    return v0
.end method

.method public windowUpdateRatio()F
    .locals 1

    .line 231
    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->windowUpdateRatio:F

    return v0
.end method

.method public windowUpdateRatio(Lio/netty/handler/codec/http2/Http2Stream;)F
    .locals 1
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 262
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->windowUpdateRatio()F

    move-result v0

    return v0
.end method

.method public windowUpdateRatio(F)V
    .locals 1
    .param p1, "ratio"    # F

    .line 220
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 221
    :cond_1
    :goto_0
    invoke-static {p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->checkValidRatio(F)V

    .line 222
    iput p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->windowUpdateRatio:F

    .line 223
    return-void
.end method

.method public windowUpdateRatio(Lio/netty/handler/codec/http2/Http2Stream;F)V
    .locals 1
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;
    .param p2, "ratio"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-static {p2}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->checkValidRatio(F)V

    .line 250
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;

    move-result-object v0

    .line 251
    .local v0, "state":Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;
    invoke-interface {v0, p2}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->windowUpdateRatio(F)V

    .line 252
    invoke-interface {v0}, Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;->writeWindowUpdateIfNeeded()Z

    .line 253
    return-void

    .line 248
    .end local v0    # "state":Lio/netty/handler/codec/http2/DefaultHttp2LocalFlowController$FlowState;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
