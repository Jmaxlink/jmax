.class final Lio/netty/channel/AbstractChannelHandlerContext$Tasks;
.super Ljava/lang/Object;
.source "AbstractChannelHandlerContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/AbstractChannelHandlerContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Tasks"
.end annotation


# instance fields
.field private final invokeChannelReadCompleteTask:Ljava/lang/Runnable;

.field private final invokeChannelWritableStateChangedTask:Ljava/lang/Runnable;

.field private final invokeFlushTask:Ljava/lang/Runnable;

.field private final invokeReadTask:Ljava/lang/Runnable;

.field private final next:Lio/netty/channel/AbstractChannelHandlerContext;


# direct methods
.method constructor <init>(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 1
    .param p1, "next"    # Lio/netty/channel/AbstractChannelHandlerContext;

    .line 1304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1279
    new-instance v0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks$1;

    invoke-direct {v0, p0}, Lio/netty/channel/AbstractChannelHandlerContext$Tasks$1;-><init>(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)V

    iput-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->invokeChannelReadCompleteTask:Ljava/lang/Runnable;

    .line 1285
    new-instance v0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks$2;

    invoke-direct {v0, p0}, Lio/netty/channel/AbstractChannelHandlerContext$Tasks$2;-><init>(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)V

    iput-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->invokeReadTask:Ljava/lang/Runnable;

    .line 1291
    new-instance v0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks$3;

    invoke-direct {v0, p0}, Lio/netty/channel/AbstractChannelHandlerContext$Tasks$3;-><init>(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)V

    iput-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->invokeChannelWritableStateChangedTask:Ljava/lang/Runnable;

    .line 1297
    new-instance v0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks$4;

    invoke-direct {v0, p0}, Lio/netty/channel/AbstractChannelHandlerContext$Tasks$4;-><init>(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)V

    iput-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->invokeFlushTask:Ljava/lang/Runnable;

    .line 1305
    iput-object p1, p0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 1306
    return-void
.end method

.method static synthetic access$1400(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    .line 1277
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->invokeReadTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    .line 1277
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->invokeFlushTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1800(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)Lio/netty/channel/AbstractChannelHandlerContext;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    .line 1277
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    return-object v0
.end method

.method static synthetic access$700(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    .line 1277
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->invokeChannelReadCompleteTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    .line 1277
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->invokeChannelWritableStateChangedTask:Ljava/lang/Runnable;

    return-object v0
.end method
