.class public final Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;
.super Ljava/lang/Object;
.source "OpenSslCertificateCompressionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlgorithmConfig"
.end annotation


# instance fields
.field private final algorithm:Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;

.field private final mode:Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;


# direct methods
.method private constructor <init>(Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;)V
    .locals 1
    .param p1, "algorithm"    # Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;
    .param p2, "mode"    # Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string v0, "algorithm"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;

    iput-object v0, p0, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;->algorithm:Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;

    .line 96
    const-string v0, "mode"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;

    iput-object v0, p0, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;->mode:Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;
    .param p2, "x1"    # Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;
    .param p3, "x2"    # Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$1;

    .line 90
    invoke-direct {p0, p1, p2}, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;-><init>(Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;)V

    return-void
.end method


# virtual methods
.method public algorithm()Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;
    .locals 1

    .line 114
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;->algorithm:Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;

    return-object v0
.end method

.method public mode()Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;
    .locals 1

    .line 105
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmConfig;->mode:Lio/netty/handler/ssl/OpenSslCertificateCompressionConfig$AlgorithmMode;

    return-object v0
.end method
