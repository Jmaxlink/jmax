.class public Lorg/fusesource/jansi/io/AnsiOutputStream;
.super Ljava/io/FilterOutputStream;
.source "AnsiOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fusesource/jansi/io/AnsiOutputStream$ZeroWidthSupplier;,
        Lorg/fusesource/jansi/io/AnsiOutputStream$WidthSupplier;,
        Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;
    }
.end annotation


# static fields
.field private static final BEL:I = 0x7

.field private static final FIRST_ESC_CHAR:I = 0x1b

.field private static final LOOKING_FOR_CHARSET:I = 0x9

.field private static final LOOKING_FOR_FIRST_ESC_CHAR:I = 0x0

.field private static final LOOKING_FOR_INT_ARG_END:I = 0x4

.field private static final LOOKING_FOR_NEXT_ARG:I = 0x2

.field private static final LOOKING_FOR_OSC_COMMAND:I = 0x5

.field private static final LOOKING_FOR_OSC_COMMAND_END:I = 0x6

.field private static final LOOKING_FOR_OSC_PARAM:I = 0x7

.field private static final LOOKING_FOR_SECOND_ESC_CHAR:I = 0x1

.field private static final LOOKING_FOR_ST:I = 0x8

.field private static final LOOKING_FOR_STR_ARG_END:I = 0x3

.field private static final MAX_ESCAPE_SEQUENCE_LENGTH:I = 0x64

