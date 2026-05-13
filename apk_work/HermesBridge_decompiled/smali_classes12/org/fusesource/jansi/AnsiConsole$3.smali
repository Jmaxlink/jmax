.class Lorg/fusesource/jansi/AnsiConsole$3;
.super Ljava/lang/Object;
.source "AnsiConsole.java"

# interfaces
.implements Lorg/fusesource/jansi/io/AnsiOutputStream$WidthSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fusesource/jansi/AnsiConsole;->ansiStream(Z)Lorg/fusesource/jansi/AnsiPrintStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$console:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 330
    iput-wide p1, p0, Lorg/fusesource/jansi/AnsiConsole$3;->val$console:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTerminalWidth()I
    .locals 3

    .line 333
    new-instance v0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;

    invoke-direct {v0}, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;-><init>()V

    .line 334
    .local v0, "info":Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;
    iget-wide v1, p0, Lorg/fusesource/jansi/AnsiConsole$3;->val$console:J

    invoke-static {v1, v2, v0}, Lorg/fusesource/jansi/internal/Kernel32;->GetConsoleScreenBufferInfo(JLorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;)I

    .line 335
    invoke-virtual {v0}, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->windowWidth()I

    move-result v1

    return v1
.end method
