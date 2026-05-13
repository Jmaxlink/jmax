.class public Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;
.super Ljava/lang/Object;
.source "Kernel32.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fusesource/jansi/internal/Kernel32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CONSOLE_SCREEN_BUFFER_INFO"
.end annotation


# static fields
.field public static SIZEOF:I


# instance fields
.field public attributes:S

.field public cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

.field public maximumWindowSize:Lorg/fusesource/jansi/internal/Kernel32$COORD;

.field public size:Lorg/fusesource/jansi/internal/Kernel32$COORD;

.field public window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 137
    invoke-static {}, Lorg/fusesource/jansi/internal/JansiLoader;->initialize()Z

    .line 138
    invoke-static {}, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->init()V

    .line 139
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-direct {v0}, Lorg/fusesource/jansi/internal/Kernel32$COORD;-><init>()V

    iput-object v0, p0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->size:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    .line 146
    new-instance v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-direct {v0}, Lorg/fusesource/jansi/internal/Kernel32$COORD;-><init>()V

    iput-object v0, p0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->cursorPosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    .line 148
    new-instance v0, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    invoke-direct {v0}, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;-><init>()V

    iput-object v0, p0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    .line 149
    new-instance v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-direct {v0}, Lorg/fusesource/jansi/internal/Kernel32$COORD;-><init>()V

    iput-object v0, p0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->maximumWindowSize:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    return-void
.end method

.method private static native init()V
.end method


# virtual methods
.method public windowHeight()I
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    invoke-virtual {v0}, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->height()S

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public windowWidth()I
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/fusesource/jansi/internal/Kernel32$CONSOLE_SCREEN_BUFFER_INFO;->window:Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;

    invoke-virtual {v0}, Lorg/fusesource/jansi/internal/Kernel32$SMALL_RECT;->width()S

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
