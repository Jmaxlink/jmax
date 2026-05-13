.class public final Lio/ktor/server/http/content/DefaultTransformJvmKt$platformTransformDefaultContent$1;
.super Lio/ktor/http/content/OutgoingContent$ReadChannelContent;
.source "DefaultTransformJvm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/http/content/DefaultTransformJvmKt;->platformTransformDefaultContent(Lio/ktor/server/application/ApplicationCall;Ljava/lang/Object;)Lio/ktor/http/content/OutgoingContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "io/ktor/server/http/content/DefaultTransformJvmKt$platformTransformDefaultContent$1",
        "Lio/ktor/http/content/OutgoingContent$ReadChannelContent;",
        "readFrom",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "ktor-server-core"
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
.field final synthetic $value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "$value"    # Ljava/lang/Object;

    iput-object p1, p0, Lio/ktor/server/http/content/DefaultTransformJvmKt$platformTransformDefaultContent$1;->$value:Ljava/lang/Object;

    .line 26
    invoke-direct {p0}, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;-><init>()V

    return-void
.end method


# virtual methods
.method public readFrom()Lio/ktor/utils/io/ByteReadChannel;
    .locals 3

    .line 27
    iget-object v0, p0, Lio/ktor/server/http/content/DefaultTransformJvmKt$platformTransformDefaultContent$1;->$value:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, v1, v2, v1}, Lio/ktor/utils/io/jvm/javaio/ReadingKt;->toByteReadChannelWithArrayPool$default(Ljava/io/InputStream;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/pool/ObjectPool;ILjava/lang/Object;)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v0

    return-object v0
.end method
