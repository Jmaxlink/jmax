.class public final Lio/netty/handler/ssl/OpenSslContextOption;
.super Lio/netty/handler/ssl/SslContextOption;
.source "OpenSslContextOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/handler/ssl/SslContextOption<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final ASYNC_PRIVATE_KEY_METHOD:Lio/netty/handler/ssl/OpenSslContextOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/ssl/OpenSslContextOption<",
            "Lio/netty/handler/ssl/OpenSslAsyncPrivateKeyMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final CERTIFICATE_COMPRESSION_ALGORITHMS:Lio/netty/handler/ssl/OpenSslContextOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/ssl/OpenSslContextOption<",
            "Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_CERTIFICATE_LIST_BYTES:Lio/netty/handler/ssl/OpenSslContextOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/ssl/OpenSslContextOption<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_METHOD:Lio/netty/handler/ssl/OpenSslContextOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/ssl/OpenSslContextOption<",
            "Lio/netty/handler/ssl/OpenSslPrivateKeyMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final TLS_FALSE_START:Lio/netty/handler/ssl/OpenSslContextOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/ssl/OpenSslContextOption<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final USE_TASKS:Lio/netty/handler/ssl/OpenSslContextOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/ssl/OpenSslContextOption<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lio/netty/handler/ssl/OpenSslContextOption;

    const-string v1, "USE_TASKS"

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/OpenSslContextOption;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/netty/handler/ssl/OpenSslContextOption;->USE_TASKS:Lio/netty/handler/ssl/OpenSslContextOption;

    .line 41
    new-instance v0, Lio/netty/handler/ssl/OpenSslContextOption;

    const-string v1, "TLS_FALSE_START"

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/OpenSslContextOption;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/netty/handler/ssl/OpenSslContextOption;->TLS_FALSE_START:Lio/netty/handler/ssl/OpenSslContextOption;

    .line 50
    new-instance v0, Lio/netty/handler/ssl/OpenSslContextOption;

    const-string v1, "PRIVATE_KEY_METHOD"

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/OpenSslContextOption;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/netty/handler/ssl/OpenSslContextOption;->PRIVATE_KEY_METHOD:Lio/netty/handler/ssl/OpenSslContextOption;

    .line 59
    new-instance v0, Lio/netty/handler/ssl/OpenSslContextOption;

    const-string v1, "ASYNC_PRIVATE_KEY_METHOD"

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/OpenSslContextOption;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/netty/handler/ssl/OpenSslContextOption;->ASYNC_PRIVATE_KEY_METHOD:Lio/netty/handler/ssl/OpenSslContextOption;

    .line 69
    new-instance v0, Lio/netty/handler/ssl/OpenSslContextOption;

    const-string v1, "CERTIFICATE_COMPRESSION_ALGORITHMS"

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/OpenSslContextOption;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/netty/handler/ssl/OpenSslContextOption;->CERTIFICATE_COMPRESSION_ALGORITHMS:Lio/netty/handler/ssl/OpenSslContextOption;

    .line 75
    new-instance v0, Lio/netty/handler/ssl/OpenSslContextOption;

    const-string v1, "MAX_CERTIFICATE_LIST_BYTES"

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/OpenSslContextOption;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/netty/handler/ssl/OpenSslContextOption;->MAX_CERTIFICATE_LIST_BYTES:Lio/netty/handler/ssl/OpenSslContextOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 26
    .local p0, "this":Lio/netty/handler/ssl/OpenSslContextOption;, "Lio/netty/handler/ssl/OpenSslContextOption<TT;>;"
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslContextOption;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method
