.class public Lorg/fusesource/jansi/internal/JansiLoader;
.super Ljava/lang/Object;
.source "JansiLoader.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static loaded:Z

.field private static nativeLibraryPath:Ljava/lang/String;

.field private static nativeLibrarySourceUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    nop

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lorg/fusesource/jansi/internal/JansiLoader;->loaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cleanup()V
    .locals 11

    .line 88
    invoke-static {}, Lorg/fusesource/jansi/internal/JansiLoader;->getTempDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "tempFolder":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, "dir":Ljava/io/File;
    new-instance v2, Lorg/fusesource/jansi/internal/JansiLoader$1;

    invoke-direct {v2}, Lorg/fusesource/jansi/internal/JansiLoader$1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 98
    .local v2, "nativeLibFiles":[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 99
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 100
    .local v5, "nativeLibFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".lck"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v6, "lckFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 103
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_1

    .line 104
    :catch_0
    move-exception v7

    .line 105
    .local v7, "e":Ljava/lang/SecurityException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to delete old native lib"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    .end local v5    # "nativeLibFile":Ljava/io/File;
    .end local v6    # "lckFile":Ljava/io/File;
    .end local v7    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 110
    :cond_1
    return-void
.end method

.method private static contentsEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "in1"    # Ljava/io/InputStream;
    .param p1, "in2"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    const/16 v0, 0x2000

    new-array v1, v0, [B

    .line 126
    .local v1, "buffer1":[B
    new-array v0, v0, [B

    .line 130
    .local v0, "buffer2":[B
    :cond_0
    invoke-static {p0, v1}, Lorg/fusesource/jansi/internal/JansiLoader;->readNBytes(Ljava/io/InputStream;[B)I

    move-result v2

    .line 131
    .local v2, "numRead1":I
    invoke-static {p1, v0}, Lorg/fusesource/jansi/internal/JansiLoader;->readNBytes(Ljava/io/InputStream;[B)I

    move-result v3

    .line 132
    .local v3, "numRead2":I
    if-lez v2, :cond_3

    .line 133
    if-gtz v3, :cond_1

    .line 134
    const-string v4, "EOF on second stream but not first"

    return-object v4

    .line 136
    :cond_1
    if-eq v3, v2, :cond_2

    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read size different ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 140
    :cond_2
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 141
    const-string v4, "Content differs"

    return-object v4

    .line 146
    :cond_3
    if-lez v3, :cond_4

    .line 147
    const-string v4, "EOF on first stream but not second"

    return-object v4

    .line 149
    :cond_4
    const/4 v4, 0x0

    return-object v4
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 223
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v2, v1

    .local v2, "n":I
    if-lez v1, :cond_0

    .line 224
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 226
    :cond_0
    return-void
.end method

.method private static extractAndLoadLibraryFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "libFolderForCurrentOS"    # Ljava/lang/String;
    .param p1, "libraryFileName"    # Ljava/lang/String;
    .param p2, "targetFolder"    # Ljava/lang/String;

    .line 165
    const-class v0, Lorg/fusesource/jansi/internal/JansiLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "nativeLibraryFilePath":Ljava/lang/String;
    invoke-static {}, Lorg/fusesource/jansi/internal/JansiLoader;->randomUUID()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "uuid":Ljava/lang/String;
    invoke-static {}, Lorg/fusesource/jansi/internal/JansiLoader;->getVersion()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, v2, p1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "jansi-%s-%s-%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "extractedLibFileName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".lck"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, "extractedLckFileName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .local v5, "extractedLibFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .local v6, "extractedLckFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 178
    .local v7, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 179
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 181
    :cond_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 182
    .local v8, "out":Ljava/io/OutputStream;
    :try_start_2
    invoke-static {v7, v8}, Lorg/fusesource/jansi/internal/JansiLoader;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 183
    :try_start_3
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 184
    .end local v8    # "out":Ljava/io/OutputStream;
    if-eqz v7, :cond_1

    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 186
    .end local v7    # "in":Ljava/io/InputStream;
    :cond_1
    :try_start_5
    invoke-virtual {v5}, Ljava/io/File;->deleteOnExit()V

    .line 187
    invoke-virtual {v6}, Ljava/io/File;->deleteOnExit()V

    .line 188
    nop

    .line 191
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/io/File;->setReadable(Z)Z

    .line 192
    invoke-virtual {v5, v7}, Ljava/io/File;->setWritable(Z)Z

    .line 193
    invoke-virtual {v5, v7}, Ljava/io/File;->setExecutable(Z)Z

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 197
    .local v8, "nativeIn":Ljava/io/InputStream;
    :try_start_6
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 198
    .local v9, "extractedLibIn":Ljava/io/InputStream;
    :try_start_7
    invoke-static {v8, v9}, Lorg/fusesource/jansi/internal/JansiLoader;->contentsEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 199
    .local v10, "eq":Ljava/lang/String;
    if-nez v10, :cond_4

    .line 202
    .end local v10    # "eq":Ljava/lang/String;
    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 203
    .end local v9    # "extractedLibIn":Ljava/io/InputStream;
    if-eqz v8, :cond_2

    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 206
    .end local v8    # "nativeIn":Ljava/io/InputStream;
    :cond_2
    invoke-static {v5}, Lorg/fusesource/jansi/internal/JansiLoader;->loadNativeLibrary(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/fusesource/jansi/internal/JansiLoader;->nativeLibrarySourceUrl:Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 208
    return v7

    .line 212
    :cond_3
    goto :goto_4

    .line 200
    .restart local v8    # "nativeIn":Ljava/io/InputStream;
    .restart local v9    # "extractedLibIn":Ljava/io/InputStream;
    .restart local v10    # "eq":Ljava/lang/String;
    :cond_4
    :try_start_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v7, "Failed to write a native library file at %s because %s"

    filled-new-array {v5, v10}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "nativeLibraryFilePath":Ljava/lang/String;
    .end local v2    # "uuid":Ljava/lang/String;
    .end local v3    # "extractedLibFileName":Ljava/lang/String;
    .end local v4    # "extractedLckFileName":Ljava/lang/String;
    .end local v5    # "extractedLibFile":Ljava/io/File;
    .end local v6    # "extractedLckFile":Ljava/io/File;
    .end local v8    # "nativeIn":Ljava/io/InputStream;
    .end local v9    # "extractedLibIn":Ljava/io/InputStream;
    .end local p0    # "libFolderForCurrentOS":Ljava/lang/String;
    .end local p1    # "libraryFileName":Ljava/lang/String;
    .end local p2    # "targetFolder":Ljava/lang/String;
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 197
    .end local v10    # "eq":Ljava/lang/String;
    .restart local v1    # "nativeLibraryFilePath":Ljava/lang/String;
    .restart local v2    # "uuid":Ljava/lang/String;
    .restart local v3    # "extractedLibFileName":Ljava/lang/String;
    .restart local v4    # "extractedLckFileName":Ljava/lang/String;
    .restart local v5    # "extractedLibFile":Ljava/io/File;
    .restart local v6    # "extractedLckFile":Ljava/io/File;
    .restart local v8    # "nativeIn":Ljava/io/InputStream;
    .restart local v9    # "extractedLibIn":Ljava/io/InputStream;
    .restart local p0    # "libFolderForCurrentOS":Ljava/lang/String;
    .restart local p1    # "libraryFileName":Ljava/lang/String;
    .restart local p2    # "targetFolder":Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_b
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v7

    :try_start_c
    invoke-virtual {v0, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "nativeLibraryFilePath":Ljava/lang/String;
    .end local v2    # "uuid":Ljava/lang/String;
    .end local v3    # "extractedLibFileName":Ljava/lang/String;
    .end local v4    # "extractedLckFileName":Ljava/lang/String;
    .end local v5    # "extractedLibFile":Ljava/io/File;
    .end local v6    # "extractedLckFile":Ljava/io/File;
    .end local v8    # "nativeIn":Ljava/io/InputStream;
    .end local p0    # "libFolderForCurrentOS":Ljava/lang/String;
    .end local p1    # "libraryFileName":Ljava/lang/String;
    .end local p2    # "targetFolder":Ljava/lang/String;
    :goto_0
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 196
    .end local v9    # "extractedLibIn":Ljava/io/InputStream;
    .restart local v1    # "nativeLibraryFilePath":Ljava/lang/String;
    .restart local v2    # "uuid":Ljava/lang/String;
    .restart local v3    # "extractedLibFileName":Ljava/lang/String;
    .restart local v4    # "extractedLckFileName":Ljava/lang/String;
    .restart local v5    # "extractedLibFile":Ljava/io/File;
    .restart local v6    # "extractedLckFile":Ljava/io/File;
    .restart local v8    # "nativeIn":Ljava/io/InputStream;
    .restart local p0    # "libFolderForCurrentOS":Ljava/lang/String;
    .restart local p1    # "libraryFileName":Ljava/lang/String;
    .restart local p2    # "targetFolder":Ljava/lang/String;
    :catchall_2
    move-exception v0

    if-eqz v8, :cond_5

    :try_start_d
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v7

    :try_start_e
    invoke-virtual {v0, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "nativeLibraryFilePath":Ljava/lang/String;
    .end local v2    # "uuid":Ljava/lang/String;
    .end local v3    # "extractedLibFileName":Ljava/lang/String;
    .end local v4    # "extractedLckFileName":Ljava/lang/String;
    .end local v5    # "extractedLibFile":Ljava/io/File;
    .end local v6    # "extractedLckFile":Ljava/io/File;
    .end local p0    # "libFolderForCurrentOS":Ljava/lang/String;
    .end local p1    # "libraryFileName":Ljava/lang/String;
    .end local p2    # "targetFolder":Ljava/lang/String;
    :cond_5
    :goto_1
    throw v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    .line 181
    .restart local v1    # "nativeLibraryFilePath":Ljava/lang/String;
    .restart local v2    # "uuid":Ljava/lang/String;
    .restart local v3    # "extractedLibFileName":Ljava/lang/String;
    .restart local v4    # "extractedLckFileName":Ljava/lang/String;
    .restart local v5    # "extractedLibFile":Ljava/io/File;
    .restart local v6    # "extractedLckFile":Ljava/io/File;
    .restart local v7    # "in":Ljava/io/InputStream;
    .local v8, "out":Ljava/io/OutputStream;
    .restart local p0    # "libFolderForCurrentOS":Ljava/lang/String;
    .restart local p1    # "libraryFileName":Ljava/lang/String;
    .restart local p2    # "targetFolder":Ljava/lang/String;
    :catchall_4
    move-exception v0

    :try_start_f
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v9

    :try_start_10
    invoke-virtual {v0, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "nativeLibraryFilePath":Ljava/lang/String;
    .end local v2    # "uuid":Ljava/lang/String;
    .end local v3    # "extractedLibFileName":Ljava/lang/String;
    .end local v4    # "extractedLckFileName":Ljava/lang/String;
    .end local v5    # "extractedLibFile":Ljava/io/File;
    .end local v6    # "extractedLckFile":Ljava/io/File;
    .end local v7    # "in":Ljava/io/InputStream;
    .end local p0    # "libFolderForCurrentOS":Ljava/lang/String;
    .end local p1    # "libraryFileName":Ljava/lang/String;
    .end local p2    # "targetFolder":Ljava/lang/String;
    :goto_2
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 177
    .end local v8    # "out":Ljava/io/OutputStream;
    .restart local v1    # "nativeLibraryFilePath":Ljava/lang/String;
    .restart local v2    # "uuid":Ljava/lang/String;
    .restart local v3    # "extractedLibFileName":Ljava/lang/String;
    .restart local v4    # "extractedLckFileName":Ljava/lang/String;
    .restart local v5    # "extractedLibFile":Ljava/io/File;
    .restart local v6    # "extractedLckFile":Ljava/io/File;
    .restart local v7    # "in":Ljava/io/InputStream;
    .restart local p0    # "libFolderForCurrentOS":Ljava/lang/String;
    .restart local p1    # "libraryFileName":Ljava/lang/String;
    .restart local p2    # "targetFolder":Ljava/lang/String;
    :catchall_6
    move-exception v0

    if-eqz v7, :cond_6

    :try_start_11
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto :goto_3

    :catchall_7
    move-exception v8

    :try_start_12
    invoke-virtual {v0, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "nativeLibraryFilePath":Ljava/lang/String;
    .end local v2    # "uuid":Ljava/lang/String;
    .end local v3    # "extractedLibFileName":Ljava/lang/String;
    .end local v4    # "extractedLckFileName":Ljava/lang/String;
    .end local v5    # "extractedLibFile":Ljava/io/File;
    .end local v6    # "extractedLckFile":Ljava/io/File;
    .end local p0    # "libFolderForCurrentOS":Ljava/lang/String;
    .end local p1    # "libraryFileName":Ljava/lang/String;
    .end local p2    # "targetFolder":Ljava/lang/String;
    :cond_6
    :goto_3
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 186
    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v1    # "nativeLibraryFilePath":Ljava/lang/String;
    .restart local v2    # "uuid":Ljava/lang/String;
    .restart local v3    # "extractedLibFileName":Ljava/lang/String;
    .restart local v4    # "extractedLckFileName":Ljava/lang/String;
    .restart local v5    # "extractedLibFile":Ljava/io/File;
    .restart local v6    # "extractedLckFile":Ljava/io/File;
    .restart local p0    # "libFolderForCurrentOS":Ljava/lang/String;
    .restart local p1    # "libraryFileName":Ljava/lang/String;
    .restart local p2    # "targetFolder":Ljava/lang/String;
    :catchall_8
    move-exception v0

    :try_start_13
    invoke-virtual {v5}, Ljava/io/File;->deleteOnExit()V

    .line 187
    invoke-virtual {v6}, Ljava/io/File;->deleteOnExit()V

    .line 188
    nop

    .end local v1    # "nativeLibraryFilePath":Ljava/lang/String;
    .end local v2    # "uuid":Ljava/lang/String;
    .end local v3    # "extractedLibFileName":Ljava/lang/String;
    .end local v4    # "extractedLckFileName":Ljava/lang/String;
    .end local v5    # "extractedLibFile":Ljava/io/File;
    .end local v6    # "extractedLckFile":Ljava/io/File;
    .end local p0    # "libFolderForCurrentOS":Ljava/lang/String;
    .end local p1    # "libraryFileName":Ljava/lang/String;
    .end local p2    # "targetFolder":Ljava/lang/String;
    throw v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0

    .line 210
    .restart local v1    # "nativeLibraryFilePath":Ljava/lang/String;
    .restart local v2    # "uuid":Ljava/lang/String;
    .restart local v3    # "extractedLibFileName":Ljava/lang/String;
    .restart local v4    # "extractedLckFileName":Ljava/lang/String;
    .restart local v5    # "extractedLibFile":Ljava/io/File;
    .restart local v6    # "extractedLckFile":Ljava/io/File;
    .restart local p0    # "libFolderForCurrentOS":Ljava/lang/String;
    .restart local p1    # "libraryFileName":Ljava/lang/String;
    .restart local p2    # "targetFolder":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/io/IOException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    const/4 v0, 0x0

    return v0
.end method

.method public static getMajorVersion()I
    .locals 2

    .line 347
    invoke-static {}, Lorg/fusesource/jansi/internal/JansiLoader;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "c":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public static getMinorVersion()I
    .locals 3

    .line 355
    invoke-static {}, Lorg/fusesource/jansi/internal/JansiLoader;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "c":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static getNativeLibraryPath()Ljava/lang/String;
    .locals 1

    .line 72
    sget-object v0, Lorg/fusesource/jansi/internal/JansiLoader;->nativeLibraryPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getNativeLibrarySourceUrl()Ljava/lang/String;
    .locals 1

    .line 76
    sget-object v0, Lorg/fusesource/jansi/internal/JansiLoader;->nativeLibrarySourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method private static getTempDir()Ljava/io/File;
    .locals 3

    .line 80
    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "jansi.tmpdir"

    invoke-static {v2, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 6

    .line 364
    const-class v0, Lorg/fusesource/jansi/internal/JansiLoader;

    const-string v1, "/org/fusesource/jansi/jansi.properties"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 366
    .local v0, "versionFile":Ljava/net/URL;
    const-string v1, "unknown"

    .line 368
    .local v1, "version":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 369
    :try_start_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 370
    .local v2, "versionData":Ljava/util/Properties;
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 371
    const-string v3, "version"

    invoke-virtual {v2, v3, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 372
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[^0-9.]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    goto :goto_0

    .line 374
    .end local v2    # "versionData":Ljava/util/Properties;
    :catch_0
    move-exception v2

    .line 375
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 376
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    nop

    .line 377
    :goto_1
    return-object v1
.end method

.method private static hasResource(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 339
    const-class v0, Lorg/fusesource/jansi/internal/JansiLoader;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static declared-synchronized initialize()Z
    .locals 4

    const-class v0, Lorg/fusesource/jansi/internal/JansiLoader;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-boolean v1, Lorg/fusesource/jansi/internal/JansiLoader;->loaded:Z

    if-nez v1, :cond_0

    .line 59
    invoke-static {}, Lorg/fusesource/jansi/internal/JansiLoader;->cleanup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_0
    :try_start_1
    invoke-static {}, Lorg/fusesource/jansi/internal/JansiLoader;->loadJansiNativeLibrary()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "jansi.graceful"

    const-string v3, "true"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    sget-boolean v1, Lorg/fusesource/jansi/internal/JansiLoader;->loaded:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return v1

    .line 65
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to load jansi native library. You may want set the `jansi.graceful` system property to true to be able to use Jansi on your platform"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 381
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 383
    .local v1, "first":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 384
    .local v3, "item":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 385
    const/4 v1, 0x0

    goto :goto_1

    .line 387
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .end local v3    # "item":Ljava/lang/String;
    goto :goto_0

    .line 391
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static loadJansiNativeLibrary()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 268
    sget-boolean v0, Lorg/fusesource/jansi/internal/JansiLoader;->loaded:Z

    if-eqz v0, :cond_0

    .line 269
    return-void

    .line 272
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 275
    .local v0, "triedPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "library.jansi.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "jansiNativeLibraryPath":Ljava/lang/String;
    const-string v2, "library.jansi.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "jansiNativeLibraryName":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 278
    const-string v3, "jansi"

    invoke-static {v3}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 279
    if-eqz v2, :cond_1

    .line 280
    const-string v3, ".dylib"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 281
    const-string v4, ".jnilib"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 279
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 285
    :cond_2
    :goto_0
    const-string v3, "/"

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    .line 286
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lorg/fusesource/jansi/internal/OSInfo;->getNativeLibFolderPathForCurrentOS()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 287
    .local v5, "withOs":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lorg/fusesource/jansi/internal/JansiLoader;->loadNativeLibrary(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 288
    sput-boolean v4, Lorg/fusesource/jansi/internal/JansiLoader;->loaded:Z

    .line 289
    return-void

    .line 291
    :cond_3
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lorg/fusesource/jansi/internal/JansiLoader;->loadNativeLibrary(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 295
    sput-boolean v4, Lorg/fusesource/jansi/internal/JansiLoader;->loaded:Z

    .line 296
    return-void

    .line 298
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    .end local v5    # "withOs":Ljava/lang/String;
    :cond_5
    const-class v5, Lorg/fusesource/jansi/internal/JansiLoader;

    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    const/16 v7, 0x2f

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, "packagePath":Ljava/lang/String;
    invoke-static {}, Lorg/fusesource/jansi/internal/OSInfo;->getNativeLibFolderPathForCurrentOS()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "/%s/native/%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 305
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/fusesource/jansi/internal/JansiLoader;->hasResource(Ljava/lang/String;)Z

    move-result v3

    .line 308
    .local v3, "hasNativeLib":Z
    if-eqz v3, :cond_7

    .line 310
    invoke-static {}, Lorg/fusesource/jansi/internal/JansiLoader;->getTempDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 312
    .local v6, "tempFolder":Ljava/lang/String;
    invoke-static {v1, v2, v6}, Lorg/fusesource/jansi/internal/JansiLoader;->extractAndLoadLibraryFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 313
    sput-boolean v4, Lorg/fusesource/jansi/internal/JansiLoader;->loaded:Z

    .line 314
    return-void

    .line 316
    :cond_6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    .end local v6    # "tempFolder":Ljava/lang/String;
    :cond_7
    const-string v6, "java.library.path"

    const-string v7, ""

    invoke-static {v6, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 322
    .local v6, "javaLibraryPath":Ljava/lang/String;
    sget-object v7, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_a

    aget-object v10, v7, v9

    .line 323
    .local v10, "ldPath":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 324
    goto :goto_2

    .line 326
    :cond_8
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11}, Lorg/fusesource/jansi/internal/JansiLoader;->loadNativeLibrary(Ljava/io/File;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 327
    sput-boolean v4, Lorg/fusesource/jansi/internal/JansiLoader;->loaded:Z

    .line 328
    return-void

    .line 330
    :cond_9
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    .end local v10    # "ldPath":Ljava/lang/String;
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 334
    :cond_a
    new-instance v4, Ljava/lang/Exception;

    .line 335
    invoke-static {}, Lorg/fusesource/jansi/internal/OSInfo;->getOSName()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lorg/fusesource/jansi/internal/OSInfo;->getArchName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v0, v9}, Lorg/fusesource/jansi/internal/JansiLoader;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v7

    .line 334
    const-string v8, "No native library found for os.name=%s, os.arch=%s, paths=[%s]"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static loadNativeLibrary(Ljava/io/File;)Z
    .locals 5
    .param p0, "libPath"    # Ljava/io/File;

    .line 235
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 237
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 239
    sput-object v0, Lorg/fusesource/jansi/internal/JansiLoader;->nativeLibraryPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    const/4 v1, 0x1

    return v1

    .line 241
    .end local v0    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {p0}, Ljava/io/File;->canExecute()Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 248
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/fusesource/jansi/internal/OSInfo;->getNativeLibFolderPathForCurrentOS()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, p0, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 245
    const-string v4, "Failed to load native library:%s. The native library file at %s is not executable, make sure that the directory is mounted on a partition without the noexec flag, or set the jansi.tmpdir system property to point to a proper location.  osinfo: %s%n"

    invoke-virtual {v2, v4, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_0

    .line 250
    :cond_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 251
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/fusesource/jansi/internal/OSInfo;->getNativeLibFolderPathForCurrentOS()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 250
    const-string v4, "Failed to load native library:%s. osinfo: %s%n"

    invoke-virtual {v2, v4, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 253
    :goto_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 254
    return v1

    .line 258
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_1
    return v1
.end method

.method private static randomUUID()Ljava/lang/String;
    .locals 2

    .line 217
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readNBytes(Ljava/io/InputStream;[B)I
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "n":I
    array-length v1, p1

    .line 115
    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 116
    sub-int v2, v1, v0

    invoke-virtual {p0, p1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 117
    .local v2, "count":I
    if-gtz v2, :cond_0

    .line 118
    goto :goto_1

    .line 119
    :cond_0
    add-int/2addr v0, v2

    .line 120
    .end local v2    # "count":I
    goto :goto_0

    .line 121
    :cond_1
    :goto_1
    return v0
.end method
