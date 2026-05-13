.class public Lorg/fusesource/jansi/AnsiMain;
.super Ljava/lang/Object;
.source "AnsiMain.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "c"    # Ljava/io/Closeable;

    .line 301
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "ioe":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 305
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private static diagnoseTty(Z)V
    .locals 5
    .param p0, "stderr"    # Z

    .line 190
    if-eqz p0, :cond_0

    sget v0, Lorg/fusesource/jansi/internal/CLibrary;->STDERR_FILENO:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/fusesource/jansi/internal/CLibrary;->STDOUT_FILENO:I

    .line 191
    .local v0, "fd":I
    :goto_0
    sget-boolean v1, Lorg/fusesource/jansi/internal/CLibrary;->LOADED:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lorg/fusesource/jansi/internal/CLibrary;->isatty(I)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 193
    .local v1, "isatty":I
    :goto_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isatty(STD"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p0, :cond_2

    const-string v4, "ERR"

    goto :goto_2

    :cond_2
    const-string v4, "OUT"

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_FILENO): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", System."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 194
    if-eqz p0, :cond_3

    const-string v4, "err"

    goto :goto_3

    :cond_3
    const-string v4, "out"

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_4

    const-string v4, "is *NOT*"

    goto :goto_4

    :cond_4
    const-string v4, "is"

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " a terminal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method private static getJansiVersion()Ljava/lang/String;
    .locals 2

    .line 185
    const-class v0, Lorg/fusesource/jansi/AnsiMain;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 186
    .local v0, "p":Ljava/lang/Package;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static getPomPropertiesVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/META-INF/maven/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pom.properties"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lorg/fusesource/jansi/AnsiMain;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 262
    .local v0, "in":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 263
    const/4 v1, 0x0

    return-object v1

    .line 266
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 267
    .local v1, "p":Ljava/util/Properties;
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 268
    const-string v2, "version"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-static {v0}, Lorg/fusesource/jansi/AnsiMain;->closeQuietly(Ljava/io/Closeable;)V

    .line 268
    return-object v2

    .line 270
    .end local v1    # "p":Ljava/util/Properties;
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/fusesource/jansi/AnsiMain;->closeQuietly(Ljava/io/Closeable;)V

    .line 271
    throw v1
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 12
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Jansi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/fusesource/jansi/AnsiMain;->getJansiVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 55
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 58
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "library.jansi.path= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "library.jansi.path"

    const-string v3, ""

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "library.jansi.version= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "library.jansi.version"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lorg/fusesource/jansi/internal/JansiLoader;->initialize()Z

    move-result v0

    .line 61
    .local v0, "loaded":Z
    const-string v1, "jansi.graceful"

    if-eqz v0, :cond_0

    .line 62
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Jansi native library loaded from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lorg/fusesource/jansi/internal/JansiLoader;->getNativeLibraryPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lorg/fusesource/jansi/internal/JansiLoader;->getNativeLibrarySourceUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 64
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   which was auto-extracted from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lorg/fusesource/jansi/internal/JansiLoader;->getNativeLibrarySourceUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 67
    :cond_0
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "prev":Ljava/lang/String;
    :try_start_0
    const-string v4, "false"

    invoke-static {v1, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    invoke-static {}, Lorg/fusesource/jansi/internal/JansiLoader;->initialize()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    if-eqz v2, :cond_1

    .line 75
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v4

    .line 72
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 74
    .end local v4    # "e":Ljava/lang/Throwable;
    if-eqz v2, :cond_1

    .line 75
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 77
    :cond_1
    invoke-static {v1}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    nop

    .line 82
    .end local v2    # "prev":Ljava/lang/String;
    :cond_2
    :goto_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 84
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "os.name= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "os.name"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", os.version= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 85
    const-string v5, "os.version"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", os.arch= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 86
    const-string v5, "os.arch"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file.encoding= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "file.encoding"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "java.version= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "java.version"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", java.vendor= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 89
    const-string v5, "java.vendor"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", java.home= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 90
    const-string v5, "java.home"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 94
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jansi.graceful= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jansi.mode= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "jansi.mode"

    invoke-static {v4, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jansi.out.mode= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "jansi.out.mode"

    invoke-static {v4, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jansi.err.mode= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "jansi.err.mode"

    invoke-static {v4, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jansi.colors= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "jansi.colors"

    invoke-static {v4, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jansi.out.colors= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "jansi.out.colors"

    invoke-static {v4, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jansi.err.colors= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "jansi.err.colors"

    invoke-static {v4, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jansi.passthrough= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "jansi.passthrough"

    invoke-static {v3}, Lorg/fusesource/jansi/AnsiConsole;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jansi.strip= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "jansi.strip"

    invoke-static {v3}, Lorg/fusesource/jansi/AnsiConsole;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jansi.force= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "jansi.force"

    invoke-static {v3}, Lorg/fusesource/jansi/AnsiConsole;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jansi.noreset= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "jansi.noreset"

    invoke-static {v3}, Lorg/fusesource/jansi/AnsiConsole;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/fusesource/jansi/Ansi;->DISABLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/fusesource/jansi/Ansi;->DISABLE:Ljava/lang/String;

    invoke-static {v3}, Lorg/fusesource/jansi/AnsiConsole;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 109
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IS_WINDOWS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lorg/fusesource/jansi/AnsiConsole;->IS_WINDOWS:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    sget-boolean v1, Lorg/fusesource/jansi/AnsiConsole;->IS_WINDOWS:Z

    if-eqz v1, :cond_3

    .line 111
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IS_CONEMU: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lorg/fusesource/jansi/AnsiConsole;->IS_CONEMU:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IS_CYGWIN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lorg/fusesource/jansi/AnsiConsole;->IS_CYGWIN:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 113
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IS_MSYSTEM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lorg/fusesource/jansi/AnsiConsole;->IS_MSYSTEM:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    :cond_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 118
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/fusesource/jansi/AnsiMain;->diagnoseTty(Z)V

    .line 119
    const/4 v2, 0x1

    invoke-static {v2}, Lorg/fusesource/jansi/AnsiMain;->diagnoseTty(Z)V

    .line 121
    invoke-static {}, Lorg/fusesource/jansi/AnsiConsole;->systemInstall()V

    .line 123
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    .line 125
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Resulting Jansi modes for stout/stderr streams:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  - System.out: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lorg/fusesource/jansi/AnsiConsole;->out()Lorg/fusesource/jansi/AnsiPrintStream;

    move-result-object v5

    invoke-virtual {v5}, Lorg/fusesource/jansi/AnsiPrintStream;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  - System.err: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lorg/fusesource/jansi/AnsiConsole;->err()Lorg/fusesource/jansi/AnsiPrintStream;

    move-result-object v5

    invoke-virtual {v5}, Lorg/fusesource/jansi/AnsiPrintStream;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Processor types description:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lorg/fusesource/jansi/AnsiType;->values()[Lorg/fusesource/jansi/AnsiType;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_2
    const-string v6, "  - "

    const-string v7, ": "

    if-ge v5, v4, :cond_4

    aget-object v8, v3, v5

    .line 130
    .local v8, "type":Lorg/fusesource/jansi/AnsiType;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v8}, Lorg/fusesource/jansi/AnsiType;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    .end local v8    # "type":Lorg/fusesource/jansi/AnsiType;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 132
    :cond_4
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Colors support description:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lorg/fusesource/jansi/AnsiColors;->values()[Lorg/fusesource/jansi/AnsiColors;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_3
    if-ge v5, v4, :cond_5

    aget-object v8, v3, v5

    .line 134
    .local v8, "colors":Lorg/fusesource/jansi/AnsiColors;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lorg/fusesource/jansi/AnsiColors;->getDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    .end local v8    # "colors":Lorg/fusesource/jansi/AnsiColors;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 136
    :cond_5
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Modes description:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lorg/fusesource/jansi/AnsiMode;->values()[Lorg/fusesource/jansi/AnsiMode;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_4
    if-ge v5, v4, :cond_6

    aget-object v8, v3, v5

    .line 138
    .local v8, "mode":Lorg/fusesource/jansi/AnsiMode;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lorg/fusesource/jansi/AnsiMode;->getDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    .end local v8    # "mode":Lorg/fusesource/jansi/AnsiMode;
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 142
    :cond_6
    :try_start_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    .line 144
    invoke-static {v1}, Lorg/fusesource/jansi/AnsiMain;->testAnsi(Z)V

    .line 145
    invoke-static {v2}, Lorg/fusesource/jansi/AnsiMain;->testAnsi(Z)V

    .line 147
    array-length v3, p0

    if-nez v3, :cond_7

    .line 148
    invoke-static {}, Lorg/fusesource/jansi/AnsiMain;->printJansiLogoDemo()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 180
    invoke-static {}, Lorg/fusesource/jansi/AnsiConsole;->systemUninstall()V

    .line 149
    return-void

    .line 152
    :cond_7
    :try_start_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    .line 154
    array-length v3, p0

    if-ne v3, v2, :cond_8

    .line 155
    new-instance v2, Ljava/io/File;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 159
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lorg/fusesource/jansi/Ansi;->ansi()Lorg/fusesource/jansi/Ansi;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fusesource/jansi/Ansi;->bold()Lorg/fusesource/jansi/Ansi;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v1, p0, v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\" content:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/fusesource/jansi/Ansi;->a(Ljava/lang/String;)Lorg/fusesource/jansi/Ansi;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fusesource/jansi/Ansi;->reset()Lorg/fusesource/jansi/Ansi;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 160
    invoke-static {v2}, Lorg/fusesource/jansi/AnsiMain;->writeFileContent(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 180
    invoke-static {}, Lorg/fusesource/jansi/AnsiConsole;->systemUninstall()V

    .line 161
    return-void

    .line 166
    .end local v2    # "f":Ljava/io/File;
    :cond_8
    :try_start_4
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lorg/fusesource/jansi/Ansi;->ansi()Lorg/fusesource/jansi/Ansi;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fusesource/jansi/Ansi;->bold()Lorg/fusesource/jansi/Ansi;

    move-result-object v3

    const-string v4, "original args:"

    invoke-virtual {v3, v4}, Lorg/fusesource/jansi/Ansi;->a(Ljava/lang/String;)Lorg/fusesource/jansi/Ansi;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fusesource/jansi/Ansi;->reset()Lorg/fusesource/jansi/Ansi;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 167
    const/4 v2, 0x1

    .line 168
    .local v2, "i":I
    array-length v3, p0

    move v4, v1

    :goto_5
    if-ge v4, v3, :cond_9

    aget-object v5, p0, v4

    .line 169
    .local v5, "arg":Ljava/lang/String;
    sget-object v6, Lorg/fusesource/jansi/AnsiConsole;->system_out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v2, 0x1

    .end local v2    # "i":I
    .local v9, "i":I
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 170
    sget-object v2, Lorg/fusesource/jansi/AnsiConsole;->system_out:Ljava/io/PrintStream;

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 168
    .end local v5    # "arg":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    move v2, v9

    goto :goto_5

    .line 173
    .end local v9    # "i":I
    .restart local v2    # "i":I
    :cond_9
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lorg/fusesource/jansi/Ansi;->ansi()Lorg/fusesource/jansi/Ansi;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fusesource/jansi/Ansi;->bold()Lorg/fusesource/jansi/Ansi;

    move-result-object v4

    const-string v5, "Jansi filtered args:"

    invoke-virtual {v4, v5}, Lorg/fusesource/jansi/Ansi;->a(Ljava/lang/String;)Lorg/fusesource/jansi/Ansi;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fusesource/jansi/Ansi;->reset()Lorg/fusesource/jansi/Ansi;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 174
    const/4 v2, 0x1

    .line 175
    array-length v3, p0

    :goto_6
    if-ge v1, v3, :cond_a

    aget-object v4, p0, v1

    .line 176
    .local v4, "arg":Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v8, v2, 0x1

    .end local v2    # "i":I
    .local v8, "i":I
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 177
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 175
    .end local v4    # "arg":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    move v2, v8

    goto :goto_6

    .line 180
    .end local v8    # "i":I
    :cond_a
    invoke-static {}, Lorg/fusesource/jansi/AnsiConsole;->systemUninstall()V

    .line 181
    nop

    .line 182
    return-void

    .line 180
    :catchall_1
    move-exception v1

    invoke-static {}, Lorg/fusesource/jansi/AnsiConsole;->systemUninstall()V

    .line 181
    throw v1

    .line 74
    .local v2, "prev":Ljava/lang/String;
    :catchall_2
    move-exception v3

    if-eqz v2, :cond_b

    .line 75
    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_7

    .line 77
    :cond_b
    invoke-static {v1}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    :goto_7
    throw v3
.end method

.method private static printJansiLogoDemo()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-class v2, Lorg/fusesource/jansi/AnsiMain;

    const-string v3, "jansi.txt"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 278
    .local v0, "in":Ljava/io/BufferedReader;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "l":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 279
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 282
    .end local v2    # "l":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lorg/fusesource/jansi/AnsiMain;->closeQuietly(Ljava/io/Closeable;)V

    .line 283
    nop

    .line 284
    return-void

    .line 282
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/fusesource/jansi/AnsiMain;->closeQuietly(Ljava/io/Closeable;)V

    .line 283
    throw v1
.end method

.method private static testAnsi(Z)V
    .locals 11
    .param p0, "stderr"    # Z

    .line 199
    if-eqz p0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 200
    .local v0, "s":Ljava/io/PrintStream;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "test on System."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p0, :cond_1

    const-string v2, "err"

    goto :goto_1

    :cond_1
    const-string v2, "out"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lorg/fusesource/jansi/Ansi$Color;->values()[Lorg/fusesource/jansi/Ansi$Color;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    const-string v5, " "

    if-ge v4, v2, :cond_2

    aget-object v6, v1, v4

    .line 202
    .local v6, "c":Lorg/fusesource/jansi/Ansi$Color;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/fusesource/jansi/Ansi;->ansi()Lorg/fusesource/jansi/Ansi;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/fusesource/jansi/Ansi;->fg(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/fusesource/jansi/Ansi;->ansi()Lorg/fusesource/jansi/Ansi;

    move-result-object v7

    invoke-virtual {v7}, Lorg/fusesource/jansi/Ansi;->reset()Lorg/fusesource/jansi/Ansi;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 201
    .end local v6    # "c":Lorg/fusesource/jansi/Ansi$Color;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 204
    :cond_2
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 205
    const-string v1, "            bright:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lorg/fusesource/jansi/Ansi$Color;->values()[Lorg/fusesource/jansi/Ansi$Color;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_3

    aget-object v6, v1, v4

    .line 207
    .restart local v6    # "c":Lorg/fusesource/jansi/Ansi$Color;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/fusesource/jansi/Ansi;->ansi()Lorg/fusesource/jansi/Ansi;

    move-result-object v8

    invoke-virtual {v8, v6}, Lorg/fusesource/jansi/Ansi;->fgBright(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/fusesource/jansi/Ansi;->ansi()Lorg/fusesource/jansi/Ansi;

    move-result-object v8

    invoke-virtual {v8}, Lorg/fusesource/jansi/Ansi;->reset()Lorg/fusesource/jansi/Ansi;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 206
    .end local v6    # "c":Lorg/fusesource/jansi/Ansi$Color;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 209
    :cond_3
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 210
    const-string v1, "              bold:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lorg/fusesource/jansi/Ansi$Color;->values()[Lorg/fusesource/jansi/Ansi$Color;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_4
    if-ge v4, v2, :cond_4

    aget-object v6, v1, v4

    .line 212
    .restart local v6    # "c":Lorg/fusesource/jansi/Ansi$Color;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/fusesource/jansi/Ansi;->ansi()Lorg/fusesource/jansi/Ansi;

    move-result-object v8

    invoke-virtual {v8}, Lorg/fusesource/jansi/Ansi;->bold()Lorg/fusesource/jansi/Ansi;

    move-result-object v8

    invoke-virtual {v8, v6}, Lorg/fusesource/jansi/Ansi;->fg(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/fusesource/jansi/Ansi;->ansi()Lorg/fusesource/jansi/Ansi;

    move-result-object v8

    invoke-virtual {v8}, Lorg/fusesource/jansi/Ansi;->reset()Lorg/fusesource/jansi/Ansi;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 211
    .end local v6    # "c":Lorg/fusesource/jansi/Ansi$Color;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 214
    :cond_4
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 215
    const-string v1, "             faint:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lorg/fusesource/jansi/Ansi$Color;->values()[Lorg/fusesource/jansi/Ansi$Color;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_5
    if-ge v4, v2, :cond_5

    aget-object v6, v1, v4

    .line 217
    .restart local v6    # "c":Lorg/fusesource/jansi/Ansi$Color;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/fusesource/jansi/Ansi;->ansi()Lorg/fusesource/jansi/Ansi;

    move-result-object v8

    sget-object v9, Lorg/fusesource/jansi/Ansi$Attribute;->INTENSITY_FAINT:Lorg/fusesource/jansi/Ansi$Attribute;

    invoke-virtual {v8, v9}, Lorg/fusesource/jansi/Ansi;->a(Lorg/fusesource/jansi/Ansi$Attribute;)Lorg/fusesource/jansi/Ansi;

    move-result-object v8

    invoke-virtual {v8, v6}, Lorg/fusesource/jansi/Ansi;->fg(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lorg/fusesource/jansi/Ansi;->ansi()Lorg/fusesource/jansi/Ansi;

    move-result-object v8

    invoke-virtual {v8}, Lorg/fusesource/jansi/Ansi;->reset()Lorg/fusesource/jansi/Ansi;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 216
    .end local v6    # "c":Lorg/fusesource/jansi/Ansi$Color;
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 219
    :cond_5
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 220
    const-string v1, "        bold+faint:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lorg/fusesource/jansi/Ansi$Color;->values()[Lorg/fusesource/jansi/Ansi$Color;

    move-result-object v1

    array-length v2, v1

    :goto_6
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    .line 222
    .local v4, "c":Lorg/fusesource/jansi/Ansi$Color;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/fusesource/jansi/Ansi;->ansi()Lorg/fusesource/jansi/Ansi;

    move-result-object v7

    invoke-virtual {v7}, Lorg/fusesource/jansi/Ansi;->bold()Lorg/fusesource/jansi/Ansi;

    move-result-object v7

    sget-object v8, Lorg/fusesource/jansi/Ansi$Attribute;->INTENSITY_FAINT:Lorg/fusesource/jansi/Ansi$Attribute;

    invoke-virtual {v7, v8}, Lorg/fusesource/jansi/Ansi;->a(Lorg/fusesource/jansi/Ansi$Attribute;)Lorg/fusesource/jansi/Ansi;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/fusesource/jansi/Ansi;->fg(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lorg/fusesource/jansi/Ansi;->ansi()Lorg/fusesource/jansi/Ansi;

    move-result-object v7

    invoke-virtual {v7}, Lorg/fusesource/jansi/Ansi;->reset()Lorg/fusesource/jansi/Ansi;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 221
    .end local v4    # "c":Lorg/fusesource/jansi/Ansi$Color;
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 224
    :cond_6
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 225
    invoke-static {}, Lorg/fusesource/jansi/Ansi;->ansi()Lorg/fusesource/jansi/Ansi;

    move-result-object v1

    .line 226
    .local v1, "ansi":Lorg/fusesource/jansi/Ansi;
    const-string v2, "        256 colors: "

    invoke-virtual {v1, v2}, Lorg/fusesource/jansi/Ansi;->a(Ljava/lang/String;)Lorg/fusesource/jansi/Ansi;

    .line 227
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    const/16 v3, 0xd8

    const-string v4, "                    "

    if-ge v2, v3, :cond_9

    .line 228
    if-lez v2, :cond_7

    rem-int/lit8 v3, v2, 0x24

    if-nez v3, :cond_7

    .line 229
    invoke-virtual {v1}, Lorg/fusesource/jansi/Ansi;->reset()Lorg/fusesource/jansi/Ansi;

    .line 230
    invoke-virtual {v1}, Lorg/fusesource/jansi/Ansi;->newline()Lorg/fusesource/jansi/Ansi;

    .line 231
    invoke-virtual {v1, v4}, Lorg/fusesource/jansi/Ansi;->a(Ljava/lang/String;)Lorg/fusesource/jansi/Ansi;

    goto :goto_8

    .line 232
    :cond_7
    if-lez v2, :cond_8

    rem-int/lit8 v3, v2, 0x6

    if-nez v3, :cond_8

    .line 233
    invoke-virtual {v1}, Lorg/fusesource/jansi/Ansi;->reset()Lorg/fusesource/jansi/Ansi;

    .line 234
    const-string v3, "  "

    invoke-virtual {v1, v3}, Lorg/fusesource/jansi/Ansi;->a(Ljava/lang/String;)Lorg/fusesource/jansi/Ansi;

    .line 236
    :cond_8
    :goto_8
    rem-int/lit8 v3, v2, 0x6

    .line 237
    .local v3, "a0":I
    div-int/lit8 v4, v2, 0x6

    rem-int/lit8 v4, v4, 0x6

    .line 238
    .local v4, "a1":I
    div-int/lit8 v5, v2, 0x24

    .line 239
    .local v5, "a2":I
    add-int/lit8 v6, v3, 0x10

    mul-int/lit8 v7, v5, 0x6

    add-int/2addr v6, v7

    mul-int/lit8 v7, v4, 0x24

    add-int/2addr v6, v7

    invoke-virtual {v1, v6}, Lorg/fusesource/jansi/Ansi;->bg(I)Lorg/fusesource/jansi/Ansi;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Lorg/fusesource/jansi/Ansi;->a(C)Lorg/fusesource/jansi/Ansi;

    .line 227
    .end local v3    # "a0":I
    .end local v4    # "a1":I
    .end local v5    # "a2":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 241
    .end local v2    # "i":I
    :cond_9
    invoke-virtual {v1}, Lorg/fusesource/jansi/Ansi;->reset()Lorg/fusesource/jansi/Ansi;

    .line 242
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 243
    invoke-static {}, Lorg/fusesource/jansi/Ansi;->ansi()Lorg/fusesource/jansi/Ansi;

    move-result-object v1

    .line 244
    const-string v2, "         truecolor: "

    invoke-virtual {v1, v2}, Lorg/fusesource/jansi/Ansi;->a(Ljava/lang/String;)Lorg/fusesource/jansi/Ansi;

    .line 245
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_9
    const/16 v3, 0x100

    if-ge v2, v3, :cond_d

    .line 246
    if-lez v2, :cond_a

    rem-int/lit8 v3, v2, 0x30

    if-nez v3, :cond_a

    .line 247
    invoke-virtual {v1}, Lorg/fusesource/jansi/Ansi;->reset()Lorg/fusesource/jansi/Ansi;

    .line 248
    invoke-virtual {v1}, Lorg/fusesource/jansi/Ansi;->newline()Lorg/fusesource/jansi/Ansi;

    .line 249
    invoke-virtual {v1, v4}, Lorg/fusesource/jansi/Ansi;->a(Ljava/lang/String;)Lorg/fusesource/jansi/Ansi;

    .line 251
    :cond_a
    rsub-int v3, v2, 0xff

    .line 252
    .local v3, "r":I
    mul-int/lit8 v5, v2, 0x2

    const/16 v6, 0xff

    if-le v5, v6, :cond_b

    mul-int/lit8 v5, v2, 0x2

    sub-int/2addr v6, v5

    goto :goto_a

    :cond_b
    mul-int/lit8 v6, v2, 0x2

    :goto_a
    move v5, v6

    .line 253
    .local v5, "g":I
    move v6, v2

    .line 254
    .local v6, "b":I
    invoke-virtual {v1, v3, v5, v6}, Lorg/fusesource/jansi/Ansi;->bgRgb(III)Lorg/fusesource/jansi/Ansi;

    move-result-object v7

    rsub-int v8, v3, 0xff

    rsub-int v9, v5, 0xff

    rsub-int v10, v6, 0xff

    invoke-virtual {v7, v8, v9, v10}, Lorg/fusesource/jansi/Ansi;->fgRgb(III)Lorg/fusesource/jansi/Ansi;

    move-result-object v7

    rem-int/lit8 v8, v2, 0x2

    if-nez v8, :cond_c

    const/16 v8, 0x2f

    goto :goto_b

    :cond_c
    const/16 v8, 0x5c

    :goto_b
    invoke-virtual {v7, v8}, Lorg/fusesource/jansi/Ansi;->a(C)Lorg/fusesource/jansi/Ansi;

    .line 245
    .end local v3    # "r":I
    .end local v5    # "g":I
    .end local v6    # "b":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 256
    .end local v2    # "i":I
    :cond_d
    invoke-virtual {v1}, Lorg/fusesource/jansi/Ansi;->reset()Lorg/fusesource/jansi/Ansi;

    .line 257
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method private static writeFileContent(Ljava/io/File;)V
    .locals 5
    .param p0, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 289
    .local v0, "in":Ljava/io/InputStream;
    const/16 v1, 0x400

    :try_start_0
    new-array v1, v1, [B

    .line 290
    .local v1, "buf":[B
    const/4 v2, 0x0

    .line 291
    .local v2, "l":I
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v2, v3

    if-ltz v3, :cond_0

    .line 292
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Ljava/io/PrintStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 295
    .end local v1    # "buf":[B
    .end local v2    # "l":I
    :cond_0
    invoke-static {v0}, Lorg/fusesource/jansi/AnsiMain;->closeQuietly(Ljava/io/Closeable;)V

    .line 296
    nop

    .line 297
    return-void

    .line 295
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/fusesource/jansi/AnsiMain;->closeQuietly(Ljava/io/Closeable;)V

    .line 296
    throw v1
.end method
