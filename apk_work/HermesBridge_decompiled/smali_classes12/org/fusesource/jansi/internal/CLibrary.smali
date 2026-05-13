.class public Lorg/fusesource/jansi/internal/CLibrary;
.super Ljava/lang/Object;
.source "CLibrary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fusesource/jansi/internal/CLibrary$Termios;,
        Lorg/fusesource/jansi/internal/CLibrary$WinSize;
    }
.end annotation


# static fields
.field public static HAVE_ISATTY:Z

.field public static HAVE_TTYNAME:Z

.field public static final LOADED:Z

.field public static STDERR_FILENO:I

.field public static STDOUT_FILENO:I

.field public static TCSADRAIN:I

.field public static TCSAFLUSH:I

.field public static TCSANOW:I

.field public static TIOCGETA:J

.field public static TIOCGETD:J

.field public static TIOCGWINSZ:J

.field public static TIOCSETA:J

.field public static TIOCSETD:J

.field public static TIOCSWINSZ:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    invoke-static {}, Lorg/fusesource/jansi/internal/JansiLoader;->initialize()Z

    move-result v0

    sput-boolean v0, Lorg/fusesource/jansi/internal/CLibrary;->LOADED:Z

    .line 37
    sget-boolean v0, Lorg/fusesource/jansi/internal/CLibrary;->LOADED:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lorg/fusesource/jansi/internal/CLibrary;->init()V

    .line 48
    :cond_0
    const/4 v0, 0x1

    sput v0, Lorg/fusesource/jansi/internal/CLibrary;->STDOUT_FILENO:I

    .line 50
    const/4 v0, 0x2

    sput v0, Lorg/fusesource/jansi/internal/CLibrary;->STDERR_FILENO:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native init()V
.end method

.method public static native ioctl(IJLorg/fusesource/jansi/internal/CLibrary$WinSize;)I
.end method

.method public static native ioctl(IJ[I)I
.end method

.method public static native isatty(I)I
.end method

.method public static native openpty([I[I[BLorg/fusesource/jansi/internal/CLibrary$Termios;Lorg/fusesource/jansi/internal/CLibrary$WinSize;)I
.end method

.method public static native tcgetattr(ILorg/fusesource/jansi/internal/CLibrary$Termios;)I
.end method

.method public static native tcsetattr(IILorg/fusesource/jansi/internal/CLibrary$Termios;)I
.end method

.method public static native ttyname(I)Ljava/lang/String;
.end method
