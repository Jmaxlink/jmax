.class final Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$CompressionAlgorithm;
.super Ljava/lang/Object;
.source "ReferenceCountedOpenSslContext.java"

# interfaces
.implements Lio/netty/internal/tcnative/CertificateCompressionAlgo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompressionAlgorithm"
.end annotation


# instance fields
.field private final compressionAlgorithm:Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;

.field private final engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/OpenSslEngineMap;Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;)V
    .locals 0
    .param p1, "engineMap"    # Lio/netty/handler/ssl/OpenSslEngineMap;
    .param p2, "compressionAlgorithm"    # Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;

    .line 1124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1125
    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$CompressionAlgorithm;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    .line 1126
    iput-object p2, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$CompressionAlgorithm;->compressionAlgorithm:Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;

    .line 1127
    return-void
.end method


# virtual methods
.method public algorithmId()I
    .locals 1

    .line 1143
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$CompressionAlgorithm;->compressionAlgorithm:Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;

    invoke-interface {v0}, Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;->algorithmId()I

    move-result v0

    return v0
.end method

.method public compress(J[B)[B
    .locals 2
    .param p1, "ssl"    # J
    .param p3, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1131
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$CompressionAlgorithm;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    invoke-static {v0, p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->access$400(Lio/netty/handler/ssl/OpenSslEngineMap;J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    move-result-object v0

    .line 1132
    .local v0, "engine":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$CompressionAlgorithm;->compressionAlgorithm:Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;

    invoke-interface {v1, v0, p3}, Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;->compress(Ljavax/net/ssl/SSLEngine;[B)[B

    move-result-object v1

    return-object v1
.end method

.method public decompress(JI[B)[B
    .locals 2
    .param p1, "ssl"    # J
    .param p3, "len"    # I
    .param p4, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1137
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$CompressionAlgorithm;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    invoke-static {v0, p1, p2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->access$400(Lio/netty/handler/ssl/OpenSslEngineMap;J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    move-result-object v0

    .line 1138
    .local v0, "engine":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    iget-object v1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$CompressionAlgorithm;->compressionAlgorithm:Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;

    invoke-interface {v1, v0, p3, p4}, Lio/netty/handler/ssl/OpenSslCertificateCompressionAlgorithm;->decompress(Ljavax/net/ssl/SSLEngine;I[B)[B

    move-result-object v1

    return-object v1
.end method
