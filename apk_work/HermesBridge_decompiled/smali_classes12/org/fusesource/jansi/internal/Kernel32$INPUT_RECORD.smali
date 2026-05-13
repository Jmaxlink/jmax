.class public Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;
.super Ljava/lang/Object;
.source "Kernel32.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fusesource/jansi/internal/Kernel32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "INPUT_RECORD"
.end annotation


# static fields
.field public static FOCUS_EVENT:S

.field public static KEY_EVENT:S

.field public static MENU_EVENT:S

.field public static MOUSE_EVENT:S

.field public static SIZEOF:I

.field public static WINDOW_BUFFER_SIZE_EVENT:S


# instance fields
.field public eventType:S

.field public focusEvent:Lorg/fusesource/jansi/internal/Kernel32$FOCUS_EVENT_RECORD;

.field public keyEvent:Lorg/fusesource/jansi/internal/Kernel32$KEY_EVENT_RECORD;

.field public menuEvent:Lorg/fusesource/jansi/internal/Kernel32$MENU_EVENT_RECORD;

.field public mouseEvent:Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;

.field public windowBufferSizeEvent:Lorg/fusesource/jansi/internal/Kernel32$WINDOW_BUFFER_SIZE_RECORD;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 457
    invoke-static {}, Lorg/fusesource/jansi/internal/JansiLoader;->initialize()Z

    .line 458
    invoke-static {}, Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;->init()V

    .line 459
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    new-instance v0, Lorg/fusesource/jansi/internal/Kernel32$KEY_EVENT_RECORD;

    invoke-direct {v0}, Lorg/fusesource/jansi/internal/Kernel32$KEY_EVENT_RECORD;-><init>()V

    iput-object v0, p0, Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;->keyEvent:Lorg/fusesource/jansi/internal/Kernel32$KEY_EVENT_RECORD;

    .line 471
    new-instance v0, Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;

    invoke-direct {v0}, Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;-><init>()V

    iput-object v0, p0, Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;->mouseEvent:Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;

    .line 472
    new-instance v0, Lorg/fusesource/jansi/internal/Kernel32$WINDOW_BUFFER_SIZE_RECORD;

    invoke-direct {v0}, Lorg/fusesource/jansi/internal/Kernel32$WINDOW_BUFFER_SIZE_RECORD;-><init>()V

    iput-object v0, p0, Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;->windowBufferSizeEvent:Lorg/fusesource/jansi/internal/Kernel32$WINDOW_BUFFER_SIZE_RECORD;

    .line 473
    new-instance v0, Lorg/fusesource/jansi/internal/Kernel32$MENU_EVENT_RECORD;

    invoke-direct {v0}, Lorg/fusesource/jansi/internal/Kernel32$MENU_EVENT_RECORD;-><init>()V

    iput-object v0, p0, Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;->menuEvent:Lorg/fusesource/jansi/internal/Kernel32$MENU_EVENT_RECORD;

    .line 474
    new-instance v0, Lorg/fusesource/jansi/internal/Kernel32$FOCUS_EVENT_RECORD;

    invoke-direct {v0}, Lorg/fusesource/jansi/internal/Kernel32$FOCUS_EVENT_RECORD;-><init>()V

    iput-object v0, p0, Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;->focusEvent:Lorg/fusesource/jansi/internal/Kernel32$FOCUS_EVENT_RECORD;

    return-void
.end method

.method private static native init()V
.end method

.method public static native memmove(Lorg/fusesource/jansi/internal/Kernel32$INPUT_RECORD;JJ)V
.end method
