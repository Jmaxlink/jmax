.class final Lio/netty/util/internal/PlatformDependent0;
.super Ljava/lang/Object;
.source "PlatformDependent0.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ADDRESS_FIELD_OFFSET:J

.field private static final ALIGN_SLICE:Ljava/lang/reflect/Method;

.field private static final ALLOCATE_ARRAY_METHOD:Ljava/lang/reflect/Method;

.field private static final BITS_MAX_DIRECT_MEMORY:J

.field private static final BYTE_ARRAY_BASE_OFFSET:J

.field private static final DIRECT_BUFFER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final EXPLICIT_NO_UNSAFE_CAUSE:Ljava/lang/Throwable;

.field static final HASH_CODE_ASCII_SEED:I = -0x3d4d51cb

.field static final HASH_CODE_C1:I = -0x3361d2af

.field static final HASH_CODE_C2:I = 0x1b873593

.field private static final INTERNAL_UNSAFE:Ljava/lang/Object;

.field private static final INT_ARRAY_BASE_OFFSET:J

.field private static final INT_ARRAY_INDEX_SCALE:J

.field private static final IS_ANDROID:Z

.field private static final IS_EXPLICIT_TRY_REFLECTION_SET_ACCESSIBLE:Z

.field private static final JAVA_VERSION:I

.field private static final LONG_ARRAY_BASE_OFFSET:J

.field private static final LONG_ARRAY_INDEX_SCALE:J

.field private static final RUNNING_IN_NATIVE_IMAGE:Z

.field private static final STORE_FENCE_AVAILABLE:Z

.field private static final UNALIGNED:Z

.field static final UNSAFE:Lsun/misc/Unsafe;

.field private static final UNSAFE_COPY_THRESHOLD:J = 0x100000L

