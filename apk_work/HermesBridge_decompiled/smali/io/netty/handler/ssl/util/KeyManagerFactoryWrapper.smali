.class public final Lio/netty/handler/ssl/util/KeyManagerFactoryWrapper;
.super Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;
.source "KeyManagerFactoryWrapper.java"


# instance fields
.field private final km:Ljavax/net/ssl/KeyManager;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/KeyManager;)V
    .locals 1
    .param p1, "km"    # Ljavax/net/ssl/KeyManager;

    .line 28
    invoke-direct {p0}, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;-><init>()V

    .line 29
    const-string v0, "km"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/KeyManager;

    iput-object v0, p0, Lio/netty/handler/ssl/util/KeyManagerFactoryWrapper;->km:Ljavax/net/ssl/KeyManager;

    .line 30
    return-void
.end method


# virtual methods
.method protected engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;
    .locals 3

    .line 41
    iget-object v0, p0, Lio/netty/handler/ssl/util/KeyManagerFactoryWrapper;->km:Ljavax/net/ssl/KeyManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/KeyManager;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method protected engineInit(Ljava/security/KeyStore;[C)V
    .locals 0
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "var2"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    return-void
.end method

.method protected engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 0
    .param p1, "managerFactoryParameters"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    return-void
.end method
