.class public final Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;
.super Ljava/lang/Object;
.source "ContentNegotiationUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;",
        "",
        "contentType",
        "Lio/ktor/http/ContentType;",
        "converter",
        "Lio/ktor/serialization/ContentConverter;",
        "(Lio/ktor/http/ContentType;Lio/ktor/serialization/ContentConverter;)V",
        "getContentType",
        "()Lio/ktor/http/ContentType;",
        "getConverter",
        "()Lio/ktor/serialization/ContentConverter;",
        "ktor-server-content-negotiation"
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
.field private final contentType:Lio/ktor/http/ContentType;

.field private final converter:Lio/ktor/serialization/ContentConverter;


# direct methods
.method public constructor <init>(Lio/ktor/http/ContentType;Lio/ktor/serialization/ContentConverter;)V
    .locals 1
    .param p1, "contentType"    # Lio/ktor/http/ContentType;
    .param p2, "converter"    # Lio/ktor/serialization/ContentConverter;

    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "converter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;->contentType:Lio/ktor/http/ContentType;

    iput-object p2, p0, Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;->converter:Lio/ktor/serialization/ContentConverter;

    return-void
.end method


# virtual methods
.method public final getContentType()Lio/ktor/http/ContentType;
    .locals 1

    .line 18
    iget-object v0, p0, Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;->contentType:Lio/ktor/http/ContentType;

    return-object v0
.end method

.method public final getConverter()Lio/ktor/serialization/ContentConverter;
    .locals 1

    .line 18
    iget-object v0, p0, Lio/ktor/server/plugins/contentnegotiation/ConverterRegistration;->converter:Lio/ktor/serialization/ContentConverter;

    return-object v0
.end method
