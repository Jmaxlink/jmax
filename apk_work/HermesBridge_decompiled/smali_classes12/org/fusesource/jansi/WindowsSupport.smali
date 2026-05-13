.class public Lorg/fusesource/jansi/WindowsSupport;
.super Ljava/lang/Object;
.source "WindowsSupport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorMessage(I)Ljava/lang/String;
    .locals 10
    .param p0, "errorCode"    # I

    .line 32
    const/16 v8, 0xa0

    .line 33
    .local v8, "bufferSize":I
    new-array v9, v8, [B

    .line 34
    .local v9, "data":[B
    sget v0, Lorg/fusesource/jansi/internal/Kernel32;->FORMAT_MESSAGE_FROM_SYSTEM:I

    const/4 v4, 0x0

    const/4 v7, 0x0

    const-wide/16 v1, 0x0

    move v3, p0

    move-object v5, v9

    move v6, v8

    invoke-static/range {v0 .. v7}, Lorg/fusesource/jansi/internal/Kernel32;->FormatMessageW(IJII[BI[J)I

    .line 36
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-16LE"

    invoke-direct {v0, v9, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getLastErrorMessage()Ljava/lang/String;
    .locals 2

    .line 27
    invoke-static {}, Lorg/fusesource/jansi/internal/Kernel32;->GetLastError()I

    move-result v0

    .line 28
    .local v0, "errorCode":I
    invoke-static {v0}, Lorg/fusesource/jansi/WindowsSupport;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
