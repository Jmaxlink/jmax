.class public final Lio/netty/handler/ssl/OpenSsl;
.super Ljava/lang/Object;
.source "OpenSsl.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final AVAILABLE_CIPHER_SUITES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final AVAILABLE_JAVA_CIPHER_SUITES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final AVAILABLE_OPENSSL_CIPHER_SUITES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CERT:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIICrjCCAZagAwIBAgIIdSvQPv1QAZQwDQYJKoZIhvcNAQELBQAwFjEUMBIGA1UEAxMLZXhhbXBs\nZS5jb20wIBcNMTgwNDA2MjIwNjU5WhgPOTk5OTEyMzEyMzU5NTlaMBYxFDASBgNVBAMTC2V4YW1w\nbGUuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAggbWsmDQ6zNzRZ5AW8E3eoGl\nqWvOBDb5Fs1oBRrVQHuYmVAoaqwDzXYJ0LOwa293AgWEQ1jpcbZ2hpoYQzqEZBTLnFhMrhRFlH6K\nbJND8Y33kZ/iSVBBDuGbdSbJShlM+4WwQ9IAso4MZ4vW3S1iv5fGGpLgbtXRmBf/RU8omN0Gijlv\nWlLWHWijLN8xQtySFuBQ7ssW8RcKAary3pUm6UUQB+Co6lnfti0Tzag8PgjhAJq2Z3wbsGRnP2YS\nvYoaK6qzmHXRYlp/PxrjBAZAmkLJs4YTm/XFF+fkeYx4i9zqHbyone5yerRibsHaXZWLnUL+rFoe\nMdKvr0VS3sGmhQIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQADQi441pKmXf9FvUV5EHU4v8nJT9Iq\nyqwsKwXnr7AsUlDGHBD7jGrjAXnG5rGxuNKBQ35wRxJATKrUtyaquFUL6H8O6aGQehiFTk6zmPbe\n12Gu44vqqTgIUxnv3JQJiox8S2hMxsSddpeCmSdvmalvD6WG4NthH6B9ZaBEiep1+0s0RUaBYn73\nI7CCUaAtbjfR6pcJjrFk5ei7uwdQZFSJtkP2z8r7zfeANJddAKFlkaMWn7u+OIVuB4XPooWicObk\nNAHFtP65bocUYnDpTVdiyvn8DdqyZ/EO8n1bBKBzuSLplk2msW4pdgaFgY7Vw/0wzcFXfUXmL1uy\nG8sQD/wx\n-----END CERTIFICATE-----"

