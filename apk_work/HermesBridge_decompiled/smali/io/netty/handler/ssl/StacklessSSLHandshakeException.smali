.class final Lio/netty/handler/ssl/StacklessSSLHandshakeException;
.super Ljavax/net/ssl/SSLHandshakeException;
.source "StacklessSSLHandshakeException.java"


# static fields
.field private static final serialVersionUID:J = -0x11465a961db3763dL


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method static newInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/handler/ssl/StacklessSSLHandshakeException;
    .locals 1
    .param p0, "reason"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lio/netty/handler/ssl/StacklessSSLHandshakeException;"
        }
    .end annotation

    .line 44
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lio/netty/handler/ssl/StacklessSSLHandshakeException;

    invoke-direct {v0, p0}, Lio/netty/handler/ssl/StacklessSSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lio/netty/handler/ssl/StacklessSSLHandshakeException;

    return-object v0
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    .line 37
    return-object p0
.end method
