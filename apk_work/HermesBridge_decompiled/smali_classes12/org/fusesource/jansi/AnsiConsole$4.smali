.class Lorg/fusesource/jansi/AnsiConsole$4;
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
.field final synthetic val$fd:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 346
    iput p1, p0, Lorg/fusesource/jansi/AnsiConsole$4;->val$fd:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTerminalWidth()I
    .locals 4

    .line 349
    new-instance v0, Lorg/fusesource/jansi/internal/CLibrary$WinSize;

    invoke-direct {v0}, Lorg/fusesource/jansi/internal/CLibrary$WinSize;-><init>()V

    .line 350
    .local v0, "sz":Lorg/fusesource/jansi/internal/CLibrary$WinSize;
    iget v1, p0, Lorg/fusesource/jansi/AnsiConsole$4;->val$fd:I

    sget-wide v2, Lorg/fusesource/jansi/internal/CLibrary;->TIOCGWINSZ:J

    invoke-static {v1, v2, v3, v0}, Lorg/fusesource/jansi/internal/CLibrary;->ioctl(IJLorg/fusesource/jansi/internal/CLibrary$WinSize;)I

    .line 351
    iget-short v1, v0, Lorg/fusesource/jansi/internal/CLibrary$WinSize;->ws_col:S

    return v1
.end method
