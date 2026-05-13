.class final Lio/netty/util/internal/PlatformDependent$4;
.super Ljava/lang/Object;
.source "PlatformDependent.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/internal/PlatformDependent;->addFilesystemOsClassifiers(Ljava/util/Set;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$allowedClassifiers:Ljava/util/Set;

.field final synthetic val$availableClassifiers:Ljava/util/Set;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$osReleaseFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lio/netty/util/internal/PlatformDependent$4;->val$file:Ljava/io/File;

    iput-object p2, p0, Lio/netty/util/internal/PlatformDependent$4;->val$allowedClassifiers:Ljava/util/Set;

    iput-object p3, p0, Lio/netty/util/internal/PlatformDependent$4;->val$availableClassifiers:Ljava/util/Set;

    iput-object p4, p0, Lio/netty/util/internal/PlatformDependent$4;->val$osReleaseFileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 8

    .line 235
    const-string v0, "ID_LIKE="

    const-string v1, "ID="

    :try_start_0
    iget-object v2, p0, Lio/netty/util/internal/PlatformDependent$4;->val$file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v2, :cond_5

    .line 236
    const/4 v2, 0x0

    .line 238
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lio/netty/util/internal/PlatformDependent$4;->val$file:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v6, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 243
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 244
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 245
    nop

    .line 246
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 245
    invoke-static {v3}, Lio/netty/util/internal/PlatformDependent;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "id":Ljava/lang/String;
    iget-object v5, p0, Lio/netty/util/internal/PlatformDependent$4;->val$allowedClassifiers:Ljava/util/Set;

    iget-object v6, p0, Lio/netty/util/internal/PlatformDependent$4;->val$availableClassifiers:Ljava/util/Set;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lio/netty/util/internal/PlatformDependent;->access$100(Ljava/util/Set;Ljava/util/Set;[Ljava/lang/String;)V

    .end local v3    # "id":Ljava/lang/String;
    goto :goto_1

    .line 248
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    nop

    .line 250
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 249
    invoke-static {v3}, Lio/netty/util/internal/PlatformDependent;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 251
    .end local v4    # "line":Ljava/lang/String;
    .local v3, "line":Ljava/lang/String;
    iget-object v4, p0, Lio/netty/util/internal/PlatformDependent$4;->val$allowedClassifiers:Ljava/util/Set;

    iget-object v5, p0, Lio/netty/util/internal/PlatformDependent$4;->val$availableClassifiers:Ljava/util/Set;

    const-string v6, "[ ]+"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lio/netty/util/internal/PlatformDependent;->access$100(Ljava/util/Set;Ljava/util/Set;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 248
    .end local v3    # "line":Ljava/lang/String;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_1
    :goto_1
    goto :goto_0

    .line 259
    .end local v4    # "line":Ljava/lang/String;
    :cond_2
    nop

    .line 261
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4

    .line 264
    :goto_2
    goto :goto_3

    .line 262
    :catch_0
    move-exception v0

    goto :goto_2

    .line 259
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 256
    :catch_1
    move-exception v0

    .line 257
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->access$200()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    const-string v3, "Error while reading content of {}"

    iget-object v4, p0, Lio/netty/util/internal/PlatformDependent$4;->val$osReleaseFileName:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_3

    .line 261
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    .line 254
    :catch_2
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_5
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->access$200()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    const-string v3, "Unable to read {}"

    iget-object v4, p0, Lio/netty/util/internal/PlatformDependent$4;->val$osReleaseFileName:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 259
    .end local v0    # "e":Ljava/lang/SecurityException;
    if-eqz v2, :cond_3

    .line 261
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 268
    :cond_3
    :goto_3
    const/4 v0, 0x1

    :try_start_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_4

    return-object v0

    .line 259
    :goto_4
    if-eqz v2, :cond_4

    .line 261
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_4

    .line 264
    goto :goto_5

    .line 262
    :catch_3
    move-exception v1

    .line 266
    :cond_4
    :goto_5
    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_4

    .line 272
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :cond_5
    goto :goto_6

    .line 270
    :catch_4
    move-exception v0

    .line 271
    .restart local v0    # "e":Ljava/lang/SecurityException;
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->access$200()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    const-string v2, "Unable to check if {} exists"

    iget-object v3, p0, Lio/netty/util/internal/PlatformDependent$4;->val$osReleaseFileName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 273
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_6
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 231
    invoke-virtual {p0}, Lio/netty/util/internal/PlatformDependent$4;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
