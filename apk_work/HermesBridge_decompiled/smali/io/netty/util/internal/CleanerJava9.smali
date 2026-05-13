.class final Lio/netty/util/internal/CleanerJava9;
.super Ljava/lang/Object;
.source "CleanerJava9.java"

# interfaces
.implements Lio/netty/util/internal/Cleaner;


# static fields
.field private static final INVOKE_CLEANER:Ljava/lang/reflect/Method;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    const-class v0, Lio/netty/util/internal/CleanerJava9;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/CleanerJava9;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 38
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 40
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    new-instance v1, Lio/netty/util/internal/CleanerJava9$1;

    invoke-direct {v1, v0}, Lio/netty/util/internal/CleanerJava9$1;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .line 59
    .local v1, "maybeInvokeMethod":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 60
    const/4 v2, 0x0

    .line 61
    .local v2, "method":Ljava/lang/reflect/Method;
    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    .local v3, "error":Ljava/lang/Throwable;
    goto :goto_0

    .line 63
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "error":Ljava/lang/Throwable;
    :cond_0
    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/Method;

    .line 64
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 66
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "maybeInvokeMethod":Ljava/lang/Object;
    .restart local v3    # "error":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 67
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "error":Ljava/lang/Throwable;
    :cond_1
    const/4 v2, 0x0

    .line 68
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "sun.misc.Unsafe unavailable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 70
    .restart local v3    # "error":Ljava/lang/Throwable;
    :goto_1
    if-nez v3, :cond_2

    .line 71
    sget-object v0, Lio/netty/util/internal/CleanerJava9;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "java.nio.ByteBuffer.cleaner(): available"

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 73
    :cond_2
    sget-object v0, Lio/netty/util/internal/CleanerJava9;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "java.nio.ByteBuffer.cleaner(): unavailable"

    invoke-interface {v0, v1, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    :goto_2
    sput-object v2, Lio/netty/util/internal/CleanerJava9;->INVOKE_CLEANER:Ljava/lang/reflect/Method;

    .line 76
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "error":Ljava/lang/Throwable;
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/reflect/Method;
    .locals 1

    .line 30
    sget-object v0, Lio/netty/util/internal/CleanerJava9;->INVOKE_CLEANER:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static freeDirectBufferPrivileged(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 98
    new-instance v0, Lio/netty/util/internal/CleanerJava9$2;

    invoke-direct {v0, p0}, Lio/netty/util/internal/CleanerJava9$2;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .line 111
    .local v0, "error":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 112
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent0;->throwException(Ljava/lang/Throwable;)V

    .line 114
    :cond_0
    return-void
.end method

.method static isSupported()Z
    .locals 1

    .line 79
    sget-object v0, Lio/netty/util/internal/CleanerJava9;->INVOKE_CLEANER:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public freeDirectBuffer(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 86
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 88
    :try_start_0
    sget-object v0, Lio/netty/util/internal/CleanerJava9;->INVOKE_CLEANER:Ljava/lang/reflect/Method;

    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent0;->throwException(Ljava/lang/Throwable;)V

    .line 91
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 93
    :cond_0
    invoke-static {p1}, Lio/netty/util/internal/CleanerJava9;->freeDirectBufferPrivileged(Ljava/nio/ByteBuffer;)V

    .line 95
    :goto_1
    return-void
.end method
