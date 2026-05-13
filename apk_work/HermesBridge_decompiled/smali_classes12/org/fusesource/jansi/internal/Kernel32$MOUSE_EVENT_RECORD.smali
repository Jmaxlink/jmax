.class public Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;
.super Ljava/lang/Object;
.source "Kernel32.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fusesource/jansi/internal/Kernel32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MOUSE_EVENT_RECORD"
.end annotation


# static fields
.field public static CAPSLOCK_ON:I

.field public static DOUBLE_CLICK:I

.field public static ENHANCED_KEY:I

.field public static FROM_LEFT_1ST_BUTTON_PRESSED:I

.field public static FROM_LEFT_2ND_BUTTON_PRESSED:I

.field public static FROM_LEFT_3RD_BUTTON_PRESSED:I

.field public static FROM_LEFT_4TH_BUTTON_PRESSED:I

.field public static LEFT_ALT_PRESSED:I

.field public static LEFT_CTRL_PRESSED:I

.field public static MOUSE_HWHEELED:I

.field public static MOUSE_MOVED:I

.field public static MOUSE_WHEELED:I

.field public static NUMLOCK_ON:I

.field public static RIGHTMOST_BUTTON_PRESSED:I

.field public static RIGHT_ALT_PRESSED:I

.field public static RIGHT_CTRL_PRESSED:I

.field public static SCROLLLOCK_ON:I

.field public static SHIFT_PRESSED:I

.field public static SIZEOF:I


# instance fields
.field public buttonState:I

.field public controlKeyState:I

.field public eventFlags:I

.field public mousePosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 357
    invoke-static {}, Lorg/fusesource/jansi/internal/JansiLoader;->initialize()Z

    .line 358
    invoke-static {}, Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;->init()V

    .line 359
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    new-instance v0, Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-direct {v0}, Lorg/fusesource/jansi/internal/Kernel32$COORD;-><init>()V

    iput-object v0, p0, Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;->mousePosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    return-void
.end method

.method private static native init()V
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MOUSE_EVENT_RECORD{mousePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;->mousePosition:Lorg/fusesource/jansi/internal/Kernel32$COORD;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", buttonState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;->buttonState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", controlKeyState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;->controlKeyState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/fusesource/jansi/internal/Kernel32$MOUSE_EVENT_RECORD;->eventFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
