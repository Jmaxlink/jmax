.class final Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$7;
.super Ljava/lang/Object;
.source "BouncyCastleAlpnSslUtils.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$testBCApplicationProtocolSelector:Ljava/lang/Class;

.field final synthetic val$testBCSslEngine:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$7;->val$testBCSslEngine:Ljava/lang/Class;

    iput-object p2, p0, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$7;->val$testBCApplicationProtocolSelector:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$7;->run()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/reflect/Method;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$7;->val$testBCSslEngine:Ljava/lang/Class;

    iget-object v1, p0, Lio/netty/handler/ssl/BouncyCastleAlpnSslUtils$7;->val$testBCApplicationProtocolSelector:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "setBCHandshakeApplicationProtocolSelector"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method
