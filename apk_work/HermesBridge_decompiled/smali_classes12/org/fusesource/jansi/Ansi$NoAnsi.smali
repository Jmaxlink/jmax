.class Lorg/fusesource/jansi/Ansi$NoAnsi;
.super Lorg/fusesource/jansi/Ansi;
.source "Ansi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fusesource/jansi/Ansi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoAnsi"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 221
    invoke-direct {p0}, Lorg/fusesource/jansi/Ansi;-><init>()V

    .line 222
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .line 225
    invoke-direct {p0, p1}, Lorg/fusesource/jansi/Ansi;-><init>(I)V

    .line 226
    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 229
    invoke-direct {p0, p1}, Lorg/fusesource/jansi/Ansi;-><init>(Ljava/lang/StringBuilder;)V

    .line 230
    return-void
.end method


# virtual methods
.method public a(Lorg/fusesource/jansi/Ansi$Attribute;)Lorg/fusesource/jansi/Ansi;
    .locals 0
    .param p1, "attribute"    # Lorg/fusesource/jansi/Ansi$Attribute;

    .line 274
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-super {p0, p1}, Lorg/fusesource/jansi/Ansi;->append(C)Lorg/fusesource/jansi/Ansi;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-super {p0, p1}, Lorg/fusesource/jansi/Ansi;->append(Ljava/lang/CharSequence;)Lorg/fusesource/jansi/Ansi;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-super {p0, p1, p2, p3}, Lorg/fusesource/jansi/Ansi;->append(Ljava/lang/CharSequence;II)Lorg/fusesource/jansi/Ansi;

    move-result-object p1

    return-object p1
.end method

.method public bg(I)Lorg/fusesource/jansi/Ansi;
    .locals 0
    .param p1, "color"    # I

    .line 264
    return-object p0
.end method

.method public bg(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;
    .locals 0
    .param p1, "color"    # Lorg/fusesource/jansi/Ansi$Color;

    .line 239
    return-object p0
.end method

.method public bgBright(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;
    .locals 0
    .param p1, "color"    # Lorg/fusesource/jansi/Ansi$Color;

    .line 249
    return-object p0
.end method

.method public bgRgb(III)Lorg/fusesource/jansi/Ansi;
    .locals 0
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .line 269
    return-object p0
.end method

.method public cursor(II)Lorg/fusesource/jansi/Ansi;
    .locals 0
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 279
    return-object p0
.end method

.method public cursorDown(I)Lorg/fusesource/jansi/Ansi;
    .locals 0
    .param p1, "y"    # I

    .line 299
    return-object p0
.end method

.method public cursorDownLine()Lorg/fusesource/jansi/Ansi;
    .locals 0

    .line 309
    return-object p0
.end method

.method public cursorDownLine(I)Lorg/fusesource/jansi/Ansi;
    .locals 0
    .param p1, "n"    # I

    .line 314
    return-object p0
.end method

.method public cursorLeft(I)Lorg/fusesource/jansi/Ansi;
    .locals 0
    .param p1, "x"    # I

    .line 304
    return-object p0
.end method

.method public cursorRight(I)Lorg/fusesource/jansi/Ansi;
    .locals 0
    .param p1, "x"    # I

    .line 294
    return-object p0
.end method

.method public cursorToColumn(I)Lorg/fusesource/jansi/Ansi;
    .locals 0
    .param p1, "x"    # I

    .line 284
    return-object p0
.end method

.method public cursorUp(I)Lorg/fusesource/jansi/Ansi;
    .locals 0
    .param p1, "y"    # I

    .line 289
    return-object p0
.end method

.method public cursorUpLine()Lorg/fusesource/jansi/Ansi;
    .locals 0

    .line 319
    return-object p0
.end method

.method public cursorUpLine(I)Lorg/fusesource/jansi/Ansi;
    .locals 0
    .param p1, "n"    # I

    .line 324
    return-object p0
.end method

.method public eraseLine()Lorg/fusesource/jansi/Ansi;
    .locals 0

    .line 339
    return-object p0
.end method

.method public eraseLine(Lorg/fusesource/jansi/Ansi$Erase;)Lorg/fusesource/jansi/Ansi;
    .locals 0
    .param p1, "kind"    # Lorg/fusesource/jansi/Ansi$Erase;

    .line 344
    return-object p0
.end method

.method public eraseScreen()Lorg/fusesource/jansi/Ansi;
    .locals 0

    .line 329
    return-object p0
.end method

.method public eraseScreen(Lorg/fusesource/jansi/Ansi$Erase;)Lorg/fusesource/jansi/Ansi;
    .locals 0
    .param p1, "kind"    # Lorg/fusesource/jansi/Ansi$Erase;

    .line 334
    return-object p0
.end method

.method public fg(I)Lorg/fusesource/jansi/Ansi;
    .locals 0
    .param p1, "color"    # I

    .line 254
    return-object p0
.end method

.method public fg(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;
    .locals 0
    .param p1, "color"    # Lorg/fusesource/jansi/Ansi$Color;

    .line 234
    return-object p0
.end method

.method public fgBright(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;
    .locals 0
    .param p1, "color"    # Lorg/fusesource/jansi/Ansi$Color;

    .line 244
    return-object p0
.end method

.method public fgRgb(III)Lorg/fusesource/jansi/Ansi;
    .locals 0
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .line 259
    return-object p0
.end method

.method public reset()Lorg/fusesource/jansi/Ansi;
    .locals 0

    .line 375
    return-object p0
.end method

.method public restorCursorPosition()Lorg/fusesource/jansi/Ansi;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 365
    return-object p0
.end method

.method public restoreCursorPosition()Lorg/fusesource/jansi/Ansi;
    .locals 0

    .line 370
    return-object p0
.end method

.method public saveCursorPosition()Lorg/fusesource/jansi/Ansi;
    .locals 0

    .line 359
    return-object p0
.end method

.method public scrollDown(I)Lorg/fusesource/jansi/Ansi;
    .locals 0
    .param p1, "rows"    # I

    .line 354
    return-object p0
.end method

.method public scrollUp(I)Lorg/fusesource/jansi/Ansi;
    .locals 0
    .param p1, "rows"    # I

    .line 349
    return-object p0
.end method
