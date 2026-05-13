.class public Lio/netty/handler/codec/http2/DefaultHttp2SettingsFrame;
.super Ljava/lang/Object;
.source "DefaultHttp2SettingsFrame.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2SettingsFrame;


# instance fields
.field private final settings:Lio/netty/handler/codec/http2/Http2Settings;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Settings;)V
    .locals 1
    .param p1, "settings"    # Lio/netty/handler/codec/http2/Http2Settings;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "settings"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Settings;

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2SettingsFrame;->settings:Lio/netty/handler/codec/http2/Http2Settings;

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 47
    instance-of v0, p1, Lio/netty/handler/codec/http2/Http2SettingsFrame;

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    return v0

    .line 50
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http2/Http2SettingsFrame;

    .line 51
    .local v0, "other":Lio/netty/handler/codec/http2/Http2SettingsFrame;
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2SettingsFrame;->settings:Lio/netty/handler/codec/http2/Http2Settings;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2SettingsFrame;->settings()Lio/netty/handler/codec/http2/Http2Settings;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http2/Http2Settings;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 56
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2SettingsFrame;->settings:Lio/netty/handler/codec/http2/Http2Settings;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Settings;->hashCode()I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 42
    const-string v0, "SETTINGS"

    return-object v0
.end method

.method public settings()Lio/netty/handler/codec/http2/Http2Settings;
    .locals 1

    .line 37
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2SettingsFrame;->settings:Lio/netty/handler/codec/http2/Http2Settings;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(settings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2SettingsFrame;->settings:Lio/netty/handler/codec/http2/Http2Settings;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
