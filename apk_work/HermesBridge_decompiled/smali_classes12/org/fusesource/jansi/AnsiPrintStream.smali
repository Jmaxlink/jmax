.class public Lorg/fusesource/jansi/AnsiPrintStream;
.super Ljava/io/PrintStream;
.source "AnsiPrintStream.java"


# direct methods
.method public constructor <init>(Lorg/fusesource/jansi/io/AnsiOutputStream;Z)V
    .locals 0
    .param p1, "out"    # Lorg/fusesource/jansi/io/AnsiOutputStream;
    .param p2, "autoFlush"    # Z

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/fusesource/jansi/io/AnsiOutputStream;ZLjava/lang/String;)V
    .locals 0
    .param p1, "out"    # Lorg/fusesource/jansi/io/AnsiOutputStream;
    .param p2, "autoFlush"    # Z
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2, p3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getColors()Lorg/fusesource/jansi/AnsiColors;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/fusesource/jansi/AnsiPrintStream;->getOut()Lorg/fusesource/jansi/io/AnsiOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fusesource/jansi/io/AnsiOutputStream;->getColors()Lorg/fusesource/jansi/AnsiColors;

    move-result-object v0

    return-object v0
.end method

.method public getMode()Lorg/fusesource/jansi/AnsiMode;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/fusesource/jansi/AnsiPrintStream;->getOut()Lorg/fusesource/jansi/io/AnsiOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fusesource/jansi/io/AnsiOutputStream;->getMode()Lorg/fusesource/jansi/AnsiMode;

    move-result-object v0

    return-object v0
.end method

.method protected getOut()Lorg/fusesource/jansi/io/AnsiOutputStream;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/fusesource/jansi/AnsiPrintStream;->out:Ljava/io/OutputStream;

    check-cast v0, Lorg/fusesource/jansi/io/AnsiOutputStream;

    return-object v0
.end method

.method public getTerminalWidth()I
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/fusesource/jansi/AnsiPrintStream;->getOut()Lorg/fusesource/jansi/io/AnsiOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fusesource/jansi/io/AnsiOutputStream;->getTerminalWidth()I

    move-result v0

    return v0
.end method

.method public getType()Lorg/fusesource/jansi/AnsiType;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/fusesource/jansi/AnsiPrintStream;->getOut()Lorg/fusesource/jansi/io/AnsiOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fusesource/jansi/io/AnsiOutputStream;->getType()Lorg/fusesource/jansi/AnsiType;

    move-result-object v0

    return-object v0
.end method

.method public install()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lorg/fusesource/jansi/AnsiPrintStream;->getOut()Lorg/fusesource/jansi/io/AnsiOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fusesource/jansi/io/AnsiOutputStream;->install()V

    .line 76
    return-void
.end method

.method public isResetAtUninstall()Z
    .locals 1

    .line 59
    invoke-virtual {p0}, Lorg/fusesource/jansi/AnsiPrintStream;->getOut()Lorg/fusesource/jansi/io/AnsiOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fusesource/jansi/io/AnsiOutputStream;->isResetAtUninstall()Z

    move-result v0

    return v0
.end method

.method public setMode(Lorg/fusesource/jansi/AnsiMode;)V
    .locals 1
    .param p1, "ansiMode"    # Lorg/fusesource/jansi/AnsiMode;

    .line 55
    invoke-virtual {p0}, Lorg/fusesource/jansi/AnsiPrintStream;->getOut()Lorg/fusesource/jansi/io/AnsiOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fusesource/jansi/io/AnsiOutputStream;->setMode(Lorg/fusesource/jansi/AnsiMode;)V

    .line 56
    return-void
.end method

.method public setResetAtUninstall(Z)V
    .locals 1
    .param p1, "resetAtClose"    # Z

    .line 63
    invoke-virtual {p0}, Lorg/fusesource/jansi/AnsiPrintStream;->getOut()Lorg/fusesource/jansi/io/AnsiOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/fusesource/jansi/io/AnsiOutputStream;->setResetAtUninstall(Z)V

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnsiPrintStream{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lorg/fusesource/jansi/AnsiPrintStream;->getType()Lorg/fusesource/jansi/AnsiType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", colors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Lorg/fusesource/jansi/AnsiPrintStream;->getColors()Lorg/fusesource/jansi/AnsiColors;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lorg/fusesource/jansi/AnsiPrintStream;->getMode()Lorg/fusesource/jansi/AnsiMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resetAtUninstall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lorg/fusesource/jansi/AnsiPrintStream;->isResetAtUninstall()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    return-object v0
.end method

.method public uninstall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lorg/fusesource/jansi/AnsiPrintStream;->getOut()Lorg/fusesource/jansi/io/AnsiOutputStream;

    move-result-object v0

    .line 81
    .local v0, "out":Lorg/fusesource/jansi/io/AnsiOutputStream;
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lorg/fusesource/jansi/io/AnsiOutputStream;->uninstall()V

    .line 84
    :cond_0
    return-void
.end method
