.class final Lio/ktor/http/cio/CIOMultipartDataBase$withoutTempFile$lazyInput$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CIOMultipartDataBase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/http/cio/CIOMultipartDataBase;->withoutTempFile(Lio/ktor/http/cio/MultipartEvent$MultipartPart;Lio/ktor/http/cio/HttpHeadersMap;Ljava/nio/ByteBuffer;)Lio/ktor/http/content/PartData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lio/ktor/http/cio/MultipartInput;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lio/ktor/http/cio/MultipartInput;",
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
.field final synthetic $buffer:Ljava/nio/ByteBuffer;

.field final synthetic $closed:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $part:Lio/ktor/http/cio/MultipartEvent$MultipartPart;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/nio/ByteBuffer;Lio/ktor/http/cio/MultipartEvent$MultipartPart;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/http/cio/CIOMultipartDataBase$withoutTempFile$lazyInput$1;->$closed:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lio/ktor/http/cio/CIOMultipartDataBase$withoutTempFile$lazyInput$1;->$buffer:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Lio/ktor/http/cio/CIOMultipartDataBase$withoutTempFile$lazyInput$1;->$part:Lio/ktor/http/cio/MultipartEvent$MultipartPart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/ktor/http/cio/MultipartInput;
    .locals 3

    .line 117
    iget-object v0, p0, Lio/ktor/http/cio/CIOMultipartDataBase$withoutTempFile$lazyInput$1;->$closed:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lio/ktor/http/cio/MultipartInput;

    iget-object v1, p0, Lio/ktor/http/cio/CIOMultipartDataBase$withoutTempFile$lazyInput$1;->$buffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lio/ktor/http/cio/CIOMultipartDataBase$withoutTempFile$lazyInput$1;->$part:Lio/ktor/http/cio/MultipartEvent$MultipartPart;

    invoke-virtual {v2}, Lio/ktor/http/cio/MultipartEvent$MultipartPart;->getBody()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/ktor/http/cio/MultipartInput;-><init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;)V

    return-object v0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already disposed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lio/ktor/http/cio/CIOMultipartDataBase$withoutTempFile$lazyInput$1;->invoke()Lio/ktor/http/cio/MultipartInput;

    move-result-object v0

    return-object v0
.end method