.field private static final UNSAFE_UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 37
    nop

    .line 40
    const-class v0, Lio/netty/util/internal/PlatformDependent0;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 48
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->explicitNoUnsafeCause0()Ljava/lang/Throwable;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/PlatformDependent0;->EXPLICIT_NO_UNSAFE_CAUSE:Ljava/lang/Throwable;

    .line 51
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->javaVersion0()I

    move-result v0

    sput v0, Lio/netty/util/internal/PlatformDependent0;->JAVA_VERSION:I

    .line 52
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->isAndroid0()Z

    move-result v0

    sput-boolean v0, Lio/netty/util/internal/PlatformDependent0;->IS_ANDROID:Z

    .line 60
    const-string v0, "org.graalvm.nativeimage.imagecode"

    invoke-static {v0}, Lio/netty/util/internal/SystemPropertyUtil;->contains(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lio/netty/util/internal/PlatformDependent0;->RUNNING_IN_NATIVE_IMAGE:Z

    .line 63
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->explicitTryReflectionSetAccessible0()Z

    move-result v0

    sput-boolean v0, Lio/netty/util/internal/PlatformDependent0;->IS_EXPLICIT_TRY_REFLECTION_SET_ACCESSIBLE:Z

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "addressField":Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    .line 86
    .local v1, "allocateArrayMethod":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 88
    .local v2, "unsafeUnavailabilityCause":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 89
    .local v3, "internalUnsafe":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 90
    .local v4, "storeFenceAvailable":Z
    sget-object v5, Lio/netty/util/internal/PlatformDependent0;->EXPLICIT_NO_UNSAFE_CAUSE:Ljava/lang/Throwable;

    move-object v2, v5

    const-wide/16 v6, 0x1

    const-class v8, [B

    const/4 v9, 0x1

    if-eqz v5, :cond_0

    .line 91
    const/4 v5, 0x0

    .line 92
    .local v5, "direct":Ljava/nio/ByteBuffer;
    const/4 v0, 0x0

    .line 93
    const/4 v10, 0x0

    .line 94
    .local v10, "unsafe":Lsun/misc/Unsafe;
    const/4 v3, 0x0

    move-object v9, v5

    move v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_5

    .line 96
    .end local v5    # "direct":Ljava/nio/ByteBuffer;
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    :cond_0
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 99
    .restart local v5    # "direct":Ljava/nio/ByteBuffer;
    new-instance v10, Lio/netty/util/internal/PlatformDependent0$1;

    invoke-direct {v10}, Lio/netty/util/internal/PlatformDependent0$1;-><init>()V

    invoke-static {v10}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v10

    .line 130
    .local v10, "maybeUnsafe":Ljava/lang/Object;
    instance-of v11, v10, Ljava/lang/Throwable;

    if-eqz v11, :cond_2

    .line 131
    const/4 v11, 0x0

    .line 132
    .local v11, "unsafe":Lsun/misc/Unsafe;
    move-object v2, v10

    check-cast v2, Ljava/lang/Throwable;

    .line 133
    sget-object v12, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v12}, Lio/netty/util/internal/logging/InternalLogger;->isTraceEnabled()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 134
    sget-object v12, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v13, "sun.misc.Unsafe.theUnsafe: unavailable"

    move-object v14, v10

    check-cast v14, Ljava/lang/Throwable;

    invoke-interface {v12, v13, v14}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 136
    :cond_1
    sget-object v12, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    move-object v13, v10

    check-cast v13, Ljava/lang/Throwable;

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    const-string v14, "sun.misc.Unsafe.theUnsafe: unavailable: {}"

    invoke-interface {v12, v14, v13}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 139
    .end local v11    # "unsafe":Lsun/misc/Unsafe;
    :cond_2
    move-object v11, v10

    check-cast v11, Lsun/misc/Unsafe;

    .line 140
    .restart local v11    # "unsafe":Lsun/misc/Unsafe;
    sget-object v12, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v13, "sun.misc.Unsafe.theUnsafe: available"

    invoke-interface {v12, v13}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 146
    :goto_0
    if-eqz v11, :cond_5

    .line 147
    move-object v12, v11

    .line 148
    .local v12, "finalUnsafe":Lsun/misc/Unsafe;
    new-instance v13, Lio/netty/util/internal/PlatformDependent0$2;

    invoke-direct {v13, v12}, Lio/netty/util/internal/PlatformDependent0$2;-><init>(Lsun/misc/Unsafe;)V

    invoke-static {v13}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v13

    .line 163
    .local v13, "maybeException":Ljava/lang/Object;
    if-nez v13, :cond_3

    .line 164
    sget-object v14, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v15, "sun.misc.Unsafe.copyMemory: available"

    invoke-interface {v14, v15}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 167
    :cond_3
    const/4 v11, 0x0

    .line 168
    move-object v2, v13

    check-cast v2, Ljava/lang/Throwable;

    .line 169
    sget-object v14, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v14}, Lio/netty/util/internal/logging/InternalLogger;->isTraceEnabled()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 170
    sget-object v14, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v15, "sun.misc.Unsafe.copyMemory: unavailable"

    move-object v9, v13

    check-cast v9, Ljava/lang/Throwable;

    invoke-interface {v14, v15, v9}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 172
    :cond_4
    sget-object v9, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    move-object v14, v13

    check-cast v14, Ljava/lang/Throwable;

    .line 173
    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    .line 172
    const-string v15, "sun.misc.Unsafe.copyMemory: unavailable: {}"

    invoke-interface {v9, v15, v14}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    .end local v12    # "finalUnsafe":Lsun/misc/Unsafe;
    .end local v13    # "maybeException":Ljava/lang/Object;
    :cond_5
    :goto_1
    if-eqz v11, :cond_8

    .line 180
    move-object v9, v11

    .line 181
    .local v9, "finalUnsafe":Lsun/misc/Unsafe;
    new-instance v12, Lio/netty/util/internal/PlatformDependent0$3;

    invoke-direct {v12, v9}, Lio/netty/util/internal/PlatformDependent0$3;-><init>(Lsun/misc/Unsafe;)V

    invoke-static {v12}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v12

    .line 195
    .local v12, "maybeException":Ljava/lang/Object;
    if-nez v12, :cond_6

    .line 196
    sget-object v13, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v14, "sun.misc.Unsafe.storeFence: available"

    invoke-interface {v13, v14}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 197
    const/4 v4, 0x1

    goto :goto_2

    .line 199
    :cond_6
    const/4 v4, 0x0

    .line 201
    sget-object v13, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v13}, Lio/netty/util/internal/logging/InternalLogger;->isTraceEnabled()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 202
    sget-object v13, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v14, "sun.misc.Unsafe.storeFence: unavailable"

    move-object v15, v12

    check-cast v15, Ljava/lang/Throwable;

    invoke-interface {v13, v14, v15}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 204
    :cond_7
    sget-object v13, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    move-object v14, v12

    check-cast v14, Ljava/lang/Throwable;

    .line 205
    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    .line 204
    const-string v15, "sun.misc.Unsafe.storeFence: unavailable: {}"

    invoke-interface {v13, v15, v14}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    .end local v9    # "finalUnsafe":Lsun/misc/Unsafe;
    .end local v12    # "maybeException":Ljava/lang/Object;
    :cond_8
    :goto_2
    if-eqz v11, :cond_b

    .line 211
    move-object v9, v11

    .line 214
    .restart local v9    # "finalUnsafe":Lsun/misc/Unsafe;
    new-instance v12, Lio/netty/util/internal/PlatformDependent0$4;

    invoke-direct {v12, v9, v5}, Lio/netty/util/internal/PlatformDependent0$4;-><init>(Lsun/misc/Unsafe;Ljava/nio/ByteBuffer;)V

    invoke-static {v12}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v12

    .line 237
    .local v12, "maybeAddressField":Ljava/lang/Object;
    instance-of v13, v12, Ljava/lang/reflect/Field;

    if-eqz v13, :cond_9

    .line 238
    move-object v0, v12

    check-cast v0, Ljava/lang/reflect/Field;

    .line 239
    sget-object v13, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v14, "java.nio.Buffer.address: available"

    invoke-interface {v13, v14}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 241
    :cond_9
    move-object v2, v12

    check-cast v2, Ljava/lang/Throwable;

    .line 242
    sget-object v13, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v13}, Lio/netty/util/internal/logging/InternalLogger;->isTraceEnabled()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 243
    sget-object v13, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v14, "java.nio.Buffer.address: unavailable"

    move-object v15, v12

    check-cast v15, Ljava/lang/Throwable;

    invoke-interface {v13, v14, v15}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 245
    :cond_a
    sget-object v13, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    move-object v14, v12

    check-cast v14, Ljava/lang/Throwable;

    .line 246
    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    .line 245
    const-string v15, "java.nio.Buffer.address: unavailable: {}"

    invoke-interface {v13, v15, v14}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    :goto_3
    const/4 v11, 0x0

    .line 255
    .end local v9    # "finalUnsafe":Lsun/misc/Unsafe;
    .end local v12    # "maybeAddressField":Ljava/lang/Object;
    :cond_b
    :goto_4
    if-eqz v11, :cond_c

    .line 258
    invoke-virtual {v11, v8}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v9

    int-to-long v12, v9

    .line 259
    .local v12, "byteArrayIndexScale":J
    cmp-long v9, v12, v6

    if-eqz v9, :cond_c

    .line 260
    sget-object v9, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v14, "unsafe.arrayIndexScale is {} (expected: 1). Not using unsafe."

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v9, v14, v15}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    const-string v14, "Unexpected unsafe.arrayIndexScale"

    invoke-direct {v9, v14}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    move-object v2, v9

    .line 262
    const/4 v9, 0x0

    move-object v10, v9

    move-object v9, v5

    move v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    .end local v11    # "unsafe":Lsun/misc/Unsafe;
    .local v9, "unsafe":Lsun/misc/Unsafe;
    goto :goto_5

    .line 266
    .end local v9    # "unsafe":Lsun/misc/Unsafe;
    .end local v10    # "maybeUnsafe":Ljava/lang/Object;
    .end local v12    # "byteArrayIndexScale":J
    .restart local v11    # "unsafe":Lsun/misc/Unsafe;
    :cond_c
    move-object v9, v5

    move-object v10, v11

    move v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    .end local v0    # "addressField":Ljava/lang/reflect/Field;
    .end local v11    # "unsafe":Lsun/misc/Unsafe;
    .local v2, "addressField":Ljava/lang/reflect/Field;
    .local v3, "unsafeUnavailabilityCause":Ljava/lang/Throwable;
    .local v4, "internalUnsafe":Ljava/lang/Object;
    .local v5, "storeFenceAvailable":Z
    .local v9, "direct":Ljava/nio/ByteBuffer;
    .local v10, "unsafe":Lsun/misc/Unsafe;
    :goto_5
    sput-object v3, Lio/netty/util/internal/PlatformDependent0;->UNSAFE_UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    .line 267
    sput-object v10, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 269
    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    if-nez v10, :cond_d

    .line 270
    sput-wide v14, Lio/netty/util/internal/PlatformDependent0;->ADDRESS_FIELD_OFFSET:J

    .line 271
    sput-wide v14, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    .line 272
    sput-wide v14, Lio/netty/util/internal/PlatformDependent0;->LONG_ARRAY_BASE_OFFSET:J

    .line 273
    sput-wide v14, Lio/netty/util/internal/PlatformDependent0;->LONG_ARRAY_INDEX_SCALE:J

    .line 274
    sput-wide v14, Lio/netty/util/internal/PlatformDependent0;->INT_ARRAY_BASE_OFFSET:J

    .line 275
    sput-wide v14, Lio/netty/util/internal/PlatformDependent0;->INT_ARRAY_INDEX_SCALE:J

    .line 276
    sput-boolean v13, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    .line 277
    sput-wide v14, Lio/netty/util/internal/PlatformDependent0;->BITS_MAX_DIRECT_MEMORY:J

    .line 278
    sput-object v12, Lio/netty/util/internal/PlatformDependent0;->DIRECT_BUFFER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    .line 279
    sput-object v12, Lio/netty/util/internal/PlatformDependent0;->ALLOCATE_ARRAY_METHOD:Ljava/lang/reflect/Method;

    .line 280
    sput-boolean v13, Lio/netty/util/internal/PlatformDependent0;->STORE_FENCE_AVAILABLE:Z

    move-object/from16 v22, v2

    goto/16 :goto_10

    .line 283
    :cond_d
    const-wide/16 v17, -0x1

    .line 285
    .local v17, "address":J
    :try_start_0
    new-instance v0, Lio/netty/util/internal/PlatformDependent0$5;

    invoke-direct {v0, v9}, Lio/netty/util/internal/PlatformDependent0$5;-><init>(Ljava/nio/ByteBuffer;)V

    .line 286
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    .line 306
    .local v19, "maybeDirectBufferConstructor":Ljava/lang/Object;
    move-object/from16 v12, v19

    .end local v19    # "maybeDirectBufferConstructor":Ljava/lang/Object;
    .local v12, "maybeDirectBufferConstructor":Ljava/lang/Object;
    instance-of v0, v12, Ljava/lang/reflect/Constructor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v11, 0x2

    if-eqz v0, :cond_e

    .line 307
    :try_start_1
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, v6, v7}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide/from16 v17, v6

    .line 310
    :try_start_2
    move-object v0, v12

    check-cast v0, Ljava/lang/reflect/Constructor;

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v13

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    move-object v0, v12

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 312
    .local v0, "directBufferConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    sget-object v6, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v7, "direct buffer constructor: available"

    invoke-interface {v6, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 317
    .end local v0    # "directBufferConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const/4 v0, 0x0

    .local v0, "directBufferConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_6

    .line 315
    .end local v0    # "directBufferConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_1
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const/4 v0, 0x0

    .local v0, "directBufferConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_6

    .line 313
    .end local v0    # "directBufferConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_2
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/InstantiationException;
    const/4 v0, 0x0

    .line 319
    .local v0, "directBufferConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_6
    move-object v6, v0

    move-wide/from16 v11, v17

    goto :goto_8

    .line 331
    .end local v0    # "directBufferConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v12    # "maybeDirectBufferConstructor":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object v2, v0

    move-wide/from16 v0, v17

    goto/16 :goto_13

    .line 321
    .restart local v12    # "maybeDirectBufferConstructor":Ljava/lang/Object;
    :cond_e
    :try_start_3
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isTraceEnabled()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_f

    .line 322
    :try_start_4
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "direct buffer constructor: unavailable"

    move-object v7, v12

    check-cast v7, Ljava/lang/Throwable;

    invoke-interface {v0, v6, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    .line 325
    :cond_f
    :try_start_5
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "direct buffer constructor: unavailable: {}"

    move-object v7, v12

    check-cast v7, Ljava/lang/Throwable;

    .line 326
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 325
    invoke-interface {v0, v6, v7}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 328
    :goto_7
    const/4 v0, 0x0

    move-object v6, v0

    move-wide/from16 v11, v17

    .line 331
    .end local v12    # "maybeDirectBufferConstructor":Ljava/lang/Object;
    .end local v17    # "address":J
    .local v6, "directBufferConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v11, "address":J
    :goto_8
    cmp-long v0, v11, v14

    if-eqz v0, :cond_10

    .line 332
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, v11, v12}, Lsun/misc/Unsafe;->freeMemory(J)V

    .line 335
    :cond_10
    sput-object v6, Lio/netty/util/internal/PlatformDependent0;->DIRECT_BUFFER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    .line 336
    invoke-static {v2}, Lio/netty/util/internal/PlatformDependent0;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v17

    sput-wide v17, Lio/netty/util/internal/PlatformDependent0;->ADDRESS_FIELD_OFFSET:J

    .line 337
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, v8}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v7, v0

    sput-wide v7, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    .line 338
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    const-class v7, [I

    invoke-virtual {v0, v7}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v13, v0

    sput-wide v13, Lio/netty/util/internal/PlatformDependent0;->INT_ARRAY_BASE_OFFSET:J

    .line 339
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, v7}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    int-to-long v13, v0

    sput-wide v13, Lio/netty/util/internal/PlatformDependent0;->INT_ARRAY_INDEX_SCALE:J

    .line 340
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    const-class v7, [J

    invoke-virtual {v0, v7}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v13, v0

    sput-wide v13, Lio/netty/util/internal/PlatformDependent0;->LONG_ARRAY_BASE_OFFSET:J

    .line 341
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, v7}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    int-to-long v13, v0

    sput-wide v13, Lio/netty/util/internal/PlatformDependent0;->LONG_ARRAY_INDEX_SCALE:J

    .line 344
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v13, -0x1

    invoke-direct {v0, v13, v14}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    move-object v7, v0

    .line 345
    .local v7, "maybeMaxMemory":Ljava/util/concurrent/atomic/AtomicLong;
    new-instance v0, Lio/netty/util/internal/PlatformDependent0$6;

    invoke-direct {v0, v7}, Lio/netty/util/internal/PlatformDependent0$6;-><init>(Ljava/util/concurrent/atomic/AtomicLong;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v13

    .line 401
    .local v13, "maybeUnaligned":Ljava/lang/Object;
    instance-of v0, v13, Ljava/lang/Boolean;

    if-eqz v0, :cond_11

    .line 402
    move-object v0, v13

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 403
    .local v0, "unaligned":Z
    sget-object v14, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v15, "java.nio.Bits.unaligned: available, {}"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v14, v15, v8}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    move v8, v0

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    goto :goto_9

    .line 405
    .end local v0    # "unaligned":Z
    :cond_11
    const-string v0, "os.arch"

    const-string v8, ""

    invoke-static {v0, v8}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "arch":Ljava/lang/String;
    const-string v8, "^(i[3-6]86|x86(_64)?|x64|amd64)$"

    invoke-virtual {v0, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    .line 408
    .local v8, "unaligned":Z
    move-object v14, v13

    check-cast v14, Ljava/lang/Throwable;

    .line 409
    .local v14, "t":Ljava/lang/Throwable;
    sget-object v15, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v15}, Lio/netty/util/internal/logging/InternalLogger;->isTraceEnabled()Z

    move-result v15

    if-eqz v15, :cond_12

    .line 410
    sget-object v15, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    move-object/from16 v20, v0

    .end local v0    # "arch":Ljava/lang/String;
    .local v20, "arch":Ljava/lang/String;
    const-string v0, "java.nio.Bits.unaligned: unavailable, {}"

    move-object/from16 v21, v1

    .end local v1    # "allocateArrayMethod":Ljava/lang/reflect/Method;
    .local v21, "allocateArrayMethod":Ljava/lang/reflect/Method;
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v15, v0, v1, v14}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v22, v2

    goto :goto_9

    .line 412
    .end local v20    # "arch":Ljava/lang/String;
    .end local v21    # "allocateArrayMethod":Ljava/lang/reflect/Method;
    .restart local v0    # "arch":Ljava/lang/String;
    .restart local v1    # "allocateArrayMethod":Ljava/lang/reflect/Method;
    :cond_12
    move-object/from16 v20, v0

    move-object/from16 v21, v1

    .end local v0    # "arch":Ljava/lang/String;
    .end local v1    # "allocateArrayMethod":Ljava/lang/reflect/Method;
    .restart local v20    # "arch":Ljava/lang/String;
    .restart local v21    # "allocateArrayMethod":Ljava/lang/reflect/Method;
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v22, v2

    .end local v2    # "addressField":Ljava/lang/reflect/Field;
    .local v22, "addressField":Ljava/lang/reflect/Field;
    const-string v2, "java.nio.Bits.unaligned: unavailable, {}, {}"

    invoke-interface {v0, v2, v1, v15}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 416
    .end local v14    # "t":Ljava/lang/Throwable;
    .end local v20    # "arch":Ljava/lang/String;
    :goto_9
    sput-boolean v8, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    .line 417
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v14, 0x0

    cmp-long v0, v0, v14

    if-ltz v0, :cond_13

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v14

    goto :goto_a

    :cond_13
    const-wide/16 v14, -0x1

    :goto_a
    sput-wide v14, Lio/netty/util/internal/PlatformDependent0;->BITS_MAX_DIRECT_MEMORY:J

    .line 419
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->javaVersion()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_19

    .line 420
    new-instance v0, Lio/netty/util/internal/PlatformDependent0$7;

    invoke-direct {v0}, Lio/netty/util/internal/PlatformDependent0$7;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 435
    .local v0, "maybeException":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Throwable;

    if-nez v1, :cond_16

    .line 436
    move-object v4, v0

    .line 437
    move-object v1, v4

    .line 438
    .local v1, "finalInternalUnsafe":Ljava/lang/Object;
    new-instance v2, Lio/netty/util/internal/PlatformDependent0$8;

    invoke-direct {v2, v1}, Lio/netty/util/internal/PlatformDependent0$8;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    .line 452
    .end local v0    # "maybeException":Ljava/lang/Object;
    .local v2, "maybeException":Ljava/lang/Object;
    instance-of v0, v2, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_15

    .line 454
    :try_start_6
    move-object v0, v2

    check-cast v0, Ljava/lang/reflect/Method;

    .line 455
    .local v0, "m":Ljava/lang/reflect/Method;
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    sget-object v15, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x0

    aput-object v15, v14, v17

    const/16 v15, 0x8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v16, 0x1

    aput-object v17, v14, v16

    invoke-virtual {v0, v1, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    check-cast v14, [B

    .line 456
    .local v14, "bytes":[B
    array-length v15, v14
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_5

    move-object/from16 v17, v1

    const/16 v1, 0x8

    .end local v1    # "finalInternalUnsafe":Ljava/lang/Object;
    .local v17, "finalInternalUnsafe":Ljava/lang/Object;
    if-ne v15, v1, :cond_14

    .line 457
    move-object v1, v0

    .line 462
    .end local v0    # "m":Ljava/lang/reflect/Method;
    .end local v14    # "bytes":[B
    .end local v21    # "allocateArrayMethod":Ljava/lang/reflect/Method;
    .local v1, "allocateArrayMethod":Ljava/lang/reflect/Method;
    move-object v0, v2

    goto :goto_d

    .line 456
    .end local v1    # "allocateArrayMethod":Ljava/lang/reflect/Method;
    .restart local v0    # "m":Ljava/lang/reflect/Method;
    .restart local v14    # "bytes":[B
    .restart local v21    # "allocateArrayMethod":Ljava/lang/reflect/Method;
    :cond_14
    :try_start_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v2    # "maybeException":Ljava/lang/Object;
    .end local v3    # "unsafeUnavailabilityCause":Ljava/lang/Throwable;
    .end local v4    # "internalUnsafe":Ljava/lang/Object;
    .end local v5    # "storeFenceAvailable":Z
    .end local v6    # "directBufferConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v7    # "maybeMaxMemory":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v8    # "unaligned":Z
    .end local v9    # "direct":Ljava/nio/ByteBuffer;
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .end local v11    # "address":J
    .end local v13    # "maybeUnaligned":Ljava/lang/Object;
    .end local v17    # "finalInternalUnsafe":Ljava/lang/Object;
    .end local v21    # "allocateArrayMethod":Ljava/lang/reflect/Method;
    .end local v22    # "addressField":Ljava/lang/reflect/Field;
    throw v1
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_3

    .line 460
    .end local v0    # "m":Ljava/lang/reflect/Method;
    .end local v14    # "bytes":[B
    .restart local v2    # "maybeException":Ljava/lang/Object;
    .restart local v3    # "unsafeUnavailabilityCause":Ljava/lang/Throwable;
    .restart local v4    # "internalUnsafe":Ljava/lang/Object;
    .restart local v5    # "storeFenceAvailable":Z
    .restart local v6    # "directBufferConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v7    # "maybeMaxMemory":Ljava/util/concurrent/atomic/AtomicLong;
    .restart local v8    # "unaligned":Z
    .restart local v9    # "direct":Ljava/nio/ByteBuffer;
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    .restart local v11    # "address":J
    .restart local v13    # "maybeUnaligned":Ljava/lang/Object;
    .restart local v17    # "finalInternalUnsafe":Ljava/lang/Object;
    .restart local v21    # "allocateArrayMethod":Ljava/lang/reflect/Method;
    .restart local v22    # "addressField":Ljava/lang/reflect/Field;
    :catch_3
    move-exception v0

    goto :goto_b

    .line 458
    :catch_4
    move-exception v0

    goto :goto_c

    .line 460
    .end local v17    # "finalInternalUnsafe":Ljava/lang/Object;
    .local v1, "finalInternalUnsafe":Ljava/lang/Object;
    :catch_5
    move-exception v0

    move-object/from16 v17, v1

    .line 461
    .end local v1    # "finalInternalUnsafe":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v17    # "finalInternalUnsafe":Ljava/lang/Object;
    :goto_b
    move-object v1, v0

    move-object/from16 v1, v21

    .end local v2    # "maybeException":Ljava/lang/Object;
    .local v1, "maybeException":Ljava/lang/Object;
    goto :goto_d

    .line 458
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v17    # "finalInternalUnsafe":Ljava/lang/Object;
    .local v1, "finalInternalUnsafe":Ljava/lang/Object;
    .restart local v2    # "maybeException":Ljava/lang/Object;
    :catch_6
    move-exception v0

    move-object/from16 v17, v1

    .line 459
    .end local v1    # "finalInternalUnsafe":Ljava/lang/Object;
    .local v0, "e":Ljava/lang/IllegalAccessException;
    .restart local v17    # "finalInternalUnsafe":Ljava/lang/Object;
    :goto_c
    nop

    .line 462
    .end local v2    # "maybeException":Ljava/lang/Object;
    .local v0, "maybeException":Ljava/lang/Object;
    move-object/from16 v1, v21

    goto :goto_d

    .line 452
    .end local v0    # "maybeException":Ljava/lang/Object;
    .end local v17    # "finalInternalUnsafe":Ljava/lang/Object;
    .restart local v1    # "finalInternalUnsafe":Ljava/lang/Object;
    .restart local v2    # "maybeException":Ljava/lang/Object;
    :cond_15
    move-object/from16 v17, v1

    .end local v1    # "finalInternalUnsafe":Ljava/lang/Object;
    .restart local v17    # "finalInternalUnsafe":Ljava/lang/Object;
    move-object v0, v2

    move-object/from16 v1, v21

    goto :goto_d

    .line 435
    .end local v2    # "maybeException":Ljava/lang/Object;
    .end local v17    # "finalInternalUnsafe":Ljava/lang/Object;
    .restart local v0    # "maybeException":Ljava/lang/Object;
    :cond_16
    move-object/from16 v1, v21

    .line 466
    .end local v21    # "allocateArrayMethod":Ljava/lang/reflect/Method;
    .local v1, "allocateArrayMethod":Ljava/lang/reflect/Method;
    :goto_d
    instance-of v2, v0, Ljava/lang/Throwable;

    if-eqz v2, :cond_18

    .line 467
    sget-object v2, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v2}, Lio/netty/util/internal/logging/InternalLogger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 468
    sget-object v2, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v14, "jdk.internal.misc.Unsafe.allocateUninitializedArray(int): unavailable"

    move-object v15, v0

    check-cast v15, Ljava/lang/Throwable;

    invoke-interface {v2, v14, v15}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 471
    :cond_17
    sget-object v2, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    move-object v14, v0

    check-cast v14, Ljava/lang/Throwable;

    .line 472
    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    .line 471
    const-string v15, "jdk.internal.misc.Unsafe.allocateUninitializedArray(int): unavailable: {}"

    invoke-interface {v2, v15, v14}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_e

    .line 475
    :cond_18
    sget-object v2, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v14, "jdk.internal.misc.Unsafe.allocateUninitializedArray(int): available"

    invoke-interface {v2, v14}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 477
    .end local v0    # "maybeException":Ljava/lang/Object;
    :goto_e
    goto :goto_f

    .line 478
    .end local v1    # "allocateArrayMethod":Ljava/lang/reflect/Method;
    .restart local v21    # "allocateArrayMethod":Ljava/lang/reflect/Method;
    :cond_19
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "jdk.internal.misc.Unsafe.allocateUninitializedArray(int): unavailable prior to Java9"

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    move-object/from16 v1, v21

    .line 480
    .end local v21    # "allocateArrayMethod":Ljava/lang/reflect/Method;
    .restart local v1    # "allocateArrayMethod":Ljava/lang/reflect/Method;
    :goto_f
    sput-object v1, Lio/netty/util/internal/PlatformDependent0;->ALLOCATE_ARRAY_METHOD:Ljava/lang/reflect/Method;

    .line 481
    sput-boolean v5, Lio/netty/util/internal/PlatformDependent0;->STORE_FENCE_AVAILABLE:Z

    .line 484
    .end local v6    # "directBufferConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v7    # "maybeMaxMemory":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v8    # "unaligned":Z
    .end local v11    # "address":J
    .end local v13    # "maybeUnaligned":Ljava/lang/Object;
    :goto_10
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->javaVersion()I

    move-result v0

    const/16 v2, 0x9

    if-le v0, v2, :cond_1a

    .line 485
    new-instance v0, Lio/netty/util/internal/PlatformDependent0$9;

    invoke-direct {v0}, Lio/netty/util/internal/PlatformDependent0$9;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    sput-object v0, Lio/netty/util/internal/PlatformDependent0;->ALIGN_SLICE:Ljava/lang/reflect/Method;

    goto :goto_11

    .line 496
    :cond_1a
    const/4 v2, 0x0

    sput-object v2, Lio/netty/util/internal/PlatformDependent0;->ALIGN_SLICE:Ljava/lang/reflect/Method;

    .line 499
    :goto_11
    sput-object v4, Lio/netty/util/internal/PlatformDependent0;->INTERNAL_UNSAFE:Ljava/lang/Object;

    .line 501
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget-object v2, Lio/netty/util/internal/PlatformDependent0;->DIRECT_BUFFER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_1b

    const-string v2, "available"

    goto :goto_12

    :cond_1b
    const-string v2, "unavailable"

    :goto_12
    const-string v6, "java.nio.DirectByteBuffer.<init>(long, {int,long}): {}"

    invoke-interface {v0, v6, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 503
    .end local v1    # "allocateArrayMethod":Ljava/lang/reflect/Method;
    .end local v3    # "unsafeUnavailabilityCause":Ljava/lang/Throwable;
    .end local v4    # "internalUnsafe":Ljava/lang/Object;
    .end local v5    # "storeFenceAvailable":Z
    .end local v9    # "direct":Ljava/nio/ByteBuffer;
    .end local v10    # "unsafe":Lsun/misc/Unsafe;
    .end local v22    # "addressField":Ljava/lang/reflect/Field;
    return-void

    .line 331
    .restart local v1    # "allocateArrayMethod":Ljava/lang/reflect/Method;
    .local v2, "addressField":Ljava/lang/reflect/Field;
    .restart local v3    # "unsafeUnavailabilityCause":Ljava/lang/Throwable;
    .restart local v4    # "internalUnsafe":Ljava/lang/Object;
    .restart local v5    # "storeFenceAvailable":Z
    .restart local v9    # "direct":Ljava/nio/ByteBuffer;
    .restart local v10    # "unsafe":Lsun/misc/Unsafe;
    .local v17, "address":J
    :catchall_1
    move-exception v0

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object v2, v0

    move-wide/from16 v0, v17

    .end local v1    # "allocateArrayMethod":Ljava/lang/reflect/Method;
    .end local v2    # "addressField":Ljava/lang/reflect/Field;
    .end local v17    # "address":J
    .local v0, "address":J
    .restart local v21    # "allocateArrayMethod":Ljava/lang/reflect/Method;
    .restart local v22    # "addressField":Ljava/lang/reflect/Field;
    :goto_13
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-eqz v6, :cond_1c

    .line 332
    sget-object v6, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v6, v0, v1}, Lsun/misc/Unsafe;->freeMemory(J)V

    .line 334
    :cond_1c
    throw v2
.end method

.method private constructor <init>()V
    .locals 0

    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1053
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 38
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->unsafeStaticFieldOffsetSupported()Z

    move-result v0

    return v0
.end method

.method static addressSize()I
    .locals 1

    .line 968
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lsun/misc/Unsafe;->addressSize()I

    move-result v0

    return v0
.end method

.method static alignSlice(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "alignment"    # I

    .line 588
    :try_start_0
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->ALIGN_SLICE:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 589
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static allocateDirectNoCleaner(I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "capacity"    # I

    .line 579
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v1, 0x1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lio/netty/util/internal/PlatformDependent0;->newDirectBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static allocateMemory(J)J
    .locals 2
    .param p0, "size"    # J

    .line 972
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static allocateUninitializedArray(I)[B
    .locals 5
    .param p0, "size"    # I

    .line 602
    :try_start_0
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->ALLOCATE_ARRAY_METHOD:Ljava/lang/reflect/Method;

    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->INTERNAL_UNSAFE:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 603
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static bitsMaxDirectMemory()J
    .locals 2

    .line 547
    sget-wide v0, Lio/netty/util/internal/PlatformDependent0;->BITS_MAX_DIRECT_MEMORY:J

    return-wide v0
.end method

.method static byteArrayBaseOffset()J
    .locals 2

    .line 629
    sget-wide v0, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    return-wide v0
.end method

.method static copyMemory(JJJ)V
    .locals 9
    .param p0, "srcAddr"    # J
    .param p2, "dstAddr"    # J
    .param p4, "length"    # J

    .line 752
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->javaVersion()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 753
    invoke-static/range {p0 .. p5}, Lio/netty/util/internal/PlatformDependent0;->copyMemoryWithSafePointPolling(JJJ)V

    goto :goto_0

    .line 755
    :cond_0
    sget-object v2, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-wide v3, p0

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v2 .. v8}, Lsun/misc/Unsafe;->copyMemory(JJJ)V

    .line 757
    :goto_0
    return-void
.end method

.method static copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V
    .locals 11
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "srcOffset"    # J
    .param p3, "dst"    # Ljava/lang/Object;
    .param p4, "dstOffset"    # J
    .param p6, "length"    # J

    .line 772
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->javaVersion()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 773
    invoke-static/range {p0 .. p7}, Lio/netty/util/internal/PlatformDependent0;->copyMemoryWithSafePointPolling(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    goto :goto_0

    .line 775
    :cond_0
    sget-object v2, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v2 .. v10}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 777
    :goto_0
    return-void
.end method

.method private static copyMemoryWithSafePointPolling(JJJ)V
    .locals 9
    .param p0, "srcAddr"    # J
    .param p2, "dstAddr"    # J
    .param p4, "length"    # J

    .line 760
    nop

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    .line 761
    const-wide/32 v0, 0x100000

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 762
    .local v7, "size":J
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, v7

    invoke-virtual/range {v0 .. v6}, Lsun/misc/Unsafe;->copyMemory(JJJ)V

    .line 763
    sub-long/2addr p4, v7

    .line 764
    add-long/2addr p0, v7

    .line 765
    add-long/2addr p2, v7

    .line 766
    .end local v7    # "size":J
    goto :goto_0

    .line 767
    :cond_0
    return-void
.end method

.method private static copyMemoryWithSafePointPolling(Ljava/lang/Object;JLjava/lang/Object;JJ)V
    .locals 17
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "srcOffset"    # J
    .param p3, "dst"    # Ljava/lang/Object;
    .param p4, "dstOffset"    # J
    .param p6, "length"    # J

    .line 781
    move-wide/from16 v9, p1

    move-wide/from16 v11, p4

    move-wide/from16 v13, p6

    .end local p1    # "srcOffset":J
    .end local p4    # "dstOffset":J
    .end local p6    # "length":J
    .local v9, "srcOffset":J
    .local v11, "dstOffset":J
    .local v13, "length":J
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v13, v0

    if-lez v0, :cond_0

    .line 782
    const-wide/32 v0, 0x100000

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    .line 783
    .local v15, "size":J
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-object/from16 v1, p0

    move-wide v2, v9

    move-object/from16 v4, p3

    move-wide v5, v11

    move-wide v7, v15

    invoke-virtual/range {v0 .. v8}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 784
    sub-long/2addr v13, v15

    .line 785
    add-long/2addr v9, v15

    .line 786
    add-long/2addr v11, v15

    .line 787
    .end local v15    # "size":J
    goto :goto_0

    .line 788
    :cond_0
    return-void
.end method

.method static directBufferAddress(Ljava/nio/ByteBuffer;)J
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 625
    sget-wide v0, Lio/netty/util/internal/PlatformDependent0;->ADDRESS_FIELD_OFFSET:J

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/PlatformDependent0;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static equals([BI[BII)Z
    .locals 19
    .param p0, "bytes1"    # [B
    .param p1, "startPos1"    # I
    .param p2, "bytes2"    # [B
    .param p3, "startPos2"    # I
    .param p4, "length"    # I

    .line 799
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    and-int/lit8 v4, v3, 0x7

    .line 800
    .local v4, "remainingBytes":I
    sget-wide v5, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v7, v1

    add-long/2addr v5, v7

    .line 801
    .local v5, "baseOffset1":J
    sub-int v7, p3, v1

    int-to-long v7, v7

    .line 802
    .local v7, "diff":J
    const/16 v9, 0x8

    if-lt v3, v9, :cond_2

    .line 803
    int-to-long v11, v4

    add-long/2addr v11, v5

    .line 804
    .local v11, "end":J
    const-wide/16 v13, 0x8

    sub-long v15, v5, v13

    int-to-long v13, v3

    add-long/2addr v15, v13

    move-wide v13, v15

    .local v13, "i":J
    :goto_0
    cmp-long v9, v13, v11

    if-ltz v9, :cond_1

    .line 805
    sget-object v9, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v9, v0, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v15

    sget-object v9, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-wide/from16 v17, v11

    .end local v11    # "end":J
    .local v17, "end":J
    add-long v10, v13, v7

    invoke-virtual {v9, v2, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    cmp-long v9, v15, v9

    if-eqz v9, :cond_0

    .line 806
    const/4 v9, 0x0

    return v9

    .line 804
    :cond_0
    const-wide/16 v9, 0x8

    sub-long/2addr v13, v9

    move-wide/from16 v11, v17

    goto :goto_0

    .end local v17    # "end":J
    .restart local v11    # "end":J
    :cond_1
    move-wide/from16 v17, v11

    .line 810
    .end local v11    # "end":J
    .end local v13    # "i":J
    :cond_2
    const/4 v9, 0x4

    if-lt v4, v9, :cond_4

    .line 811
    add-int/lit8 v4, v4, -0x4

    .line 812
    int-to-long v9, v4

    add-long/2addr v9, v5

    .line 813
    .local v9, "pos":J
    sget-object v11, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v11, v0, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    sget-object v12, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    add-long v13, v9, v7

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    if-eq v11, v12, :cond_3

    .line 814
    const/4 v11, 0x0

    return v11

    .line 813
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 810
    .end local v9    # "pos":J
    :cond_4
    const/4 v11, 0x0

    .line 817
    :goto_1
    add-long v9, v5, v7

    .line 818
    .local v9, "baseOffset2":J
    const/4 v13, 0x2

    if-lt v4, v13, :cond_7

    .line 819
    sget-object v14, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v14, v0, v5, v6}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v14

    sget-object v15, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v15, v2, v9, v10}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v15

    if-ne v14, v15, :cond_6

    if-eq v4, v13, :cond_5

    sget-object v13, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v14, 0x2

    add-long v11, v5, v14

    .line 821
    invoke-virtual {v13, v0, v11, v12}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v11

    sget-object v12, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    add-long/2addr v14, v9

    invoke-virtual {v12, v2, v14, v15}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v12

    if-ne v11, v12, :cond_6

    :cond_5
    const/16 v16, 0x1

    goto :goto_2

    :cond_6
    const/16 v16, 0x0

    .line 819
    :goto_2
    return v16

    .line 823
    :cond_7
    if-eqz v4, :cond_9

    sget-object v11, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    .line 824
    invoke-virtual {v11, v0, v5, v6}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v11

    sget-object v12, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v12, v2, v9, v10}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v12

    if-ne v11, v12, :cond_8

    goto :goto_3

    :cond_8
    const/16 v16, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/16 v16, 0x1

    .line 823
    :goto_4
    return v16
.end method

.method static equalsConstantTime([BI[BII)I
    .locals 22
    .param p0, "bytes1"    # [B
    .param p1, "startPos1"    # I
    .param p2, "bytes2"    # [B
    .param p3, "startPos2"    # I
    .param p4, "length"    # I

    .line 828
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const-wide/16 v4, 0x0

    .line 829
    .local v4, "result":J
    and-int/lit8 v6, v3, 0x7

    int-to-long v6, v6

    .line 830
    .local v6, "remainingBytes":J
    sget-wide v8, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v10, v1

    add-long/2addr v8, v10

    .line 831
    .local v8, "baseOffset1":J
    add-long v10, v8, v6

    .line 832
    .local v10, "end":J
    sub-int v12, p3, v1

    int-to-long v12, v12

    .line 833
    .local v12, "diff":J
    const-wide/16 v14, 0x8

    sub-long v16, v8, v14

    int-to-long v14, v3

    add-long v16, v16, v14

    move-wide/from16 v14, v16

    .local v14, "i":J
    :goto_0
    cmp-long v16, v14, v10

    if-ltz v16, :cond_0

    .line 834
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0, v14, v15}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v16

    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-wide/from16 v20, v10

    .end local v10    # "end":J
    .local v20, "end":J
    add-long v10, v14, v12

    invoke-virtual {v1, v2, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    xor-long v10, v16, v10

    or-long/2addr v4, v10

    .line 833
    const-wide/16 v10, 0x8

    sub-long/2addr v14, v10

    move/from16 v1, p1

    move-wide/from16 v10, v20

    goto :goto_0

    .end local v20    # "end":J
    .restart local v10    # "end":J
    :cond_0
    move-wide/from16 v20, v10

    .line 836
    .end local v10    # "end":J
    .end local v14    # "i":J
    .restart local v20    # "end":J
    const-wide/16 v10, 0x4

    cmp-long v1, v6, v10

    if-ltz v1, :cond_1

    .line 837
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    sget-object v14, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    add-long v10, v8, v12

    invoke-virtual {v14, v2, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v10

    xor-int/2addr v1, v10

    int-to-long v10, v1

    or-long/2addr v4, v10

    .line 838
    const-wide/16 v10, 0x4

    sub-long/2addr v6, v10

    .line 840
    :cond_1
    const-wide/16 v10, 0x2

    cmp-long v1, v6, v10

    if-ltz v1, :cond_2

    .line 841
    sub-long v14, v20, v6

    .line 842
    .local v14, "pos":J
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0, v14, v15}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v1

    sget-object v10, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-wide/from16 v18, v8

    .end local v8    # "baseOffset1":J
    .local v18, "baseOffset1":J
    add-long v8, v14, v12

    invoke-virtual {v10, v2, v8, v9}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v8

    xor-int/2addr v1, v8

    int-to-long v8, v1

    or-long/2addr v4, v8

    .line 843
    const-wide/16 v8, 0x2

    sub-long/2addr v6, v8

    goto :goto_1

    .line 840
    .end local v14    # "pos":J
    .end local v18    # "baseOffset1":J
    .restart local v8    # "baseOffset1":J
    :cond_2
    move-wide/from16 v18, v8

    .line 845
    .end local v8    # "baseOffset1":J
    .restart local v18    # "baseOffset1":J
    :goto_1
    const-wide/16 v8, 0x1

    cmp-long v1, v6, v8

    if-nez v1, :cond_3

    .line 846
    sub-long v10, v20, v8

    .line 847
    .local v10, "pos":J
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0, v10, v11}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v1

    sget-object v8, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    add-long v14, v10, v12

    invoke-virtual {v8, v2, v14, v15}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v8

    xor-int/2addr v1, v8

    int-to-long v8, v1

    or-long/2addr v4, v8

    .line 849
    .end local v10    # "pos":J
    :cond_3
    const-wide/16 v8, 0x0

    invoke-static {v4, v5, v8, v9}, Lio/netty/util/internal/ConstantTimeUtils;->equalsConstantTime(JJ)I

    move-result v1

    return v1
.end method

.method private static explicitNoUnsafeCause0()Ljava/lang/Throwable;
    .locals 4

    .line 514
    const-string v0, "io.netty.noUnsafe"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 515
    .local v0, "noUnsafe":Z
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "-Dio.netty.noUnsafe: {}"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 517
    if-eqz v0, :cond_0

    .line 518
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "sun.misc.Unsafe: unavailable (io.netty.noUnsafe)"

    invoke-interface {v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 519
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 524
    :cond_0
    const-string v1, "io.netty.tryUnsafe"

    invoke-static {v1}, Lio/netty/util/internal/SystemPropertyUtil;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 525
    const-string v1, "io.netty.tryUnsafe"

    .local v1, "unsafePropName":Ljava/lang/String;
    goto :goto_0

    .line 527
    .end local v1    # "unsafePropName":Ljava/lang/String;
    :cond_1
    const-string v1, "org.jboss.netty.tryUnsafe"

    .line 530
    .restart local v1    # "unsafePropName":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sun.misc.Unsafe: unavailable ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 532
    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 533
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 536
    .end local v2    # "msg":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private static explicitTryReflectionSetAccessible0()Z
    .locals 2

    .line 1005
    nop

    .line 1006
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->javaVersion()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->RUNNING_IN_NATIVE_IMAGE:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1005
    :goto_1
    const-string v1, "io.netty.tryReflectionSetAccessible"

    invoke-static {v1, v0}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static freeMemory(J)V
    .locals 1
    .param p0, "address"    # J

    .line 976
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->freeMemory(J)V

    .line 977
    return-void
.end method

.method static getByte(J)B
    .locals 1
    .param p0, "address"    # J

    .line 658
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    return v0
.end method

.method static getByte([BI)B
    .locals 5
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 674
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method static getByte([BJ)B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "index"    # J

    .line 678
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 929
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 930
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    .line 932
    :cond_0
    new-instance v0, Lio/netty/util/internal/PlatformDependent0$10;

    invoke-direct {v0, p0}, Lio/netty/util/internal/PlatformDependent0$10;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 942
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 943
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    .line 945
    :cond_0
    new-instance v0, Lio/netty/util/internal/PlatformDependent0$11;

    invoke-direct {v0}, Lio/netty/util/internal/PlatformDependent0$11;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static getInt(J)I
    .locals 1
    .param p0, "address"    # J

    .line 666
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v0

    return v0
.end method

.method static getInt(Ljava/lang/Object;J)I
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldOffset"    # J

    .line 637
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method static getInt([BI)I
    .locals 5
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 686
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method static getInt([IJ)I
    .locals 5
    .param p0, "data"    # [I
    .param p1, "index"    # J

    .line 690
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->INT_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lio/netty/util/internal/PlatformDependent0;->INT_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method static getIntVolatile(J)I
    .locals 2
    .param p0, "address"    # J

    .line 694
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method static getLong(J)J
    .locals 2
    .param p0, "address"    # J

    .line 670
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getLong(Ljava/lang/Object;J)J
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldOffset"    # J

    .line 650
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getLong([BI)J
    .locals 5
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 702
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getLong([JJ)J
    .locals 5
    .param p0, "data"    # [J
    .param p1, "index"    # J

    .line 706
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->LONG_ARRAY_BASE_OFFSET:J

    sget-wide v3, Lio/netty/util/internal/PlatformDependent0;->LONG_ARRAY_INDEX_SCALE:J

    mul-long/2addr v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldOffset"    # J

    .line 633
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getShort(J)S
    .locals 1
    .param p0, "address"    # J

    .line 662
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getShort(J)S

    move-result v0

    return v0
.end method

.method static getShort([BI)S
    .locals 5
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 682
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v0

    return v0
.end method

.method static getSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 955
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 956
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    .line 958
    :cond_0
    new-instance v0, Lio/netty/util/internal/PlatformDependent0$12;

    invoke-direct {v0}, Lio/netty/util/internal/PlatformDependent0$12;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static getUnsafeUnavailabilityCause()Ljava/lang/Throwable;
    .locals 1

    .line 555
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE_UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    return-object v0
.end method

.method static hasAlignSliceMethod()Z
    .locals 1

    .line 583
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->ALIGN_SLICE:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static hasAllocateArrayMethod()Z
    .locals 1

    .line 597
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->ALLOCATE_ARRAY_METHOD:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static hasDirectBufferNoCleanerConstructor()Z
    .locals 1

    .line 568
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->DIRECT_BUFFER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static hasUnsafe()Z
    .locals 1

    .line 551
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static hashCodeAscii([BII)I
    .locals 17
    .param p0, "bytes"    # [B
    .param p1, "startPos"    # I
    .param p2, "length"    # I

    .line 879
    move-object/from16 v0, p0

    move/from16 v1, p2

    const v2, -0x3d4d51cb

    .line 880
    .local v2, "hash":I
    sget-wide v3, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    move/from16 v5, p1

    int-to-long v6, v5

    add-long/2addr v3, v6

    .line 881
    .local v3, "baseOffset":J
    and-int/lit8 v6, v1, 0x7

    .line 882
    .local v6, "remainingBytes":I
    int-to-long v7, v6

    add-long/2addr v7, v3

    .line 883
    .local v7, "end":J
    const-wide/16 v9, 0x8

    sub-long v11, v3, v9

    int-to-long v13, v1

    add-long/2addr v11, v13

    .local v11, "i":J
    :goto_0
    cmp-long v13, v11, v7

    if-ltz v13, :cond_0

    .line 884
    sget-object v13, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v13, v0, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-static {v13, v14, v2}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiCompute(JI)I

    move-result v2

    .line 883
    sub-long/2addr v11, v9

    goto :goto_0

    .line 886
    .end local v11    # "i":J
    :cond_0
    if-nez v6, :cond_1

    .line 887
    return v2

    .line 889
    :cond_1
    const v9, -0x3361d2af    # -8.293031E7f

    .line 890
    .local v9, "hcConst":I
    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v6, v10, :cond_2

    move v10, v12

    goto :goto_1

    :cond_2
    move v10, v11

    :goto_1
    const/4 v13, 0x4

    if-eq v6, v13, :cond_3

    move v14, v12

    goto :goto_2

    :cond_3
    move v14, v11

    :goto_2
    and-int/2addr v10, v14

    const/4 v14, 0x6

    if-eq v6, v14, :cond_4

    move v14, v12

    goto :goto_3

    :cond_4
    move v14, v11

    :goto_3
    and-int/2addr v10, v14

    const v14, -0x3361d2af    # -8.293031E7f

    if-eqz v10, :cond_5

    .line 891
    mul-int v10, v2, v14

    sget-object v15, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v15, v0, v3, v4}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v15

    invoke-static {v15}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(B)I

    move-result v15

    add-int v2, v10, v15

    .line 892
    const v9, 0x1b873593

    .line 893
    const-wide/16 v15, 0x1

    add-long/2addr v3, v15

    .line 895
    :cond_5
    if-eq v6, v12, :cond_6

    move v10, v12

    goto :goto_4

    :cond_6
    move v10, v11

    :goto_4
    if-eq v6, v13, :cond_7

    move v15, v12

    goto :goto_5

    :cond_7
    move v15, v11

    :goto_5
    and-int/2addr v10, v15

    const/4 v15, 0x5

    if-eq v6, v15, :cond_8

    move v11, v12

    :cond_8
    and-int/2addr v10, v11

    if-eqz v10, :cond_a

    .line 896
    mul-int v10, v2, v9

    sget-object v11, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v11, v0, v3, v4}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v11

    invoke-static {v11}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(S)I

    move-result v11

    add-int v2, v10, v11

    .line 897
    if-ne v9, v14, :cond_9

    const v14, 0x1b873593

    :cond_9
    move v9, v14

    .line 898
    const-wide/16 v10, 0x2

    add-long/2addr v3, v10

    .line 900
    :cond_a
    if-lt v6, v13, :cond_b

    .line 901
    mul-int v10, v2, v9

    sget-object v11, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v11, v0, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    invoke-static {v11}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(I)I

    move-result v11

    add-int/2addr v10, v11

    return v10

    .line 903
    :cond_b
    return v2
.end method

.method static hashCodeAsciiCompute(JI)I
    .locals 4
    .param p0, "value"    # J
    .param p2, "hash"    # I

    .line 909
    const v0, -0x3361d2af    # -8.293031E7f

    mul-int/2addr v0, p2

    long-to-int v1, p0

    .line 911
    invoke-static {v1}, Lio/netty/util/internal/PlatformDependent0;->hashCodeAsciiSanitize(I)I

    move-result v1

    const v2, 0x1b873593

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    const-wide v1, 0x1f1f1f1f00000000L    # 8.854494059669966E-159

    and-long/2addr v1, p0

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 909
    return v0
.end method

.method static hashCodeAsciiSanitize(B)I
    .locals 1
    .param p0, "value"    # B

    .line 925
    and-int/lit8 v0, p0, 0x1f

    return v0
.end method

.method static hashCodeAsciiSanitize(I)I
    .locals 1
    .param p0, "value"    # I

    .line 917
    const v0, 0x1f1f1f1f

    and-int/2addr v0, p0

    return v0
.end method

.method static hashCodeAsciiSanitize(S)I
    .locals 1
    .param p0, "value"    # S

    .line 921
    and-int/lit16 v0, p0, 0x1f1f

    return v0
.end method

.method static isAndroid()Z
    .locals 1

    .line 984
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->IS_ANDROID:Z

    return v0
.end method

.method private static isAndroid0()Z
    .locals 4

    .line 995
    const-string v0, "java.vm.name"

    invoke-static {v0}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 996
    .local v0, "vmName":Ljava/lang/String;
    const-string v1, "Dalvik"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 997
    .local v1, "isAndroid":Z
    if-eqz v1, :cond_0

    .line 998
    sget-object v2, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Platform: Android"

    invoke-interface {v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 1000
    :cond_0
    return v1
.end method

.method static isExplicitNoUnsafe()Z
    .locals 1

    .line 510
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->EXPLICIT_NO_UNSAFE_CAUSE:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isExplicitTryReflectionSetAccessible()Z
    .locals 1

    .line 1010
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->IS_EXPLICIT_TRY_REFLECTION_SET_ACCESSIBLE:Z

    return v0
.end method

.method static isUnaligned()Z
    .locals 1

    .line 540
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    return v0
.end method

.method static isZero([BII)Z
    .locals 19
    .param p0, "bytes"    # [B
    .param p1, "startPos"    # I
    .param p2, "length"    # I

    .line 853
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    if-gtz v2, :cond_0

    .line 854
    return v3

    .line 856
    :cond_0
    sget-wide v4, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    .line 857
    .local v4, "baseOffset":J
    and-int/lit8 v6, v2, 0x7

    .line 858
    .local v6, "remainingBytes":I
    int-to-long v7, v6

    add-long/2addr v7, v4

    .line 859
    .local v7, "end":J
    const-wide/16 v9, 0x8

    sub-long v11, v4, v9

    int-to-long v13, v2

    add-long/2addr v11, v13

    .local v11, "i":J
    :goto_0
    cmp-long v13, v11, v7

    const/4 v14, 0x0

    if-ltz v13, :cond_2

    .line 860
    sget-object v13, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v13, v0, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v13, v15, v17

    if-eqz v13, :cond_1

    .line 861
    return v14

    .line 859
    :cond_1
    sub-long/2addr v11, v9

    goto :goto_0

    .line 865
    .end local v11    # "i":J
    :cond_2
    const/4 v9, 0x4

    if-lt v6, v9, :cond_3

    .line 866
    add-int/lit8 v6, v6, -0x4

    .line 867
    sget-object v9, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    int-to-long v10, v6

    add-long/2addr v10, v4

    invoke-virtual {v9, v0, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    if-eqz v9, :cond_3

    .line 868
    return v14

    .line 871
    :cond_3
    const/4 v9, 0x2

    if-lt v6, v9, :cond_6

    .line 872
    sget-object v10, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v10, v0, v4, v5}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v10

    if-nez v10, :cond_5

    if-eq v6, v9, :cond_4

    add-int/lit8 v9, v1, 0x2

    aget-byte v9, v0, v9

    if-nez v9, :cond_5

    :cond_4
    goto :goto_1

    :cond_5
    move v3, v14

    :goto_1
    return v3

    .line 875
    :cond_6
    aget-byte v9, v0, v1

    if-nez v9, :cond_7

    goto :goto_2

    :cond_7
    move v3, v14

    :goto_2
    return v3
.end method

.method static javaVersion()I
    .locals 1

    .line 1014
    sget v0, Lio/netty/util/internal/PlatformDependent0;->JAVA_VERSION:I

    return v0
.end method

.method private static javaVersion0()I
    .locals 4

    .line 1020
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->isAndroid0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    const/4 v0, 0x6

    .local v0, "majorVersion":I
    goto :goto_0

    .line 1023
    .end local v0    # "majorVersion":I
    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent0;->majorVersionFromJavaSpecificationVersion()I

    move-result v0

    .line 1026
    .restart local v0    # "majorVersion":I
    :goto_0
    sget-object v1, Lio/netty/util/internal/PlatformDependent0;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Java version: {}"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1028
    return v0
.end method

.method static majorVersion(Ljava/lang/String;)I
    .locals 5
    .param p0, "javaSpecVersion"    # Ljava/lang/String;

    .line 1038
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1039
    .local v0, "components":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [I

    .line 1040
    .local v1, "version":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1041
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 1040
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1044
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1045
    aget v2, v1, v4

    const/4 v3, 0x6

    if-lt v2, v3, :cond_1

    .line 1046
    aget v2, v1, v4

    return v2

    .line 1045
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1048
    :cond_2
    aget v2, v1, v2

    return v2
.end method

.method static majorVersionFromJavaSpecificationVersion()I
    .locals 2

    .line 1033
    const-string v0, "java.specification.version"

    const-string v1, "1.6"

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent0;->majorVersion(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static newDirectBuffer(JI)Ljava/nio/ByteBuffer;
    .locals 4
    .param p0, "address"    # J
    .param p2, "capacity"    # I

    .line 611
    const-string v0, "capacity"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 614
    :try_start_0
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->DIRECT_BUFFER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 615
    :catchall_0
    move-exception v0

    .line 617
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 618
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 620
    :cond_0
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static objectFieldOffset(Ljava/lang/reflect/Field;)J
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 654
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method static putByte(JB)V
    .locals 1
    .param p0, "address"    # J
    .param p2, "value"    # B

    .line 710
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putByte(JB)V

    .line 711
    return-void
.end method

.method static putByte(Ljava/lang/Object;JB)V
    .locals 1
    .param p0, "data"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # B

    .line 730
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 731
    return-void
.end method

.method static putByte([BIB)V
    .locals 5
    .param p0, "data"    # [B
    .param p1, "index"    # I
    .param p2, "value"    # B

    .line 726
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 727
    return-void
.end method

.method static putInt(JI)V
    .locals 1
    .param p0, "address"    # J
    .param p2, "value"    # I

    .line 718
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putInt(JI)V

    .line 719
    return-void
.end method

.method static putInt([BII)V
    .locals 5
    .param p0, "data"    # [B
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 738
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 739
    return-void
.end method

.method static putIntOrdered(JI)V
    .locals 2
    .param p0, "adddress"    # J
    .param p2, "newValue"    # I

    .line 698
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1, p2}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 699
    return-void
.end method

.method static putLong(JJ)V
    .locals 1
    .param p0, "address"    # J
    .param p2, "value"    # J

    .line 722
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putLong(JJ)V

    .line 723
    return-void
.end method

.method static putLong([BIJ)V
    .locals 6
    .param p0, "data"    # [B
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 742
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long v2, v1, v3

    move-object v1, p0

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 743
    return-void
.end method

.method static putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "x"    # Ljava/lang/Object;

    .line 746
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 747
    return-void
.end method

.method static putShort(JS)V
    .locals 1
    .param p0, "address"    # J
    .param p2, "value"    # S

    .line 714
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->putShort(JS)V

    .line 715
    return-void
.end method

.method static putShort([BIS)V
    .locals 5
    .param p0, "data"    # [B
    .param p1, "index"    # I
    .param p2, "value"    # S

    .line 734
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/PlatformDependent0;->BYTE_ARRAY_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 735
    return-void
.end method

.method static reallocateDirectNoCleaner(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "capacity"    # I

    .line 572
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent0;->directBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    int-to-long v3, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/misc/Unsafe;->reallocateMemory(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lio/netty/util/internal/PlatformDependent0;->newDirectBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static reallocateMemory(JJ)J
    .locals 2
    .param p0, "address"    # J
    .param p2, "newSize"    # J

    .line 980
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->reallocateMemory(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static safeConstructPutInt(Ljava/lang/Object;JI)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldOffset"    # J
    .param p3, "value"    # I

    .line 641
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->STORE_FENCE_AVAILABLE:Z

    if-eqz v0, :cond_0

    .line 642
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 643
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lsun/misc/Unsafe;->storeFence()V

    goto :goto_0

    .line 645
    :cond_0
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    .line 647
    :goto_0
    return-void
.end method

.method static setMemory(JJB)V
    .locals 6
    .param p0, "address"    # J
    .param p2, "bytes"    # J
    .param p4, "value"    # B

    .line 791
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->setMemory(JJB)V

    .line 792
    return-void
.end method

.method static setMemory(Ljava/lang/Object;JJB)V
    .locals 7
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "bytes"    # J
    .param p5, "value"    # B

    .line 795
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lsun/misc/Unsafe;->setMemory(Ljava/lang/Object;JJB)V

    .line 796
    return-void
.end method

.method static throwException(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "cause"    # Ljava/lang/Throwable;

    .line 564
    sget-object v0, Lio/netty/util/internal/PlatformDependent0;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "cause"

    invoke-static {p0, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->throwException(Ljava/lang/Throwable;)V

    .line 565
    return-void
.end method

.method static unalignedAccess()Z
    .locals 1

    .line 559
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->UNALIGNED:Z

    return v0
.end method

.method private static unsafeStaticFieldOffsetSupported()Z
    .locals 1

    .line 506
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent0;->RUNNING_IN_NATIVE_IMAGE:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
