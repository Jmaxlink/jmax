.class final Lio/netty/handler/ssl/BouncyCastle;
.super Ljava/lang/Object;
.source "BouncyCastle.java"


# static fields
.field private static final BOUNCY_CASTLE_ON_CLASSPATH:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    const/4 v0, 0x0

    .line 30
    .local v0, "bcOnClasspath":Z
    :try_start_0
    const-string v1, "org.bouncycastle.jsse.provider.BouncyCastleJsseProvider"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    const/4 v0, 0x1

    .line 34
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v1

    .line 35
    :goto_0
    sput-boolean v0, Lio/netty/handler/ssl/BouncyCastle;->BOUNCY_CASTLE_ON_CLASSPATH:Z

    .line 36
    .end local v0    # "bcOnClasspath":Z
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method static isAvailable()Z
    .locals 1

    .line 42
    sget-boolean v0, Lio/netty/handler/ssl/BouncyCastle;->BOUNCY_CASTLE_ON_CLASSPATH:Z

    return v0
.end method

.method static isInUse(Ljavax/net/ssl/SSLEngine;)Z
    .locals 2
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.bouncycastle.jsse.provider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
