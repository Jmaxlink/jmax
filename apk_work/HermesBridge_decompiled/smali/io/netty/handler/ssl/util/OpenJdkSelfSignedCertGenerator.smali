.class final Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;
.super Ljava/lang/Object;
.source "OpenJdkSelfSignedCertGenerator.java"


# static fields
.field private static final CERT_IMPL_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Lsun/security/x509/X509CertImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final CERT_IMPL_GET_METHOD:Ljava/lang/reflect/Method;

.field private static final CERT_IMPL_SIGN_METHOD:Ljava/lang/reflect/Method;

.field private static final CERT_INFO_SET_METHOD:Ljava/lang/reflect/Method;

.field private static final ISSUER_NAME_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 52
    nop

    .line 53
    const-class v0, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, "certInfoSetMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 64
    .local v2, "issuerNameConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x0

    .line 65
    .local v3, "certImplConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lsun/security/x509/X509CertImpl;>;"
    const/4 v4, 0x0

    .line 66
    .local v4, "certImplGetMethod":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    .line 68
    .local v5, "certImplSignMethod":Ljava/lang/reflect/Method;
    :try_start_0
    new-instance v6, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator$1;

    invoke-direct {v6}, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator$1;-><init>()V

    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v6

    .line 78
    .local v6, "maybeCertInfoSetMethod":Ljava/lang/Object;
    instance-of v7, v6, Ljava/lang/reflect/Method;

    if-eqz v7, :cond_4

    .line 79
    move-object v7, v6

    check-cast v7, Ljava/lang/reflect/Method;

    move-object v1, v7

    .line 84
    new-instance v7, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator$2;

    invoke-direct {v7}, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator$2;-><init>()V

    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v7

    .line 96
    .local v7, "maybeIssuerNameConstructor":Ljava/lang/Object;
    instance-of v8, v7, Ljava/lang/reflect/Constructor;

    if-eqz v8, :cond_3

    .line 97
    move-object v8, v7

    check-cast v8, Ljava/lang/reflect/Constructor;

    move-object v2, v8

    .line 102
    new-instance v8, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator$3;

    invoke-direct {v8}, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator$3;-><init>()V

    invoke-static {v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v8

    .line 112
    .local v8, "maybeCertImplConstructor":Ljava/lang/Object;
    instance-of v9, v8, Ljava/lang/reflect/Constructor;

    if-eqz v9, :cond_2

    .line 114
    move-object v9, v8

    check-cast v9, Ljava/lang/reflect/Constructor;

    .line 115
    .local v9, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lsun/security/x509/X509CertImpl;>;"
    move-object v3, v9

    .line 116
    .end local v9    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lsun/security/x509/X509CertImpl;>;"
    nop

    .line 120
    new-instance v9, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator$4;

    invoke-direct {v9}, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator$4;-><init>()V

    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v9

    .line 130
    .local v9, "maybeCertImplGetMethod":Ljava/lang/Object;
    instance-of v10, v9, Ljava/lang/reflect/Method;

    if-eqz v10, :cond_1

    .line 131
    move-object v10, v9

    check-cast v10, Ljava/lang/reflect/Method;

    move-object v4, v10

    .line 136
    new-instance v10, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator$5;

    invoke-direct {v10}, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator$5;-><init>()V

    invoke-static {v10}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v10

    .line 146
    .local v10, "maybeCertImplSignMethod":Ljava/lang/Object;
    instance-of v11, v10, Ljava/lang/reflect/Method;

    if-eqz v11, :cond_0

    .line 147
    move-object v11, v10

    check-cast v11, Ljava/lang/reflect/Method;

    move-object v5, v11

    .line 153
    .end local v6    # "maybeCertInfoSetMethod":Ljava/lang/Object;
    .end local v7    # "maybeIssuerNameConstructor":Ljava/lang/Object;
    .end local v8    # "maybeCertImplConstructor":Ljava/lang/Object;
    .end local v9    # "maybeCertImplGetMethod":Ljava/lang/Object;
    .end local v10    # "maybeCertImplSignMethod":Ljava/lang/Object;
    goto :goto_0

    .line 149
    .restart local v6    # "maybeCertInfoSetMethod":Ljava/lang/Object;
    .restart local v7    # "maybeIssuerNameConstructor":Ljava/lang/Object;
    .restart local v8    # "maybeCertImplConstructor":Ljava/lang/Object;
    .restart local v9    # "maybeCertImplGetMethod":Ljava/lang/Object;
    .restart local v10    # "maybeCertImplSignMethod":Ljava/lang/Object;
    :cond_0
    move-object v11, v10

    check-cast v11, Ljava/lang/Throwable;

    .end local v1    # "certInfoSetMethod":Ljava/lang/reflect/Method;
    .end local v2    # "issuerNameConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "certImplConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lsun/security/x509/X509CertImpl;>;"
    .end local v4    # "certImplGetMethod":Ljava/lang/reflect/Method;
    .end local v5    # "certImplSignMethod":Ljava/lang/reflect/Method;
    throw v11

    .line 133
    .end local v10    # "maybeCertImplSignMethod":Ljava/lang/Object;
    .restart local v1    # "certInfoSetMethod":Ljava/lang/reflect/Method;
    .restart local v2    # "issuerNameConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v3    # "certImplConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lsun/security/x509/X509CertImpl;>;"
    .restart local v4    # "certImplGetMethod":Ljava/lang/reflect/Method;
    .restart local v5    # "certImplSignMethod":Ljava/lang/reflect/Method;
    :cond_1
    move-object v10, v9

    check-cast v10, Ljava/lang/Throwable;

    .end local v1    # "certInfoSetMethod":Ljava/lang/reflect/Method;
    .end local v2    # "issuerNameConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "certImplConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lsun/security/x509/X509CertImpl;>;"
    .end local v4    # "certImplGetMethod":Ljava/lang/reflect/Method;
    .end local v5    # "certImplSignMethod":Ljava/lang/reflect/Method;
    throw v10

    .line 117
    .end local v9    # "maybeCertImplGetMethod":Ljava/lang/Object;
    .restart local v1    # "certInfoSetMethod":Ljava/lang/reflect/Method;
    .restart local v2    # "issuerNameConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v3    # "certImplConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lsun/security/x509/X509CertImpl;>;"
    .restart local v4    # "certImplGetMethod":Ljava/lang/reflect/Method;
    .restart local v5    # "certImplSignMethod":Ljava/lang/reflect/Method;
    :cond_2
    move-object v9, v8

    check-cast v9, Ljava/lang/Throwable;

    .end local v1    # "certInfoSetMethod":Ljava/lang/reflect/Method;
    .end local v2    # "issuerNameConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "certImplConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lsun/security/x509/X509CertImpl;>;"
    .end local v4    # "certImplGetMethod":Ljava/lang/reflect/Method;
    .end local v5    # "certImplSignMethod":Ljava/lang/reflect/Method;
    throw v9

    .line 99
    .end local v8    # "maybeCertImplConstructor":Ljava/lang/Object;
    .restart local v1    # "certInfoSetMethod":Ljava/lang/reflect/Method;
    .restart local v2    # "issuerNameConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v3    # "certImplConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lsun/security/x509/X509CertImpl;>;"
    .restart local v4    # "certImplGetMethod":Ljava/lang/reflect/Method;
    .restart local v5    # "certImplSignMethod":Ljava/lang/reflect/Method;
    :cond_3
    move-object v8, v7

    check-cast v8, Ljava/lang/Throwable;

    .end local v1    # "certInfoSetMethod":Ljava/lang/reflect/Method;
    .end local v2    # "issuerNameConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "certImplConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lsun/security/x509/X509CertImpl;>;"
    .end local v4    # "certImplGetMethod":Ljava/lang/reflect/Method;
    .end local v5    # "certImplSignMethod":Ljava/lang/reflect/Method;
    throw v8

    .line 81
    .end local v7    # "maybeIssuerNameConstructor":Ljava/lang/Object;
    .restart local v1    # "certInfoSetMethod":Ljava/lang/reflect/Method;
    .restart local v2    # "issuerNameConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v3    # "certImplConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lsun/security/x509/X509CertImpl;>;"
    .restart local v4    # "certImplGetMethod":Ljava/lang/reflect/Method;
    .restart local v5    # "certImplSignMethod":Ljava/lang/reflect/Method;
    :cond_4
    move-object v7, v6

    check-cast v7, Ljava/lang/Throwable;

    .end local v1    # "certInfoSetMethod":Ljava/lang/reflect/Method;
    .end local v2    # "issuerNameConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "certImplConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lsun/security/x509/X509CertImpl;>;"
    .end local v4    # "certImplGetMethod":Ljava/lang/reflect/Method;
    .end local v5    # "certImplSignMethod":Ljava/lang/reflect/Method;
    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .end local v6    # "maybeCertInfoSetMethod":Ljava/lang/Object;
    .restart local v1    # "certInfoSetMethod":Ljava/lang/reflect/Method;
    .restart local v2    # "issuerNameConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v3    # "certImplConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lsun/security/x509/X509CertImpl;>;"
    .restart local v4    # "certImplGetMethod":Ljava/lang/reflect/Method;
    .restart local v5    # "certImplSignMethod":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v6

    .line 152
    .local v6, "cause":Ljava/lang/Throwable;
    sget-object v7, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " not supported"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v6}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .end local v6    # "cause":Ljava/lang/Throwable;
    :goto_0
    sput-object v1, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->CERT_INFO_SET_METHOD:Ljava/lang/reflect/Method;

    .line 155
    sput-object v2, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->ISSUER_NAME_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    .line 156
    sput-object v3, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->CERT_IMPL_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    .line 157
    sput-object v4, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->CERT_IMPL_GET_METHOD:Ljava/lang/reflect/Method;

    .line 158
    sput-object v5, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->CERT_IMPL_SIGN_METHOD:Ljava/lang/reflect/Method;

    .line 159
    .end local v1    # "certInfoSetMethod":Ljava/lang/reflect/Method;
    .end local v2    # "issuerNameConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "certImplConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lsun/security/x509/X509CertImpl;>;"
    .end local v4    # "certImplGetMethod":Ljava/lang/reflect/Method;
    .end local v5    # "certImplSignMethod":Ljava/lang/reflect/Method;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static generate(Ljava/lang/String;Ljava/security/KeyPair;Ljava/security/SecureRandom;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)[Ljava/lang/String;
    .locals 18
    .param p0, "fqdn"    # Ljava/lang/String;
    .param p1, "keypair"    # Ljava/security/KeyPair;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .param p3, "notBefore"    # Ljava/util/Date;
    .param p4, "notAfter"    # Ljava/util/Date;
    .param p5, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 164
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    const-string v3, "issuer"

    const-string v4, "subject"

    sget-object v0, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->CERT_INFO_SET_METHOD:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    sget-object v0, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->ISSUER_NAME_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_4

    sget-object v0, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->CERT_IMPL_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_4

    sget-object v0, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->CERT_IMPL_GET_METHOD:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    sget-object v0, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->CERT_IMPL_SIGN_METHOD:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    .line 169
    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    .line 172
    .local v5, "key":Ljava/security/PrivateKey;
    new-instance v0, Lsun/security/x509/X509CertInfo;

    invoke-direct {v0}, Lsun/security/x509/X509CertInfo;-><init>()V

    move-object v6, v0

    .line 173
    .local v6, "info":Lsun/security/x509/X509CertInfo;
    new-instance v0, Lsun/security/x509/X500Name;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CN="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 175
    .local v7, "owner":Lsun/security/x509/X500Name;
    sget-object v0, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->CERT_INFO_SET_METHOD:Ljava/lang/reflect/Method;

    new-instance v8, Lsun/security/x509/CertificateVersion;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Lsun/security/x509/CertificateVersion;-><init>(I)V

    const-string v10, "version"

    filled-new-array {v10, v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->CERT_INFO_SET_METHOD:Ljava/lang/reflect/Method;

    new-instance v8, Lsun/security/x509/CertificateSerialNumber;

    new-instance v10, Ljava/math/BigInteger;

    const/16 v11, 0x40

    move-object/from16 v12, p2

    invoke-direct {v10, v11, v12}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-direct {v8, v10}, Lsun/security/x509/CertificateSerialNumber;-><init>(Ljava/math/BigInteger;)V

    const-string v10, "serialNumber"

    filled-new-array {v10, v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const/4 v8, 0x1

    const/4 v10, 0x0

    :try_start_0
    sget-object v0, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->CERT_INFO_SET_METHOD:Ljava/lang/reflect/Method;

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v4, v11, v10

    new-instance v13, Lsun/security/x509/CertificateSubjectName;

    invoke-direct {v13, v7}, Lsun/security/x509/CertificateSubjectName;-><init>(Lsun/security/x509/X500Name;)V

    aput-object v13, v11, v8

    invoke-virtual {v0, v6, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    instance-of v11, v11, Ljava/security/cert/CertificateException;

    if-eqz v11, :cond_3

    .line 182
    sget-object v11, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->CERT_INFO_SET_METHOD:Ljava/lang/reflect/Method;

    filled-new-array {v4, v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v11, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    :try_start_1
    sget-object v0, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->CERT_INFO_SET_METHOD:Ljava/lang/reflect/Method;

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v3, v4, v10

    sget-object v11, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->ISSUER_NAME_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v4, v8

    invoke-virtual {v0, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    goto :goto_1

    .line 189
    :catch_1
    move-exception v0

    .line 190
    .restart local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/security/cert/CertificateException;

    if-eqz v4, :cond_2

    .line 191
    sget-object v4, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->CERT_INFO_SET_METHOD:Ljava/lang/reflect/Method;

    filled-new-array {v3, v7}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :goto_1
    sget-object v0, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->CERT_INFO_SET_METHOD:Ljava/lang/reflect/Method;

    new-instance v3, Lsun/security/x509/CertificateValidity;

    move-object/from16 v4, p3

    move-object/from16 v11, p4

    invoke-direct {v3, v4, v11}, Lsun/security/x509/CertificateValidity;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    const-string v13, "validity"

    filled-new-array {v13, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->CERT_INFO_SET_METHOD:Ljava/lang/reflect/Method;

    new-instance v3, Lsun/security/x509/CertificateX509Key;

    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v13

    invoke-direct {v3, v13}, Lsun/security/x509/CertificateX509Key;-><init>(Ljava/security/PublicKey;)V

    const-string v13, "key"

    filled-new-array {v13, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->CERT_INFO_SET_METHOD:Ljava/lang/reflect/Method;

    new-instance v3, Lsun/security/x509/CertificateAlgorithmId;

    .line 200
    const-string v13, "1.2.840.113549.1.1.11"

    invoke-static {v13}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    move-result-object v13

    invoke-direct {v3, v13}, Lsun/security/x509/CertificateAlgorithmId;-><init>(Lsun/security/x509/AlgorithmId;)V

    const-string v13, "algorithmID"

    filled-new-array {v13, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 198
    invoke-virtual {v0, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->CERT_IMPL_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/X509CertImpl;

    .line 204
    .local v0, "cert":Lsun/security/x509/X509CertImpl;
    sget-object v3, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->CERT_IMPL_SIGN_METHOD:Ljava/lang/reflect/Method;

    new-array v13, v9, [Ljava/lang/Object;

    aput-object v5, v13, v10

    const-string v14, "EC"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    const-string v16, "SHA256withECDSA"

    const-string v17, "SHA256withRSA"

    if-eqz v15, :cond_0

    move-object/from16 v15, v16

    goto :goto_2

    :cond_0
    move-object/from16 v15, v17

    :goto_2
    aput-object v15, v13, v8

    invoke-virtual {v3, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v3, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->CERT_INFO_SET_METHOD:Ljava/lang/reflect/Method;

    sget-object v13, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->CERT_IMPL_GET_METHOD:Ljava/lang/reflect/Method;

    const-string v15, "x509.algorithm"

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    .line 208
    invoke-virtual {v13, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const-string v15, "algorithmID.algorithm"

    filled-new-array {v15, v13}, [Ljava/lang/Object;

    move-result-object v13

    .line 207
    invoke-virtual {v3, v6, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v3, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->CERT_IMPL_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lsun/security/x509/X509CertImpl;

    .line 210
    sget-object v3, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->CERT_IMPL_SIGN_METHOD:Ljava/lang/reflect/Method;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v10

    .line 211
    invoke-virtual {v2, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_3

    :cond_1
    move-object/from16 v16, v17

    :goto_3
    aput-object v16, v9, v8

    .line 210
    invoke-virtual {v3, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v0, v3}, Lsun/security/x509/X509CertImpl;->verify(Ljava/security/PublicKey;)V

    .line 214
    invoke-static {v1, v5, v0}, Lio/netty/handler/ssl/util/SelfSignedCertificate;->newSelfSignedCertificate(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 193
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    :cond_2
    move-object/from16 v4, p3

    move-object/from16 v11, p4

    throw v0

    .line 184
    :cond_3
    move-object/from16 v4, p3

    move-object/from16 v11, p4

    throw v0

    .line 164
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v5    # "key":Ljava/security/PrivateKey;
    .end local v6    # "info":Lsun/security/x509/X509CertInfo;
    .end local v7    # "owner":Lsun/security/x509/X500Name;
    :cond_4
    move-object/from16 v12, p2

    move-object/from16 v4, p3

    move-object/from16 v11, p4

    .line 166
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    const-class v5, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " not supported on the used JDK version"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
