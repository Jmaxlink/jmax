.class public Lorg/fusesource/jansi/io/AnsiOutputStream$ZeroWidthSupplier;
.super Ljava/lang/Object;
.source "AnsiOutputStream.java"

# interfaces
.implements Lorg/fusesource/jansi/io/AnsiOutputStream$WidthSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fusesource/jansi/io/AnsiOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZeroWidthSupplier"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTerminalWidth()I
    .locals 1

    .line 55
    const/4 v0, 0x0

    return v0
.end method