.field private static final CLIENT_DEFAULT_PROTOCOLS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_CIPHERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_NAMED_GROUPS:[Ljava/lang/String;

.field static final EXTRA_SUPPORTED_TLS_1_3_CIPHERS:[Ljava/lang/String;

.field static final EXTRA_SUPPORTED_TLS_1_3_CIPHERS_STRING:Ljava/lang/String;

.field private static final IS_BORINGSSL:Z

.field static final JAVAX_CERTIFICATE_CREATION_SUPPORTED:Z

.field private static final KEY:Ljava/lang/String; = "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCCBtayYNDrM3NFnkBbwTd6gaWp\na84ENvkWzWgFGtVAe5iZUChqrAPNdgnQs7Brb3cCBYRDWOlxtnaGmhhDOoRkFMucWEyuFEWUfops\nk0PxjfeRn+JJUEEO4Zt1JslKGUz7hbBD0gCyjgxni9bdLWK/l8YakuBu1dGYF/9FTyiY3QaKOW9a\nUtYdaKMs3zFC3JIW4FDuyxbxFwoBqvLelSbpRRAH4KjqWd+2LRPNqDw+COEAmrZnfBuwZGc/ZhK9\nihorqrOYddFiWn8/GuMEBkCaQsmzhhOb9cUX5+R5jHiL3OodvKid7nJ6tGJuwdpdlYudQv6sWh4x\n0q+vRVLewaaFAgMBAAECggEAP8tPJvFtTxhNJAkCloHz0D0vpDHqQBMgntlkgayqmBqLwhyb18pR\ni0qwgh7HHc7wWqOOQuSqlEnrWRrdcI6TSe8R/sErzfTQNoznKWIPYcI/hskk4sdnQ//Yn9/Jvnsv\nU/BBjOTJxtD+sQbhAl80JcA3R+5sArURQkfzzHOL/YMqzAsn5hTzp7HZCxUqBk3KaHRxV7NefeOE\nxlZuWSmxYWfbFIs4kx19/1t7h8CHQWezw+G60G2VBtSBBxDnhBWvqG6R/wpzJ3nEhPLLY9T+XIHe\nipzdMOOOUZorfIg7M+pyYPji+ZIZxIpY5OjrOzXHciAjRtr5Y7l99K1CG1LguQKBgQDrQfIMxxtZ\nvxU/1cRmUV9l7pt5bjV5R6byXq178LxPKVYNjdZ840Q0/OpZEVqaT1xKVi35ohP1QfNjxPLlHD+K\niDAR9z6zkwjIrbwPCnb5kuXy4lpwPcmmmkva25fI7qlpHtbcuQdoBdCfr/KkKaUCMPyY89LCXgEw\n5KTDj64UywKBgQCNfbO+eZLGzhiHhtNJurresCsIGWlInv322gL8CSfBMYl6eNfUTZvUDdFhPISL\nUljKWzXDrjw0ujFSPR0XhUGtiq89H+HUTuPPYv25gVXO+HTgBFZEPl4PpA+BUsSVZy0NddneyqLk\n42Wey9omY9Q8WsdNQS5cbUvy0uG6WFoX7wKBgQDZ1jpW8pa0x2bZsQsm4vo+3G5CRnZlUp+XlWt2\ndDcp5dC0xD1zbs1dc0NcLeGDOTDv9FSl7hok42iHXXq8AygjEm/QcuwwQ1nC2HxmQP5holAiUs4D\nWHM8PWs3wFYPzE459EBoKTxeaeP/uWAn+he8q7d5uWvSZlEcANs/6e77eQKBgD21Ar0hfFfj7mK8\n9E0FeRZBsqK3omkfnhcYgZC11Xa2SgT1yvs2Va2n0RcdM5kncr3eBZav2GYOhhAdwyBM55XuE/sO\neokDVutNeuZ6d5fqV96TRaRBpvgfTvvRwxZ9hvKF4Vz+9wfn/JvCwANaKmegF6ejs7pvmF3whq2k\ndrZVAoGAX5YxQ5XMTD0QbMAl7/6qp6S58xNoVdfCkmkj1ZLKaHKIjS/benkKGlySVQVPexPfnkZx\np/Vv9yyphBoudiTBS9Uog66ueLYZqpgxlM/6OhYg86Gm3U2ycvMxYjBM1NFiyze21AqAhI+HX+Ot\nmraV2/guSgDgZAhukRZzeQ2RucI=\n-----END PRIVATE KEY-----"

.field static final NAMED_GROUPS:[Ljava/lang/String;

.field private static final SERVER_DEFAULT_PROTOCOLS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final SUPPORTED_PROTOCOLS_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTS_KEYMANAGER_FACTORY:Z

.field private static final SUPPORTS_OCSP:Z

.field private static final TLSV13_SUPPORTED:Z

.field private static final UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

.field private static final USE_KEYMANAGER_FACTORY:Z

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 37

    .line 55
    const-string v1, "io.netty.handler.ssl.openssl.useKeyManagerFactory"

    .line 57
    const-class v0, Lio/netty/handler/ssl/OpenSsl;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v2

    sput-object v2, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 81
    const-string v2, "secp384r1"

    const-string v3, "secp521r1"

    const-string v4, "x25519"

    const-string v5, "secp256r1"

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lio/netty/handler/ssl/OpenSsl;->DEFAULT_NAMED_GROUPS:[Ljava/lang/String;

    .line 126
    const/4 v2, 0x0

    .line 128
    .local v2, "cause":Ljava/lang/Throwable;
    const-string v3, "io.netty.handler.ssl.noOpenSsl"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, " will be unavailable."

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v3, "OpenSSL was explicit disabled with -Dio.netty.handler.ssl.noOpenSsl=true"

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 132
    .end local v2    # "cause":Ljava/lang/Throwable;
    .local v0, "cause":Ljava/lang/Throwable;
    sget-object v2, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "netty-tcnative explicit disabled; "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v7, Lio/netty/handler/ssl/OpenSslEngine;

    .line 134
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-interface {v2, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v0

    goto/16 :goto_3

    .line 138
    .end local v0    # "cause":Ljava/lang/Throwable;
    .restart local v2    # "cause":Ljava/lang/Throwable;
    :cond_0
    :try_start_0
    const-string v3, "io.netty.internal.tcnative.SSLContext"

    .line 139
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 138
    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "t":Ljava/lang/ClassNotFoundException;
    move-object v2, v0

    .line 142
    sget-object v3, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "netty-tcnative not in the classpath; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lio/netty/handler/ssl/OpenSslEngine;

    .line 144
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 142
    invoke-interface {v3, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 148
    .end local v0    # "t":Ljava/lang/ClassNotFoundException;
    :goto_0
    if-nez v2, :cond_3

    .line 151
    :try_start_1
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->loadTcNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    goto :goto_1

    .line 152
    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 153
    .local v0, "t":Ljava/lang/Throwable;
    move-object v2, v0

    .line 154
    sget-object v3, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load netty-tcnative; "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v7, Lio/netty/handler/ssl/OpenSslEngine;

    .line 156
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " will be unavailable, unless the application has already loaded the symbols by some other means. See https://netty.io/wiki/forked-tomcat-native.html for more information."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 154
    invoke-interface {v3, v5, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    const-string v0, "io.netty.handler.ssl.openssl.engine"

    invoke-static {v0, v6}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "engine":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 164
    sget-object v3, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "Initialize netty-tcnative using engine: \'default\'"

    invoke-interface {v3, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 166
    :cond_1
    sget-object v3, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "Initialize netty-tcnative using engine: \'{}\'"

    invoke-interface {v3, v5, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    :goto_2
    invoke-static {v0}, Lio/netty/handler/ssl/OpenSsl;->initializeTcNative(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 173
    const/4 v0, 0x0

    .line 182
    .end local v2    # "cause":Ljava/lang/Throwable;
    .local v0, "cause":Ljava/lang/Throwable;
    move-object v2, v0

    goto :goto_3

    .line 174
    .end local v0    # "cause":Ljava/lang/Throwable;
    .restart local v2    # "cause":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    .line 175
    .local v0, "t":Ljava/lang/Throwable;
    if-nez v2, :cond_2

    .line 176
    move-object v2, v0

    .line 178
    :cond_2
    sget-object v3, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to initialize netty-tcnative; "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v7, Lio/netty/handler/ssl/OpenSslEngine;

    .line 180
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " will be unavailable. See https://netty.io/wiki/forked-tomcat-native.html for more information."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 178
    invoke-interface {v3, v5, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 186
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_3
    sput-object v2, Lio/netty/handler/ssl/OpenSsl;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    .line 187
    const-string v0, "jdk.tls.client.protocols"

    invoke-static {v0}, Lio/netty/handler/ssl/OpenSsl;->protocols(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSsl;->CLIENT_DEFAULT_PROTOCOLS:Ljava/util/Set;

    .line 188
    const-string v0, "jdk.tls.server.protocols"

    invoke-static {v0}, Lio/netty/handler/ssl/OpenSsl;->protocols(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSsl;->SERVER_DEFAULT_PROTOCOLS:Ljava/util/Set;

    .line 190
    const-string v0, ""

    if-nez v2, :cond_27

    .line 191
    sget-object v3, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "netty-tcnative using native library: {}"

    invoke-static {}, Lio/netty/internal/tcnative/SSL;->versionString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v5, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v3, "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/LinkedHashSet;

    const/16 v7, 0x80

    invoke-direct {v5, v7}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 195
    .local v5, "availableOpenSslCipherSuites":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 196
    .local v8, "supportsKeyManagerFactory":Z
    const/4 v9, 0x0

    .line 197
    .local v9, "useKeyManagerFactory":Z
    const/4 v10, 0x0

    .line 198
    .local v10, "tlsv13Supported":Z
    sget-object v11, Lio/netty/handler/ssl/OpenSsl;->DEFAULT_NAMED_GROUPS:[Ljava/lang/String;

    .line 199
    .local v11, "namedGroups":[Ljava/lang/String;
    array-length v12, v11

    new-array v12, v12, [Ljava/lang/String;

    .line 200
    .local v12, "defaultConvertedNamedGroups":[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    array-length v14, v11

    if-ge v13, v14, :cond_4

    .line 201
    aget-object v14, v11, v13

    invoke-static {v14}, Lio/netty/handler/ssl/GroupsConverter;->toOpenSsl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 200
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 204
    .end local v13    # "i":I
    :cond_4
    const-string v13, "BoringSSL"

    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->versionString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    sput-boolean v13, Lio/netty/handler/ssl/OpenSsl;->IS_BORINGSSL:Z

    .line 205
    sget-boolean v13, Lio/netty/handler/ssl/OpenSsl;->IS_BORINGSSL:Z

    if-eqz v13, :cond_6

    .line 206
    const-string v0, "TLS_AES_256_GCM_SHA384"

    const-string v13, "TLS_CHACHA20_POLY1305_SHA256"

    const-string v15, "TLS_AES_128_GCM_SHA256"

    filled-new-array {v15, v0, v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSsl;->EXTRA_SUPPORTED_TLS_1_3_CIPHERS:[Ljava/lang/String;

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 211
    .local v0, "ciphersBuilder":Ljava/lang/StringBuilder;
    sget-object v7, Lio/netty/handler/ssl/OpenSsl;->EXTRA_SUPPORTED_TLS_1_3_CIPHERS:[Ljava/lang/String;

    array-length v13, v7

    move v15, v4

    :goto_5
    if-ge v15, v13, :cond_5

    aget-object v6, v7, v15

    .line 212
    .local v6, "cipher":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v14, ":"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .end local v6    # "cipher":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_5

    .line 214
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lio/netty/handler/ssl/OpenSsl;->EXTRA_SUPPORTED_TLS_1_3_CIPHERS_STRING:Ljava/lang/String;

    .line 216
    .end local v0    # "ciphersBuilder":Ljava/lang/StringBuilder;
    goto :goto_6

    .line 217
    :cond_6
    sget-object v4, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    sput-object v4, Lio/netty/handler/ssl/OpenSsl;->EXTRA_SUPPORTED_TLS_1_3_CIPHERS:[Ljava/lang/String;

    .line 218
    sput-object v0, Lio/netty/handler/ssl/OpenSsl;->EXTRA_SUPPORTED_TLS_1_3_CIPHERS_STRING:Ljava/lang/String;

    .line 222
    :goto_6
    const/16 v0, 0x3f

    const/4 v6, 0x1

    :try_start_3
    invoke-static {v0, v6}, Lio/netty/internal/tcnative/SSLContext;->make(II)J

    move-result-wide v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c

    move-wide v6, v13

    .line 223
    .local v6, "sslCtx":J
    const-wide/16 v13, 0x0

    .line 224
    .local v13, "certBio":J
    const-wide/16 v17, 0x0

    .line 225
    .local v17, "keyBio":J
    const-wide/16 v19, 0x0

    .line 226
    .local v19, "cert":J
    const-wide/16 v21, 0x0

    .line 230
    .local v21, "key":J
    :try_start_4
    sget-object v0, Lio/netty/handler/ssl/SslProvider;->JDK:Lio/netty/handler/ssl/SslProvider;

    invoke-static {v0}, Lio/netty/handler/ssl/SslProvider;->isTlsv13Supported(Lio/netty/handler/ssl/SslProvider;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_17

    if-eqz v0, :cond_a

    .line 232
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v0, "tlsv13Ciphers":Ljava/lang/StringBuilder;
    sget-object v15, Lio/netty/handler/ssl/SslUtils;->TLSV13_CIPHERS:Ljava/util/Set;

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v24, v23

    .line 235
    .local v24, "cipher":Ljava/lang/String;
    sget-boolean v4, Lio/netty/handler/ssl/OpenSsl;->IS_BORINGSSL:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v25, v2

    move-object/from16 v2, v24

    .end local v24    # "cipher":Ljava/lang/String;
    .local v2, "cipher":Ljava/lang/String;
    .local v25, "cause":Ljava/lang/Throwable;
    :try_start_6
    invoke-static {v2, v4}, Lio/netty/handler/ssl/CipherSuiteConverter;->toOpenSsl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, "converted":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 237
    move-object/from16 v24, v2

    .end local v2    # "cipher":Ljava/lang/String;
    .restart local v24    # "cipher":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v26, v4

    .end local v4    # "converted":Ljava/lang/String;
    .local v26, "converted":Ljava/lang/String;
    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 236
    .end local v24    # "cipher":Ljava/lang/String;
    .end local v26    # "converted":Ljava/lang/String;
    .restart local v2    # "cipher":Ljava/lang/String;
    .restart local v4    # "converted":Ljava/lang/String;
    :cond_7
    move-object/from16 v24, v2

    move-object/from16 v26, v4

    .line 239
    .end local v2    # "cipher":Ljava/lang/String;
    .end local v4    # "converted":Ljava/lang/String;
    :goto_8
    move-object/from16 v2, v25

    goto :goto_7

    .line 240
    .end local v25    # "cause":Ljava/lang/Throwable;
    .local v2, "cause":Ljava/lang/Throwable;
    :cond_8
    move-object/from16 v25, v2

    .end local v2    # "cause":Ljava/lang/Throwable;
    .restart local v25    # "cause":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_9

    .line 241
    const/4 v2, 0x0

    move v10, v2

    .end local v10    # "tlsv13Supported":Z
    .local v2, "tlsv13Supported":Z
    goto :goto_9

    .line 243
    .end local v2    # "tlsv13Supported":Z
    .restart local v10    # "tlsv13Supported":Z
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v7, v2, v4}, Lio/netty/internal/tcnative/SSLContext;->setCipherSuite(JLjava/lang/String;Z)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_15

    .line 245
    const/4 v2, 0x1

    move v10, v2

    .line 250
    .end local v0    # "tlsv13Ciphers":Ljava/lang/StringBuilder;
    :goto_9
    goto :goto_b

    .line 248
    :catch_1
    move-exception v0

    goto :goto_a

    .line 374
    .end local v25    # "cause":Ljava/lang/Throwable;
    .local v2, "cause":Ljava/lang/Throwable;
    :catchall_2
    move-exception v0

    move-object/from16 v25, v2

    .end local v2    # "cause":Ljava/lang/Throwable;
    .restart local v25    # "cause":Ljava/lang/Throwable;
    goto/16 :goto_1a

    .line 248
    .end local v25    # "cause":Ljava/lang/Throwable;
    .restart local v2    # "cause":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    move-object/from16 v25, v2

    .line 249
    .end local v2    # "cause":Ljava/lang/Throwable;
    .local v0, "ignore":Ljava/lang/Exception;
    .restart local v25    # "cause":Ljava/lang/Throwable;
    :goto_a
    const/4 v10, 0x0

    goto :goto_b

    .line 230
    .end local v0    # "ignore":Ljava/lang/Exception;
    .end local v25    # "cause":Ljava/lang/Throwable;
    .restart local v2    # "cause":Ljava/lang/Throwable;
    :cond_a
    move-object/from16 v25, v2

    .line 253
    .end local v2    # "cause":Ljava/lang/Throwable;
    .restart local v25    # "cause":Ljava/lang/Throwable;
    :goto_b
    :try_start_7
    const-string v0, "ALL"

    const/4 v2, 0x0

    invoke-static {v6, v7, v0, v2}, Lio/netty/internal/tcnative/SSLContext;->setCipherSuite(JLjava/lang/String;Z)Z

    .line 255
    const/4 v2, 0x1

    invoke-static {v6, v7, v2}, Lio/netty/internal/tcnative/SSL;->newSSL(JZ)J

    move-result-wide v26
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_16

    .line 257
    .local v26, "ssl":J
    const-wide/16 v32, 0x0

    :try_start_8
    invoke-static/range {v26 .. v27}, Lio/netty/internal/tcnative/SSL;->getCiphers(J)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_14

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v2, :cond_d

    :try_start_9
    aget-object v15, v0, v4

    .line 259
    .local v15, "c":Ljava/lang/String;
    if-eqz v15, :cond_c

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_c

    invoke-interface {v5, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c

    if-nez v10, :cond_b

    .line 261
    invoke-static {v15}, Lio/netty/handler/ssl/SslUtils;->isTLSv13Cipher(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 262
    goto :goto_d

    .line 264
    :cond_b
    invoke-interface {v5, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 257
    .end local v15    # "c":Ljava/lang/String;
    :cond_c
    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 321
    :catchall_3
    move-exception v0

    goto/16 :goto_19

    .line 266
    :cond_d
    :try_start_a
    sget-boolean v0, Lio/netty/handler/ssl/OpenSsl;->IS_BORINGSSL:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_14

    if-eqz v0, :cond_e

    .line 269
    :try_start_b
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->EXTRA_SUPPORTED_TLS_1_3_CIPHERS:[Ljava/lang/String;

    invoke-static {v5, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 270
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "AEAD-AES128-GCM-SHA256"

    const/4 v4, 0x0

    aput-object v2, v0, v4

    const-string v2, "AEAD-AES256-GCM-SHA384"

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const-string v2, "AEAD-CHACHA20-POLY1305-SHA256"

    const/4 v4, 0x2

    aput-object v2, v0, v4

    invoke-static {v5, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 276
    :cond_e
    :try_start_c
    const-string v0, "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCCBtayYNDrM3NFnkBbwTd6gaWp\na84ENvkWzWgFGtVAe5iZUChqrAPNdgnQs7Brb3cCBYRDWOlxtnaGmhhDOoRkFMucWEyuFEWUfops\nk0PxjfeRn+JJUEEO4Zt1JslKGUz7hbBD0gCyjgxni9bdLWK/l8YakuBu1dGYF/9FTyiY3QaKOW9a\nUtYdaKMs3zFC3JIW4FDuyxbxFwoBqvLelSbpRRAH4KjqWd+2LRPNqDw+COEAmrZnfBuwZGc/ZhK9\nihorqrOYddFiWn8/GuMEBkCaQsmzhhOb9cUX5+R5jHiL3OodvKid7nJ6tGJuwdpdlYudQv6sWh4x\n0q+vRVLewaaFAgMBAAECggEAP8tPJvFtTxhNJAkCloHz0D0vpDHqQBMgntlkgayqmBqLwhyb18pR\ni0qwgh7HHc7wWqOOQuSqlEnrWRrdcI6TSe8R/sErzfTQNoznKWIPYcI/hskk4sdnQ//Yn9/Jvnsv\nU/BBjOTJxtD+sQbhAl80JcA3R+5sArURQkfzzHOL/YMqzAsn5hTzp7HZCxUqBk3KaHRxV7NefeOE\nxlZuWSmxYWfbFIs4kx19/1t7h8CHQWezw+G60G2VBtSBBxDnhBWvqG6R/wpzJ3nEhPLLY9T+XIHe\nipzdMOOOUZorfIg7M+pyYPji+ZIZxIpY5OjrOzXHciAjRtr5Y7l99K1CG1LguQKBgQDrQfIMxxtZ\nvxU/1cRmUV9l7pt5bjV5R6byXq178LxPKVYNjdZ840Q0/OpZEVqaT1xKVi35ohP1QfNjxPLlHD+K\niDAR9z6zkwjIrbwPCnb5kuXy4lpwPcmmmkva25fI7qlpHtbcuQdoBdCfr/KkKaUCMPyY89LCXgEw\n5KTDj64UywKBgQCNfbO+eZLGzhiHhtNJurresCsIGWlInv322gL8CSfBMYl6eNfUTZvUDdFhPISL\nUljKWzXDrjw0ujFSPR0XhUGtiq89H+HUTuPPYv25gVXO+HTgBFZEPl4PpA+BUsSVZy0NddneyqLk\n42Wey9omY9Q8WsdNQS5cbUvy0uG6WFoX7wKBgQDZ1jpW8pa0x2bZsQsm4vo+3G5CRnZlUp+XlWt2\ndDcp5dC0xD1zbs1dc0NcLeGDOTDv9FSl7hok42iHXXq8AygjEm/QcuwwQ1nC2HxmQP5holAiUs4D\nWHM8PWs3wFYPzE459EBoKTxeaeP/uWAn+he8q7d5uWvSZlEcANs/6e77eQKBgD21Ar0hfFfj7mK8\n9E0FeRZBsqK3omkfnhcYgZC11Xa2SgT1yvs2Va2n0RcdM5kncr3eBZav2GYOhhAdwyBM55XuE/sO\neokDVutNeuZ6d5fqV96TRaRBpvgfTvvRwxZ9hvKF4Vz+9wfn/JvCwANaKmegF6ejs7pvmF3whq2k\ndrZVAoGAX5YxQ5XMTD0QbMAl7/6qp6S58xNoVdfCkmkj1ZLKaHKIjS/benkKGlySVQVPexPfnkZx\np/Vv9yyphBoudiTBS9Uog66ueLYZqpgxlM/6OhYg86Gm3U2ycvMxYjBM1NFiyze21AqAhI+HX+Ot\nmraV2/guSgDgZAhukRZzeQ2RucI=\n-----END PRIVATE KEY-----"

    sget-object v2, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/ssl/PemPrivateKey;->valueOf([B)Lio/netty/handler/ssl/PemPrivateKey;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_14

    move-object v2, v0

    .line 280
    .local v2, "privateKey":Lio/netty/handler/ssl/PemEncoded;
    const/4 v4, 0x0

    :try_start_d
    invoke-static {v6, v7, v4}, Lio/netty/internal/tcnative/SSLContext;->setCertificateCallback(JLio/netty/internal/tcnative/CertificateCallback;)V

    .line 282
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->selfSignedCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    move-object v4, v0

    .line 283
    .local v4, "certificate":Ljava/security/cert/X509Certificate;
    sget-object v0, Lio/netty/buffer/ByteBufAllocator;->DEFAULT:Lio/netty/buffer/ByteBufAllocator;
    :try_end_d
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_e

    move/from16 v24, v8

    const/4 v15, 0x1

    .end local v8    # "supportsKeyManagerFactory":Z
    .local v24, "supportsKeyManagerFactory":Z
    :try_start_e
    new-array v8, v15, [Ljava/security/cert/X509Certificate;

    const/4 v15, 0x0

    aput-object v4, v8, v15
    :try_end_e
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_d

    :try_start_f
    invoke-static {v0, v8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;[Ljava/security/cert/X509Certificate;)J

    move-result-wide v28

    move-wide/from16 v13, v28

    .line 284
    invoke-static {v13, v14}, Lio/netty/internal/tcnative/SSL;->parseX509Chain(J)J

    move-result-wide v28
    :try_end_f
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    .line 286
    .end local v19    # "cert":J
    .local v28, "cert":J
    :try_start_10
    sget-object v0, Lio/netty/buffer/UnpooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/UnpooledByteBufAllocator;

    .line 287
    invoke-interface {v2}, Lio/netty/handler/ssl/PemEncoded;->retain()Lio/netty/handler/ssl/PemEncoded;

    move-result-object v8

    .line 286
    invoke-static {v0, v8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/PemEncoded;)J

    move-result-wide v19
    :try_end_10
    .catch Ljava/lang/Error; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    move-wide/from16 v17, v19

    .line 288
    move-object/from16 v34, v4

    move v15, v9

    move-wide/from16 v8, v17

    const/4 v4, 0x0

    .end local v4    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v9    # "useKeyManagerFactory":Z
    .end local v17    # "keyBio":J
    .local v8, "keyBio":J
    .local v15, "useKeyManagerFactory":Z
    .local v34, "certificate":Ljava/security/cert/X509Certificate;
    :try_start_11
    invoke-static {v8, v9, v4}, Lio/netty/internal/tcnative/SSL;->parsePrivateKey(JLjava/lang/String;)J

    move-result-wide v30
    :try_end_11
    .catch Ljava/lang/Error; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    .line 290
    .end local v21    # "key":J
    .local v30, "key":J
    :try_start_12
    invoke-static/range {v26 .. v31}, Lio/netty/internal/tcnative/SSL;->setKeyMaterial(JJJ)V
    :try_end_12
    .catch Ljava/lang/Error; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 291
    const/4 v4, 0x1

    .line 293
    .end local v24    # "supportsKeyManagerFactory":Z
    .local v4, "supportsKeyManagerFactory":Z
    :try_start_13
    invoke-static {v1}, Lio/netty/util/internal/SystemPropertyUtil;->contains(Ljava/lang/String;)Z

    move-result v0

    .line 295
    .local v0, "propertySet":Z
    sget-boolean v17, Lio/netty/handler/ssl/OpenSsl;->IS_BORINGSSL:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    if-nez v17, :cond_f

    .line 296
    move/from16 v17, v4

    const/4 v4, 0x1

    .end local v4    # "supportsKeyManagerFactory":Z
    .local v17, "supportsKeyManagerFactory":Z
    :try_start_14
    invoke-static {v1, v4}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 299
    .end local v15    # "useKeyManagerFactory":Z
    .local v1, "useKeyManagerFactory":Z
    if-eqz v0, :cond_10

    .line 300
    :try_start_15
    sget-object v4, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v15, "System property \'io.netty.handler.ssl.openssl.useKeyManagerFactory\' is deprecated and so will be ignored in the future"

    invoke-interface {v4, v15}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;)V

    goto :goto_e

    .line 312
    .end local v0    # "propertySet":Z
    .end local v1    # "useKeyManagerFactory":Z
    .restart local v15    # "useKeyManagerFactory":Z
    :catchall_4
    move-exception v0

    move v1, v15

    goto :goto_f

    .line 305
    .end local v17    # "supportsKeyManagerFactory":Z
    .restart local v0    # "propertySet":Z
    .restart local v4    # "supportsKeyManagerFactory":Z
    :cond_f
    move/from16 v17, v4

    .end local v4    # "supportsKeyManagerFactory":Z
    .restart local v17    # "supportsKeyManagerFactory":Z
    const/4 v1, 0x1

    .line 306
    .end local v15    # "useKeyManagerFactory":Z
    .restart local v1    # "useKeyManagerFactory":Z
    if-eqz v0, :cond_10

    .line 307
    sget-object v4, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v15, "System property \'io.netty.handler.ssl.openssl.useKeyManagerFactory\' is deprecated and will be ignored when using BoringSSL"

    invoke-interface {v4, v15}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    goto :goto_e

    .line 312
    .end local v0    # "propertySet":Z
    :catchall_5
    move-exception v0

    goto :goto_f

    .line 314
    :cond_10
    :goto_e
    goto :goto_10

    .line 312
    .end local v1    # "useKeyManagerFactory":Z
    .end local v17    # "supportsKeyManagerFactory":Z
    .restart local v4    # "supportsKeyManagerFactory":Z
    .restart local v15    # "useKeyManagerFactory":Z
    :catchall_6
    move-exception v0

    move/from16 v17, v4

    move v1, v15

    .line 313
    .end local v4    # "supportsKeyManagerFactory":Z
    .end local v15    # "useKeyManagerFactory":Z
    .local v0, "ignore":Ljava/lang/Throwable;
    .restart local v1    # "useKeyManagerFactory":Z
    .restart local v17    # "supportsKeyManagerFactory":Z
    :goto_f
    :try_start_16
    sget-object v4, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v15, "Failed to get useKeyManagerFactory system property."

    invoke-interface {v4, v15}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Error; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 318
    .end local v0    # "ignore":Ljava/lang/Throwable;
    .end local v34    # "certificate":Ljava/security/cert/X509Certificate;
    :goto_10
    :try_start_17
    invoke-interface {v2}, Lio/netty/handler/ssl/PemEncoded;->release()Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 319
    move-wide/from16 v19, v28

    move-wide/from16 v21, v30

    move-wide/from16 v35, v8

    move v9, v1

    move/from16 v8, v17

    move-wide/from16 v17, v35

    goto/16 :goto_12

    .line 321
    .end local v2    # "privateKey":Lio/netty/handler/ssl/PemEncoded;
    :catchall_7
    move-exception v0

    move-wide/from16 v19, v28

    move-wide/from16 v21, v30

    move-wide/from16 v35, v8

    move v9, v1

    move/from16 v8, v17

    move-wide/from16 v17, v35

    goto/16 :goto_19

    .line 318
    .restart local v2    # "privateKey":Lio/netty/handler/ssl/PemEncoded;
    :catchall_8
    move-exception v0

    move-wide/from16 v19, v28

    move-wide/from16 v21, v30

    move-wide/from16 v35, v8

    move v9, v1

    move/from16 v8, v17

    move-wide/from16 v17, v35

    goto/16 :goto_18

    .line 315
    :catch_3
    move-exception v0

    move-wide/from16 v19, v28

    move-wide/from16 v21, v30

    move-wide/from16 v35, v8

    move v9, v1

    move/from16 v8, v17

    move-wide/from16 v17, v35

    goto/16 :goto_11

    .line 318
    .end local v1    # "useKeyManagerFactory":Z
    .end local v17    # "supportsKeyManagerFactory":Z
    .restart local v15    # "useKeyManagerFactory":Z
    .restart local v24    # "supportsKeyManagerFactory":Z
    :catchall_9
    move-exception v0

    move-wide/from16 v17, v8

    move v9, v15

    move/from16 v8, v24

    move-wide/from16 v19, v28

    move-wide/from16 v21, v30

    goto/16 :goto_18

    .line 315
    :catch_4
    move-exception v0

    move-wide/from16 v17, v8

    move v9, v15

    move/from16 v8, v24

    move-wide/from16 v19, v28

    move-wide/from16 v21, v30

    goto :goto_11

    .line 318
    .end local v30    # "key":J
    .restart local v21    # "key":J
    :catchall_a
    move-exception v0

    move-wide/from16 v17, v8

    move v9, v15

    move/from16 v8, v24

    move-wide/from16 v19, v28

    goto/16 :goto_18

    .line 315
    :catch_5
    move-exception v0

    move-wide/from16 v17, v8

    move v9, v15

    move/from16 v8, v24

    move-wide/from16 v19, v28

    goto :goto_11

    .line 318
    .end local v8    # "keyBio":J
    .end local v15    # "useKeyManagerFactory":Z
    .restart local v9    # "useKeyManagerFactory":Z
    .local v17, "keyBio":J
    :catchall_b
    move-exception v0

    move v15, v9

    move/from16 v8, v24

    move-wide/from16 v19, v28

    .end local v9    # "useKeyManagerFactory":Z
    .restart local v15    # "useKeyManagerFactory":Z
    goto/16 :goto_18

    .line 315
    .end local v15    # "useKeyManagerFactory":Z
    .restart local v9    # "useKeyManagerFactory":Z
    :catch_6
    move-exception v0

    move v15, v9

    move/from16 v8, v24

    move-wide/from16 v19, v28

    .end local v9    # "useKeyManagerFactory":Z
    .restart local v15    # "useKeyManagerFactory":Z
    goto :goto_11

    .line 318
    .end local v15    # "useKeyManagerFactory":Z
    .end local v28    # "cert":J
    .restart local v9    # "useKeyManagerFactory":Z
    .restart local v19    # "cert":J
    :catchall_c
    move-exception v0

    move v15, v9

    move/from16 v8, v24

    .end local v9    # "useKeyManagerFactory":Z
    .restart local v15    # "useKeyManagerFactory":Z
    goto/16 :goto_18

    .line 315
    .end local v15    # "useKeyManagerFactory":Z
    .restart local v9    # "useKeyManagerFactory":Z
    :catch_7
    move-exception v0

    move v15, v9

    move/from16 v8, v24

    .end local v9    # "useKeyManagerFactory":Z
    .restart local v15    # "useKeyManagerFactory":Z
    goto :goto_11

    .line 318
    .end local v15    # "useKeyManagerFactory":Z
    .restart local v9    # "useKeyManagerFactory":Z
    :catchall_d
    move-exception v0

    move v15, v9

    .end local v9    # "useKeyManagerFactory":Z
    .restart local v15    # "useKeyManagerFactory":Z
    move v9, v15

    move/from16 v8, v24

    goto/16 :goto_18

    .line 315
    .end local v15    # "useKeyManagerFactory":Z
    .restart local v9    # "useKeyManagerFactory":Z
    :catch_8
    move-exception v0

    move v15, v9

    .end local v9    # "useKeyManagerFactory":Z
    .restart local v15    # "useKeyManagerFactory":Z
    move v9, v15

    move/from16 v8, v24

    goto :goto_11

    .line 318
    .end local v15    # "useKeyManagerFactory":Z
    .end local v24    # "supportsKeyManagerFactory":Z
    .local v8, "supportsKeyManagerFactory":Z
    .restart local v9    # "useKeyManagerFactory":Z
    :catchall_e
    move-exception v0

    move/from16 v24, v8

    move v15, v9

    .end local v8    # "supportsKeyManagerFactory":Z
    .end local v9    # "useKeyManagerFactory":Z
    .restart local v15    # "useKeyManagerFactory":Z
    .restart local v24    # "supportsKeyManagerFactory":Z
    goto/16 :goto_18

    .line 315
    .end local v15    # "useKeyManagerFactory":Z
    .end local v24    # "supportsKeyManagerFactory":Z
    .restart local v8    # "supportsKeyManagerFactory":Z
    .restart local v9    # "useKeyManagerFactory":Z
    :catch_9
    move-exception v0

    move/from16 v24, v8

    move v15, v9

    .line 316
    .local v0, "ignore":Ljava/lang/Error;
    :goto_11
    :try_start_18
    sget-object v1, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "KeyManagerFactory not supported."

    invoke-interface {v1, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_13

    .line 318
    .end local v0    # "ignore":Ljava/lang/Error;
    :try_start_19
    invoke-interface {v2}, Lio/netty/handler/ssl/PemEncoded;->release()Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 319
    nop

    .line 321
    .end local v2    # "privateKey":Lio/netty/handler/ssl/PemEncoded;
    :goto_12
    :try_start_1a
    invoke-static/range {v26 .. v27}, Lio/netty/internal/tcnative/SSL;->freeSSL(J)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_12

    .line 322
    cmp-long v0, v13, v32

    if-eqz v0, :cond_11

    .line 323
    :try_start_1b
    invoke-static {v13, v14}, Lio/netty/internal/tcnative/SSL;->freeBIO(J)V

    .line 325
    :cond_11
    cmp-long v0, v17, v32

    if-eqz v0, :cond_12

    .line 326
    invoke-static/range {v17 .. v18}, Lio/netty/internal/tcnative/SSL;->freeBIO(J)V

    .line 328
    :cond_12
    cmp-long v0, v19, v32

    if-eqz v0, :cond_13

    .line 329
    invoke-static/range {v19 .. v20}, Lio/netty/internal/tcnative/SSL;->freeX509Chain(J)V

    .line 331
    :cond_13
    cmp-long v0, v21, v32

    if-eqz v0, :cond_14

    .line 332
    invoke-static/range {v21 .. v22}, Lio/netty/internal/tcnative/SSL;->freePrivateKey(J)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_15

    .line 336
    :cond_14
    :try_start_1c
    const-string v0, "jdk.tls.namedGroups"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "groups":Ljava/lang/String;
    if-eqz v0, :cond_19

    .line 338
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "nGroups":[Ljava/lang/String;
    new-instance v2, Ljava/util/LinkedHashSet;

    array-length v4, v1

    invoke-direct {v2, v4}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 340
    .local v2, "supportedNamedGroups":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/LinkedHashSet;

    array-length v15, v1

    invoke-direct {v4, v15}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 342
    .local v4, "supportedConvertedNamedGroups":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/LinkedHashSet;

    invoke-direct {v15}, Ljava/util/LinkedHashSet;-><init>()V

    .line 343
    .local v15, "unsupportedNamedGroups":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v16, v0

    .end local v0    # "groups":Ljava/lang/String;
    .local v16, "groups":Ljava/lang/String;
    array-length v0, v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_12

    move/from16 v24, v8

    const/4 v8, 0x0

    .end local v8    # "supportsKeyManagerFactory":Z
    .restart local v24    # "supportsKeyManagerFactory":Z
    :goto_13
    if-ge v8, v0, :cond_16

    :try_start_1d
    aget-object v28, v1, v8

    move-object/from16 v29, v28

    .line 344
    .local v29, "namedGroup":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lio/netty/handler/ssl/GroupsConverter;->toOpenSsl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v30, v28

    .line 345
    .local v30, "converted":Ljava/lang/String;
    move/from16 v28, v0

    filled-new-array/range {v30 .. v30}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7, v0}, Lio/netty/internal/tcnative/SSLContext;->setCurvesList(J[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 346
    move-object/from16 v0, v30

    .end local v30    # "converted":Ljava/lang/String;
    .local v0, "converted":Ljava/lang/String;
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 347
    move-object/from16 v30, v0

    move-object/from16 v0, v29

    .end local v29    # "namedGroup":Ljava/lang/String;
    .local v0, "namedGroup":Ljava/lang/String;
    .restart local v30    # "converted":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 349
    .end local v0    # "namedGroup":Ljava/lang/String;
    .restart local v29    # "namedGroup":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, v29

    .end local v29    # "namedGroup":Ljava/lang/String;
    .restart local v0    # "namedGroup":Ljava/lang/String;
    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 343
    .end local v0    # "namedGroup":Ljava/lang/String;
    .end local v30    # "converted":Ljava/lang/String;
    :goto_14
    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v28

    goto :goto_13

    .line 353
    :cond_16
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_11

    if-eqz v0, :cond_17

    .line 354
    move-object v8, v12

    .line 355
    .end local v11    # "namedGroups":[Ljava/lang/String;
    .local v8, "namedGroups":[Ljava/lang/String;
    :try_start_1e
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v11, "All configured namedGroups are not supported: {}. Use default: {}."

    move-object/from16 v28, v1

    .end local v1    # "nGroups":[Ljava/lang/String;
    .local v28, "nGroups":[Ljava/lang/String;
    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 356
    invoke-interface {v15, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v29, Lio/netty/handler/ssl/OpenSsl;->DEFAULT_NAMED_GROUPS:[Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_10

    .line 357
    move-object/from16 v30, v8

    .end local v8    # "namedGroups":[Ljava/lang/String;
    .local v30, "namedGroups":[Ljava/lang/String;
    :try_start_1f
    invoke-static/range {v29 .. v29}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 355
    invoke-interface {v0, v11, v1, v8}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_f

    move-object/from16 v8, v30

    goto :goto_16

    .line 374
    .end local v2    # "supportedNamedGroups":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "supportedConvertedNamedGroups":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "unsupportedNamedGroups":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "groups":Ljava/lang/String;
    .end local v26    # "ssl":J
    .end local v28    # "nGroups":[Ljava/lang/String;
    :catchall_f
    move-exception v0

    move/from16 v8, v24

    move-object/from16 v11, v30

    goto/16 :goto_1a

    .end local v30    # "namedGroups":[Ljava/lang/String;
    .restart local v8    # "namedGroups":[Ljava/lang/String;
    :catchall_10
    move-exception v0

    move-object/from16 v30, v8

    move/from16 v8, v24

    move-object/from16 v11, v30

    .end local v8    # "namedGroups":[Ljava/lang/String;
    .restart local v30    # "namedGroups":[Ljava/lang/String;
    goto/16 :goto_1a

    .line 359
    .end local v30    # "namedGroups":[Ljava/lang/String;
    .restart local v1    # "nGroups":[Ljava/lang/String;
    .restart local v2    # "supportedNamedGroups":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "supportedConvertedNamedGroups":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v11    # "namedGroups":[Ljava/lang/String;
    .restart local v15    # "unsupportedNamedGroups":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "groups":Ljava/lang/String;
    .restart local v26    # "ssl":J
    :cond_17
    move-object/from16 v28, v1

    .end local v1    # "nGroups":[Ljava/lang/String;
    .restart local v28    # "nGroups":[Ljava/lang/String;
    :try_start_20
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 360
    .local v0, "groupArray":[Ljava/lang/String;
    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 361
    sget-object v1, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v8, "Using configured namedGroups -D \'jdk.tls.namedGroup\': {} "

    .line 362
    move-object/from16 v29, v2

    .end local v2    # "supportedNamedGroups":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v29, "supportedNamedGroups":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-interface {v1, v8, v2}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v30, v0

    goto :goto_15

    .line 364
    .end local v29    # "supportedNamedGroups":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "supportedNamedGroups":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_18
    move-object/from16 v29, v2

    .end local v2    # "supportedNamedGroups":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v29    # "supportedNamedGroups":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Using supported configured namedGroups: {}. Unsupported namedGroups: {}. "

    .line 365
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v30, v0

    .end local v0    # "groupArray":[Ljava/lang/String;
    .local v30, "groupArray":[Ljava/lang/String;
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 366
    invoke-interface {v15, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-interface {v1, v2, v8, v0}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 368
    :goto_15
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_11

    move-object v8, v0

    .line 370
    .end local v4    # "supportedConvertedNamedGroups":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "namedGroups":[Ljava/lang/String;
    .end local v15    # "unsupportedNamedGroups":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v28    # "nGroups":[Ljava/lang/String;
    .end local v29    # "supportedNamedGroups":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v30    # "groupArray":[Ljava/lang/String;
    .restart local v8    # "namedGroups":[Ljava/lang/String;
    :goto_16
    move-object v11, v8

    goto :goto_17

    .line 374
    .end local v8    # "namedGroups":[Ljava/lang/String;
    .end local v16    # "groups":Ljava/lang/String;
    .end local v26    # "ssl":J
    .restart local v11    # "namedGroups":[Ljava/lang/String;
    :catchall_11
    move-exception v0

    move/from16 v8, v24

    goto :goto_1a

    .line 371
    .end local v24    # "supportsKeyManagerFactory":Z
    .local v0, "groups":Ljava/lang/String;
    .local v8, "supportsKeyManagerFactory":Z
    .restart local v26    # "ssl":J
    :cond_19
    move-object/from16 v16, v0

    move/from16 v24, v8

    .end local v0    # "groups":Ljava/lang/String;
    .end local v8    # "supportsKeyManagerFactory":Z
    .restart local v16    # "groups":Ljava/lang/String;
    .restart local v24    # "supportsKeyManagerFactory":Z
    move-object v0, v12

    move-object v11, v0

    .line 374
    .end local v16    # "groups":Ljava/lang/String;
    .end local v26    # "ssl":J
    :goto_17
    :try_start_21
    invoke-static {v6, v7}, Lio/netty/internal/tcnative/SSLContext;->free(J)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_a

    .line 375
    nop

    .line 378
    .end local v6    # "sslCtx":J
    .end local v13    # "certBio":J
    .end local v17    # "keyBio":J
    .end local v19    # "cert":J
    .end local v21    # "key":J
    move/from16 v8, v24

    goto :goto_1c

    .line 376
    :catch_a
    move-exception v0

    move/from16 v8, v24

    goto :goto_1b

    .line 374
    .end local v24    # "supportsKeyManagerFactory":Z
    .restart local v6    # "sslCtx":J
    .restart local v8    # "supportsKeyManagerFactory":Z
    .restart local v13    # "certBio":J
    .restart local v17    # "keyBio":J
    .restart local v19    # "cert":J
    .restart local v21    # "key":J
    :catchall_12
    move-exception v0

    move/from16 v24, v8

    .end local v8    # "supportsKeyManagerFactory":Z
    .restart local v24    # "supportsKeyManagerFactory":Z
    goto :goto_1a

    .line 318
    .end local v24    # "supportsKeyManagerFactory":Z
    .local v2, "privateKey":Lio/netty/handler/ssl/PemEncoded;
    .restart local v8    # "supportsKeyManagerFactory":Z
    .restart local v26    # "ssl":J
    :catchall_13
    move-exception v0

    :goto_18
    :try_start_22
    invoke-interface {v2}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    .line 319
    nop

    .end local v3    # "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "availableOpenSslCipherSuites":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "sslCtx":J
    .end local v8    # "supportsKeyManagerFactory":Z
    .end local v9    # "useKeyManagerFactory":Z
    .end local v10    # "tlsv13Supported":Z
    .end local v11    # "namedGroups":[Ljava/lang/String;
    .end local v12    # "defaultConvertedNamedGroups":[Ljava/lang/String;
    .end local v13    # "certBio":J
    .end local v17    # "keyBio":J
    .end local v19    # "cert":J
    .end local v21    # "key":J
    .end local v25    # "cause":Ljava/lang/Throwable;
    .end local v26    # "ssl":J
    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    .line 321
    .end local v2    # "privateKey":Lio/netty/handler/ssl/PemEncoded;
    .restart local v3    # "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "availableOpenSslCipherSuites":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "sslCtx":J
    .restart local v8    # "supportsKeyManagerFactory":Z
    .restart local v9    # "useKeyManagerFactory":Z
    .restart local v10    # "tlsv13Supported":Z
    .restart local v11    # "namedGroups":[Ljava/lang/String;
    .restart local v12    # "defaultConvertedNamedGroups":[Ljava/lang/String;
    .restart local v13    # "certBio":J
    .restart local v17    # "keyBio":J
    .restart local v19    # "cert":J
    .restart local v21    # "key":J
    .restart local v25    # "cause":Ljava/lang/Throwable;
    .restart local v26    # "ssl":J
    :catchall_14
    move-exception v0

    move/from16 v24, v8

    move v15, v9

    :goto_19
    :try_start_23
    invoke-static/range {v26 .. v27}, Lio/netty/internal/tcnative/SSL;->freeSSL(J)V

    .line 322
    cmp-long v1, v13, v32

    if-eqz v1, :cond_1a

    .line 323
    invoke-static {v13, v14}, Lio/netty/internal/tcnative/SSL;->freeBIO(J)V

    .line 325
    :cond_1a
    cmp-long v1, v17, v32

    if-eqz v1, :cond_1b

    .line 326
    invoke-static/range {v17 .. v18}, Lio/netty/internal/tcnative/SSL;->freeBIO(J)V

    .line 328
    :cond_1b
    cmp-long v1, v19, v32

    if-eqz v1, :cond_1c

    .line 329
    invoke-static/range {v19 .. v20}, Lio/netty/internal/tcnative/SSL;->freeX509Chain(J)V

    .line 331
    :cond_1c
    cmp-long v1, v21, v32

    if-eqz v1, :cond_1d

    .line 332
    invoke-static/range {v21 .. v22}, Lio/netty/internal/tcnative/SSL;->freePrivateKey(J)V

    .line 334
    :cond_1d
    nop

    .end local v3    # "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "availableOpenSslCipherSuites":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "sslCtx":J
    .end local v8    # "supportsKeyManagerFactory":Z
    .end local v9    # "useKeyManagerFactory":Z
    .end local v10    # "tlsv13Supported":Z
    .end local v11    # "namedGroups":[Ljava/lang/String;
    .end local v12    # "defaultConvertedNamedGroups":[Ljava/lang/String;
    .end local v13    # "certBio":J
    .end local v17    # "keyBio":J
    .end local v19    # "cert":J
    .end local v21    # "key":J
    .end local v25    # "cause":Ljava/lang/Throwable;
    throw v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_15

    .line 374
    .end local v26    # "ssl":J
    .restart local v3    # "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "availableOpenSslCipherSuites":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "sslCtx":J
    .restart local v8    # "supportsKeyManagerFactory":Z
    .restart local v9    # "useKeyManagerFactory":Z
    .restart local v10    # "tlsv13Supported":Z
    .restart local v11    # "namedGroups":[Ljava/lang/String;
    .restart local v12    # "defaultConvertedNamedGroups":[Ljava/lang/String;
    .restart local v13    # "certBio":J
    .restart local v17    # "keyBio":J
    .restart local v19    # "cert":J
    .restart local v21    # "key":J
    .restart local v25    # "cause":Ljava/lang/Throwable;
    :catchall_15
    move-exception v0

    goto :goto_1a

    :catchall_16
    move-exception v0

    move/from16 v24, v8

    move v15, v9

    .end local v8    # "supportsKeyManagerFactory":Z
    .end local v9    # "useKeyManagerFactory":Z
    .local v15, "useKeyManagerFactory":Z
    .restart local v24    # "supportsKeyManagerFactory":Z
    goto :goto_1a

    .end local v15    # "useKeyManagerFactory":Z
    .end local v24    # "supportsKeyManagerFactory":Z
    .end local v25    # "cause":Ljava/lang/Throwable;
    .local v2, "cause":Ljava/lang/Throwable;
    .restart local v8    # "supportsKeyManagerFactory":Z
    .restart local v9    # "useKeyManagerFactory":Z
    :catchall_17
    move-exception v0

    move-object/from16 v25, v2

    move/from16 v24, v8

    move v15, v9

    .end local v2    # "cause":Ljava/lang/Throwable;
    .restart local v25    # "cause":Ljava/lang/Throwable;
    :goto_1a
    :try_start_24
    invoke-static {v6, v7}, Lio/netty/internal/tcnative/SSLContext;->free(J)I

    .line 375
    nop

    .end local v3    # "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "availableOpenSslCipherSuites":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "supportsKeyManagerFactory":Z
    .end local v9    # "useKeyManagerFactory":Z
    .end local v10    # "tlsv13Supported":Z
    .end local v11    # "namedGroups":[Ljava/lang/String;
    .end local v12    # "defaultConvertedNamedGroups":[Ljava/lang/String;
    .end local v25    # "cause":Ljava/lang/Throwable;
    throw v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_b

    .line 376
    .end local v6    # "sslCtx":J
    .end local v13    # "certBio":J
    .end local v17    # "keyBio":J
    .end local v19    # "cert":J
    .end local v21    # "key":J
    .restart local v3    # "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "availableOpenSslCipherSuites":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "supportsKeyManagerFactory":Z
    .restart local v9    # "useKeyManagerFactory":Z
    .restart local v10    # "tlsv13Supported":Z
    .restart local v11    # "namedGroups":[Ljava/lang/String;
    .restart local v12    # "defaultConvertedNamedGroups":[Ljava/lang/String;
    .restart local v25    # "cause":Ljava/lang/Throwable;
    :catch_b
    move-exception v0

    goto :goto_1b

    .end local v25    # "cause":Ljava/lang/Throwable;
    .restart local v2    # "cause":Ljava/lang/Throwable;
    :catch_c
    move-exception v0

    move-object/from16 v25, v2

    move/from16 v24, v8

    move v15, v9

    .line 377
    .end local v2    # "cause":Ljava/lang/Throwable;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v25    # "cause":Ljava/lang/Throwable;
    :goto_1b
    sget-object v1, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to get the list of available OpenSSL cipher suites."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 379
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1c
    sput-object v11, Lio/netty/handler/ssl/OpenSsl;->NAMED_GROUPS:[Ljava/lang/String;

    .line 380
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_OPENSSL_CIPHER_SUITES:Ljava/util/Set;

    .line 381
    new-instance v0, Ljava/util/LinkedHashSet;

    sget-object v1, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_OPENSSL_CIPHER_SUITES:Ljava/util/Set;

    .line 382
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    move-object v1, v0

    .line 383
    .local v1, "availableJavaCipherSuites":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_OPENSSL_CIPHER_SUITES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 385
    .local v2, "cipher":Ljava/lang/String;
    invoke-static {v2}, Lio/netty/handler/ssl/SslUtils;->isTLSv13Cipher(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 386
    const-string v4, "TLS"

    invoke-static {v2, v4}, Lio/netty/handler/ssl/CipherSuiteConverter;->toJava(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 387
    const-string v4, "SSL"

    invoke-static {v2, v4}, Lio/netty/handler/ssl/CipherSuiteConverter;->toJava(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 390
    :cond_1e
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 392
    .end local v2    # "cipher":Ljava/lang/String;
    :goto_1e
    goto :goto_1d

    .line 394
    :cond_1f
    sget-object v0, Lio/netty/handler/ssl/SslUtils;->DEFAULT_CIPHER_SUITES:[Ljava/lang/String;

    invoke-static {v1, v3, v0}, Lio/netty/handler/ssl/SslUtils;->addIfSupported(Ljava/util/Set;Ljava/util/List;[Ljava/lang/String;)V

    .line 395
    sget-object v0, Lio/netty/handler/ssl/SslUtils;->TLSV13_CIPHER_SUITES:[Ljava/lang/String;

    invoke-static {v1, v3, v0}, Lio/netty/handler/ssl/SslUtils;->addIfSupported(Ljava/util/Set;Ljava/util/List;[Ljava/lang/String;)V

    .line 397
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->EXTRA_SUPPORTED_TLS_1_3_CIPHERS:[Ljava/lang/String;

    invoke-static {v1, v3, v0}, Lio/netty/handler/ssl/SslUtils;->addIfSupported(Ljava/util/Set;Ljava/util/List;[Ljava/lang/String;)V

    .line 399
    invoke-static {v3, v1}, Lio/netty/handler/ssl/SslUtils;->useFallbackCiphersIfDefaultIsEmpty(Ljava/util/List;Ljava/lang/Iterable;)V

    .line 400
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSsl;->DEFAULT_CIPHERS:Ljava/util/List;

    .line 402
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_JAVA_CIPHER_SUITES:Ljava/util/Set;

    .line 404
    new-instance v0, Ljava/util/LinkedHashSet;

    sget-object v2, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_OPENSSL_CIPHER_SUITES:Ljava/util/Set;

    .line 405
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    sget-object v4, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_JAVA_CIPHER_SUITES:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {v0, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    move-object v2, v0

    .line 406
    .local v2, "availableCipherSuites":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_OPENSSL_CIPHER_SUITES:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 407
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_JAVA_CIPHER_SUITES:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 409
    sput-object v2, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_CIPHER_SUITES:Ljava/util/Set;

    .line 410
    sput-boolean v8, Lio/netty/handler/ssl/OpenSsl;->SUPPORTS_KEYMANAGER_FACTORY:Z

    .line 411
    sput-boolean v9, Lio/netty/handler/ssl/OpenSsl;->USE_KEYMANAGER_FACTORY:Z

    .line 413
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v4, 0x6

    invoke-direct {v0, v4}, Ljava/util/LinkedHashSet;-><init>(I)V

    move-object v4, v0

    .line 415
    .local v4, "protocols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "SSLv2Hello"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 416
    sget v0, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv2:I

    const/4 v6, 0x1

    invoke-static {v6, v0}, Lio/netty/handler/ssl/OpenSsl;->doesSupportProtocol(II)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 417
    const-string v0, "SSLv2"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_20
    sget v0, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv3:I

    const/4 v6, 0x2

    invoke-static {v6, v0}, Lio/netty/handler/ssl/OpenSsl;->doesSupportProtocol(II)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 420
    const-string v0, "SSLv3"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_21
    const/4 v0, 0x4

    sget v6, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1:I

    invoke-static {v0, v6}, Lio/netty/handler/ssl/OpenSsl;->doesSupportProtocol(II)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 423
    const-string v0, "TLSv1"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_22
    const/16 v0, 0x8

    sget v6, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_1:I

    invoke-static {v0, v6}, Lio/netty/handler/ssl/OpenSsl;->doesSupportProtocol(II)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 426
    const-string v0, "TLSv1.1"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_23
    const/16 v0, 0x10

    sget v6, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_2:I

    invoke-static {v0, v6}, Lio/netty/handler/ssl/OpenSsl;->doesSupportProtocol(II)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 429
    const-string v0, "TLSv1.2"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_24
    if-eqz v10, :cond_25

    const/16 v0, 0x20

    sget v6, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_3:I

    invoke-static {v0, v6}, Lio/netty/handler/ssl/OpenSsl;->doesSupportProtocol(II)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 434
    const-string v0, "TLSv1.3"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 435
    const/4 v6, 0x1

    sput-boolean v6, Lio/netty/handler/ssl/OpenSsl;->TLSV13_SUPPORTED:Z

    goto :goto_1f

    .line 437
    :cond_25
    const/4 v6, 0x0

    sput-boolean v6, Lio/netty/handler/ssl/OpenSsl;->TLSV13_SUPPORTED:Z

    .line 440
    :goto_1f
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSsl;->SUPPORTED_PROTOCOLS_SET:Ljava/util/Set;

    .line 441
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->doesSupportOcsp()Z

    move-result v0

    sput-boolean v0, Lio/netty/handler/ssl/OpenSsl;->SUPPORTS_OCSP:Z

    .line 443
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 444
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "Supported protocols (OpenSSL): {} "

    sget-object v7, Lio/netty/handler/ssl/OpenSsl;->SUPPORTED_PROTOCOLS_SET:Ljava/util/Set;

    invoke-interface {v0, v6, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 445
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "Default cipher suites (OpenSSL): {}"

    sget-object v7, Lio/netty/handler/ssl/OpenSsl;->DEFAULT_CIPHERS:Ljava/util/List;

    invoke-interface {v0, v6, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 453
    :cond_26
    :try_start_25
    const-string v0, "-----BEGIN CERTIFICATE-----\nMIICrjCCAZagAwIBAgIIdSvQPv1QAZQwDQYJKoZIhvcNAQELBQAwFjEUMBIGA1UEAxMLZXhhbXBs\nZS5jb20wIBcNMTgwNDA2MjIwNjU5WhgPOTk5OTEyMzEyMzU5NTlaMBYxFDASBgNVBAMTC2V4YW1w\nbGUuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAggbWsmDQ6zNzRZ5AW8E3eoGl\nqWvOBDb5Fs1oBRrVQHuYmVAoaqwDzXYJ0LOwa293AgWEQ1jpcbZ2hpoYQzqEZBTLnFhMrhRFlH6K\nbJND8Y33kZ/iSVBBDuGbdSbJShlM+4WwQ9IAso4MZ4vW3S1iv5fGGpLgbtXRmBf/RU8omN0Gijlv\nWlLWHWijLN8xQtySFuBQ7ssW8RcKAary3pUm6UUQB+Co6lnfti0Tzag8PgjhAJq2Z3wbsGRnP2YS\nvYoaK6qzmHXRYlp/PxrjBAZAmkLJs4YTm/XFF+fkeYx4i9zqHbyone5yerRibsHaXZWLnUL+rFoe\nMdKvr0VS3sGmhQIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQADQi441pKmXf9FvUV5EHU4v8nJT9Iq\nyqwsKwXnr7AsUlDGHBD7jGrjAXnG5rGxuNKBQ35wRxJATKrUtyaquFUL6H8O6aGQehiFTk6zmPbe\n12Gu44vqqTgIUxnv3JQJiox8S2hMxsSddpeCmSdvmalvD6WG4NthH6B9ZaBEiep1+0s0RUaBYn73\nI7CCUaAtbjfR6pcJjrFk5ei7uwdQZFSJtkP2z8r7zfeANJddAKFlkaMWn7u+OIVuB4XPooWicObk\nNAHFtP65bocUYnDpTVdiyvn8DdqyZ/EO8n1bBKBzuSLplk2msW4pdgaFgY7Vw/0wzcFXfUXmL1uy\nG8sQD/wx\n-----END CERTIFICATE-----"

    sget-object v6, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;
    :try_end_25
    .catch Ljavax/security/cert/CertificateException; {:try_start_25 .. :try_end_25} :catch_d

    .line 454
    const/4 v0, 0x1

    .line 457
    .local v0, "javaxCertificateCreationSupported":Z
    goto :goto_20

    .line 455
    .end local v0    # "javaxCertificateCreationSupported":Z
    :catch_d
    move-exception v0

    .line 456
    .local v0, "ex":Ljavax/security/cert/CertificateException;
    const/4 v6, 0x0

    move v0, v6

    .line 458
    .local v0, "javaxCertificateCreationSupported":Z
    :goto_20
    sput-boolean v0, Lio/netty/handler/ssl/OpenSsl;->JAVAX_CERTIFICATE_CREATION_SUPPORTED:Z

    .line 459
    .end local v0    # "javaxCertificateCreationSupported":Z
    .end local v1    # "availableJavaCipherSuites":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "availableCipherSuites":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "protocols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "availableOpenSslCipherSuites":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "supportsKeyManagerFactory":Z
    .end local v9    # "useKeyManagerFactory":Z
    .end local v10    # "tlsv13Supported":Z
    .end local v11    # "namedGroups":[Ljava/lang/String;
    .end local v12    # "defaultConvertedNamedGroups":[Ljava/lang/String;
    goto :goto_21

    .line 460
    .end local v25    # "cause":Ljava/lang/Throwable;
    .local v2, "cause":Ljava/lang/Throwable;
    :cond_27
    move-object/from16 v25, v2

    .end local v2    # "cause":Ljava/lang/Throwable;
    .restart local v25    # "cause":Ljava/lang/Throwable;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lio/netty/handler/ssl/OpenSsl;->DEFAULT_CIPHERS:Ljava/util/List;

    .line 461
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_OPENSSL_CIPHER_SUITES:Ljava/util/Set;

    .line 462
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_JAVA_CIPHER_SUITES:Ljava/util/Set;

    .line 463
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_CIPHER_SUITES:Ljava/util/Set;

    .line 464
    const/4 v1, 0x0

    sput-boolean v1, Lio/netty/handler/ssl/OpenSsl;->SUPPORTS_KEYMANAGER_FACTORY:Z

    .line 465
    sput-boolean v1, Lio/netty/handler/ssl/OpenSsl;->USE_KEYMANAGER_FACTORY:Z

    .line 466
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lio/netty/handler/ssl/OpenSsl;->SUPPORTED_PROTOCOLS_SET:Ljava/util/Set;

    .line 467
    sput-boolean v1, Lio/netty/handler/ssl/OpenSsl;->SUPPORTS_OCSP:Z

    .line 468
    sput-boolean v1, Lio/netty/handler/ssl/OpenSsl;->TLSV13_SUPPORTED:Z

    .line 469
    sput-boolean v1, Lio/netty/handler/ssl/OpenSsl;->IS_BORINGSSL:Z

    .line 470
    sget-object v2, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    sput-object v2, Lio/netty/handler/ssl/OpenSsl;->EXTRA_SUPPORTED_TLS_1_3_CIPHERS:[Ljava/lang/String;

    .line 471
    sput-object v0, Lio/netty/handler/ssl/OpenSsl;->EXTRA_SUPPORTED_TLS_1_3_CIPHERS_STRING:Ljava/lang/String;

    .line 472
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->DEFAULT_NAMED_GROUPS:[Ljava/lang/String;

    sput-object v0, Lio/netty/handler/ssl/OpenSsl;->NAMED_GROUPS:[Ljava/lang/String;

    .line 473
    sput-boolean v1, Lio/netty/handler/ssl/OpenSsl;->JAVAX_CERTIFICATE_CREATION_SUPPORTED:Z

    .line 475
    .end local v25    # "cause":Ljava/lang/Throwable;
    :goto_21
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static availableCipherSuites()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 636
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->availableOpenSslCipherSuites()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static availableJavaCipherSuites()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 652
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_JAVA_CIPHER_SUITES:Ljava/util/Set;

    return-object v0
.end method

.method public static availableOpenSslCipherSuites()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 644
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_OPENSSL_CIPHER_SUITES:Ljava/util/Set;

    return-object v0
.end method

.method static checkTls13Ciphers(Lio/netty/util/internal/logging/InternalLogger;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "logger"    # Lio/netty/util/internal/logging/InternalLogger;
    .param p1, "ciphers"    # Ljava/lang/String;

    .line 478
    sget-boolean v0, Lio/netty/handler/ssl/OpenSsl;->IS_BORINGSSL:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 479
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->EXTRA_SUPPORTED_TLS_1_3_CIPHERS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 480
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lio/netty/handler/ssl/OpenSsl;->EXTRA_SUPPORTED_TLS_1_3_CIPHERS:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 481
    .local v0, "boringsslTlsv13Ciphers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lio/netty/handler/ssl/OpenSsl;->EXTRA_SUPPORTED_TLS_1_3_CIPHERS:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 482
    const/4 v1, 0x0

    .line 483
    .local v1, "ciphersNotMatch":Z
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const-string v7, "TLS"

    if-ge v6, v4, :cond_2

    aget-object v8, v3, v6

    .line 484
    .local v8, "cipher":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 485
    const/4 v1, 0x1

    .line 486
    goto :goto_1

    .line 488
    :cond_0
    invoke-interface {v0, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 489
    invoke-static {v8, v7}, Lio/netty/handler/ssl/CipherSuiteConverter;->toJava(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 490
    const/4 v1, 0x1

    .line 491
    goto :goto_1

    .line 483
    .end local v8    # "cipher":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 496
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    or-int/2addr v1, v3

    .line 498
    if-eqz v1, :cond_6

    .line 499
    invoke-interface {p0}, Lio/netty/util/internal/logging/InternalLogger;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 500
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 501
    .local v3, "javaCiphers":Ljava/lang/StringBuilder;
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    :goto_2
    if-ge v5, v6, :cond_3

    aget-object v8, v4, v5

    .line 502
    .restart local v8    # "cipher":Ljava/lang/String;
    invoke-static {v8, v7}, Lio/netty/handler/ssl/CipherSuiteConverter;->toJava(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .end local v8    # "cipher":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 504
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 505
    const-string v2, "BoringSSL doesn\'t allow to enable or disable TLSv1.3 ciphers explicitly. Provided TLSv1.3 ciphers: \'{}\', default TLSv1.3 ciphers that will be used: \'{}\'."

    sget-object v4, Lio/netty/handler/ssl/OpenSsl;->EXTRA_SUPPORTED_TLS_1_3_CIPHERS_STRING:Ljava/lang/String;

    invoke-interface {p0, v2, v3, v4}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 510
    .end local v3    # "javaCiphers":Ljava/lang/StringBuilder;
    :cond_4
    sget-object v2, Lio/netty/handler/ssl/OpenSsl;->EXTRA_SUPPORTED_TLS_1_3_CIPHERS_STRING:Ljava/lang/String;

    return-object v2

    .line 479
    .end local v0    # "boringsslTlsv13Ciphers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "ciphersNotMatch":Z
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 513
    :cond_6
    return-object p1
.end method

.method static defaultProtocols(Z)[Ljava/lang/String;
    .locals 5
    .param p0, "isClient"    # Z

    .line 774
    if-eqz p0, :cond_0

    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->CLIENT_DEFAULT_PROTOCOLS:Ljava/util/Set;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->SERVER_DEFAULT_PROTOCOLS:Ljava/util/Set;

    .line 775
    .local v0, "defaultProtocols":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_0
    if-nez v0, :cond_1

    .line 776
    const/4 v1, 0x0

    return-object v1

    .line 778
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 779
    .local v1, "protocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 780
    .local v3, "proto":Ljava/lang/String;
    sget-object v4, Lio/netty/handler/ssl/OpenSsl;->SUPPORTED_PROTOCOLS_SET:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 781
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    .end local v3    # "proto":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 784
    :cond_3
    sget-object v2, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method private static doesSupportOcsp()Z
    .locals 7

    .line 530
    const/4 v0, 0x0

    .line 531
    .local v0, "supportsOcsp":Z
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->version()I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0x10002000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 532
    const-wide/16 v1, -0x1

    .line 534
    .local v1, "sslCtx":J
    const/16 v3, 0x10

    const/4 v4, 0x1

    const-wide/16 v5, -0x1

    :try_start_0
    invoke-static {v3, v4}, Lio/netty/internal/tcnative/SSLContext;->make(II)J

    move-result-wide v3

    move-wide v1, v3

    .line 535
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lio/netty/internal/tcnative/SSLContext;->enableOcsp(JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    const/4 v0, 0x1

    .line 540
    cmp-long v3, v1, v5

    if-eqz v3, :cond_1

    .line 541
    :goto_0
    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSLContext;->free(J)I

    goto :goto_1

    .line 540
    :catchall_0
    move-exception v3

    cmp-long v4, v1, v5

    if-eqz v4, :cond_0

    .line 541
    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSLContext;->free(J)I

    .line 543
    :cond_0
    throw v3

    .line 537
    :catch_0
    move-exception v3

    .line 540
    cmp-long v3, v1, v5

    if-eqz v3, :cond_1

    .line 541
    goto :goto_0

    .line 545
    .end local v1    # "sslCtx":J
    :cond_1
    :goto_1
    return v0
.end method

.method private static doesSupportProtocol(II)Z
    .locals 8
    .param p0, "protocol"    # I
    .param p1, "opt"    # I

    .line 548
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 550
    return v0

    .line 552
    :cond_0
    const-wide/16 v1, -0x1

    .line 554
    .local v1, "sslCtx":J
    const/4 v3, 0x2

    const-wide/16 v4, -0x1

    :try_start_0
    invoke-static {p0, v3}, Lio/netty/internal/tcnative/SSLContext;->make(II)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v6

    .line 555
    .end local v1    # "sslCtx":J
    .local v0, "sslCtx":J
    nop

    .line 559
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 560
    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSLContext;->free(J)I

    .line 555
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 559
    .end local v0    # "sslCtx":J
    .restart local v1    # "sslCtx":J
    :catchall_0
    move-exception v0

    cmp-long v3, v1, v4

    if-eqz v3, :cond_2

    .line 560
    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSLContext;->free(J)I

    .line 562
    :cond_2
    throw v0

    .line 556
    :catch_0
    move-exception v3

    .line 557
    .local v3, "ignore":Ljava/lang/Exception;
    nop

    .line 559
    cmp-long v4, v1, v4

    if-eqz v4, :cond_3

    .line 560
    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSLContext;->free(J)I

    .line 557
    :cond_3
    return v0
.end method

.method public static ensureAvailability()V
    .locals 2

    .line 615
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 619
    return-void

    .line 616
    :cond_0
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    const-string v1, "failed to load the required native library"

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    sget-object v1, Lio/netty/handler/ssl/OpenSsl;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    .line 617
    invoke-virtual {v0, v1}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0
.end method

.method private static initializeTcNative(Ljava/lang/String;)Z
    .locals 1
    .param p0, "engine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 730
    const-string v0, "provided"

    invoke-static {v0, p0}, Lio/netty/internal/tcnative/Library;->initialize(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAlpnSupported()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 582
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->version()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x10002000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAvailable()Z
    .locals 1

    .line 571
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isBoringSSL()Z
    .locals 1

    .line 788
    sget-boolean v0, Lio/netty/handler/ssl/OpenSsl;->IS_BORINGSSL:Z

    return v0
.end method

.method public static isCipherSuiteAvailable(Ljava/lang/String;)Z
    .locals 2
    .param p0, "cipherSuite"    # Ljava/lang/String;

    .line 660
    sget-boolean v0, Lio/netty/handler/ssl/OpenSsl;->IS_BORINGSSL:Z

    invoke-static {p0, v0}, Lio/netty/handler/ssl/CipherSuiteConverter;->toOpenSsl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, "converted":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 662
    move-object p0, v0

    .line 664
    :cond_0
    sget-object v1, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_OPENSSL_CIPHER_SUITES:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isOcspSupported()Z
    .locals 1

    .line 589
    sget-boolean v0, Lio/netty/handler/ssl/OpenSsl;->SUPPORTS_OCSP:Z

    return v0
.end method

.method static isOptionSupported(Lio/netty/handler/ssl/SslContextOption;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/ssl/SslContextOption<",
            "*>;)Z"
        }
    .end annotation

    .line 744
    .local p0, "option":Lio/netty/handler/ssl/SslContextOption;, "Lio/netty/handler/ssl/SslContextOption<*>;"
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 745
    sget-object v0, Lio/netty/handler/ssl/OpenSslContextOption;->USE_TASKS:Lio/netty/handler/ssl/OpenSslContextOption;

    const/4 v2, 0x1

    if-ne p0, v0, :cond_0

    .line 746
    return v2

    .line 749
    :cond_0
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isBoringSSL()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 750
    sget-object v0, Lio/netty/handler/ssl/OpenSslContextOption;->ASYNC_PRIVATE_KEY_METHOD:Lio/netty/handler/ssl/OpenSslContextOption;

    if-eq p0, v0, :cond_1

    sget-object v0, Lio/netty/handler/ssl/OpenSslContextOption;->PRIVATE_KEY_METHOD:Lio/netty/handler/ssl/OpenSslContextOption;

    if-eq p0, v0, :cond_1

    sget-object v0, Lio/netty/handler/ssl/OpenSslContextOption;->CERTIFICATE_COMPRESSION_ALGORITHMS:Lio/netty/handler/ssl/OpenSslContextOption;

    if-eq p0, v0, :cond_1

    sget-object v0, Lio/netty/handler/ssl/OpenSslContextOption;->TLS_FALSE_START:Lio/netty/handler/ssl/OpenSslContextOption;

    if-eq p0, v0, :cond_1

    sget-object v0, Lio/netty/handler/ssl/OpenSslContextOption;->MAX_CERTIFICATE_LIST_BYTES:Lio/netty/handler/ssl/OpenSslContextOption;

    if-ne p0, v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    .line 757
    :cond_3
    return v1
.end method

.method static isSessionCacheSupported()Z
    .locals 4

    .line 517
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->version()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x10100000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isTlsv13Supported()Z
    .locals 1

    .line 740
    sget-boolean v0, Lio/netty/handler/ssl/OpenSsl;->TLSV13_SUPPORTED:Z

    return v0
.end method

.method private static loadTcNative()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 699
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->normalizedOs()Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, "os":Ljava/lang/String;
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->normalizedArch()Ljava/lang/String;

    move-result-object v1

    .line 702
    .local v1, "arch":Ljava/lang/String;
    new-instance v2, Ljava/util/LinkedHashSet;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 703
    .local v2, "libNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "netty_tcnative"

    .line 707
    .local v3, "staticLibName":Ljava/lang/String;
    const-string v4, "linux"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x5f

    const-string v6, "_"

    if-eqz v4, :cond_1

    .line 708
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->normalizedLinuxClassifiers()Ljava/util/Set;

    move-result-object v4

    .line 709
    .local v4, "classifiers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 710
    .local v8, "classifier":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 711
    .end local v8    # "classifier":Ljava/lang/String;
    goto :goto_0

    .line 713
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 718
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_fedora"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 719
    .end local v4    # "classifiers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_1

    .line 720
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 722
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 723
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 725
    const-class v4, Lio/netty/internal/tcnative/SSLContext;

    invoke-static {v4}, Lio/netty/util/internal/PlatformDependent;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v4

    sget-object v5, Lio/netty/util/internal/EmptyArrays;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 726
    invoke-interface {v2, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 725
    invoke-static {v4, v5}, Lio/netty/util/internal/NativeLibraryLoader;->loadFirstAvailable(Ljava/lang/ClassLoader;[Ljava/lang/String;)V

    .line 727
    return-void
.end method

.method static memoryAddress(Lio/netty/buffer/ByteBuf;)J
    .locals 2
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 690
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 691
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    goto :goto_0

    .line 693
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lio/netty/internal/tcnative/Buffer;->address(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 691
    :goto_0
    return-wide v0

    .line 690
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static protocols(Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .param p0, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 761
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 762
    .local v1, "protocolsString":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 763
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 764
    .local v0, "protocols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 765
    .local v5, "proto":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 766
    .local v6, "p":Ljava/lang/String;
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 764
    .end local v5    # "proto":Ljava/lang/String;
    .end local v6    # "p":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 768
    :cond_0
    return-object v0

    .line 770
    .end local v0    # "protocols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-object v0
.end method

.method static releaseIfNeeded(Lio/netty/util/ReferenceCounted;)V
    .locals 1
    .param p0, "counted"    # Lio/netty/util/ReferenceCounted;

    .line 734
    invoke-interface {p0}, Lio/netty/util/ReferenceCounted;->refCnt()I

    move-result v0

    if-lez v0, :cond_0

    .line 735
    invoke-static {p0}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 737
    :cond_0
    return-void
.end method

.method static selfSignedCertificate()Ljava/security/cert/X509Certificate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 524
    sget-object v0, Lio/netty/handler/ssl/SslContext;->X509_CERT_FACTORY:Ljava/security/cert/CertificateFactory;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    .line 525
    const-string v3, "-----BEGIN CERTIFICATE-----\nMIICrjCCAZagAwIBAgIIdSvQPv1QAZQwDQYJKoZIhvcNAQELBQAwFjEUMBIGA1UEAxMLZXhhbXBs\nZS5jb20wIBcNMTgwNDA2MjIwNjU5WhgPOTk5OTEyMzEyMzU5NTlaMBYxFDASBgNVBAMTC2V4YW1w\nbGUuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAggbWsmDQ6zNzRZ5AW8E3eoGl\nqWvOBDb5Fs1oBRrVQHuYmVAoaqwDzXYJ0LOwa293AgWEQ1jpcbZ2hpoYQzqEZBTLnFhMrhRFlH6K\nbJND8Y33kZ/iSVBBDuGbdSbJShlM+4WwQ9IAso4MZ4vW3S1iv5fGGpLgbtXRmBf/RU8omN0Gijlv\nWlLWHWijLN8xQtySFuBQ7ssW8RcKAary3pUm6UUQB+Co6lnfti0Tzag8PgjhAJq2Z3wbsGRnP2YS\nvYoaK6qzmHXRYlp/PxrjBAZAmkLJs4YTm/XFF+fkeYx4i9zqHbyone5yerRibsHaXZWLnUL+rFoe\nMdKvr0VS3sGmhQIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQADQi441pKmXf9FvUV5EHU4v8nJT9Iq\nyqwsKwXnr7AsUlDGHBD7jGrjAXnG5rGxuNKBQ35wRxJATKrUtyaquFUL6H8O6aGQehiFTk6zmPbe\n12Gu44vqqTgIUxnv3JQJiox8S2hMxsSddpeCmSdvmalvD6WG4NthH6B9ZaBEiep1+0s0RUaBYn73\nI7CCUaAtbjfR6pcJjrFk5ei7uwdQZFSJtkP2z8r7zfeANJddAKFlkaMWn7u+OIVuB4XPooWicObk\nNAHFtP65bocUYnDpTVdiyvn8DdqyZ/EO8n1bBKBzuSLplk2msW4pdgaFgY7Vw/0wzcFXfUXmL1uy\nG8sQD/wx\n-----END CERTIFICATE-----"

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 524
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public static supportsHostnameValidation()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 682
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public static supportsKeyManagerFactory()Z
    .locals 1

    .line 671
    sget-boolean v0, Lio/netty/handler/ssl/OpenSsl;->SUPPORTS_KEYMANAGER_FACTORY:Z

    return v0
.end method

.method public static unavailabilityCause()Ljava/lang/Throwable;
    .locals 1

    .line 628
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    return-object v0
.end method

.method static useKeyManagerFactory()Z
    .locals 1

    .line 686
    sget-boolean v0, Lio/netty/handler/ssl/OpenSsl;->USE_KEYMANAGER_FACTORY:Z

    return v0
.end method

.method public static version()I
    .locals 1

    .line 597
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/netty/internal/tcnative/SSL;->version()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static versionString()Ljava/lang/String;
    .locals 1

    .line 605
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/netty/internal/tcnative/SSL;->versionString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
