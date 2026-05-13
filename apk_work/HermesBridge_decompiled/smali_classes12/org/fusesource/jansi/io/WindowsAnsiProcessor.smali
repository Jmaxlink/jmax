.class public final Lorg/fusesource/jansi/io/WindowsAnsiProcessor;
.super Lorg/fusesource/jansi/io/AnsiProcessor;
.source "WindowsAnsiProcessor.java"


# static fields
.field private static final ANSI_BACKGROUND_COLOR_MAP:[S

.field private static final ANSI_FOREGROUND_COLOR_MAP:[S

.field private static final BACKGROUND_BLACK:S

.field private static final BACKGROUND_CYAN:S

.field private static final BACKGROUND_MAGENTA:S

.field private static final BACKGROUND_WHITE:S

.field private static final BACKGROUND_YELLOW:S

.field private static final FOREGROUND_BLACK:S

.field private static final FOREGROUND_CYAN:S

.field private static final FOREGROUND_MAGENTA:S

.field private static final FOREGROUND_WHITE:S

.field private static final FOREGROUND_YELLOW:S


# instance fields
.field private final console:J

.field private final info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

.field private negative:Z

.field private final originalColors:S

.field private savedX:S

.field private savedY:S


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 62
    sget-short v0, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_RED:S

    sget-short v1, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_GREEN:S

    or-int/2addr v0, v1

    int-to-short v0, v0

    sput-short v0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->FOREGROUND_YELLOW:S

    .line 63
    sget-short v0, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_BLUE:S

    sget-short v1, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_RED:S

    or-int/2addr v0, v1

    int-to-short v0, v0

    sput-short v0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->FOREGROUND_MAGENTA:S

    .line 64
    sget-short v0, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_BLUE:S

    sget-short v1, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_GREEN:S

    or-int/2addr v0, v1

    int-to-short v0, v0

    sput-short v0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->FOREGROUND_CYAN:S

    .line 65
    sget-short v0, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_RED:S

    sget-short v1, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_GREEN:S

    or-int/2addr v0, v1

    sget-short v1, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_BLUE:S

    or-int/2addr v0, v1

    int-to-short v0, v0

    sput-short v0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->FOREGROUND_WHITE:S

    .line 68
    sget-short v0, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_RED:S

    sget-short v1, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_GREEN:S

    or-int/2addr v0, v1

    int-to-short v0, v0

    sput-short v0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->BACKGROUND_YELLOW:S

    .line 69
    sget-short v0, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_BLUE:S

    sget-short v1, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_RED:S

    or-int/2addr v0, v1

    int-to-short v0, v0

    sput-short v0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->BACKGROUND_MAGENTA:S

    .line 70
    sget-short v0, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_BLUE:S

    sget-short v1, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_GREEN:S

    or-int/2addr v0, v1

    int-to-short v0, v0

    sput-short v0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->BACKGROUND_CYAN:S

    .line 71
    sget-short v0, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_RED:S

    sget-short v1, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_GREEN:S

    or-int/2addr v0, v1

    sget-short v1, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_BLUE:S

    or-int/2addr v0, v1

    int-to-short v0, v0

    sput-short v0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->BACKGROUND_WHITE:S

    .line 73
    const/16 v0, 0x8

    new-array v1, v0, [S

    const/4 v2, 0x0

    aput-short v2, v1, v2

    sget-short v3, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_RED:S

    const/4 v4, 0x1

    aput-short v3, v1, v4

    sget-short v3, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_GREEN:S

    const/4 v5, 0x2

    aput-short v3, v1, v5

    sget-short v3, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->FOREGROUND_YELLOW:S

    const/4 v6, 0x3

    aput-short v3, v1, v6

    sget-short v3, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_BLUE:S

    const/4 v7, 0x4

    aput-short v3, v1, v7

    sget-short v3, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->FOREGROUND_MAGENTA:S

    const/4 v8, 0x5

    aput-short v3, v1, v8

    sget-short v3, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->FOREGROUND_CYAN:S

    const/4 v9, 0x6

    aput-short v3, v1, v9

    sget-short v3, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->FOREGROUND_WHITE:S

    const/4 v10, 0x7

    aput-short v3, v1, v10

    sput-object v1, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->ANSI_FOREGROUND_COLOR_MAP:[S

    .line 84
    new-array v0, v0, [S

    aput-short v2, v0, v2

    sget-short v1, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_RED:S

    aput-short v1, v0, v4

    sget-short v1, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_GREEN:S

    aput-short v1, v0, v5

    sget-short v1, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->BACKGROUND_YELLOW:S

    aput-short v1, v0, v6

    sget-short v1, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_BLUE:S

    aput-short v1, v0, v7

    sget-short v1, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->BACKGROUND_MAGENTA:S

    aput-short v1, v0, v8

    sget-short v1, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->BACKGROUND_CYAN:S

    aput-short v1, v0, v9

    sget-short v1, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->BACKGROUND_WHITE:S

    aput-short v1, v0, v10

    sput-object v0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->ANSI_BACKGROUND_COLOR_MAP:[S

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "ps"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;-><init>(Ljava/io/OutputStream;Z)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;J)V
    .locals 1
    .param p1, "ps"    # Ljava/io/OutputStream;
    .param p2, "console"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1}, Lorg/fusesource/jansi/io/AnsiProcessor;-><init>(Ljava/io/OutputStream;)V

    .line 95
    new-instance v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    invoke-direct {v0}, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;-><init>()V

    iput-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    .line 99
    const/4 v0, -0x1

    iput-short v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->savedX:S

    .line 100
    iput-short v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->savedY:S

    .line 104
    iput-wide p2, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->console:J

    .line 105
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->getConsoleInfo()V

    .line 106
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    iput-short v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->originalColors:S

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2
    .param p1, "ps"    # Ljava/io/OutputStream;
    .param p2, "stdout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    if-eqz p2, :cond_0

    sget v0, Lorg/fusesource/jansi/internal/Kernel32;->STD_OUTPUT_HANDLE:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/fusesource/jansi/internal/Kernel32;->STD_ERROR_HANDLE:I

    :goto_0
    invoke-static {v0}, Lorg/fusesource/jansi/internal/Kernel32;->GetStdHandle(I)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;-><init>(Ljava/io/OutputStream;J)V

    .line 111
    return-void
.end method

.method private applyAttribute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 129
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    .line 130
    .local v0, "attributes":S
    iget-boolean v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->negative:Z

    if-eqz v1, :cond_0

    .line 131
    invoke-direct {p0, v0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->invertAttributeColors(S)S

    move-result v0

    .line 133
    :cond_0
    iget-wide v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->console:J

    invoke-static {v1, v2, v0}, Lorg/fusesource/jansi/internal/Kernel32;->SetConsoleTextAttribute(JS)I

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    return-void

    .line 134
    :cond_1
    new-instance v1, Ljava/io/IOException;

    invoke-static {}, Lorg/fusesource/jansi/WindowsSupport;->getLastErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private applyCursorPosition()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    iget-wide v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->console:J

    iget-object v2, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-virtual {v2}, Lorg/fusesource/jansi/internal/Kernel32$COORD;->copy()Lorg/fusesource/jansi/internal/Kernel32$COORD;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/fusesource/jansi/internal/Kernel32;->SetConsoleCursorPosition(JLorg/fusesource/jansi/internal/Kernel32$COORD;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    return-void

    .line 150
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/fusesource/jansi/WindowsSupport;->getLastErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getConsoleInfo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 119
    iget-wide v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->console:J

    iget-object v2, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    invoke-static {v0, v1, v2}, Lorg/fusesource/jansi/internal/Kernel32;->GetConsoleScreenBufferInfo(JLorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-boolean v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->negative:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    invoke-direct {p0, v1}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->invertAttributeColors(S)S

    move-result v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    .line 125
    :cond_0
    return-void

    .line 120
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get the screen info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/fusesource/jansi/WindowsSupport;->getLastErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private invertAttributeColors(S)S
    .locals 3
    .param p1, "attributes"    # S

    .line 140
    and-int/lit8 v0, p1, 0xf

    .line 141
    .local v0, "fg":I
    shl-int/lit8 v0, v0, 0x4

    .line 142
    and-int/lit16 v1, p1, 0xf0

    .line 143
    .local v1, "bg":I
    shr-int/lit8 v1, v1, 0x4

    .line 144
    const v2, 0xff00

    and-int/2addr v2, p1

    or-int/2addr v2, v0

    or-int/2addr v2, v1

    int-to-short p1, v2

    .line 145
    return p1
.end method


# virtual methods
.method protected processAttributeReset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    and-int/lit16 v1, v1, -0x100

    iget-short v2, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->originalColors:S

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->negative:Z

    .line 333
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->applyAttribute()V

    .line 334
    return-void
.end method

.method protected processChangeWindowTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 424
    invoke-static {p1}, Lorg/fusesource/jansi/internal/Kernel32;->SetConsoleTitle(Ljava/lang/String;)I

    .line 425
    return-void
.end method

.method protected processCursorDown(I)V
    .locals 3
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->getConsoleInfo()V

    .line 231
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->size:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v2, v2, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    .line 232
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->applyCursorPosition()V

    .line 233
    return-void
.end method

.method protected processCursorDownLine(I)V
    .locals 3
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->getConsoleInfo()V

    .line 268
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    const/4 v1, 0x0

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 269
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->top:S

    iget-object v2, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v2, v2, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    .line 270
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->applyCursorPosition()V

    .line 271
    return-void
.end method

.method protected processCursorLeft(I)V
    .locals 3
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->getConsoleInfo()V

    .line 217
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 218
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->applyCursorPosition()V

    .line 219
    return-void
.end method

.method protected processCursorRight(I)V
    .locals 3
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->getConsoleInfo()V

    .line 224
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    invoke-virtual {v1}, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->width()S

    move-result v1

    iget-object v2, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v2, v2, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 225
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->applyCursorPosition()V

    .line 226
    return-void
.end method

.method protected processCursorTo(II)V
    .locals 4
    .param p1, "row"    # I
    .param p2, "col"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->getConsoleInfo()V

    .line 245
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->top:S

    iget-object v2, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->size:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v2, v2, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    iget-object v3, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v3, v3, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    iget-short v3, v3, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->top:S

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    .line 246
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    invoke-virtual {v1}, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->width()S

    move-result v1

    add-int/lit8 v2, p2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 247
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->applyCursorPosition()V

    .line 248
    return-void
.end method

.method protected processCursorToColumn(I)V
    .locals 3
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->getConsoleInfo()V

    .line 253
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    invoke-virtual {v1}, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->width()S

    move-result v1

    add-int/lit8 v2, p1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 254
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->applyCursorPosition()V

    .line 255
    return-void
.end method

.method protected processCursorUp(I)V
    .locals 3
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->getConsoleInfo()V

    .line 238
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->top:S

    iget-object v2, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v2, v2, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    sub-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    .line 239
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->applyCursorPosition()V

    .line 240
    return-void
.end method

.method protected processCursorUpLine(I)V
    .locals 3
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->getConsoleInfo()V

    .line 260
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    const/4 v1, 0x0

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 261
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->top:S

    iget-object v2, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v2, v2, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    sub-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    .line 262
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->applyCursorPosition()V

    .line 263
    return-void
.end method

.method protected processDefaultBackgroundColor()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    and-int/lit16 v1, v1, -0xf1

    iget-short v2, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->originalColors:S

    and-int/lit16 v2, v2, 0xf0

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    .line 325
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    sget-short v2, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_INTENSITY:S

    not-int v2, v2

    and-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    .line 326
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->applyAttribute()V

    .line 327
    return-void
.end method

.method protected processDefaultTextColor()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    and-int/lit8 v1, v1, -0x10

    iget-short v2, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->originalColors:S

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    .line 318
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    sget-short v2, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_INTENSITY:S

    not-int v2, v2

    and-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    .line 319
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->applyAttribute()V

    .line 320
    return-void
.end method

.method protected processDeleteLine(I)V
    .locals 9
    .param p1, "optionInt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->getConsoleInfo()V

    .line 409
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    invoke-virtual {v0}, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->copy()Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    move-result-object v0

    .line 410
    .local v0, "scroll":Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;
    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->top:S

    .line 411
    new-instance v1, Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-direct {v1}, Lorg/fusesource/jansi/internal/Kernel32$COORD;-><init>()V

    move-object v7, v1

    .line 412
    .local v7, "org":Lorg/fusesource/jansi/internal/Kernel32$COORD;
    const/4 v1, 0x0

    iput-short v1, v7, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 413
    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v7, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    .line 414
    new-instance v1, Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;

    invoke-direct {v1}, Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;-><init>()V

    move-object v8, v1

    .line 415
    .local v8, "info":Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;
    iget-short v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->originalColors:S

    iput-short v1, v8, Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;->attributes:S

    .line 416
    const/16 v1, 0x20

    iput-char v1, v8, Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;->unicodeChar:C

    .line 417
    iget-wide v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->console:J

    move-object v3, v0

    move-object v4, v0

    move-object v5, v7

    move-object v6, v8

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->ScrollConsoleScreenBuffer(JLorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;Lorg/fusesource/jansi/internal/Kernel32$COORD;Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    return-void

    .line 418
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-static {}, Lorg/fusesource/jansi/WindowsSupport;->getLastErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected processEraseLine(I)V
    .locals 8
    .param p1, "eraseOption"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->getConsoleInfo()V

    .line 190
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 191
    .local v0, "written":[I
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 193
    :pswitch_0
    iget-object v2, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-virtual {v2}, Lorg/fusesource/jansi/internal/Kernel32$COORD;->copy()Lorg/fusesource/jansi/internal/Kernel32$COORD;

    move-result-object v7

    .line 194
    .local v7, "leftColCurrRow":Lorg/fusesource/jansi/internal/Kernel32$COORD;
    iput-short v1, v7, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 195
    iget-wide v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->console:J

    iget-object v3, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v3, v3, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    iget-object v4, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v4, v4, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->size:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v4, v4, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    move-object v5, v7

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->FillConsoleOutputAttribute(JSILorg/fusesource/jansi/internal/Kernel32$COORD;[I)I

    .line 196
    iget-wide v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->console:J

    iget-object v3, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v3, v3, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->size:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v4, v3, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    const/16 v3, 0x20

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->FillConsoleOutputCharacterW(JCILorg/fusesource/jansi/internal/Kernel32$COORD;[I)I

    .line 197
    goto :goto_0

    .line 199
    .end local v7    # "leftColCurrRow":Lorg/fusesource/jansi/internal/Kernel32$COORD;
    :pswitch_1
    iget-object v2, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-virtual {v2}, Lorg/fusesource/jansi/internal/Kernel32$COORD;->copy()Lorg/fusesource/jansi/internal/Kernel32$COORD;

    move-result-object v7

    .line 200
    .local v7, "leftColCurrRow2":Lorg/fusesource/jansi/internal/Kernel32$COORD;
    iput-short v1, v7, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 201
    iget-wide v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->console:J

    iget-object v3, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v3, v3, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    iget-object v4, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v4, v4, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v4, v4, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    move-object v5, v7

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->FillConsoleOutputAttribute(JSILorg/fusesource/jansi/internal/Kernel32$COORD;[I)I

    .line 202
    iget-wide v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->console:J

    iget-object v3, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v3, v3, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v4, v3, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    const/16 v3, 0x20

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->FillConsoleOutputCharacterW(JCILorg/fusesource/jansi/internal/Kernel32$COORD;[I)I

    .line 203
    goto :goto_0

    .line 205
    .end local v7    # "leftColCurrRow2":Lorg/fusesource/jansi/internal/Kernel32$COORD;
    :pswitch_2
    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->size:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    iget-object v2, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v2, v2, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    sub-int v7, v1, v2

    .line 206
    .local v7, "lengthToLastCol":I
    iget-wide v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->console:J

    iget-object v3, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v3, v3, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    iget-object v4, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v4, v4, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-virtual {v4}, Lorg/fusesource/jansi/internal/Kernel32$COORD;->copy()Lorg/fusesource/jansi/internal/Kernel32$COORD;

    move-result-object v5

    move v4, v7

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->FillConsoleOutputAttribute(JSILorg/fusesource/jansi/internal/Kernel32$COORD;[I)I

    .line 207
    iget-wide v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->console:J

    iget-object v3, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v3, v3, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-virtual {v3}, Lorg/fusesource/jansi/internal/Kernel32$COORD;->copy()Lorg/fusesource/jansi/internal/Kernel32$COORD;

    move-result-object v5

    const/16 v3, 0x20

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->FillConsoleOutputCharacterW(JCILorg/fusesource/jansi/internal/Kernel32$COORD;[I)I

    .line 208
    nop

    .line 212
    .end local v7    # "lengthToLastCol":I
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected processEraseScreen(I)V
    .locals 9
    .param p1, "eraseOption"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->getConsoleInfo()V

    .line 157
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 158
    .local v0, "written":[I
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 160
    :pswitch_0
    new-instance v2, Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-direct {v2}, Lorg/fusesource/jansi/internal/Kernel32$COORD;-><init>()V

    move-object v7, v2

    .line 161
    .local v7, "topLeft":Lorg/fusesource/jansi/internal/Kernel32$COORD;
    iput-short v1, v7, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 162
    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->top:S

    iput-short v1, v7, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    .line 163
    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    invoke-virtual {v1}, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->height()S

    move-result v1

    iget-object v2, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->size:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v2, v2, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    mul-int v8, v1, v2

    .line 164
    .local v8, "screenLength":I
    iget-wide v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->console:J

    iget-object v3, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v3, v3, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    move v4, v8

    move-object v5, v7

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->FillConsoleOutputAttribute(JSILorg/fusesource/jansi/internal/Kernel32$COORD;[I)I

    .line 165
    iget-wide v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->console:J

    const/16 v3, 0x20

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->FillConsoleOutputCharacterW(JCILorg/fusesource/jansi/internal/Kernel32$COORD;[I)I

    .line 166
    goto/16 :goto_0

    .line 168
    .end local v7    # "topLeft":Lorg/fusesource/jansi/internal/Kernel32$COORD;
    .end local v8    # "screenLength":I
    :pswitch_1
    new-instance v2, Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-direct {v2}, Lorg/fusesource/jansi/internal/Kernel32$COORD;-><init>()V

    move-object v7, v2

    .line 169
    .local v7, "topLeft2":Lorg/fusesource/jansi/internal/Kernel32$COORD;
    iput-short v1, v7, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 170
    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->top:S

    iput-short v1, v7, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    .line 171
    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    iget-object v2, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    iget-short v2, v2, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->top:S

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->size:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v2, v2, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    mul-int/2addr v1, v2

    iget-object v2, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v2, v2, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    add-int v8, v1, v2

    .line 173
    .local v8, "lengthToCursor":I
    iget-wide v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->console:J

    iget-object v3, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v3, v3, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    move v4, v8

    move-object v5, v7

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->FillConsoleOutputAttribute(JSILorg/fusesource/jansi/internal/Kernel32$COORD;[I)I

    .line 174
    iget-wide v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->console:J

    const/16 v3, 0x20

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->FillConsoleOutputCharacterW(JCILorg/fusesource/jansi/internal/Kernel32$COORD;[I)I

    .line 175
    goto :goto_0

    .line 177
    .end local v7    # "topLeft2":Lorg/fusesource/jansi/internal/Kernel32$COORD;
    .end local v8    # "lengthToCursor":I
    :pswitch_2
    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->bottom:S

    iget-object v2, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v2, v2, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->size:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v2, v2, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    mul-int/2addr v1, v2

    iget-object v2, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v2, v2, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->size:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v2, v2, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    iget-object v3, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v3, v3, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v3, v3, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    sub-int/2addr v2, v3

    add-int v7, v1, v2

    .line 179
    .local v7, "lengthToEnd":I
    iget-wide v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->console:J

    iget-object v3, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v3, v3, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    iget-object v4, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v4, v4, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-virtual {v4}, Lorg/fusesource/jansi/internal/Kernel32$COORD;->copy()Lorg/fusesource/jansi/internal/Kernel32$COORD;

    move-result-object v5

    move v4, v7

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->FillConsoleOutputAttribute(JSILorg/fusesource/jansi/internal/Kernel32$COORD;[I)I

    .line 180
    iget-wide v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->console:J

    iget-object v3, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v3, v3, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-virtual {v3}, Lorg/fusesource/jansi/internal/Kernel32$COORD;->copy()Lorg/fusesource/jansi/internal/Kernel32$COORD;

    move-result-object v5

    const/16 v3, 0x20

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->FillConsoleOutputCharacterW(JCILorg/fusesource/jansi/internal/Kernel32$COORD;[I)I

    .line 181
    nop

    .line 185
    .end local v7    # "lengthToEnd":I
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected processInsertLine(I)V
    .locals 9
    .param p1, "optionInt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->getConsoleInfo()V

    .line 393
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    invoke-virtual {v0}, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->copy()Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    move-result-object v0

    .line 394
    .local v0, "scroll":Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;
    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->top:S

    .line 395
    new-instance v1, Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-direct {v1}, Lorg/fusesource/jansi/internal/Kernel32$COORD;-><init>()V

    move-object v7, v1

    .line 396
    .local v7, "org":Lorg/fusesource/jansi/internal/Kernel32$COORD;
    const/4 v1, 0x0

    iput-short v1, v7, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 397
    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v7, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    .line 398
    new-instance v1, Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;

    invoke-direct {v1}, Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;-><init>()V

    move-object v8, v1

    .line 399
    .local v8, "info":Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;
    iget-short v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->originalColors:S

    iput-short v1, v8, Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;->attributes:S

    .line 400
    const/16 v1, 0x20

    iput-char v1, v8, Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;->unicodeChar:C

    .line 401
    iget-wide v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->console:J

    move-object v3, v0

    move-object v4, v0

    move-object v5, v7

    move-object v6, v8

    invoke-static/range {v1 .. v6}, Lorg/fusesource/jansi/internal/Kernel32;->ScrollConsoleScreenBuffer(JLorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;Lorg/fusesource/jansi/internal/Kernel32$COORD;Lorg/fusesource/jansi/internal/Kernel32$CHAR_INFO;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    return-void

    .line 402
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-static {}, Lorg/fusesource/jansi/WindowsSupport;->getLastErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected processRestoreCursorPosition()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    iget-short v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->savedX:S

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->savedY:S

    if-eq v0, v1, :cond_0

    .line 383
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 384
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->savedX:S

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    .line 385
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->savedY:S

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    .line 386
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->applyCursorPosition()V

    .line 388
    :cond_0
    return-void
.end method

.method protected processSaveCursorPosition()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->getConsoleInfo()V

    .line 375
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v0, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->x:S

    iput-short v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->savedX:S

    .line 376
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v0, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    iget-short v0, v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;->y:S

    iput-short v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->savedY:S

    .line 377
    return-void
.end method

.method protected processSetAttribute(I)V
    .locals 3
    .param p1, "attribute"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 364
    :sswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->negative:Z

    .line 365
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->applyAttribute()V

    .line 366
    goto :goto_0

    .line 355
    :sswitch_1
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    sget-short v2, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_INTENSITY:S

    not-int v2, v2

    and-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    .line 356
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->applyAttribute()V

    .line 357
    goto :goto_0

    .line 344
    :sswitch_2
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    sget-short v2, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_INTENSITY:S

    not-int v2, v2

    and-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    .line 345
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->applyAttribute()V

    .line 346
    goto :goto_0

    .line 360
    :sswitch_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->negative:Z

    .line 361
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->applyAttribute()V

    .line 362
    goto :goto_0

    .line 351
    :sswitch_4
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    sget-short v2, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_INTENSITY:S

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    .line 352
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->applyAttribute()V

    .line 353
    goto :goto_0

    .line 340
    :sswitch_5
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    sget-short v2, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_INTENSITY:S

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    .line 341
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->applyAttribute()V

    .line 342
    nop

    .line 370
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x4 -> :sswitch_4
        0x7 -> :sswitch_3
        0x16 -> :sswitch_2
        0x18 -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method protected processSetBackgroundColor(IZ)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "bright"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    and-int/lit8 v1, v1, -0x71

    sget-object v2, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->ANSI_BACKGROUND_COLOR_MAP:[S

    aget-short v2, v2, p1

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    .line 297
    if-eqz p2, :cond_0

    .line 298
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    sget-short v2, Lorg/fusesource/jansi/internal/Kernel32;->BACKGROUND_INTENSITY:S

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    .line 300
    :cond_0
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->applyAttribute()V

    .line 301
    return-void
.end method

.method protected processSetBackgroundColorExt(I)V
    .locals 3
    .param p1, "paletteIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lorg/fusesource/jansi/io/Colors;->roundColor(II)I

    move-result v0

    .line 306
    .local v0, "round":I
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    add-int/lit8 v2, v0, -0x8

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-lt v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v2, v1}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->processSetBackgroundColor(IZ)V

    .line 307
    return-void
.end method

.method protected processSetBackgroundColorExt(III)V
    .locals 3
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    const/16 v0, 0x10

    invoke-static {p1, p2, p3, v0}, Lorg/fusesource/jansi/io/Colors;->roundRgbColor(IIII)I

    move-result v0

    .line 312
    .local v0, "round":I
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    add-int/lit8 v2, v0, -0x8

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-lt v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v2, v1}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->processSetBackgroundColor(IZ)V

    .line 313
    return-void
.end method

.method protected processSetForegroundColor(IZ)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "bright"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-object v1, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v1, v1, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    and-int/lit8 v1, v1, -0x8

    sget-object v2, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->ANSI_FOREGROUND_COLOR_MAP:[S

    aget-short v2, v2, p1

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    .line 276
    if-eqz p2, :cond_0

    .line 277
    iget-object v0, p0, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->info:Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    iget-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    sget-short v2, Lorg/fusesource/jansi/internal/Kernel32;->FOREGROUND_INTENSITY:S

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->attributes:S

    .line 279
    :cond_0
    invoke-direct {p0}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->applyAttribute()V

    .line 280
    return-void
.end method

.method protected processSetForegroundColorExt(I)V
    .locals 3
    .param p1, "paletteIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lorg/fusesource/jansi/io/Colors;->roundColor(II)I

    move-result v0

    .line 285
    .local v0, "round":I
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    add-int/lit8 v2, v0, -0x8

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-lt v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v2, v1}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->processSetForegroundColor(IZ)V

    .line 286
    return-void
.end method

.method protected processSetForegroundColorExt(III)V
    .locals 3
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    const/16 v0, 0x10

    invoke-static {p1, p2, p3, v0}, Lorg/fusesource/jansi/io/Colors;->roundRgbColor(IIII)I

    move-result v0

    .line 291
    .local v0, "round":I
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    add-int/lit8 v2, v0, -0x8

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-lt v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v2, v1}, Lorg/fusesource/jansi/io/WindowsAnsiProcessor;->processSetForegroundColor(IZ)V

    .line 292
    return-void
.end method
