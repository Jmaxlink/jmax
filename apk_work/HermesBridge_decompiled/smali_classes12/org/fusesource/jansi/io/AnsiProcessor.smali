.class public Lorg/fusesource/jansi/io/AnsiProcessor;
.super Ljava/lang/Object;
.source "AnsiProcessor.java"


# static fields
.field protected static final ATTRIBUTE_BLINK_FAST:I = 0x6

.field protected static final ATTRIBUTE_BLINK_OFF:I = 0x19

.field protected static final ATTRIBUTE_BLINK_SLOW:I = 0x5

.field protected static final ATTRIBUTE_CONCEAL_OFF:I = 0x1c

.field protected static final ATTRIBUTE_CONCEAL_ON:I = 0x8

.field protected static final ATTRIBUTE_INTENSITY_BOLD:I = 0x1

.field protected static final ATTRIBUTE_INTENSITY_FAINT:I = 0x2

.field protected static final ATTRIBUTE_INTENSITY_NORMAL:I = 0x16

.field protected static final ATTRIBUTE_ITALIC:I = 0x3

.field protected static final ATTRIBUTE_NEGATIVE_OFF:I = 0x1b

.field protected static final ATTRIBUTE_NEGATIVE_ON:I = 0x7

.field protected static final ATTRIBUTE_UNDERLINE:I = 0x4

.field protected static final ATTRIBUTE_UNDERLINE_DOUBLE:I = 0x15

.field protected static final ATTRIBUTE_UNDERLINE_OFF:I = 0x18

.field protected static final BLACK:I = 0x0

.field protected static final BLUE:I = 0x4

.field protected static final CYAN:I = 0x6

.field protected static final ERASE_LINE:I = 0x2

.field protected static final ERASE_LINE_TO_BEGINING:I = 0x1

.field protected static final ERASE_LINE_TO_END:I = 0x0

.field protected static final ERASE_SCREEN:I = 0x2

.field protected static final ERASE_SCREEN_TO_BEGINING:I = 0x1

.field protected static final ERASE_SCREEN_TO_END:I = 0x0

.field protected static final GREEN:I = 0x2

.field protected static final MAGENTA:I = 0x5

.field protected static final RED:I = 0x1

.field protected static final WHITE:I = 0x7

.field protected static final YELLOW:I = 0x3


# instance fields
.field protected final os:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/fusesource/jansi/io/AnsiProcessor;->os:Ljava/io/OutputStream;

    .line 39
    return-void
.end method

.method private optionInt(Ljava/util/ArrayList;I)I
    .locals 3
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .line 250
    .local p1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_2

    .line 252
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 253
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 256
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 254
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 251
    .end local v0    # "value":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private optionInt(Ljava/util/ArrayList;II)I
    .locals 2
    .param p2, "index"    # I
    .param p3, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;II)I"
        }
    .end annotation

    .line 261
    .local p1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_1

    .line 262
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 263
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 264
    return p3

    .line 266
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 268
    .end local v0    # "value":Ljava/lang/Object;
    :cond_1
    return p3
.end method


