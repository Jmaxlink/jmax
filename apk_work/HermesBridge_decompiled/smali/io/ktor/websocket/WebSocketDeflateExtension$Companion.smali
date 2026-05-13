.class public final Lio/ktor/websocket/WebSocketDeflateExtension$Companion;
.super Ljava/lang/Object;
.source "WebSocketDeflateExtension.kt"

# interfaces
.implements Lio/ktor/websocket/WebSocketExtensionFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/websocket/WebSocketDeflateExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/ktor/websocket/WebSocketExtensionFactory<",
        "Lio/ktor/websocket/WebSocketDeflateExtension$Config;",
        "Lio/ktor/websocket/WebSocketDeflateExtension;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004J!\u0010\u0011\u001a\u00020\u00032\u0017\u0010\u0012\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00140\u0013\u00a2\u0006\u0002\u0008\u0015H\u0016R\u001a\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\nX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\nX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0014\u0010\u000f\u001a\u00020\nX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\u00a8\u0006\u0016"
    }
    d2 = {
        "Lio/ktor/websocket/WebSocketDeflateExtension$Companion;",
        "Lio/ktor/websocket/WebSocketExtensionFactory;",
        "Lio/ktor/websocket/WebSocketDeflateExtension$Config;",
        "Lio/ktor/websocket/WebSocketDeflateExtension;",
        "()V",
        "key",
        "Lio/ktor/util/AttributeKey;",
        "getKey",
        "()Lio/ktor/util/AttributeKey;",
        "rsv1",
        "",
        "getRsv1",
        "()Z",
        "rsv2",
        "getRsv2",
        "rsv3",
        "getRsv3",
        "install",
        "config",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/ktor/websocket/WebSocketDeflateExtension$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()Lio/ktor/util/AttributeKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/websocket/WebSocketDeflateExtension;",
            ">;"
        }
    .end annotation

    .line 229
    invoke-static {}, Lio/ktor/websocket/WebSocketDeflateExtension;->access$getKey$cp()Lio/ktor/util/AttributeKey;

    move-result-object v0

    return-object v0
.end method

.method public getRsv1()Z
    .locals 1

    .line 230
    invoke-static {}, Lio/ktor/websocket/WebSocketDeflateExtension;->access$getRsv1$cp()Z

    move-result v0

    return v0
.end method

.method public getRsv2()Z
    .locals 1

    .line 231
    invoke-static {}, Lio/ktor/websocket/WebSocketDeflateExtension;->access$getRsv2$cp()Z

    move-result v0

    return v0
.end method

.method public getRsv3()Z
    .locals 1

    .line 232
    invoke-static {}, Lio/ktor/websocket/WebSocketDeflateExtension;->access$getRsv3$cp()Z

    move-result v0

    return v0
.end method

.method public install(Lkotlin/jvm/functions/Function1;)Lio/ktor/websocket/WebSocketDeflateExtension;
    .locals 2
    .param p1, "config"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/websocket/WebSocketDeflateExtension$Config;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/websocket/WebSocketDeflateExtension;"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    new-instance v0, Lio/ktor/websocket/WebSocketDeflateExtension;

    new-instance v1, Lio/ktor/websocket/WebSocketDeflateExtension$Config;

    invoke-direct {v1}, Lio/ktor/websocket/WebSocketDeflateExtension$Config;-><init>()V

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Lio/ktor/websocket/WebSocketDeflateExtension;-><init>(Lio/ktor/websocket/WebSocketDeflateExtension$Config;)V

    return-object v0
.end method

.method public bridge synthetic install(Lkotlin/jvm/functions/Function1;)Lio/ktor/websocket/WebSocketExtension;
    .locals 1
    .param p1, "config"    # Lkotlin/jvm/functions/Function1;

    .line 228
    invoke-virtual {p0, p1}, Lio/ktor/websocket/WebSocketDeflateExtension$Companion;->install(Lkotlin/jvm/functions/Function1;)Lio/ktor/websocket/WebSocketDeflateExtension;

    move-result-object v0

    check-cast v0, Lio/ktor/websocket/WebSocketExtension;

    return-object v0
.end method
