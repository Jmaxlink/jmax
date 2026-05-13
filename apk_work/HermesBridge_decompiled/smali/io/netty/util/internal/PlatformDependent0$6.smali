.class final Lio/netty/util/internal/PlatformDependent0$6;
.super Ljava/lang/Object;
.source "PlatformDependent0.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/PlatformDependent0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$maybeMaxMemory:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lio/netty/util/internal/PlatformDependent0$6;->val$maybeMaxMemory:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 13

    .line 349
    :try_start_0
    const-string v0, "java.nio.Bits"

    .line 350
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 351
    .local v0, "bitsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->javaVersion()I

    move-result v1

    .line 352
    .local v1, "version":I
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->access$000()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v4, "unaligned"

    if-eqz v3, :cond_4

    const/16 v3, 0x9

    if-lt v1, v3, :cond_4

    .line 354
    const/16 v3, 0xb

    if-lt v1, v3, :cond_0

    :try_start_1
    const-string v5, "MAX_MEMORY"

    goto :goto_0

    :cond_0
    const-string v5, "maxMemory"
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 358
    .local v5, "fieldName":Ljava/lang/String;
    :goto_0
    :try_start_2
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 359
    .local v6, "maxMemoryField":Ljava/lang/reflect/Field;
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_1

    .line 360
    sget-object v7, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v7, v6}, Lsun/misc/Unsafe;->staticFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    .line 361
    .local v7, "offset":J
    sget-object v9, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v9, v6}, Lsun/misc/Unsafe;->staticFieldBase(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v9

    .line 362
    .local v9, "object":Ljava/lang/Object;
    iget-object v10, p0, Lio/netty/util/internal/PlatformDependent0$6;->val$maybeMaxMemory:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v11, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v11, v9, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 366
    .end local v6    # "maxMemoryField":Ljava/lang/reflect/Field;
    .end local v7    # "offset":J
    .end local v9    # "object":Ljava/lang/Object;
    :cond_1
    goto :goto_1

    .line 364
    :catchall_0
    move-exception v6

    .line 367
    :goto_1
    if-lt v1, v3, :cond_2

    :try_start_3
    const-string v3, "UNALIGNED"
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :cond_2
    move-object v3, v4

    .line 369
    .end local v5    # "fieldName":Ljava/lang/String;
    .local v3, "fieldName":Ljava/lang/String;
    :goto_2
    :try_start_4
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 370
    .local v5, "unalignedField":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_3

    .line 371
    sget-object v6, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v6, v5}, Lsun/misc/Unsafe;->staticFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    .line 372
    .local v6, "offset":J
    sget-object v8, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v8, v5}, Lsun/misc/Unsafe;->staticFieldBase(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v8

    .line 373
    .local v8, "object":Ljava/lang/Object;
    sget-object v9, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v9, v8, v6, v7}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_1

    return-object v2

    .line 379
    .end local v5    # "unalignedField":Ljava/lang/reflect/Field;
    .end local v6    # "offset":J
    .end local v8    # "object":Ljava/lang/Object;
    :cond_3
    goto :goto_3

    .line 377
    :catch_0
    move-exception v5

    .line 381
    .end local v3    # "fieldName":Ljava/lang/String;
    :cond_4
    :goto_3
    :try_start_5
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 382
    .local v3, "unalignedMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lio/netty/util/internal/ReflectionUtil;->trySetAccessible(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/Throwable;

    move-result-object v4

    .line 383
    .local v4, "cause":Ljava/lang/Throwable;
    if-eqz v4, :cond_5

    .line 384
    return-object v4

    .line 386
    :cond_5
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_1

    return-object v2

    .line 395
    .end local v0    # "bitsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "version":I
    .end local v3    # "unalignedMethod":Ljava/lang/reflect/Method;
    .end local v4    # "cause":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    return-object v0

    .line 393
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    return-object v0

    .line 391
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/IllegalAccessException;
    return-object v0

    .line 389
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/SecurityException;
    return-object v0

    .line 387
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_5
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    return-object v0
.end method