# virtual methods
.method protected getNextOptionInt(Ljava/util/Iterator;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    .local p1, "optionsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    nop

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 51
    .local v0, "arg":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 52
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 53
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method protected processAttributeReset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    return-void
.end method

.method protected processChangeIconName(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 579
    return-void
.end method

.method protected processChangeIconNameAndWindowTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 570
    invoke-virtual {p0, p1}, Lorg/fusesource/jansi/io/AnsiProcessor;->processChangeIconName(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0, p1}, Lorg/fusesource/jansi/io/AnsiProcessor;->processChangeWindowTitle(Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method protected processChangeWindowTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 586
    return-void
.end method

.method protected processCharsetSelect(IC)V
    .locals 0
    .param p1, "set"    # I
    .param p2, "seq"    # C

    .line 597
    return-void
.end method

.method protected processCharsetSelect(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 243
    .local p1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/fusesource/jansi/io/AnsiProcessor;->optionInt(Ljava/util/ArrayList;I)I

    move-result v0

    .line 244
    .local v0, "set":I
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    .line 245
    .local v2, "seq":C
    invoke-virtual {p0, v0, v2}, Lorg/fusesource/jansi/io/AnsiProcessor;->processCharsetSelect(IC)V

    .line 246
    return v1
.end method

.method protected processCursorDown(I)V
    .locals 0
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 547
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

    .line 516
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 517
    iget-object v1, p0, Lorg/fusesource/jansi/io/AnsiProcessor;->os:Ljava/io/OutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 519
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected processCursorLeft(I)V
    .locals 0
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 527
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

    .line 536
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 537
    iget-object v1, p0, Lorg/fusesource/jansi/io/AnsiProcessor;->os:Ljava/io/OutputStream;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 539
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected processCursorTo(II)V
    .locals 0
    .param p1, "row"    # I
    .param p2, "col"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    return-void
.end method

.method protected processCursorToColumn(I)V
    .locals 0
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    return-void
.end method

.method protected processCursorUp(I)V
    .locals 0
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 555
    return-void
.end method

.method protected processCursorUpLine(I)V
    .locals 0
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    return-void
.end method

.method protected processDefaultBackgroundColor()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    return-void
.end method

.method protected processDefaultTextColor()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    return-void
.end method

.method protected processDeleteLine(I)V
    .locals 0
    .param p1, "optionInt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    return-void
.end method

.method protected processEraseLine(I)V
    .locals 0
    .param p1, "eraseOption"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    return-void
.end method

.method protected processEraseScreen(I)V
    .locals 0
    .param p1, "eraseOption"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    return-void
.end method

.method protected processEscapeCommand(Ljava/util/ArrayList;I)Z
    .locals 18
    .param p2, "command"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    .local p1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const/16 v0, 0x61

    const/16 v4, 0x5a

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 192
    if-gt v0, v3, :cond_14

    const/16 v0, 0x7a

    if-gt v3, v0, :cond_14

    .line 193
    :try_start_0
    invoke-virtual/range {p0 .. p2}, Lorg/fusesource/jansi/io/AnsiProcessor;->processUnknownExtension(Ljava/util/ArrayList;I)V

    goto/16 :goto_8

    .line 188
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lorg/fusesource/jansi/io/AnsiProcessor;->processRestoreCursorPosition()V

    .line 189
    return v6

    .line 185
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lorg/fusesource/jansi/io/AnsiProcessor;->processSaveCursorPosition()V

    .line 186
    return v6

    .line 107
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 108
    .local v8, "next":Ljava/lang/Object;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/Integer;

    if-ne v9, v10, :cond_0

    goto :goto_1

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local p2    # "command":I
    throw v0

    .line 111
    .end local v8    # "next":Ljava/lang/Object;
    .restart local p1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p2    # "command":I
    :cond_1
    :goto_1
    goto :goto_0

    .line 113
    :cond_2
    const/4 v7, 0x0

    .line 114
    .local v7, "count":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 115
    .local v8, "optionsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 116
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 117
    .local v9, "next":Ljava/lang/Object;
    if-eqz v9, :cond_11

    .line 118
    add-int/lit8 v7, v7, 0x1

    .line 119
    move-object v10, v9

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 120
    .local v10, "value":I
    const/16 v11, 0x1e

    if-gt v11, v10, :cond_3

    const/16 v11, 0x25

    if-gt v10, v11, :cond_3

    .line 121
    add-int/lit8 v11, v10, -0x1e

    invoke-virtual {v1, v11}, Lorg/fusesource/jansi/io/AnsiProcessor;->processSetForegroundColor(I)V

    goto/16 :goto_7

    .line 122
    :cond_3
    const/16 v11, 0x28

    if-gt v11, v10, :cond_4

    const/16 v11, 0x2f

    if-gt v10, v11, :cond_4

    .line 123
    add-int/lit8 v11, v10, -0x28

    invoke-virtual {v1, v11}, Lorg/fusesource/jansi/io/AnsiProcessor;->processSetBackgroundColor(I)V

    goto/16 :goto_7

    .line 124
    :cond_4
    if-gt v4, v10, :cond_5

    if-gt v10, v0, :cond_5

    .line 125
    add-int/lit8 v11, v10, -0x5a

    invoke-virtual {v1, v11, v6}, Lorg/fusesource/jansi/io/AnsiProcessor;->processSetForegroundColor(IZ)V

    goto/16 :goto_7

    .line 126
    :cond_5
    const/16 v11, 0x64

    if-gt v11, v10, :cond_6

    const/16 v11, 0x6b

    if-gt v10, v11, :cond_6

    .line 127
    add-int/lit8 v11, v10, -0x64

    invoke-virtual {v1, v11, v6}, Lorg/fusesource/jansi/io/AnsiProcessor;->processSetBackgroundColor(IZ)V

    goto/16 :goto_7

    .line 128
    :cond_6
    const/16 v11, 0x26

    if-eq v10, v11, :cond_8

    const/16 v12, 0x30

    if-ne v10, v12, :cond_7

    goto :goto_3

    .line 164
    :cond_7
    sparse-switch v10, :sswitch_data_1

    .line 175
    invoke-virtual {v1, v10}, Lorg/fusesource/jansi/io/AnsiProcessor;->processSetAttribute(I)V

    goto/16 :goto_7

    .line 169
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lorg/fusesource/jansi/io/AnsiProcessor;->processDefaultBackgroundColor()V

    .line 170
    goto/16 :goto_7

    .line 166
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lorg/fusesource/jansi/io/AnsiProcessor;->processDefaultTextColor()V

    .line 167
    goto/16 :goto_7

    .line 172
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lorg/fusesource/jansi/io/AnsiProcessor;->processAttributeReset()V

    .line 173
    goto :goto_7

    .line 129
    :cond_8
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_9

    .line 130
    goto :goto_2

    .line 133
    :cond_9
    invoke-virtual {v1, v8}, Lorg/fusesource/jansi/io/AnsiProcessor;->getNextOptionInt(Ljava/util/Iterator;)I

    move-result v12

    .line 134
    .local v12, "arg2or5":I
    const/4 v13, 0x2

    const/16 v14, 0xff

    if-ne v12, v13, :cond_d

    .line 136
    invoke-virtual {v1, v8}, Lorg/fusesource/jansi/io/AnsiProcessor;->getNextOptionInt(Ljava/util/Iterator;)I

    move-result v13

    .line 137
    .local v13, "r":I
    invoke-virtual {v1, v8}, Lorg/fusesource/jansi/io/AnsiProcessor;->getNextOptionInt(Ljava/util/Iterator;)I

    move-result v15

    .line 138
    .local v15, "g":I
    invoke-virtual {v1, v8}, Lorg/fusesource/jansi/io/AnsiProcessor;->getNextOptionInt(Ljava/util/Iterator;)I

    move-result v16

    move/from16 v17, v16

    .line 139
    .local v17, "b":I
    if-ltz v13, :cond_b

    if-gt v13, v14, :cond_b

    if-ltz v15, :cond_b

    if-gt v15, v14, :cond_b

    move/from16 v4, v17

    .end local v17    # "b":I
    .local v4, "b":I
    if-ltz v4, :cond_c

    if-gt v4, v14, :cond_c

    .line 140
    if-ne v10, v11, :cond_a

    .line 141
    invoke-virtual {v1, v13, v15, v4}, Lorg/fusesource/jansi/io/AnsiProcessor;->processSetForegroundColorExt(III)V

    goto :goto_4

    .line 143
    :cond_a
    invoke-virtual {v1, v13, v15, v4}, Lorg/fusesource/jansi/io/AnsiProcessor;->processSetBackgroundColorExt(III)V

    .line 147
    .end local v4    # "b":I
    .end local v13    # "r":I
    .end local v15    # "g":I
    :goto_4
    goto :goto_6

    .line 139
    .restart local v13    # "r":I
    .restart local v15    # "g":I
    .restart local v17    # "b":I
    :cond_b
    move/from16 v4, v17

    .line 145
    .end local v17    # "b":I
    .restart local v4    # "b":I
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local p2    # "command":I
    throw v0

    .line 148
    .end local v4    # "b":I
    .end local v13    # "r":I
    .end local v15    # "g":I
    .restart local p1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p2    # "command":I
    :cond_d
    const/4 v4, 0x5

    if-ne v12, v4, :cond_10

    .line 150
    invoke-virtual {v1, v8}, Lorg/fusesource/jansi/io/AnsiProcessor;->getNextOptionInt(Ljava/util/Iterator;)I

    move-result v4

    .line 151
    .local v4, "paletteIndex":I
    if-ltz v4, :cond_f

    if-gt v4, v14, :cond_f

    .line 152
    if-ne v10, v11, :cond_e

    .line 153
    invoke-virtual {v1, v4}, Lorg/fusesource/jansi/io/AnsiProcessor;->processSetForegroundColorExt(I)V

    goto :goto_5

    .line 155
    :cond_e
    invoke-virtual {v1, v4}, Lorg/fusesource/jansi/io/AnsiProcessor;->processSetBackgroundColorExt(I)V

    .line 159
    .end local v4    # "paletteIndex":I
    :goto_5
    nop

    .line 163
    .end local v12    # "arg2or5":I
    :goto_6
    goto :goto_7

    .line 157
    .restart local v4    # "paletteIndex":I
    .restart local v12    # "arg2or5":I
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local p2    # "command":I
    throw v0

    .line 161
    .end local v4    # "paletteIndex":I
    .restart local p1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p2    # "command":I
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local p2    # "command":I
    throw v0

    .line 179
    .end local v9    # "next":Ljava/lang/Object;
    .end local v10    # "value":I
    .end local v12    # "arg2or5":I
    .restart local p1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p2    # "command":I
    :cond_11
    :goto_7
    const/16 v4, 0x5a

    goto/16 :goto_2

    .line 180
    :cond_12
    if-nez v7, :cond_13

    .line 181
    invoke-virtual/range {p0 .. p0}, Lorg/fusesource/jansi/io/AnsiProcessor;->processAttributeReset()V

    .line 183
    :cond_13
    return v6

    .line 103
    .end local v7    # "count":I
    .end local v8    # "optionsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :sswitch_6
    invoke-direct {v1, v2, v5, v6}, Lorg/fusesource/jansi/io/AnsiProcessor;->optionInt(Ljava/util/ArrayList;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/fusesource/jansi/io/AnsiProcessor;->processScrollDown(I)V

    .line 104
    return v6

    .line 100
    :sswitch_7
    invoke-direct {v1, v2, v5, v6}, Lorg/fusesource/jansi/io/AnsiProcessor;->optionInt(Ljava/util/ArrayList;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/fusesource/jansi/io/AnsiProcessor;->processScrollUp(I)V

    .line 101
    return v6

    .line 97
    :sswitch_8
    invoke-direct {v1, v2, v5, v6}, Lorg/fusesource/jansi/io/AnsiProcessor;->optionInt(Ljava/util/ArrayList;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/fusesource/jansi/io/AnsiProcessor;->processDeleteLine(I)V

    .line 98
    return v6

    .line 94
    :sswitch_9
    invoke-direct {v1, v2, v5, v6}, Lorg/fusesource/jansi/io/AnsiProcessor;->optionInt(Ljava/util/ArrayList;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/fusesource/jansi/io/AnsiProcessor;->processInsertLine(I)V

    .line 95
    return v6

    .line 91
    :sswitch_a
    invoke-direct {v1, v2, v5, v5}, Lorg/fusesource/jansi/io/AnsiProcessor;->optionInt(Ljava/util/ArrayList;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/fusesource/jansi/io/AnsiProcessor;->processEraseLine(I)V

    .line 92
    return v6

    .line 88
    :sswitch_b
    invoke-direct {v1, v2, v5, v5}, Lorg/fusesource/jansi/io/AnsiProcessor;->optionInt(Ljava/util/ArrayList;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/fusesource/jansi/io/AnsiProcessor;->processEraseScreen(I)V

    .line 89
    return v6

    .line 85
    :sswitch_c
    invoke-direct {v1, v2, v5, v6}, Lorg/fusesource/jansi/io/AnsiProcessor;->optionInt(Ljava/util/ArrayList;II)I

    move-result v0

    invoke-direct {v1, v2, v6, v6}, Lorg/fusesource/jansi/io/AnsiProcessor;->optionInt(Ljava/util/ArrayList;II)I

    move-result v4

    invoke-virtual {v1, v0, v4}, Lorg/fusesource/jansi/io/AnsiProcessor;->processCursorTo(II)V

    .line 86
    return v6

    .line 81
    :sswitch_d
    invoke-direct {v1, v2, v5}, Lorg/fusesource/jansi/io/AnsiProcessor;->optionInt(Ljava/util/ArrayList;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/fusesource/jansi/io/AnsiProcessor;->processCursorToColumn(I)V

    .line 82
    return v6

    .line 78
    :sswitch_e
    invoke-direct {v1, v2, v5, v6}, Lorg/fusesource/jansi/io/AnsiProcessor;->optionInt(Ljava/util/ArrayList;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/fusesource/jansi/io/AnsiProcessor;->processCursorUpLine(I)V

    .line 79
    return v6

    .line 75
    :sswitch_f
    invoke-direct {v1, v2, v5, v6}, Lorg/fusesource/jansi/io/AnsiProcessor;->optionInt(Ljava/util/ArrayList;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/fusesource/jansi/io/AnsiProcessor;->processCursorDownLine(I)V

    .line 76
    return v6

    .line 72
    :sswitch_10
    invoke-direct {v1, v2, v5, v6}, Lorg/fusesource/jansi/io/AnsiProcessor;->optionInt(Ljava/util/ArrayList;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/fusesource/jansi/io/AnsiProcessor;->processCursorLeft(I)V

    .line 73
    return v6

    .line 69
    :sswitch_11
    invoke-direct {v1, v2, v5, v6}, Lorg/fusesource/jansi/io/AnsiProcessor;->optionInt(Ljava/util/ArrayList;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/fusesource/jansi/io/AnsiProcessor;->processCursorRight(I)V

    .line 70
    return v6

    .line 66
    :sswitch_12
    invoke-direct {v1, v2, v5, v6}, Lorg/fusesource/jansi/io/AnsiProcessor;->optionInt(Ljava/util/ArrayList;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/fusesource/jansi/io/AnsiProcessor;->processCursorDown(I)V

    .line 67
    return v6

    .line 63
    :sswitch_13
    invoke-direct {v1, v2, v5, v6}, Lorg/fusesource/jansi/io/AnsiProcessor;->optionInt(Ljava/util/ArrayList;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/fusesource/jansi/io/AnsiProcessor;->processCursorUp(I)V

    .line 64
    return v6

    .line 202
    :catch_0
    move-exception v0

    goto :goto_9

    .line 194
    :goto_8
    return v6

    .line 196
    :cond_14
    const/16 v0, 0x41

    if-gt v0, v3, :cond_15

    const/16 v0, 0x5a

    if-gt v3, v0, :cond_15

    .line 197
    invoke-virtual/range {p0 .. p2}, Lorg/fusesource/jansi/io/AnsiProcessor;->processUnknownExtension(Ljava/util/ArrayList;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    return v6

    .line 204
    :goto_9
    return v5

    .line 200
    :cond_15
    return v5

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_13
        0x42 -> :sswitch_12
        0x43 -> :sswitch_11
        0x44 -> :sswitch_10
        0x45 -> :sswitch_f
        0x46 -> :sswitch_e
        0x47 -> :sswitch_d
        0x48 -> :sswitch_c
        0x4a -> :sswitch_b
        0x4b -> :sswitch_a
        0x4c -> :sswitch_9
        0x4d -> :sswitch_8
        0x53 -> :sswitch_7
        0x54 -> :sswitch_6
        0x66 -> :sswitch_c
        0x6d -> :sswitch_2
        0x73 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_5
        0x27 -> :sswitch_4
        0x31 -> :sswitch_3
    .end sparse-switch
.end method

.method protected processInsertLine(I)V
    .locals 0
    .param p1, "optionInt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    return-void
.end method

.method protected processOperatingSystemCommand(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 211
    .local p1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/fusesource/jansi/io/AnsiProcessor;->optionInt(Ljava/util/ArrayList;I)I

    move-result v1

    .line 212
    .local v1, "command":I
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 216
    .local v3, "label":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 229
    :try_start_0
    invoke-virtual {p0, v1, v3}, Lorg/fusesource/jansi/io/AnsiProcessor;->processUnknownOperatingSystemCommand(ILjava/lang/String;)V

    goto :goto_0

    .line 224
    :pswitch_0
    invoke-virtual {p0, v3}, Lorg/fusesource/jansi/io/AnsiProcessor;->processChangeWindowTitle(Ljava/lang/String;)V

    .line 225
    return v2

    .line 221
    :pswitch_1
    invoke-virtual {p0, v3}, Lorg/fusesource/jansi/io/AnsiProcessor;->processChangeIconName(Ljava/lang/String;)V

    .line 222
    return v2

    .line 218
    :pswitch_2
    invoke-virtual {p0, v3}, Lorg/fusesource/jansi/io/AnsiProcessor;->processChangeIconNameAndWindowTitle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    return v2

    .line 232
    :catch_0
    move-exception v2

    goto :goto_1

    .line 230
    :goto_0
    return v2

    .line 234
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected processRestoreCursorPosition()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    return-void
.end method

.method protected processSaveCursorPosition()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    return-void
.end method

.method protected processScrollDown(I)V
    .locals 0
    .param p1, "optionInt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    return-void
.end method

.method protected processScrollUp(I)V
    .locals 0
    .param p1, "optionInt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    return-void
.end method

.method protected processSetAttribute(I)V
    .locals 0
    .param p1, "attribute"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    return-void
.end method

.method protected processSetBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/fusesource/jansi/io/AnsiProcessor;->processSetBackgroundColor(IZ)V

    .line 430
    return-void
.end method

.method protected processSetBackgroundColor(IZ)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "bright"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    return-void
.end method

.method protected processSetBackgroundColorExt(I)V
    .locals 0
    .param p1, "paletteIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    return-void
.end method

.method protected processSetBackgroundColorExt(III)V
    .locals 0
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    return-void
.end method

.method protected processSetForegroundColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/fusesource/jansi/io/AnsiProcessor;->processSetForegroundColor(IZ)V

    .line 391
    return-void
.end method

.method protected processSetForegroundColor(IZ)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "bright"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    return-void
.end method

.method protected processSetForegroundColorExt(I)V
    .locals 0
    .param p1, "paletteIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    return-void
.end method

.method protected processSetForegroundColorExt(III)V
    .locals 0
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    return-void
.end method

.method protected processUnknownExtension(Ljava/util/ArrayList;I)V
    .locals 0
    .param p2, "command"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 563
    .local p1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    return-void
.end method

.method protected processUnknownOperatingSystemCommand(ILjava/lang/String;)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "param"    # Ljava/lang/String;

    .line 594
    return-void
.end method
