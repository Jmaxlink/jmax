.class final Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$4;
.super Lkotlin/jvm/internal/Lambda;
.source "CIOMultipartDataBase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/http/cio/CIOMultipartDataBase;->withTempFile(Lio/ktor/http/cio/MultipartEvent$MultipartPart;Lio/ktor/http/cio/HttpHeadersMap;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $closed:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $lazyInput:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lio/ktor/utils/io/core/Input;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $part:Lio/ktor/http/cio/MultipartEvent$MultipartPart;

.field final synthetic $tmp:Ljava/io/File;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/Lazy;Lio/ktor/http/cio/MultipartEvent$MultipartPart;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/Lazy<",
            "+",
            "Lio/ktor/utils/io/core/Input;",
            ">;",
            "Lio/ktor/http/cio/MultipartEvent$MultipartPart;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$4;->$closed:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$4;->$lazyInput:Lkotlin/Lazy;

    iput-object p3, p0, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$4;->$part:Lio/ktor/http/cio/MultipartEvent$MultipartPart;

    iput-object p4, p0, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$4;->$tmp:Ljava/io/File;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 169
    invoke-virtual {p0}, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$4;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 170
    iget-object v0, p0, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$4;->$closed:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 171
    iget-object v0, p0, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$4;->$lazyInput:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$4;->$lazyInput:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/core/Input;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Input;->close()V

    .line 172
    :cond_0
    iget-object v0, p0, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$4;->$part:Lio/ktor/http/cio/MultipartEvent$MultipartPart;

    invoke-virtual {v0}, Lio/ktor/http/cio/MultipartEvent$MultipartPart;->release()V

    .line 173
    iget-object v0, p0, Lio/ktor/http/cio/CIOMultipartDataBase$withTempFile$4;->$tmp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 174
    return-void
.end method