.field public static final RESET_CODE:[B

.field private static final SECOND_CHARSET0_CHAR:I = 0x28

.field private static final SECOND_CHARSET1_CHAR:I = 0x29

.field private static final SECOND_ESC_CHAR:I = 0x5b

.field private static final SECOND_OSC_CHAR:I = 0x5d

.field private static final SECOND_ST_CHAR:I = 0x5c


# instance fields
.field private ap:Lorg/fusesource/jansi/io/AnsiProcessor;

.field private final buffer:[B

.field private final colors:Lorg/fusesource/jansi/AnsiColors;

.field private final cs:Ljava/nio/charset/Charset;

.field private final installer:Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;

.field private mode:Lorg/fusesource/jansi/AnsiMode;

.field private final options:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private pos:I

.field private final processor:Lorg/fusesource/jansi/io/AnsiProcessor;

.field private resetAtUninstall:Z

.field private startOfValue:I

.field private state:I

.field private final type:Lorg/fusesource/jansi/AnsiType;

.field private final uninstaller:Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;

.field private final width:Lorg/fusesource/jansi/io/AnsiOutputStream$WidthSupplier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-string v0, "\u001b[0m"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/fusesource/jansi/io/AnsiOutputStream;->RESET_CODE:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/fusesource/jansi/io/AnsiOutputStream$WidthSupplier;Lorg/fusesource/jansi/AnsiMode;Lorg/fusesource/jansi/io/AnsiProcessor;Lorg/fusesource/jansi/AnsiType;Lorg/fusesource/jansi/AnsiColors;Ljava/nio/charset/Charset;Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;Z)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "width"    # Lorg/fusesource/jansi/io/AnsiOutputStream$WidthSupplier;
    .param p3, "mode"    # Lorg/fusesource/jansi/AnsiMode;
    .param p4, "processor"    # Lorg/fusesource/jansi/io/AnsiProcessor;
    .param p5, "type"    # Lorg/fusesource/jansi/AnsiType;
    .param p6, "colors"    # Lorg/fusesource/jansi/AnsiColors;
    .param p7, "cs"    # Ljava/nio/charset/Charset;
    .param p8, "installer"    # Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;
    .param p9, "uninstaller"    # Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;
    .param p10, "resetAtUninstall"    # Z

    .line 99
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 80
    const/16 v0, 0x64

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->buffer:[B

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->options:Ljava/util/ArrayList;

    .line 84
    iput v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->state:I

    .line 100
    iput-object p2, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->width:Lorg/fusesource/jansi/io/AnsiOutputStream$WidthSupplier;

    .line 101
    iput-object p4, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->processor:Lorg/fusesource/jansi/io/AnsiProcessor;

    .line 102
    iput-object p5, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->type:Lorg/fusesource/jansi/AnsiType;

    .line 103
    iput-object p6, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->colors:Lorg/fusesource/jansi/AnsiColors;

    .line 104
    iput-object p8, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->installer:Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;

    .line 105
    iput-object p9, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->uninstaller:Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;

    .line 106
    iput-boolean p10, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->resetAtUninstall:Z

    .line 107
    iput-object p7, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->cs:Ljava/nio/charset/Charset;

    .line 108
    invoke-virtual {p0, p3}, Lorg/fusesource/jansi/io/AnsiOutputStream;->setMode(Lorg/fusesource/jansi/AnsiMode;)V

    .line 109
    return-void
.end method

.method private processCharsetSelect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->ap:Lorg/fusesource/jansi/io/AnsiProcessor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->ap:Lorg/fusesource/jansi/io/AnsiProcessor;

    iget-object v2, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->options:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lorg/fusesource/jansi/io/AnsiProcessor;->processCharsetSelect(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lorg/fusesource/jansi/io/AnsiOutputStream;->reset(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    nop

    .line 291
    return-void

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lorg/fusesource/jansi/io/AnsiOutputStream;->reset(Z)V

    .line 289
    throw v1
.end method

.method private processEscapeCommand(I)V
    .locals 3
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->ap:Lorg/fusesource/jansi/io/AnsiProcessor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->ap:Lorg/fusesource/jansi/io/AnsiProcessor;

    iget-object v2, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->options:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Lorg/fusesource/jansi/io/AnsiProcessor;->processEscapeCommand(Ljava/util/ArrayList;I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lorg/fusesource/jansi/io/AnsiOutputStream;->reset(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    nop

    .line 309
    return-void

    .line 305
    :catch_0
    move-exception v1

    .line 306
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lorg/fusesource/jansi/io/AnsiOutputStream;->reset(Z)V

    .line 307
    throw v1
.end method

.method private processOperatingSystemCommand()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->ap:Lorg/fusesource/jansi/io/AnsiProcessor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->ap:Lorg/fusesource/jansi/io/AnsiProcessor;

    iget-object v2, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->options:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lorg/fusesource/jansi/io/AnsiProcessor;->processOperatingSystemCommand(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lorg/fusesource/jansi/io/AnsiOutputStream;->reset(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    nop

    .line 300
    return-void

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lorg/fusesource/jansi/io/AnsiOutputStream;->reset(Z)V

    .line 298
    throw v1
.end method

.method private reset(Z)V
    .locals 4
    .param p1, "skipBuffer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 318
    iget-object v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->buffer:[B

    iget v3, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 320
    :cond_0
    iput v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    .line 321
    iput v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->startOfValue:I

    .line 322
    iget-object v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->options:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 323
    iput v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->state:I

    .line 324
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    invoke-virtual {p0}, Lorg/fusesource/jansi/io/AnsiOutputStream;->uninstall()V

    .line 348
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 349
    return-void
.end method

.method public getColors()Lorg/fusesource/jansi/AnsiColors;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->colors:Lorg/fusesource/jansi/AnsiColors;

    return-object v0
.end method

.method public getMode()Lorg/fusesource/jansi/AnsiMode;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->mode:Lorg/fusesource/jansi/AnsiMode;

    return-object v0
.end method

.method public getTerminalWidth()I
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->width:Lorg/fusesource/jansi/io/AnsiOutputStream$WidthSupplier;

    invoke-interface {v0}, Lorg/fusesource/jansi/io/AnsiOutputStream$WidthSupplier;->getTerminalWidth()I

    move-result v0

    return v0
.end method

.method public getType()Lorg/fusesource/jansi/AnsiType;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->type:Lorg/fusesource/jansi/AnsiType;

    return-object v0
.end method

.method public install()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->installer:Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->installer:Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;

    invoke-interface {v0}, Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;->run()V

    .line 330
    :cond_0
    return-void
.end method

.method public isResetAtUninstall()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->resetAtUninstall:Z

    return v0
.end method

.method public setMode(Lorg/fusesource/jansi/AnsiMode;)V
    .locals 3
    .param p1, "mode"    # Lorg/fusesource/jansi/AnsiMode;

    .line 128
    sget-object v0, Lorg/fusesource/jansi/AnsiMode;->Strip:Lorg/fusesource/jansi/AnsiMode;

    if-ne p1, v0, :cond_0

    .line 129
    new-instance v0, Lorg/fusesource/jansi/io/AnsiProcessor;

    iget-object v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lorg/fusesource/jansi/io/AnsiProcessor;-><init>(Ljava/io/OutputStream;)V

    goto :goto_1

    .line 130
    :cond_0
    sget-object v0, Lorg/fusesource/jansi/AnsiMode;->Force:Lorg/fusesource/jansi/AnsiMode;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->processor:Lorg/fusesource/jansi/io/AnsiProcessor;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->processor:Lorg/fusesource/jansi/io/AnsiProcessor;

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v0, Lorg/fusesource/jansi/io/ColorsAnsiProcessor;

    iget-object v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->colors:Lorg/fusesource/jansi/AnsiColors;

    invoke-direct {v0, v1, v2}, Lorg/fusesource/jansi/io/ColorsAnsiProcessor;-><init>(Ljava/io/OutputStream;Lorg/fusesource/jansi/AnsiColors;)V

    :goto_1
    iput-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->ap:Lorg/fusesource/jansi/io/AnsiProcessor;

    .line 131
    iput-object p1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->mode:Lorg/fusesource/jansi/AnsiMode;

    .line 132
    return-void
.end method

.method public setResetAtUninstall(Z)V
    .locals 0
    .param p1, "resetAtUninstall"    # Z

    .line 139
    iput-boolean p1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->resetAtUninstall:Z

    .line 140
    return-void
.end method

.method public uninstall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    iget-boolean v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->resetAtUninstall:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->type:Lorg/fusesource/jansi/AnsiType;

    sget-object v1, Lorg/fusesource/jansi/AnsiType;->Redirected:Lorg/fusesource/jansi/AnsiType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->type:Lorg/fusesource/jansi/AnsiType;

    sget-object v1, Lorg/fusesource/jansi/AnsiType;->Unsupported:Lorg/fusesource/jansi/AnsiType;

    if-eq v0, v1, :cond_0

    .line 336
    sget-object v0, Lorg/fusesource/jansi/AnsiMode;->Default:Lorg/fusesource/jansi/AnsiMode;

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/io/AnsiOutputStream;->setMode(Lorg/fusesource/jansi/AnsiMode;)V

    .line 337
    sget-object v0, Lorg/fusesource/jansi/io/AnsiOutputStream;->RESET_CODE:[B

    invoke-virtual {p0, v0}, Lorg/fusesource/jansi/io/AnsiOutputStream;->write([B)V

    .line 338
    invoke-virtual {p0}, Lorg/fusesource/jansi/io/AnsiOutputStream;->flush()V

    .line 340
    :cond_0
    iget-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->uninstaller:Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->uninstaller:Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;

    invoke-interface {v0}, Lorg/fusesource/jansi/io/AnsiOutputStream$IoRunnable;->run()V

    .line 343
    :cond_1
    return-void
.end method

.method public write(I)V
    .locals 10
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->state:I

    const/16 v1, 0x22

    const/16 v2, 0x1b

    const/4 v3, 0x7

    const/16 v4, 0x39

    const/4 v5, 0x2

    const/16 v6, 0x3b

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v9, 0x1

    packed-switch v0, :pswitch_data_0

    .line 193
    goto/16 :goto_4

    .line 273
    :pswitch_0
    iget-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->options:Ljava/util/ArrayList;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-direct {p0}, Lorg/fusesource/jansi/io/AnsiOutputStream;->processCharsetSelect()V

    goto/16 :goto_4

    .line 262
    :pswitch_1
    iget-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->buffer:[B

    iget v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 263
    const/16 v0, 0x5c

    if-ne v0, p1, :cond_0

    .line 264
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->buffer:[B

    iget v2, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->startOfValue:I

    iget v3, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    sub-int/2addr v3, v5

    iget v4, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->startOfValue:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->cs:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 265
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->options:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-direct {p0}, Lorg/fusesource/jansi/io/AnsiOutputStream;->processOperatingSystemCommand()V

    .line 267
    .end local v0    # "value":Ljava/lang/String;
    goto/16 :goto_4

    .line 268
    :cond_0
    iput v3, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->state:I

    .line 270
    goto/16 :goto_4

    .line 249
    :pswitch_2
    iget-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->buffer:[B

    iget v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    int-to-byte v4, p1

    aput-byte v4, v0, v1

    .line 250
    if-ne v3, p1, :cond_1

    .line 251
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->buffer:[B

    iget v2, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->startOfValue:I

    iget v3, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    sub-int/2addr v3, v9

    iget v4, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->startOfValue:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->cs:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 252
    .restart local v0    # "value":Ljava/lang/String;
    iget-object v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->options:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-direct {p0}, Lorg/fusesource/jansi/io/AnsiOutputStream;->processOperatingSystemCommand()V

    .end local v0    # "value":Ljava/lang/String;
    goto :goto_0

    .line 254
    :cond_1
    if-ne v2, p1, :cond_2

    .line 255
    const/16 v0, 0x8

    iput v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->state:I

    goto/16 :goto_4

    .line 254
    :cond_2
    :goto_0
    goto/16 :goto_4

    .line 233
    :pswitch_3
    iget-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->buffer:[B

    iget v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 234
    if-ne v6, p1, :cond_3

    .line 235
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->buffer:[B

    iget v2, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->startOfValue:I

    iget v4, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    sub-int/2addr v4, v9

    iget v5, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->startOfValue:I

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    .line 236
    .local v0, "strValue":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 237
    .local v1, "value":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->options:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    iget v2, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    iput v2, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->startOfValue:I

    .line 239
    iput v3, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->state:I

    .line 240
    .end local v0    # "strValue":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/Integer;
    :goto_1
    goto/16 :goto_4

    :cond_3
    if-gt v7, p1, :cond_4

    if-gt p1, v4, :cond_4

    goto :goto_1

    .line 244
    :cond_4
    invoke-direct {p0, v8}, Lorg/fusesource/jansi/io/AnsiOutputStream;->reset(Z)V

    .line 246
    goto/16 :goto_4

    .line 223
    :pswitch_4
    iget-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->buffer:[B

    iget v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 224
    if-gt v7, p1, :cond_5

    if-gt p1, v4, :cond_5

    .line 225
    iget v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    sub-int/2addr v0, v9

    iput v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->startOfValue:I

    .line 226
    const/4 v0, 0x6

    iput v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->state:I

    goto/16 :goto_4

    .line 228
    :cond_5
    invoke-direct {p0, v8}, Lorg/fusesource/jansi/io/AnsiOutputStream;->reset(Z)V

    .line 230
    goto/16 :goto_4

    .line 196
    :pswitch_5
    iget-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->buffer:[B

    iget v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 197
    if-gt v7, p1, :cond_6

    if-le p1, v4, :cond_13

    .line 198
    :cond_6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->buffer:[B

    iget v2, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->startOfValue:I

    iget v3, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    sub-int/2addr v3, v9

    iget v4, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->startOfValue:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 199
    .restart local v0    # "strValue":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 200
    .restart local v1    # "value":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->options:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    if-ne p1, v6, :cond_7

    .line 202
    iput v5, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->state:I

    goto :goto_2

    .line 204
    :cond_7
    invoke-direct {p0, p1}, Lorg/fusesource/jansi/io/AnsiOutputStream;->processEscapeCommand(I)V

    .line 206
    .end local v0    # "strValue":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/Integer;
    :goto_2
    goto/16 :goto_4

    .line 210
    :pswitch_6
    iget-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->buffer:[B

    iget v2, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    int-to-byte v3, p1

    aput-byte v3, v0, v2

    .line 211
    if-eq v1, p1, :cond_13

    .line 212
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->buffer:[B

    iget v2, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->startOfValue:I

    iget v3, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    sub-int/2addr v3, v9

    iget v4, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->startOfValue:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->cs:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 213
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->options:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    if-ne p1, v6, :cond_8

    .line 215
    iput v5, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->state:I

    goto :goto_3

    .line 217
    :cond_8
    invoke-direct {p0, p1}, Lorg/fusesource/jansi/io/AnsiOutputStream;->processEscapeCommand(I)V

    .line 219
    .end local v0    # "value":Ljava/lang/String;
    :goto_3
    goto/16 :goto_4

    .line 175
    :pswitch_7
    iget-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->buffer:[B

    iget v2, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    int-to-byte v3, p1

    aput-byte v3, v0, v2

    .line 176
    if-ne v1, p1, :cond_9

    .line 177
    iget v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    sub-int/2addr v0, v9

    iput v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->startOfValue:I

    .line 178
    const/4 v0, 0x3

    iput v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->state:I

    goto/16 :goto_4

    .line 179
    :cond_9
    if-gt v7, p1, :cond_a

    if-gt p1, v4, :cond_a

    .line 180
    iget v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    sub-int/2addr v0, v9

    iput v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->startOfValue:I

    .line 181
    const/4 v0, 0x4

    iput v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->state:I

    goto/16 :goto_4

    .line 182
    :cond_a
    if-ne v6, p1, :cond_b

    .line 183
    iget-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->options:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 184
    :cond_b
    const/16 v0, 0x3f

    if-ne v0, p1, :cond_c

    .line 185
    iget-object v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->options:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 186
    :cond_c
    const/16 v0, 0x3d

    if-ne v0, p1, :cond_d

    .line 187
    iget-object v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->options:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 189
    :cond_d
    invoke-direct {p0, p1}, Lorg/fusesource/jansi/io/AnsiOutputStream;->processEscapeCommand(I)V

    .line 191
    goto :goto_4

    .line 158
    :pswitch_8
    iget-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->buffer:[B

    iget v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 159
    const/16 v0, 0x5b

    if-ne p1, v0, :cond_e

    .line 160
    iput v5, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->state:I

    goto :goto_4

    .line 161
    :cond_e
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_f

    .line 162
    const/4 v0, 0x5

    iput v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->state:I

    goto :goto_4

    .line 163
    :cond_f
    const/16 v0, 0x28

    const/16 v1, 0x9

    if-ne p1, v0, :cond_10

    .line 164
    iget-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->options:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    iput v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->state:I

    goto :goto_4

    .line 166
    :cond_10
    const/16 v0, 0x29

    if-ne p1, v0, :cond_11

    .line 167
    iget-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->options:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iput v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->state:I

    goto :goto_4

    .line 170
    :cond_11
    invoke-direct {p0, v8}, Lorg/fusesource/jansi/io/AnsiOutputStream;->reset(Z)V

    .line 172
    goto :goto_4

    .line 149
    :pswitch_9
    if-ne p1, v2, :cond_12

    .line 150
    iget-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->buffer:[B

    iget v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 151
    iput v9, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->state:I

    goto :goto_4

    .line 153
    :cond_12
    iget-object v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 155
    nop

    .line 279
    :cond_13
    :goto_4
    iget v0, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->pos:I

    iget-object v1, p0, Lorg/fusesource/jansi/io/AnsiOutputStream;->buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_14

    .line 280
    invoke-direct {p0, v8}, Lorg/fusesource/jansi/io/AnsiOutputStream;->reset(Z)V

    .line 282
    :cond_14
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
