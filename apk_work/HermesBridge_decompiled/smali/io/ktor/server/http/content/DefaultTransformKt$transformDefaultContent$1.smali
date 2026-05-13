.class public final Lio/ktor/server/http/content/DefaultTransformKt$transformDefaultContent$1;
.super Lio/ktor/http/content/OutgoingContent$ReadChannelContent;
.source "DefaultTransform.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/http/content/DefaultTransformKt;->transformDefaultContent(Lio/ktor/server/application/ApplicationCall;Ljava/lang/Object;)Lio/ktor/http/content/OutgoingContent;
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
        "io/ktor/server/http/content/DefaultTransformKt$transformDefaultContent$1",
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

    iput-object p1, p0, Lio/ktor/server/http/content/DefaultTransformKt$transformDefaultContent$1;->$value:Ljava/lang/Object;

    .line 29
    invoke-direct {p0}, Lio/ktor/http/content/OutgoingContent$ReadChannelContent;-><init>()V

    return-void
.end method


# virtual methods
.method public readFrom()Lio/ktor/utils/io/ByteReadChannel;
    .locals 1

    .line 30
    iget-object v0, p0, Lio/ktor/server/http/content/DefaultTransformKt$transformDefaultContent$1;->$value:Ljava/lang/Object;

    check-cast v0, Lio/ktor/utils/io/ByteReadChannel;

    return-object v0
.end method
