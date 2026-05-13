.class public Lorg/fusesource/jansi/internal/Kernel32$MENU_EVENT_RECORD;
.super Ljava/lang/Object;
.source "Kernel32.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fusesource/jansi/internal/Kernel32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MENU_EVENT_RECORD"
.end annotation


# static fields
.field public static SIZEOF:I


# instance fields
.field public commandId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 441
    invoke-static {}, Lorg/fusesource/jansi/internal/JansiLoader;->initialize()Z

    .line 442
    invoke-static {}, Lorg/fusesource/jansi/internal/Kernel32$MENU_EVENT_RECORD;->init()V

    .line 443
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native init()V
.end method
