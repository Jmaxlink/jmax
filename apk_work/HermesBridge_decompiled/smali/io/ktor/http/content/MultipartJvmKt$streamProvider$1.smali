.class final Lio/ktor/http/content/MultipartJvmKt$streamProvider$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MultipartJvm.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/http/content/MultipartJvmKt;->getStreamProvider(Lio/ktor/http/content/PartData$FileItem;)Lkotlin/jvm/functions/Function0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ljava/io/InputStream;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_streamProvider:Lio/ktor/http/content/PartData$FileItem;


# direct methods
.method constructor <init>(Lio/ktor/http/content/PartData$FileItem;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/http/content/MultipartJvmKt$streamProvider$1;->$this_streamProvider:Lio/ktor/http/content/PartData$FileItem;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/io/InputStream;
    .locals 1

    .line 13
    iget-object v0, p0, Lio/ktor/http/content/MultipartJvmKt$streamProvider$1;->$this_streamProvider:Lio/ktor/http/content/PartData$FileItem;

    invoke-virtual {v0}, Lio/ktor/http/content/PartData$FileItem;->getProvider()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/core/Input;

    invoke-static {v0}, Lio/ktor/util/InputJvmKt;->asStream(Lio/ktor/utils/io/core/Input;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lio/ktor/http/content/MultipartJvmKt$streamProvider$1;->invoke()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
