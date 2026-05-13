.class public Lorg/fusesource/jansi/internal/OSInfo;
.super Ljava/lang/Object;
.source "OSInfo.java"


# static fields
.field public static final ARM64:Ljava/lang/String; = "arm64"

.field public static final IA64:Ljava/lang/String; = "ia64"

.field public static final IA64_32:Ljava/lang/String; = "ia64_32"

.field public static final PPC:Ljava/lang/String; = "ppc"

.field public static final PPC64:Ljava/lang/String; = "ppc64"

.field public static final X86:Ljava/lang/String; = "x86"

.field public static final X86_64:Ljava/lang/String; = "x86_64"

.field private static final archMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    .line 42
    sget-object v0, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    const-string v1, "x86"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    const-string v2, "i386"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    const-string v2, "i486"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    const-string v2, "i586"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    const-string v2, "i686"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    const-string v2, "pentium"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    const-string v1, "x86_64"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    const-string v2, "amd64"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    const-string v2, "em64t"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    const-string v2, "universal"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    const-string v1, "ia64"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    const-string v2, "ia64w"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    const-string v1, "ia64_32"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    const-string v2, "ia64n"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    const-string v1, "ppc"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    const-string v2, "power"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    const-string v2, "powerpc"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    const-string v2, "power_pc"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    const-string v2, "power_rs"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    const-string v1, "ppc64"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    const-string v2, "power64"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    const-string v2, "powerpc64"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    const-string v2, "power_pc64"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    const-string v2, "power_rs64"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    const-string v1, "aarch64"

    const-string v2, "arm64"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArchName()Ljava/lang/String;
    .locals 3

    .line 183
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "osArch":Ljava/lang/String;
    invoke-static {}, Lorg/fusesource/jansi/internal/OSInfo;->isAndroid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const-string v1, "android-arm"

    return-object v1

    .line 189
    :cond_0
    const-string v1, "arm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    invoke-static {}, Lorg/fusesource/jansi/internal/OSInfo;->resolveArmArchType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "lc":Ljava/lang/String;
    sget-object v2, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 194
    sget-object v2, Lorg/fusesource/jansi/internal/OSInfo;->archMapping:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 196
    .end local v1    # "lc":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-static {v0}, Lorg/fusesource/jansi/internal/OSInfo;->translateArchNameToFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getHardwareName()Ljava/lang/String;
    .locals 4

    .line 128
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "uname -m"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 129
    .local v0, "p":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 131
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 133
    .local v1, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1}, Lorg/fusesource/jansi/internal/OSInfo;->readFully(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 133
    return-object v2

    .line 135
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 136
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 137
    .end local v0    # "p":Ljava/lang/Process;
    .end local v1    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while running uname -m: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    const-string v1, "unknown"

    return-object v1
.end method

.method public static getNativeLibFolderPathForCurrentOS()Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/fusesource/jansi/internal/OSInfo;->getOSName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/fusesource/jansi/internal/OSInfo;->getArchName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOSName()Ljava/lang/String;
    .locals 1

    .line 101
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fusesource/jansi/internal/OSInfo;->translateOSNameToFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAlpine()Z
    .locals 4

    .line 110
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "cat /etc/os-release | grep ^ID"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 111
    .local v0, "p":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 113
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 115
    .local v1, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1}, Lorg/fusesource/jansi/internal/OSInfo;->readFully(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "alpine"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 115
    return v2

    .line 117
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 118
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 120
    .end local v0    # "p":Ljava/lang/Process;
    .end local v1    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return v1
.end method

.method public static isAndroid()Z
    .locals 2

    .line 105
    const-string v0, "java.runtime.name"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .line 83
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 84
    const-string v0, "--os"

    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lorg/fusesource/jansi/internal/OSInfo;->getOSName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 86
    return-void

    .line 87
    :cond_0
    const-string v0, "--arch"

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lorg/fusesource/jansi/internal/OSInfo;->getArchName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 89
    return-void

    .line 93
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lorg/fusesource/jansi/internal/OSInfo;->getNativeLibFolderPathForCurrentOS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private static readFully(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "readLen":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 146
    .local v1, "b":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x20

    new-array v2, v2, [B

    .line 147
    .local v2, "buf":[B
    :goto_0
    array-length v3, v2

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    move v0, v3

    if-ltz v3, :cond_0

    .line 148
    invoke-virtual {v1, v2, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static resolveArmArchType()Ljava/lang/String;
    .locals 5

    .line 154
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "arm"

    if-eqz v0, :cond_4

    .line 155
    invoke-static {}, Lorg/fusesource/jansi/internal/OSInfo;->getHardwareName()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "armType":Ljava/lang/String;
    const-string v2, "armv6"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    return-object v2

    .line 160
    :cond_0
    const-string v2, "armv7"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    return-object v2

    .line 163
    :cond_1
    const-string v3, "armv5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    return-object v1

    .line 166
    :cond_2
    const-string v3, "aarch64"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 168
    const-string v1, "arm64"

    return-object v1

    .line 173
    :cond_3
    const-string v3, "sun.arch.abi"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "abi":Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string v4, "gnueabihf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 175
    return-object v2

    .line 179
    .end local v0    # "armType":Ljava/lang/String;
    .end local v3    # "abi":Ljava/lang/String;
    :cond_4
    return-object v1
.end method

.method static translateArchNameToFolderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "archName"    # Ljava/lang/String;

    .line 216
    const-string v0, "\\W"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static translateOSNameToFolderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "osName"    # Ljava/lang/String;

    .line 200
    const-string v0, "Windows"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    return-object v0

    .line 202
    :cond_0
    const-string v0, "Mac"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "Darwin"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 206
    :cond_1
    const-string v0, "Linux"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    return-object v0

    .line 208
    :cond_2
    const-string v0, "AIX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 209
    return-object v0

    .line 211
    :cond_3
    const-string v0, "\\W"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 203
    :cond_4
    :goto_0
    return-object v0
.end method
