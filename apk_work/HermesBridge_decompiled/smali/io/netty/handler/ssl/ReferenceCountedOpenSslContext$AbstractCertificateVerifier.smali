.class abstract Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AbstractCertificateVerifier;
.super Lio/netty/internal/tcnative/CertificateVerifier;
.source "ReferenceCountedOpenSslContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractCertificateVerifier"
.end annotation


# instance fields
.field private final engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/OpenSslEngineMap;)V
    .locals 0
    .param p1, "engineMap"    # Lio/netty/handler/ssl/OpenSslEngineMap;

    .line 777
    invoke-direct {p0}, Lio/netty/internal/tcnative/CertificateVerifier;-><init>()V

    .line 778
    iput-object p1, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AbstractCertificateVerifier;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    .line 779
    return-void
.end method

.method private static translateToError(Ljava/lang/Throwable;)I
    .locals 4
    .param p0, "cause"    # Ljava/lang/Throwable;

    .line 819
    instance-of v0, p0, Ljava/security/cert/CertificateRevokedException;

    if-eqz v0, :cond_0

    .line 820
    sget v0, Lio/netty/internal/tcnative/CertificateVerifier;->X509_V_ERR_CERT_REVOKED:I

    return v0

    .line 826
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 827
    .local v0, "wrapped":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_4

    .line 828
    instance-of v1, v0, Ljava/security/cert/CertPathValidatorException;

    if-eqz v1, :cond_3

    .line 829
    move-object v1, v0

    check-cast v1, Ljava/security/cert/CertPathValidatorException;

    .line 830
    .local v1, "ex":Ljava/security/cert/CertPathValidatorException;
    invoke-virtual {v1}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v2

    .line 831
    .local v2, "reason":Ljava/security/cert/CertPathValidatorException$Reason;
    sget-object v3, Ljava/security/cert/CertPathValidatorException$BasicReason;->EXPIRED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-ne v2, v3, :cond_1

    .line 832
    sget v3, Lio/netty/internal/tcnative/CertificateVerifier;->X509_V_ERR_CERT_HAS_EXPIRED:I

    return v3

    .line 834
    :cond_1
    sget-object v3, Ljava/security/cert/CertPathValidatorException$BasicReason;->NOT_YET_VALID:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-ne v2, v3, :cond_2

    .line 835
    sget v3, Lio/netty/internal/tcnative/CertificateVerifier;->X509_V_ERR_CERT_NOT_YET_VALID:I

    return v3

    .line 837
    :cond_2
    sget-object v3, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-ne v2, v3, :cond_3

    .line 838
    sget v3, Lio/netty/internal/tcnative/CertificateVerifier;->X509_V_ERR_CERT_REVOKED:I

    return v3

    .line 841
    .end local v1    # "ex":Ljava/security/cert/CertPathValidatorException;
    .end local v2    # "reason":Ljava/security/cert/CertPathValidatorException$Reason;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 843
    :cond_4
    sget v1, Lio/netty/internal/tcnative/CertificateVerifier;->X509_V_ERR_UNSPECIFIED:I

    return v1
.end method


# virtual methods
.method public final verify(J[[BLjava/lang/String;)I
    .locals 5
    .param p1, "ssl"    # J
    .param p3, "chain"    # [[B
    .param p4, "auth"    # Ljava/lang/String;

    .line 783
    iget-object v0, p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AbstractCertificateVerifier;->engineMap:Lio/netty/handler/ssl/OpenSslEngineMap;

    invoke-interface {v0, p1, p2}, Lio/netty/handler/ssl/OpenSslEngineMap;->get(J)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;

    move-result-object v0

    .line 784
    .local v0, "engine":Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
    if-nez v0, :cond_0

    .line 786
    sget v1, Lio/netty/internal/tcnative/CertificateVerifier;->X509_V_ERR_UNSPECIFIED:I

    return v1

    .line 788
    :cond_0
    invoke-static {p3}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->certificates([[B)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 790
    .local v1, "peerCerts":[Ljava/security/cert/X509Certificate;
    :try_start_0
    invoke-virtual {p0, v0, v1, p4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AbstractCertificateVerifier;->verify(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;[Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 791
    sget v2, Lio/netty/internal/tcnative/CertificateVerifier;->X509_V_OK:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 792
    :catchall_0
    move-exception v2

    .line 793
    .local v2, "cause":Ljava/lang/Throwable;
    invoke-static {}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    const-string v4, "verification of certificate failed"

    invoke-interface {v3, v4, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 794
    invoke-virtual {v0, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;->initHandshakeException(Ljava/lang/Throwable;)V

    .line 797
    instance-of v3, v2, Lio/netty/handler/ssl/OpenSslCertificateException;

    if-eqz v3, :cond_1

    .line 800
    move-object v3, v2

    check-cast v3, Lio/netty/handler/ssl/OpenSslCertificateException;

    invoke-virtual {v3}, Lio/netty/handler/ssl/OpenSslCertificateException;->errorCode()I

    move-result v3

    return v3

    .line 802
    :cond_1
    instance-of v3, v2, Ljava/security/cert/CertificateExpiredException;

    if-eqz v3, :cond_2

    .line 803
    sget v3, Lio/netty/internal/tcnative/CertificateVerifier;->X509_V_ERR_CERT_HAS_EXPIRED:I

    return v3

    .line 805
    :cond_2
    instance-of v3, v2, Ljava/security/cert/CertificateNotYetValidException;

    if-eqz v3, :cond_3

    .line 806
    sget v3, Lio/netty/internal/tcnative/CertificateVerifier;->X509_V_ERR_CERT_NOT_YET_VALID:I

    return v3

    .line 808
    :cond_3
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v3

    const/4 v4, 0x7

    if-lt v3, v4, :cond_4

    .line 809
    invoke-static {v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext$AbstractCertificateVerifier;->translateToError(Ljava/lang/Throwable;)I

    move-result v3

    return v3

    .line 813
    :cond_4
    sget v3, Lio/netty/internal/tcnative/CertificateVerifier;->X509_V_ERR_UNSPECIFIED:I

    return v3
.end method

.method abstract verify(Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;[Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
