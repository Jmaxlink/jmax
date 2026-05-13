.class public Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;
.super Lio/netty/handler/codec/http2/DecoratingHttp2FrameWriter;
.source "DecoratingHttp2ConnectionEncoder.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2ConnectionEncoder;
.implements Lio/netty/handler/codec/http2/Http2SettingsReceivedConsumer;


# instance fields
.field private final delegate:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionEncoder;)V
    .locals 1
    .param p1, "delegate"    # Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    .line 30
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/DecoratingHttp2FrameWriter;-><init>(Lio/netty/handler/codec/http2/Http2FrameWriter;)V

    .line 31
    const-string v0, "delegate"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    iput-object v0, p0, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->delegate:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    .line 32
    return-void
.end method


# virtual methods
.method public connection()Lio/netty/handler/codec/http2/Http2Connection;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->delegate:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    return-object v0
.end method

.method public consumeReceivedSettings(Lio/netty/handler/codec/http2/Http2Settings;)V
    .locals 3
    .param p1, "settings"    # Lio/netty/handler/codec/http2/Http2Settings;

    .line 66
    iget-object v0, p0, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->delegate:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    instance-of v0, v0, Lio/netty/handler/codec/http2/Http2SettingsReceivedConsumer;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->delegate:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    check-cast v0, Lio/netty/handler/codec/http2/Http2SettingsReceivedConsumer;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2SettingsReceivedConsumer;->consumeReceivedSettings(Lio/netty/handler/codec/http2/Http2Settings;)V

    .line 72
    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delegate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->delegate:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lio/netty/handler/codec/http2/Http2SettingsReceivedConsumer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flowController()Lio/netty/handler/codec/http2/Http2RemoteFlowController;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->delegate:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->flowController()Lio/netty/handler/codec/http2/Http2RemoteFlowController;

    move-result-object v0

    return-object v0
.end method

.method public frameWriter()Lio/netty/handler/codec/http2/Http2FrameWriter;
    .locals 1

    .line 51
    iget-object v0, p0, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->delegate:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->frameWriter()Lio/netty/handler/codec/http2/Http2FrameWriter;

    move-result-object v0

    return-object v0
.end method

.method public lifecycleManager(Lio/netty/handler/codec/http2/Http2LifecycleManager;)V
    .locals 1
    .param p1, "lifecycleManager"    # Lio/netty/handler/codec/http2/Http2LifecycleManager;

    .line 36
    iget-object v0, p0, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->delegate:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->lifecycleManager(Lio/netty/handler/codec/http2/Http2LifecycleManager;)V

    .line 37
    return-void
.end method

.method public pollSentSettings()Lio/netty/handler/codec/http2/Http2Settings;
    .locals 1

    .line 56
    iget-object v0, p0, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->delegate:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->pollSentSettings()Lio/netty/handler/codec/http2/Http2Settings;

    move-result-object v0

    return-object v0
.end method

.method public remoteSettings(Lio/netty/handler/codec/http2/Http2Settings;)V
    .locals 1
    .param p1, "settings"    # Lio/netty/handler/codec/http2/Http2Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lio/netty/handler/codec/http2/DecoratingHttp2ConnectionEncoder;->delegate:Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->remoteSettings(Lio/netty/handler/codec/http2/Http2Settings;)V

    .line 62
    return-void
.end method
