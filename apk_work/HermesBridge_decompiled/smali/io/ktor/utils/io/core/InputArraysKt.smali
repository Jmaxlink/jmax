.class public final Lio/ktor/utils/io/core/InputArraysKt;
.super Ljava/lang/Object;
.source "InputArrays.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInputArrays.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InputArrays.kt\nio/ktor/utils/io/core/InputArraysKt\n+ 2 Input.kt\nio/ktor/utils/io/core/InputKt\n+ 3 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,215:1\n141#1,4:216\n145#1:226\n146#1,5:228\n153#1:246\n211#1,4:247\n191#1,4:251\n195#1,8:267\n206#1:302\n211#1,4:303\n191#1,4:307\n195#1,8:323\n206#1:358\n211#1,4:359\n191#1,4:363\n195#1,8:379\n206#1:414\n211#1,4:415\n191#1,4:419\n195#1,8:435\n206#1:470\n211#1,4:471\n191#1,4:475\n195#1,8:491\n206#1:526\n211#1,4:527\n141#1,4:531\n145#1:541\n146#1,5:543\n153#1:561\n211#1,4:562\n141#1,4:567\n145#1:577\n146#1,5:579\n153#1:597\n191#1,4:598\n195#1,8:614\n206#1:649\n191#1,4:650\n195#1,8:666\n206#1:701\n191#1,4:702\n195#1,8:718\n206#1:753\n191#1,4:754\n195#1,8:770\n206#1:805\n191#1,4:806\n195#1,8:822\n206#1:857\n141#1,4:858\n145#1:868\n146#1,5:870\n153#1:888\n165#1,4:890\n169#1:900\n170#1,6:902\n178#1:921\n823#2,6:220\n829#2,13:233\n852#2,8:255\n862#2,3:264\n866#2,11:275\n877#2,15:287\n852#2,8:311\n862#2,3:320\n866#2,11:331\n877#2,15:343\n852#2,8:367\n862#2,3:376\n866#2,11:387\n877#2,15:399\n852#2,8:423\n862#2,3:432\n866#2,11:443\n877#2,15:455\n852#2,8:479\n862#2,3:488\n866#2,11:499\n877#2,15:511\n823#2,6:535\n829#2,13:548\n823#2,6:571\n829#2,13:584\n852#2,8:602\n862#2,3:611\n866#2,11:622\n877#2,15:634\n852#2,8:654\n862#2,3:663\n866#2,11:674\n877#2,15:686\n852#2,8:706\n862#2,3:715\n866#2,11:726\n877#2,15:738\n852#2,8:758\n862#2,3:767\n866#2,11:778\n877#2,15:790\n852#2,8:810\n862#2,3:819\n866#2,11:830\n877#2,15:842\n823#2,6:862\n829#2,13:875\n823#2,6:894\n829#2,13:908\n823#2,6:922\n829#2,13:929\n823#2,6:942\n829#2,13:949\n852#2,8:962\n862#2,3:971\n866#2,11:975\n877#2,15:987\n69#3:227\n69#3:263\n59#3:286\n69#3:319\n59#3:342\n69#3:375\n59#3:398\n69#3:431\n59#3:454\n69#3:487\n59#3:510\n69#3:542\n74#3:566\n69#3:578\n69#3:610\n59#3:633\n69#3:662\n59#3:685\n69#3:714\n59#3:737\n69#3:766\n59#3:789\n69#3:818\n59#3:841\n69#3:869\n74#3:889\n69#3:901\n69#3:928\n69#3:948\n69#3:970\n69#3:974\n59#3:986\n*S KotlinDebug\n*F\n+ 1 InputArrays.kt\nio/ktor/utils/io/core/InputArraysKt\n*L\n7#1:216,4\n7#1:226\n7#1:228,5\n7#1:246\n9#1:247,4\n14#1:251,4\n14#1:267,8\n14#1:302\n16#1:303,4\n21#1:307,4\n21#1:323,8\n21#1:358\n23#1:359,4\n28#1:363,4\n28#1:379,8\n28#1:414\n30#1:415,4\n35#1:419,4\n35#1:435,8\n35#1:470\n37#1:471,4\n42#1:475,4\n42#1:491,8\n42#1:526\n44#1:527,4\n49#1:531,4\n49#1:541\n49#1:543,5\n49#1:561\n51#1:562,4\n68#1:567,4\n68#1:577\n68#1:579,5\n68#1:597\n75#1:598,4\n75#1:614,8\n75#1:649\n82#1:650,4\n82#1:666,8\n82#1:701\n89#1:702,4\n89#1:718,8\n89#1:753\n96#1:754,4\n96#1:770,8\n96#1:805\n103#1:806,4\n103#1:822,8\n103#1:857\n110#1:858,4\n110#1:868\n110#1:870,5\n110#1:888\n122#1:890,4\n122#1:900\n122#1:902,6\n122#1:921\n7#1:220,6\n7#1:233,13\n14#1:255,8\n14#1:264,3\n14#1:275,11\n14#1:287,15\n21#1:311,8\n21#1:320,3\n21#1:331,11\n21#1:343,15\n28#1:367,8\n28#1:376,3\n28#1:387,11\n28#1:399,15\n35#1:423,8\n35#1:432,3\n35#1:443,11\n35#1:455,15\n42#1:479,8\n42#1:488,3\n42#1:499,11\n42#1:511,15\n49#1:535,6\n49#1:548,13\n68#1:571,6\n68#1:584,13\n75#1:602,8\n75#1:611,3\n75#1:622,11\n75#1:634,15\n82#1:654,8\n82#1:663,3\n82#1:674,11\n82#1:686,15\n89#1:706,8\n89#1:715,3\n89#1:726,11\n89#1:738,15\n96#1:758,8\n96#1:767,3\n96#1:778,11\n96#1:790,15\n103#1:810,8\n103#1:819,3\n103#1:830,11\n103#1:842,15\n110#1:862,6\n110#1:875,13\n122#1:894,6\n122#1:908,13\n144#1:922,6\n144#1:929,13\n168#1:942,6\n168#1:949,13\n194#1:962,8\n194#1:971,3\n194#1:975,11\n194#1:987,15\n7#1:227\n14#1:263\n14#1:286\n21#1:319\n21#1:342\n28#1:375\n28#1:398\n35#1:431\n35#1:454\n42#1:487\n42#1:510\n49#1:542\n48#1:566\n68#1:578\n75#1:610\n75#1:633\n82#1:662\n82#1:685\n89#1:714\n89#1:737\n96#1:766\n96#1:789\n103#1:818\n103#1:841\n110#1:869\n109#1:889\n122#1:901\n145#1:928\n169#1:948\n194#1:970\n195#1:974\n194#1:986\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0013\n\u0002\u0010\u0014\n\u0002\u0010\u0015\n\u0002\u0010\u0016\n\u0002\u0010\u0017\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a/\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u001a/\u0010\u0000\u001a\u00020\t*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\t\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0007\u0010\n\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001a/\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u001a/\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\t\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0018\u001a\u001c\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001a&\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001\u001aj\u0010\u0019\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012K\u0010\u001b\u001aG\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(\u001f\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008( \u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(!\u0012\u0004\u0012\u00020\u00150\u001cH\u0082\u0008\u001a\u0082\u0001\u0010\u0019\u001a\u00020\t*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\t2`\u0010\u001b\u001a\\\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(\u001f\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(#\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008( \u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(!\u0012\u0004\u0012\u00020\u00150\"H\u0082\u0008\u00f8\u0001\u0001\u001ar\u0010$\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010%\u001a\u00020\u00012K\u0010\u001b\u001aG\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(\u001f\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008( \u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(!\u0012\u0004\u0012\u00020\u00150\u001cH\u0082\u0008\u001a\r\u0010&\u001a\u00020\u0015*\u00020\u0001H\u0082\u0008\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\'"
    }
    d2 = {
        "readAvailable",
        "",
        "Lio/ktor/utils/io/core/Input;",
        "destination",
        "Lio/ktor/utils/io/bits/Memory;",
        "destinationOffset",
        "length",
        "readAvailable-UAd2zVI",
        "(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;II)I",
        "",
        "(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;JJ)J",
        "dst",
        "Lio/ktor/utils/io/core/Buffer;",
        "",
        "offset",
        "",
        "",
        "",
        "",
        "",
        "readFully",
        "",
        "readFully-UAd2zVI",
        "(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;II)V",
        "(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;JJ)V",
        "readFullyBytesTemplate",
        "initialDstOffset",
        "readBlock",
        "Lkotlin/Function3;",
        "Lkotlin/ParameterName;",
        "name",
        "src",
        "dstOffset",
        "count",
        "Lkotlin/Function4;",
        "srcOffset",
        "readFullyTemplate",
        "componentSize",
        "requireNoRemaining",
        "ktor-io"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final readAvailable(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/Buffer;I)I
    .locals 18
    .param p0, "$this$readAvailable"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # Lio/ktor/utils/io/core/Buffer;
    .param p2, "length"    # I

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    const/4 v3, 0x0

    .local v3, "initialDstOffset$iv":I
    move-object/from16 v4, p0

    .local v4, "$this$readFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Input;
    const/4 v5, 0x0

    .line 858
    .local v5, "$i$f$readFullyBytesTemplate":I
    const/4 v0, 0x0

    .local v0, "remaining$iv":I
    move/from16 v0, p2

    .line 859
    const/4 v6, 0x0

    .local v6, "dstOffset$iv":I
    move v6, v3

    .line 861
    move-object v7, v4

    .local v7, "$this$takeWhile$iv$iv":Lio/ktor/utils/io/core/Input;
    const/4 v8, 0x0

    .line 862
    .local v8, "$i$f$takeWhile":I
    const/4 v9, 0x1

    .line 863
    .local v9, "release$iv$iv":Z
    const/4 v10, 0x1

    invoke-static {v7, v10}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v11

    if-nez v11, :cond_0

    goto :goto_3

    .line 865
    .local v11, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move-object v12, v11

    move v11, v9

    move v9, v6

    move v6, v0

    .line 867
    .end local v0    # "remaining$iv":I
    .local v6, "remaining$iv":I
    .local v9, "dstOffset$iv":I
    .local v11, "release$iv$iv":Z
    .local v12, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    :try_start_0
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v13, 0x0

    .line 868
    .local v13, "$i$a$-takeWhile-InputArraysKt$readFullyBytesTemplate$1$iv":I
    move-object v14, v0

    .local v14, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v15, 0x0

    .line 869
    .local v15, "$i$f$getReadRemaining":I
    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v16

    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v17

    sub-int v14, v16, v17

    .line 868
    .end local v14    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "$i$f$getReadRemaining":I
    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 870
    .local v14, "count$iv":I
    move-object v15, v0

    .local v15, "src":Lio/ktor/utils/io/core/Buffer;
    move/from16 v16, v14

    .local v16, "count":I
    const/16 v17, 0x0

    .line 111
    .local v17, "$i$a$-readFullyBytesTemplate-InputArraysKt$readAvailable$7":I
    move/from16 v10, v16

    .end local v16    # "count":I
    .local v10, "count":I
    invoke-static {v15, v1, v10}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;I)I

    .line 112
    nop

    .line 870
    .end local v10    # "count":I
    .end local v15    # "src":Lio/ktor/utils/io/core/Buffer;
    .end local v17    # "$i$a$-readFullyBytesTemplate-InputArraysKt$readAvailable$7":I
    nop

    .line 871
    sub-int/2addr v6, v14

    .line 872
    add-int/2addr v9, v14

    .line 874
    if-lez v6, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 867
    .end local v0    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$a$-takeWhile-InputArraysKt$readFullyBytesTemplate$1$iv":I
    .end local v14    # "count$iv":I
    :goto_1
    if-nez v10, :cond_2

    .line 875
    goto :goto_2

    .line 877
    :cond_2
    const/4 v11, 0x0

    .line 878
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    .line 883
    :goto_2
    if-eqz v11, :cond_3

    .line 884
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 886
    :cond_3
    nop

    .line 887
    move v0, v6

    move v6, v9

    .line 888
    .end local v7    # "$this$takeWhile$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v8    # "$i$f$takeWhile":I
    .end local v9    # "dstOffset$iv":I
    .end local v11    # "release$iv$iv":Z
    .end local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v0, "remaining$iv":I
    .local v6, "dstOffset$iv":I
    :goto_3
    nop

    .line 110
    .end local v0    # "remaining$iv":I
    .end local v3    # "initialDstOffset$iv":I
    .end local v4    # "$this$readFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v5    # "$i$f$readFullyBytesTemplate":I
    .end local v6    # "dstOffset$iv":I
    sub-int v0, p2, v0

    return v0

    .line 879
    .local v0, "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v3    # "initialDstOffset$iv":I
    .restart local v4    # "$this$readFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v5    # "$i$f$readFullyBytesTemplate":I
    .local v6, "remaining$iv":I
    .restart local v7    # "$this$takeWhile$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v8    # "$i$f$takeWhile":I
    .restart local v9    # "dstOffset$iv":I
    .restart local v11    # "release$iv$iv":Z
    .restart local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_4
    move-object v12, v0

    .line 880
    const/4 v11, 0x1

    .line 881
    .end local v0    # "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v10, 0x1

    goto :goto_0

    .line 883
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_5

    .line 884
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_5
    throw v0
.end method

.method public static final readAvailable(Lio/ktor/utils/io/core/Input;[BII)I
    .locals 18
    .param p0, "$this$readAvailable"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    move-object/from16 v3, p0

    .local v3, "$this$readFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Input;
    const/4 v4, 0x0

    .line 567
    .local v4, "$i$f$readFullyBytesTemplate":I
    const/4 v0, 0x0

    .local v0, "remaining$iv":I
    move/from16 v0, p3

    .line 568
    const/4 v5, 0x0

    .local v5, "dstOffset$iv":I
    move/from16 v5, p2

    .line 570
    move-object v6, v3

    .local v6, "$this$takeWhile$iv$iv":Lio/ktor/utils/io/core/Input;
    const/4 v7, 0x0

    .line 571
    .local v7, "$i$f$takeWhile":I
    const/4 v8, 0x1

    .line 572
    .local v8, "release$iv$iv":Z
    const/4 v9, 0x1

    invoke-static {v6, v9}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v10

    if-nez v10, :cond_0

    goto :goto_3

    .line 574
    .local v10, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move-object v11, v10

    move v10, v8

    move v8, v5

    move v5, v0

    .line 576
    .end local v0    # "remaining$iv":I
    .local v5, "remaining$iv":I
    .local v8, "dstOffset$iv":I
    .local v10, "release$iv$iv":Z
    .local v11, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    :try_start_0
    move-object v0, v11

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v12, 0x0

    .line 577
    .local v12, "$i$a$-takeWhile-InputArraysKt$readFullyBytesTemplate$1$iv":I
    move-object v13, v0

    .local v13, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 578
    .local v14, "$i$f$getReadRemaining":I
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v15

    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v16

    sub-int v15, v15, v16

    .line 577
    .end local v13    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$getReadRemaining":I
    invoke-static {v5, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 579
    .local v13, "count$iv":I
    move-object v14, v0

    .local v14, "src":Lio/ktor/utils/io/core/Buffer;
    move v15, v8

    .local v15, "dstOffset":I
    move/from16 v16, v13

    .local v16, "count":I
    const/16 v17, 0x0

    .line 69
    .local v17, "$i$a$-readFullyBytesTemplate-InputArraysKt$readAvailable$1":I
    move/from16 v9, v16

    .end local v16    # "count":I
    .local v9, "count":I
    invoke-static {v14, v1, v15, v9}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[BII)V

    .line 70
    nop

    .line 579
    .end local v9    # "count":I
    .end local v14    # "src":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "dstOffset":I
    .end local v17    # "$i$a$-readFullyBytesTemplate-InputArraysKt$readAvailable$1":I
    nop

    .line 580
    sub-int/2addr v5, v13

    .line 581
    add-int/2addr v8, v13

    .line 583
    if-lez v5, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 576
    .end local v0    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "$i$a$-takeWhile-InputArraysKt$readFullyBytesTemplate$1$iv":I
    .end local v13    # "count$iv":I
    :goto_1
    if-nez v9, :cond_2

    .line 584
    goto :goto_2

    .line 586
    :cond_2
    const/4 v10, 0x0

    .line 587
    invoke-static {v6, v11}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    .line 592
    :goto_2
    if-eqz v10, :cond_3

    .line 593
    invoke-static {v6, v11}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 595
    :cond_3
    nop

    .line 596
    move v0, v5

    move v5, v8

    .line 597
    .end local v6    # "$this$takeWhile$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v7    # "$i$f$takeWhile":I
    .end local v8    # "dstOffset$iv":I
    .end local v10    # "release$iv$iv":Z
    .end local v11    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v0, "remaining$iv":I
    .local v5, "dstOffset$iv":I
    :goto_3
    nop

    .line 68
    .end local v0    # "remaining$iv":I
    .end local v3    # "$this$readFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "$i$f$readFullyBytesTemplate":I
    .end local v5    # "dstOffset$iv":I
    sub-int v0, p3, v0

    return v0

    .line 588
    .local v0, "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v3    # "$this$readFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v4    # "$i$f$readFullyBytesTemplate":I
    .local v5, "remaining$iv":I
    .restart local v6    # "$this$takeWhile$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v7    # "$i$f$takeWhile":I
    .restart local v8    # "dstOffset$iv":I
    .restart local v10    # "release$iv$iv":Z
    .restart local v11    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_4
    move-object v11, v0

    .line 589
    const/4 v10, 0x1

    .line 590
    .end local v0    # "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v9, 0x1

    goto :goto_0

    .line 592
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_5

    .line 593
    invoke-static {v6, v11}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_5
    throw v0
.end method

.method public static final readAvailable(Lio/ktor/utils/io/core/Input;[DII)I
    .locals 22
    .param p0, "$this$readAvailable"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    const/16 v3, 0x8

    .local v3, "componentSize$iv":I
    move-object/from16 v4, p0

    .local v4, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    const/4 v5, 0x0

    .line 806
    .local v5, "$i$f$readFullyTemplate":I
    const/4 v0, 0x0

    .local v0, "remaining$iv":I
    move/from16 v0, p3

    .line 807
    const/4 v6, 0x0

    .local v6, "dstOffset$iv":I
    move/from16 v6, p2

    .line 809
    move-object v7, v4

    .line 810
    .local v7, "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    const/4 v8, 0x1

    .local v8, "initialSize$iv$iv":I
    const/4 v9, 0x0

    .line 811
    .local v9, "$i$f$takeWhileSize":I
    const/4 v10, 0x1

    .line 812
    .local v10, "release$iv$iv":Z
    invoke-static {v7, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v11

    if-nez v11, :cond_0

    move/from16 v18, v3

    move-object/from16 v19, v4

    goto/16 :goto_7

    .line 813
    .local v11, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move v12, v8

    .line 815
    .local v12, "size$iv$iv":I
    move v13, v12

    move-object v12, v11

    move v11, v10

    move v10, v6

    move v6, v0

    .line 817
    .end local v0    # "remaining$iv":I
    .local v6, "remaining$iv":I
    .local v10, "dstOffset$iv":I
    .local v11, "release$iv$iv":Z
    .local v12, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v13, "size$iv$iv":I
    :goto_0
    :try_start_0
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 818
    .local v14, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v15

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    sub-int v15, v15, v16

    .line 817
    .end local v0    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$getReadRemaining":I
    move v14, v15

    .local v14, "before$iv$iv":I
    const/4 v15, 0x0

    .line 819
    .local v15, "after$iv$iv":I
    if-lt v14, v13, :cond_2

    .line 820
    nop

    .line 821
    :try_start_1
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v16, 0x0

    .line 822
    .local v16, "$i$a$-takeWhileSize$default-InputArraysKt$readFullyTemplate$1$iv":I
    move-object/from16 v17, v0

    .local v17, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v18, 0x0

    .line 818
    .local v18, "$i$f$getReadRemaining":I
    invoke-virtual/range {v17 .. v17}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v19

    invoke-virtual/range {v17 .. v17}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v20

    sub-int v19, v19, v20

    .line 822
    .end local v17    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v18    # "$i$f$getReadRemaining":I
    div-int v2, v19, v3

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 823
    .local v2, "count$iv":I
    move-object/from16 v17, v0

    .local v17, "src":Lio/ktor/utils/io/core/Buffer;
    move/from16 v18, v10

    .local v18, "dstOffset":I
    move/from16 v19, v2

    .local v19, "count":I
    move-object/from16 v20, v17

    .end local v17    # "src":Lio/ktor/utils/io/core/Buffer;
    .local v20, "src":Lio/ktor/utils/io/core/Buffer;
    const/16 v17, 0x0

    .line 104
    .local v17, "$i$a$-readFullyTemplate-InputArraysKt$readAvailable$6":I
    move-object/from16 v21, v0

    move/from16 v0, v18

    move/from16 v18, v3

    move/from16 v3, v19

    move-object/from16 v19, v4

    move-object/from16 v4, v20

    .end local v20    # "src":Lio/ktor/utils/io/core/Buffer;
    .local v0, "dstOffset":I
    .local v3, "count":I
    .local v4, "src":Lio/ktor/utils/io/core/Buffer;
    .local v18, "componentSize$iv":I
    .local v19, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .local v21, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    :try_start_2
    invoke-static {v4, v1, v0, v3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[DII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    nop

    .line 823
    .end local v0    # "dstOffset":I
    .end local v3    # "count":I
    .end local v4    # "src":Lio/ktor/utils/io/core/Buffer;
    .end local v17    # "$i$a$-readFullyTemplate-InputArraysKt$readAvailable$6":I
    nop

    .line 824
    sub-int/2addr v6, v2

    .line 825
    add-int/2addr v10, v2

    .line 827
    nop

    .line 828
    if-lez v6, :cond_1

    move/from16 v0, v18

    goto :goto_1

    .line 829
    :cond_1
    const/4 v0, 0x0

    .line 827
    :goto_1
    nop

    .line 821
    .end local v2    # "count$iv":I
    .end local v16    # "$i$a$-takeWhileSize$default-InputArraysKt$readFullyTemplate$1$iv":I
    .end local v21    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    move v13, v0

    .line 830
    :try_start_3
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 818
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 830
    .end local v0    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    move v0, v3

    .line 831
    .end local v15    # "after$iv$iv":I
    .local v0, "after$iv$iv":I
    goto :goto_3

    .line 830
    .end local v0    # "after$iv$iv":I
    .restart local v15    # "after$iv$iv":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v18    # "componentSize$iv":I
    .end local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .local v3, "componentSize$iv":I
    .local v4, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    :catchall_1
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v19, v4

    .end local v3    # "componentSize$iv":I
    .end local v4    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v18    # "componentSize$iv":I
    .restart local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    :goto_2
    move-object v2, v12

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 818
    .local v3, "$i$f$getReadRemaining":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v16

    sub-int v4, v4, v16

    .line 830
    .end local v2    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getReadRemaining":I
    move v2, v4

    .end local v5    # "$i$f$readFullyTemplate":I
    .end local v6    # "remaining$iv":I
    .end local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v8    # "initialSize$iv$iv":I
    .end local v9    # "$i$f$takeWhileSize":I
    .end local v10    # "dstOffset$iv":I
    .end local v11    # "release$iv$iv":Z
    .end local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v13    # "size$iv$iv":I
    .end local v15    # "after$iv$iv":I
    .end local v18    # "componentSize$iv":I
    .end local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local p0    # "$this$readAvailable":Lio/ktor/utils/io/core/Input;
    .end local p1    # "dst":[D
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .local v2, "after$iv$iv":I
    throw v0

    .line 833
    .end local v2    # "after$iv$iv":I
    .local v3, "componentSize$iv":I
    .restart local v4    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v5    # "$i$f$readFullyTemplate":I
    .restart local v6    # "remaining$iv":I
    .restart local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v8    # "initialSize$iv$iv":I
    .restart local v9    # "$i$f$takeWhileSize":I
    .restart local v10    # "dstOffset$iv":I
    .restart local v11    # "release$iv$iv":Z
    .restart local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v13    # "size$iv$iv":I
    .restart local v15    # "after$iv$iv":I
    .restart local p0    # "$this$readAvailable":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "dst":[D
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :cond_2
    move/from16 v18, v3

    move-object/from16 v19, v4

    .end local v3    # "componentSize$iv":I
    .end local v4    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v18    # "componentSize$iv":I
    .restart local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    move v0, v14

    .line 836
    .end local v15    # "after$iv$iv":I
    .restart local v0    # "after$iv$iv":I
    :goto_3
    const/4 v11, 0x0

    .line 838
    nop

    .line 839
    if-nez v0, :cond_3

    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    goto :goto_5

    .line 852
    .end local v0    # "after$iv$iv":I
    .end local v14    # "before$iv$iv":I
    :catchall_2
    move-exception v0

    goto :goto_8

    .line 840
    .restart local v0    # "after$iv$iv":I
    .restart local v14    # "before$iv$iv":I
    :cond_3
    if-lt v0, v13, :cond_5

    move-object v2, v12

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 841
    .local v3, "$i$f$getEndGap":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v15

    sub-int/2addr v4, v15

    .line 840
    .end local v2    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getEndGap":I
    const/16 v2, 0x8

    if-ge v4, v2, :cond_4

    goto :goto_4

    .line 845
    :cond_4
    move-object v2, v12

    goto :goto_5

    .line 842
    :cond_5
    :goto_4
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 843
    invoke-static {v7, v13}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 838
    :goto_5
    if-nez v2, :cond_6

    .line 846
    goto :goto_6

    .line 848
    .local v2, "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_6
    move-object v12, v2

    .line 849
    const/4 v11, 0x1

    .line 850
    .end local v0    # "after$iv$iv":I
    .end local v2    # "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v14    # "before$iv$iv":I
    if-gtz v13, :cond_8

    .line 852
    :goto_6
    if-eqz v11, :cond_7

    .line 853
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 855
    :cond_7
    nop

    .line 856
    move v0, v6

    move v6, v10

    .line 857
    .end local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v8    # "initialSize$iv$iv":I
    .end local v9    # "$i$f$takeWhileSize":I
    .end local v10    # "dstOffset$iv":I
    .end local v11    # "release$iv$iv":Z
    .end local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v13    # "size$iv$iv":I
    .local v0, "remaining$iv":I
    .local v6, "dstOffset$iv":I
    :goto_7
    nop

    .line 103
    .end local v0    # "remaining$iv":I
    .end local v5    # "$i$f$readFullyTemplate":I
    .end local v6    # "dstOffset$iv":I
    .end local v18    # "componentSize$iv":I
    .end local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    sub-int v0, p3, v0

    return v0

    .line 850
    .restart local v5    # "$i$f$readFullyTemplate":I
    .local v6, "remaining$iv":I
    .restart local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v8    # "initialSize$iv$iv":I
    .restart local v9    # "$i$f$takeWhileSize":I
    .restart local v10    # "dstOffset$iv":I
    .restart local v11    # "release$iv$iv":Z
    .restart local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v13    # "size$iv$iv":I
    .restart local v18    # "componentSize$iv":I
    .restart local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    :cond_8
    move-object/from16 v2, p0

    move/from16 v3, v18

    move-object/from16 v4, v19

    goto/16 :goto_0

    .line 852
    .end local v18    # "componentSize$iv":I
    .end local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .local v3, "componentSize$iv":I
    .restart local v4    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    :catchall_3
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v19, v4

    .end local v3    # "componentSize$iv":I
    .end local v4    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v18    # "componentSize$iv":I
    .restart local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    :goto_8
    if-eqz v11, :cond_9

    .line 853
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_9
    throw v0
.end method

.method public static final readAvailable(Lio/ktor/utils/io/core/Input;[FII)I
    .locals 22
    .param p0, "$this$readAvailable"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    const/4 v3, 0x4

    .local v3, "componentSize$iv":I
    move-object/from16 v4, p0

    .local v4, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    const/4 v5, 0x0

    .line 754
    .local v5, "$i$f$readFullyTemplate":I
    const/4 v0, 0x0

    .local v0, "remaining$iv":I
    move/from16 v0, p3

    .line 755
    const/4 v6, 0x0

    .local v6, "dstOffset$iv":I
    move/from16 v6, p2

    .line 757
    move-object v7, v4

    .line 758
    .local v7, "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    const/4 v8, 0x1

    .local v8, "initialSize$iv$iv":I
    const/4 v9, 0x0

    .line 759
    .local v9, "$i$f$takeWhileSize":I
    const/4 v10, 0x1

    .line 760
    .local v10, "release$iv$iv":Z
    invoke-static {v7, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v11

    if-nez v11, :cond_0

    move/from16 v18, v3

    move-object/from16 v19, v4

    goto/16 :goto_7

    .line 761
    .local v11, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move v12, v8

    .line 763
    .local v12, "size$iv$iv":I
    move v13, v12

    move-object v12, v11

    move v11, v10

    move v10, v6

    move v6, v0

    .line 765
    .end local v0    # "remaining$iv":I
    .local v6, "remaining$iv":I
    .local v10, "dstOffset$iv":I
    .local v11, "release$iv$iv":Z
    .local v12, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v13, "size$iv$iv":I
    :goto_0
    :try_start_0
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 766
    .local v14, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v15

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    sub-int v15, v15, v16

    .line 765
    .end local v0    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$getReadRemaining":I
    move v14, v15

    .local v14, "before$iv$iv":I
    const/4 v15, 0x0

    .line 767
    .local v15, "after$iv$iv":I
    if-lt v14, v13, :cond_2

    .line 768
    nop

    .line 769
    :try_start_1
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v16, 0x0

    .line 770
    .local v16, "$i$a$-takeWhileSize$default-InputArraysKt$readFullyTemplate$1$iv":I
    move-object/from16 v17, v0

    .local v17, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v18, 0x0

    .line 766
    .local v18, "$i$f$getReadRemaining":I
    invoke-virtual/range {v17 .. v17}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v19

    invoke-virtual/range {v17 .. v17}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v20

    sub-int v19, v19, v20

    .line 770
    .end local v17    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v18    # "$i$f$getReadRemaining":I
    div-int v2, v19, v3

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 771
    .local v2, "count$iv":I
    move-object/from16 v17, v0

    .local v17, "src":Lio/ktor/utils/io/core/Buffer;
    move/from16 v18, v10

    .local v18, "dstOffset":I
    move/from16 v19, v2

    .local v19, "count":I
    move-object/from16 v20, v17

    .end local v17    # "src":Lio/ktor/utils/io/core/Buffer;
    .local v20, "src":Lio/ktor/utils/io/core/Buffer;
    const/16 v17, 0x0

    .line 97
    .local v17, "$i$a$-readFullyTemplate-InputArraysKt$readAvailable$5":I
    move-object/from16 v21, v0

    move/from16 v0, v18

    move/from16 v18, v3

    move/from16 v3, v19

    move-object/from16 v19, v4

    move-object/from16 v4, v20

    .end local v20    # "src":Lio/ktor/utils/io/core/Buffer;
    .local v0, "dstOffset":I
    .local v3, "count":I
    .local v4, "src":Lio/ktor/utils/io/core/Buffer;
    .local v18, "componentSize$iv":I
    .local v19, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .local v21, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    :try_start_2
    invoke-static {v4, v1, v0, v3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[FII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    nop

    .line 771
    .end local v0    # "dstOffset":I
    .end local v3    # "count":I
    .end local v4    # "src":Lio/ktor/utils/io/core/Buffer;
    .end local v17    # "$i$a$-readFullyTemplate-InputArraysKt$readAvailable$5":I
    nop

    .line 772
    sub-int/2addr v6, v2

    .line 773
    add-int/2addr v10, v2

    .line 775
    nop

    .line 776
    if-lez v6, :cond_1

    move/from16 v0, v18

    goto :goto_1

    .line 777
    :cond_1
    const/4 v0, 0x0

    .line 775
    :goto_1
    nop

    .line 769
    .end local v2    # "count$iv":I
    .end local v16    # "$i$a$-takeWhileSize$default-InputArraysKt$readFullyTemplate$1$iv":I
    .end local v21    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    move v13, v0

    .line 778
    :try_start_3
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 766
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 778
    .end local v0    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    move v0, v3

    .line 779
    .end local v15    # "after$iv$iv":I
    .local v0, "after$iv$iv":I
    goto :goto_3

    .line 778
    .end local v0    # "after$iv$iv":I
    .restart local v15    # "after$iv$iv":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v18    # "componentSize$iv":I
    .end local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .local v3, "componentSize$iv":I
    .local v4, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    :catchall_1
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v19, v4

    .end local v3    # "componentSize$iv":I
    .end local v4    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v18    # "componentSize$iv":I
    .restart local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    :goto_2
    move-object v2, v12

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 766
    .local v3, "$i$f$getReadRemaining":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v16

    sub-int v4, v4, v16

    .line 778
    .end local v2    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getReadRemaining":I
    move v2, v4

    .end local v5    # "$i$f$readFullyTemplate":I
    .end local v6    # "remaining$iv":I
    .end local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v8    # "initialSize$iv$iv":I
    .end local v9    # "$i$f$takeWhileSize":I
    .end local v10    # "dstOffset$iv":I
    .end local v11    # "release$iv$iv":Z
    .end local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v13    # "size$iv$iv":I
    .end local v15    # "after$iv$iv":I
    .end local v18    # "componentSize$iv":I
    .end local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local p0    # "$this$readAvailable":Lio/ktor/utils/io/core/Input;
    .end local p1    # "dst":[F
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .local v2, "after$iv$iv":I
    throw v0

    .line 781
    .end local v2    # "after$iv$iv":I
    .local v3, "componentSize$iv":I
    .restart local v4    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v5    # "$i$f$readFullyTemplate":I
    .restart local v6    # "remaining$iv":I
    .restart local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v8    # "initialSize$iv$iv":I
    .restart local v9    # "$i$f$takeWhileSize":I
    .restart local v10    # "dstOffset$iv":I
    .restart local v11    # "release$iv$iv":Z
    .restart local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v13    # "size$iv$iv":I
    .restart local v15    # "after$iv$iv":I
    .restart local p0    # "$this$readAvailable":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "dst":[F
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :cond_2
    move/from16 v18, v3

    move-object/from16 v19, v4

    .end local v3    # "componentSize$iv":I
    .end local v4    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v18    # "componentSize$iv":I
    .restart local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    move v0, v14

    .line 784
    .end local v15    # "after$iv$iv":I
    .restart local v0    # "after$iv$iv":I
    :goto_3
    const/4 v11, 0x0

    .line 786
    nop

    .line 787
    if-nez v0, :cond_3

    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    goto :goto_5

    .line 800
    .end local v0    # "after$iv$iv":I
    .end local v14    # "before$iv$iv":I
    :catchall_2
    move-exception v0

    goto :goto_8

    .line 788
    .restart local v0    # "after$iv$iv":I
    .restart local v14    # "before$iv$iv":I
    :cond_3
    if-lt v0, v13, :cond_5

    move-object v2, v12

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 789
    .local v3, "$i$f$getEndGap":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v15

    sub-int/2addr v4, v15

    .line 788
    .end local v2    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getEndGap":I
    const/16 v2, 0x8

    if-ge v4, v2, :cond_4

    goto :goto_4

    .line 793
    :cond_4
    move-object v2, v12

    goto :goto_5

    .line 790
    :cond_5
    :goto_4
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 791
    invoke-static {v7, v13}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 786
    :goto_5
    if-nez v2, :cond_6

    .line 794
    goto :goto_6

    .line 796
    .local v2, "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_6
    move-object v12, v2

    .line 797
    const/4 v11, 0x1

    .line 798
    .end local v0    # "after$iv$iv":I
    .end local v2    # "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v14    # "before$iv$iv":I
    if-gtz v13, :cond_8

    .line 800
    :goto_6
    if-eqz v11, :cond_7

    .line 801
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 803
    :cond_7
    nop

    .line 804
    move v0, v6

    move v6, v10

    .line 805
    .end local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v8    # "initialSize$iv$iv":I
    .end local v9    # "$i$f$takeWhileSize":I
    .end local v10    # "dstOffset$iv":I
    .end local v11    # "release$iv$iv":Z
    .end local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v13    # "size$iv$iv":I
    .local v0, "remaining$iv":I
    .local v6, "dstOffset$iv":I
    :goto_7
    nop

    .line 96
    .end local v0    # "remaining$iv":I
    .end local v5    # "$i$f$readFullyTemplate":I
    .end local v6    # "dstOffset$iv":I
    .end local v18    # "componentSize$iv":I
    .end local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    sub-int v0, p3, v0

    return v0

    .line 798
    .restart local v5    # "$i$f$readFullyTemplate":I
    .local v6, "remaining$iv":I
    .restart local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v8    # "initialSize$iv$iv":I
    .restart local v9    # "$i$f$takeWhileSize":I
    .restart local v10    # "dstOffset$iv":I
    .restart local v11    # "release$iv$iv":Z
    .restart local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v13    # "size$iv$iv":I
    .restart local v18    # "componentSize$iv":I
    .restart local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    :cond_8
    move-object/from16 v2, p0

    move/from16 v3, v18

    move-object/from16 v4, v19

    goto/16 :goto_0

    .line 800
    .end local v18    # "componentSize$iv":I
    .end local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .local v3, "componentSize$iv":I
    .restart local v4    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    :catchall_3
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v19, v4

    .end local v3    # "componentSize$iv":I
    .end local v4    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v18    # "componentSize$iv":I
    .restart local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    :goto_8
    if-eqz v11, :cond_9

    .line 801
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_9
    throw v0
.end method

.method public static final readAvailable(Lio/ktor/utils/io/core/Input;[III)I
    .locals 22
    .param p0, "$this$readAvailable"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    const/4 v3, 0x4

    .local v3, "componentSize$iv":I
    move-object/from16 v4, p0

    .local v4, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    const/4 v5, 0x0

    .line 650
    .local v5, "$i$f$readFullyTemplate":I
    const/4 v0, 0x0

    .local v0, "remaining$iv":I
    move/from16 v0, p3

    .line 651
    const/4 v6, 0x0

    .local v6, "dstOffset$iv":I
    move/from16 v6, p2

    .line 653
    move-object v7, v4

    .line 654
    .local v7, "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    const/4 v8, 0x1

    .local v8, "initialSize$iv$iv":I
    const/4 v9, 0x0

    .line 655
    .local v9, "$i$f$takeWhileSize":I
    const/4 v10, 0x1

    .line 656
    .local v10, "release$iv$iv":Z
    invoke-static {v7, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v11

    if-nez v11, :cond_0

    move/from16 v18, v3

    move-object/from16 v19, v4

    goto/16 :goto_7

    .line 657
    .local v11, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move v12, v8

    .line 659
    .local v12, "size$iv$iv":I
    move v13, v12

    move-object v12, v11

    move v11, v10

    move v10, v6

    move v6, v0

    .line 661
    .end local v0    # "remaining$iv":I
    .local v6, "remaining$iv":I
    .local v10, "dstOffset$iv":I
    .local v11, "release$iv$iv":Z
    .local v12, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v13, "size$iv$iv":I
    :goto_0
    :try_start_0
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 662
    .local v14, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v15

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    sub-int v15, v15, v16

    .line 661
    .end local v0    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$getReadRemaining":I
    move v14, v15

    .local v14, "before$iv$iv":I
    const/4 v15, 0x0

    .line 663
    .local v15, "after$iv$iv":I
    if-lt v14, v13, :cond_2

    .line 664
    nop

    .line 665
    :try_start_1
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v16, 0x0

    .line 666
    .local v16, "$i$a$-takeWhileSize$default-InputArraysKt$readFullyTemplate$1$iv":I
    move-object/from16 v17, v0

    .local v17, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v18, 0x0

    .line 662
    .local v18, "$i$f$getReadRemaining":I
    invoke-virtual/range {v17 .. v17}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v19

    invoke-virtual/range {v17 .. v17}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v20

    sub-int v19, v19, v20

    .line 666
    .end local v17    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v18    # "$i$f$getReadRemaining":I
    div-int v2, v19, v3

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 667
    .local v2, "count$iv":I
    move-object/from16 v17, v0

    .local v17, "src":Lio/ktor/utils/io/core/Buffer;
    move/from16 v18, v10

    .local v18, "dstOffset":I
    move/from16 v19, v2

    .local v19, "count":I
    move-object/from16 v20, v17

    .end local v17    # "src":Lio/ktor/utils/io/core/Buffer;
    .local v20, "src":Lio/ktor/utils/io/core/Buffer;
    const/16 v17, 0x0

    .line 83
    .local v17, "$i$a$-readFullyTemplate-InputArraysKt$readAvailable$3":I
    move-object/from16 v21, v0

    move/from16 v0, v18

    move/from16 v18, v3

    move/from16 v3, v19

    move-object/from16 v19, v4

    move-object/from16 v4, v20

    .end local v20    # "src":Lio/ktor/utils/io/core/Buffer;
    .local v0, "dstOffset":I
    .local v3, "count":I
    .local v4, "src":Lio/ktor/utils/io/core/Buffer;
    .local v18, "componentSize$iv":I
    .local v19, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .local v21, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    :try_start_2
    invoke-static {v4, v1, v0, v3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    nop

    .line 667
    .end local v0    # "dstOffset":I
    .end local v3    # "count":I
    .end local v4    # "src":Lio/ktor/utils/io/core/Buffer;
    .end local v17    # "$i$a$-readFullyTemplate-InputArraysKt$readAvailable$3":I
    nop

    .line 668
    sub-int/2addr v6, v2

    .line 669
    add-int/2addr v10, v2

    .line 671
    nop

    .line 672
    if-lez v6, :cond_1

    move/from16 v0, v18

    goto :goto_1

    .line 673
    :cond_1
    const/4 v0, 0x0

    .line 671
    :goto_1
    nop

    .line 665
    .end local v2    # "count$iv":I
    .end local v16    # "$i$a$-takeWhileSize$default-InputArraysKt$readFullyTemplate$1$iv":I
    .end local v21    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    move v13, v0

    .line 674
    :try_start_3
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 662
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 674
    .end local v0    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    move v0, v3

    .line 675
    .end local v15    # "after$iv$iv":I
    .local v0, "after$iv$iv":I
    goto :goto_3

    .line 674
    .end local v0    # "after$iv$iv":I
    .restart local v15    # "after$iv$iv":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v18    # "componentSize$iv":I
    .end local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .local v3, "componentSize$iv":I
    .local v4, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    :catchall_1
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v19, v4

    .end local v3    # "componentSize$iv":I
    .end local v4    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v18    # "componentSize$iv":I
    .restart local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    :goto_2
    move-object v2, v12

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 662
    .local v3, "$i$f$getReadRemaining":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v16

    sub-int v4, v4, v16

    .line 674
    .end local v2    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getReadRemaining":I
    move v2, v4

    .end local v5    # "$i$f$readFullyTemplate":I
    .end local v6    # "remaining$iv":I
    .end local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v8    # "initialSize$iv$iv":I
    .end local v9    # "$i$f$takeWhileSize":I
    .end local v10    # "dstOffset$iv":I
    .end local v11    # "release$iv$iv":Z
    .end local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v13    # "size$iv$iv":I
    .end local v15    # "after$iv$iv":I
    .end local v18    # "componentSize$iv":I
    .end local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local p0    # "$this$readAvailable":Lio/ktor/utils/io/core/Input;
    .end local p1    # "dst":[I
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .local v2, "after$iv$iv":I
    throw v0

    .line 677
    .end local v2    # "after$iv$iv":I
    .local v3, "componentSize$iv":I
    .restart local v4    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v5    # "$i$f$readFullyTemplate":I
    .restart local v6    # "remaining$iv":I
    .restart local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v8    # "initialSize$iv$iv":I
    .restart local v9    # "$i$f$takeWhileSize":I
    .restart local v10    # "dstOffset$iv":I
    .restart local v11    # "release$iv$iv":Z
    .restart local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v13    # "size$iv$iv":I
    .restart local v15    # "after$iv$iv":I
    .restart local p0    # "$this$readAvailable":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "dst":[I
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :cond_2
    move/from16 v18, v3

    move-object/from16 v19, v4

    .end local v3    # "componentSize$iv":I
    .end local v4    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v18    # "componentSize$iv":I
    .restart local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    move v0, v14

    .line 680
    .end local v15    # "after$iv$iv":I
    .restart local v0    # "after$iv$iv":I
    :goto_3
    const/4 v11, 0x0

    .line 682
    nop

    .line 683
    if-nez v0, :cond_3

    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    goto :goto_5

    .line 696
    .end local v0    # "after$iv$iv":I
    .end local v14    # "before$iv$iv":I
    :catchall_2
    move-exception v0

    goto :goto_8

    .line 684
    .restart local v0    # "after$iv$iv":I
    .restart local v14    # "before$iv$iv":I
    :cond_3
    if-lt v0, v13, :cond_5

    move-object v2, v12

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 685
    .local v3, "$i$f$getEndGap":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v15

    sub-int/2addr v4, v15

    .line 684
    .end local v2    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getEndGap":I
    const/16 v2, 0x8

    if-ge v4, v2, :cond_4

    goto :goto_4

    .line 689
    :cond_4
    move-object v2, v12

    goto :goto_5

    .line 686
    :cond_5
    :goto_4
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 687
    invoke-static {v7, v13}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 682
    :goto_5
    if-nez v2, :cond_6

    .line 690
    goto :goto_6

    .line 692
    .local v2, "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_6
    move-object v12, v2

    .line 693
    const/4 v11, 0x1

    .line 694
    .end local v0    # "after$iv$iv":I
    .end local v2    # "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v14    # "before$iv$iv":I
    if-gtz v13, :cond_8

    .line 696
    :goto_6
    if-eqz v11, :cond_7

    .line 697
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 699
    :cond_7
    nop

    .line 700
    move v0, v6

    move v6, v10

    .line 701
    .end local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v8    # "initialSize$iv$iv":I
    .end local v9    # "$i$f$takeWhileSize":I
    .end local v10    # "dstOffset$iv":I
    .end local v11    # "release$iv$iv":Z
    .end local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v13    # "size$iv$iv":I
    .local v0, "remaining$iv":I
    .local v6, "dstOffset$iv":I
    :goto_7
    nop

    .line 82
    .end local v0    # "remaining$iv":I
    .end local v5    # "$i$f$readFullyTemplate":I
    .end local v6    # "dstOffset$iv":I
    .end local v18    # "componentSize$iv":I
    .end local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    sub-int v0, p3, v0

    return v0

    .line 694
    .restart local v5    # "$i$f$readFullyTemplate":I
    .local v6, "remaining$iv":I
    .restart local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v8    # "initialSize$iv$iv":I
    .restart local v9    # "$i$f$takeWhileSize":I
    .restart local v10    # "dstOffset$iv":I
    .restart local v11    # "release$iv$iv":Z
    .restart local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v13    # "size$iv$iv":I
    .restart local v18    # "componentSize$iv":I
    .restart local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    :cond_8
    move-object/from16 v2, p0

    move/from16 v3, v18

    move-object/from16 v4, v19

    goto/16 :goto_0

    .line 696
    .end local v18    # "componentSize$iv":I
    .end local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .local v3, "componentSize$iv":I
    .restart local v4    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    :catchall_3
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v19, v4

    .end local v3    # "componentSize$iv":I
    .end local v4    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v18    # "componentSize$iv":I
    .restart local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    :goto_8
    if-eqz v11, :cond_9

    .line 697
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_9
    throw v0
.end method

.method public static final readAvailable(Lio/ktor/utils/io/core/Input;[JII)I
    .locals 22
    .param p0, "$this$readAvailable"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    const/16 v3, 0x8

    .local v3, "componentSize$iv":I
    move-object/from16 v4, p0

    .local v4, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    const/4 v5, 0x0

    .line 702
    .local v5, "$i$f$readFullyTemplate":I
    const/4 v0, 0x0

    .local v0, "remaining$iv":I
    move/from16 v0, p3

    .line 703
    const/4 v6, 0x0

    .local v6, "dstOffset$iv":I
    move/from16 v6, p2

    .line 705
    move-object v7, v4

    .line 706
    .local v7, "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    const/4 v8, 0x1

    .local v8, "initialSize$iv$iv":I
    const/4 v9, 0x0

    .line 707
    .local v9, "$i$f$takeWhileSize":I
    const/4 v10, 0x1

    .line 708
    .local v10, "release$iv$iv":Z
    invoke-static {v7, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v11

    if-nez v11, :cond_0

    move/from16 v18, v3

    move-object/from16 v19, v4

    goto/16 :goto_7

    .line 709
    .local v11, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move v12, v8

    .line 711
    .local v12, "size$iv$iv":I
    move v13, v12

    move-object v12, v11

    move v11, v10

    move v10, v6

    move v6, v0

    .line 713
    .end local v0    # "remaining$iv":I
    .local v6, "remaining$iv":I
    .local v10, "dstOffset$iv":I
    .local v11, "release$iv$iv":Z
    .local v12, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v13, "size$iv$iv":I
    :goto_0
    :try_start_0
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 714
    .local v14, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v15

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    sub-int v15, v15, v16

    .line 713
    .end local v0    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$getReadRemaining":I
    move v14, v15

    .local v14, "before$iv$iv":I
    const/4 v15, 0x0

    .line 715
    .local v15, "after$iv$iv":I
    if-lt v14, v13, :cond_2

    .line 716
    nop

    .line 717
    :try_start_1
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v16, 0x0

    .line 718
    .local v16, "$i$a$-takeWhileSize$default-InputArraysKt$readFullyTemplate$1$iv":I
    move-object/from16 v17, v0

    .local v17, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v18, 0x0

    .line 714
    .local v18, "$i$f$getReadRemaining":I
    invoke-virtual/range {v17 .. v17}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v19

    invoke-virtual/range {v17 .. v17}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v20

    sub-int v19, v19, v20

    .line 718
    .end local v17    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v18    # "$i$f$getReadRemaining":I
    div-int v2, v19, v3

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 719
    .local v2, "count$iv":I
    move-object/from16 v17, v0

    .local v17, "src":Lio/ktor/utils/io/core/Buffer;
    move/from16 v18, v10

    .local v18, "dstOffset":I
    move/from16 v19, v2

    .local v19, "count":I
    move-object/from16 v20, v17

    .end local v17    # "src":Lio/ktor/utils/io/core/Buffer;
    .local v20, "src":Lio/ktor/utils/io/core/Buffer;
    const/16 v17, 0x0

    .line 90
    .local v17, "$i$a$-readFullyTemplate-InputArraysKt$readAvailable$4":I
    move-object/from16 v21, v0

    move/from16 v0, v18

    move/from16 v18, v3

    move/from16 v3, v19

    move-object/from16 v19, v4

    move-object/from16 v4, v20

    .end local v20    # "src":Lio/ktor/utils/io/core/Buffer;
    .local v0, "dstOffset":I
    .local v3, "count":I
    .local v4, "src":Lio/ktor/utils/io/core/Buffer;
    .local v18, "componentSize$iv":I
    .local v19, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .local v21, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    :try_start_2
    invoke-static {v4, v1, v0, v3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[JII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    nop

    .line 719
    .end local v0    # "dstOffset":I
    .end local v3    # "count":I
    .end local v4    # "src":Lio/ktor/utils/io/core/Buffer;
    .end local v17    # "$i$a$-readFullyTemplate-InputArraysKt$readAvailable$4":I
    nop

    .line 720
    sub-int/2addr v6, v2

    .line 721
    add-int/2addr v10, v2

    .line 723
    nop

    .line 724
    if-lez v6, :cond_1

    move/from16 v0, v18

    goto :goto_1

    .line 725
    :cond_1
    const/4 v0, 0x0

    .line 723
    :goto_1
    nop

    .line 717
    .end local v2    # "count$iv":I
    .end local v16    # "$i$a$-takeWhileSize$default-InputArraysKt$readFullyTemplate$1$iv":I
    .end local v21    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    move v13, v0

    .line 726
    :try_start_3
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 714
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 726
    .end local v0    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    move v0, v3

    .line 727
    .end local v15    # "after$iv$iv":I
    .local v0, "after$iv$iv":I
    goto :goto_3

    .line 726
    .end local v0    # "after$iv$iv":I
    .restart local v15    # "after$iv$iv":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v18    # "componentSize$iv":I
    .end local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .local v3, "componentSize$iv":I
    .local v4, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    :catchall_1
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v19, v4

    .end local v3    # "componentSize$iv":I
    .end local v4    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v18    # "componentSize$iv":I
    .restart local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    :goto_2
    move-object v2, v12

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 714
    .local v3, "$i$f$getReadRemaining":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v16

    sub-int v4, v4, v16

    .line 726
    .end local v2    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getReadRemaining":I
    move v2, v4

    .end local v5    # "$i$f$readFullyTemplate":I
    .end local v6    # "remaining$iv":I
    .end local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v8    # "initialSize$iv$iv":I
    .end local v9    # "$i$f$takeWhileSize":I
    .end local v10    # "dstOffset$iv":I
    .end local v11    # "release$iv$iv":Z
    .end local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v13    # "size$iv$iv":I
    .end local v15    # "after$iv$iv":I
    .end local v18    # "componentSize$iv":I
    .end local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local p0    # "$this$readAvailable":Lio/ktor/utils/io/core/Input;
    .end local p1    # "dst":[J
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .local v2, "after$iv$iv":I
    throw v0

    .line 729
    .end local v2    # "after$iv$iv":I
    .local v3, "componentSize$iv":I
    .restart local v4    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v5    # "$i$f$readFullyTemplate":I
    .restart local v6    # "remaining$iv":I
    .restart local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v8    # "initialSize$iv$iv":I
    .restart local v9    # "$i$f$takeWhileSize":I
    .restart local v10    # "dstOffset$iv":I
    .restart local v11    # "release$iv$iv":Z
    .restart local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v13    # "size$iv$iv":I
    .restart local v15    # "after$iv$iv":I
    .restart local p0    # "$this$readAvailable":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "dst":[J
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :cond_2
    move/from16 v18, v3

    move-object/from16 v19, v4

    .end local v3    # "componentSize$iv":I
    .end local v4    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v18    # "componentSize$iv":I
    .restart local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    move v0, v14

    .line 732
    .end local v15    # "after$iv$iv":I
    .restart local v0    # "after$iv$iv":I
    :goto_3
    const/4 v11, 0x0

    .line 734
    nop

    .line 735
    if-nez v0, :cond_3

    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    goto :goto_5

    .line 748
    .end local v0    # "after$iv$iv":I
    .end local v14    # "before$iv$iv":I
    :catchall_2
    move-exception v0

    goto :goto_8

    .line 736
    .restart local v0    # "after$iv$iv":I
    .restart local v14    # "before$iv$iv":I
    :cond_3
    if-lt v0, v13, :cond_5

    move-object v2, v12

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 737
    .local v3, "$i$f$getEndGap":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v15

    sub-int/2addr v4, v15

    .line 736
    .end local v2    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getEndGap":I
    const/16 v2, 0x8

    if-ge v4, v2, :cond_4

    goto :goto_4

    .line 741
    :cond_4
    move-object v2, v12

    goto :goto_5

    .line 738
    :cond_5
    :goto_4
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 739
    invoke-static {v7, v13}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 734
    :goto_5
    if-nez v2, :cond_6

    .line 742
    goto :goto_6

    .line 744
    .local v2, "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_6
    move-object v12, v2

    .line 745
    const/4 v11, 0x1

    .line 746
    .end local v0    # "after$iv$iv":I
    .end local v2    # "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v14    # "before$iv$iv":I
    if-gtz v13, :cond_8

    .line 748
    :goto_6
    if-eqz v11, :cond_7

    .line 749
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 751
    :cond_7
    nop

    .line 752
    move v0, v6

    move v6, v10

    .line 753
    .end local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v8    # "initialSize$iv$iv":I
    .end local v9    # "$i$f$takeWhileSize":I
    .end local v10    # "dstOffset$iv":I
    .end local v11    # "release$iv$iv":Z
    .end local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v13    # "size$iv$iv":I
    .local v0, "remaining$iv":I
    .local v6, "dstOffset$iv":I
    :goto_7
    nop

    .line 89
    .end local v0    # "remaining$iv":I
    .end local v5    # "$i$f$readFullyTemplate":I
    .end local v6    # "dstOffset$iv":I
    .end local v18    # "componentSize$iv":I
    .end local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    sub-int v0, p3, v0

    return v0

    .line 746
    .restart local v5    # "$i$f$readFullyTemplate":I
    .local v6, "remaining$iv":I
    .restart local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v8    # "initialSize$iv$iv":I
    .restart local v9    # "$i$f$takeWhileSize":I
    .restart local v10    # "dstOffset$iv":I
    .restart local v11    # "release$iv$iv":Z
    .restart local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v13    # "size$iv$iv":I
    .restart local v18    # "componentSize$iv":I
    .restart local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    :cond_8
    move-object/from16 v2, p0

    move/from16 v3, v18

    move-object/from16 v4, v19

    goto/16 :goto_0

    .line 748
    .end local v18    # "componentSize$iv":I
    .end local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .local v3, "componentSize$iv":I
    .restart local v4    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    :catchall_3
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v19, v4

    .end local v3    # "componentSize$iv":I
    .end local v4    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v18    # "componentSize$iv":I
    .restart local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    :goto_8
    if-eqz v11, :cond_9

    .line 749
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_9
    throw v0
.end method

.method public static final readAvailable(Lio/ktor/utils/io/core/Input;[SII)I
    .locals 22
    .param p0, "$this$readAvailable"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    const/4 v3, 0x2

    .local v3, "componentSize$iv":I
    move-object/from16 v4, p0

    .local v4, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    const/4 v5, 0x0

    .line 598
    .local v5, "$i$f$readFullyTemplate":I
    const/4 v0, 0x0

    .local v0, "remaining$iv":I
    move/from16 v0, p3

    .line 599
    const/4 v6, 0x0

    .local v6, "dstOffset$iv":I
    move/from16 v6, p2

    .line 601
    move-object v7, v4

    .line 602
    .local v7, "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    const/4 v8, 0x1

    .local v8, "initialSize$iv$iv":I
    const/4 v9, 0x0

    .line 603
    .local v9, "$i$f$takeWhileSize":I
    const/4 v10, 0x1

    .line 604
    .local v10, "release$iv$iv":Z
    invoke-static {v7, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v11

    if-nez v11, :cond_0

    move/from16 v18, v3

    move-object/from16 v19, v4

    goto/16 :goto_7

    .line 605
    .local v11, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move v12, v8

    .line 607
    .local v12, "size$iv$iv":I
    move v13, v12

    move-object v12, v11

    move v11, v10

    move v10, v6

    move v6, v0

    .line 609
    .end local v0    # "remaining$iv":I
    .local v6, "remaining$iv":I
    .local v10, "dstOffset$iv":I
    .local v11, "release$iv$iv":Z
    .local v12, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v13, "size$iv$iv":I
    :goto_0
    :try_start_0
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 610
    .local v14, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v15

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    sub-int v15, v15, v16

    .line 609
    .end local v0    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$getReadRemaining":I
    move v14, v15

    .local v14, "before$iv$iv":I
    const/4 v15, 0x0

    .line 611
    .local v15, "after$iv$iv":I
    if-lt v14, v13, :cond_2

    .line 612
    nop

    .line 613
    :try_start_1
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v16, 0x0

    .line 614
    .local v16, "$i$a$-takeWhileSize$default-InputArraysKt$readFullyTemplate$1$iv":I
    move-object/from16 v17, v0

    .local v17, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v18, 0x0

    .line 610
    .local v18, "$i$f$getReadRemaining":I
    invoke-virtual/range {v17 .. v17}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v19

    invoke-virtual/range {v17 .. v17}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v20

    sub-int v19, v19, v20

    .line 614
    .end local v17    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v18    # "$i$f$getReadRemaining":I
    div-int v2, v19, v3

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 615
    .local v2, "count$iv":I
    move-object/from16 v17, v0

    .local v17, "src":Lio/ktor/utils/io/core/Buffer;
    move/from16 v18, v10

    .local v18, "dstOffset":I
    move/from16 v19, v2

    .local v19, "count":I
    move-object/from16 v20, v17

    .end local v17    # "src":Lio/ktor/utils/io/core/Buffer;
    .local v20, "src":Lio/ktor/utils/io/core/Buffer;
    const/16 v17, 0x0

    .line 76
    .local v17, "$i$a$-readFullyTemplate-InputArraysKt$readAvailable$2":I
    move-object/from16 v21, v0

    move/from16 v0, v18

    move/from16 v18, v3

    move/from16 v3, v19

    move-object/from16 v19, v4

    move-object/from16 v4, v20

    .end local v20    # "src":Lio/ktor/utils/io/core/Buffer;
    .local v0, "dstOffset":I
    .local v3, "count":I
    .local v4, "src":Lio/ktor/utils/io/core/Buffer;
    .local v18, "componentSize$iv":I
    .local v19, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .local v21, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    :try_start_2
    invoke-static {v4, v1, v0, v3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[SII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    nop

    .line 615
    .end local v0    # "dstOffset":I
    .end local v3    # "count":I
    .end local v4    # "src":Lio/ktor/utils/io/core/Buffer;
    .end local v17    # "$i$a$-readFullyTemplate-InputArraysKt$readAvailable$2":I
    nop

    .line 616
    sub-int/2addr v6, v2

    .line 617
    add-int/2addr v10, v2

    .line 619
    nop

    .line 620
    if-lez v6, :cond_1

    move/from16 v0, v18

    goto :goto_1

    .line 621
    :cond_1
    const/4 v0, 0x0

    .line 619
    :goto_1
    nop

    .line 613
    .end local v2    # "count$iv":I
    .end local v16    # "$i$a$-takeWhileSize$default-InputArraysKt$readFullyTemplate$1$iv":I
    .end local v21    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    move v13, v0

    .line 622
    :try_start_3
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 610
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 622
    .end local v0    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    move v0, v3

    .line 623
    .end local v15    # "after$iv$iv":I
    .local v0, "after$iv$iv":I
    goto :goto_3

    .line 622
    .end local v0    # "after$iv$iv":I
    .restart local v15    # "after$iv$iv":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v18    # "componentSize$iv":I
    .end local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .local v3, "componentSize$iv":I
    .local v4, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    :catchall_1
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v19, v4

    .end local v3    # "componentSize$iv":I
    .end local v4    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v18    # "componentSize$iv":I
    .restart local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    :goto_2
    move-object v2, v12

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 610
    .local v3, "$i$f$getReadRemaining":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v16

    sub-int v4, v4, v16

    .line 622
    .end local v2    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getReadRemaining":I
    move v2, v4

    .end local v5    # "$i$f$readFullyTemplate":I
    .end local v6    # "remaining$iv":I
    .end local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v8    # "initialSize$iv$iv":I
    .end local v9    # "$i$f$takeWhileSize":I
    .end local v10    # "dstOffset$iv":I
    .end local v11    # "release$iv$iv":Z
    .end local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v13    # "size$iv$iv":I
    .end local v15    # "after$iv$iv":I
    .end local v18    # "componentSize$iv":I
    .end local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local p0    # "$this$readAvailable":Lio/ktor/utils/io/core/Input;
    .end local p1    # "dst":[S
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .local v2, "after$iv$iv":I
    throw v0

    .line 625
    .end local v2    # "after$iv$iv":I
    .local v3, "componentSize$iv":I
    .restart local v4    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v5    # "$i$f$readFullyTemplate":I
    .restart local v6    # "remaining$iv":I
    .restart local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v8    # "initialSize$iv$iv":I
    .restart local v9    # "$i$f$takeWhileSize":I
    .restart local v10    # "dstOffset$iv":I
    .restart local v11    # "release$iv$iv":Z
    .restart local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v13    # "size$iv$iv":I
    .restart local v15    # "after$iv$iv":I
    .restart local p0    # "$this$readAvailable":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "dst":[S
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :cond_2
    move/from16 v18, v3

    move-object/from16 v19, v4

    .end local v3    # "componentSize$iv":I
    .end local v4    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v18    # "componentSize$iv":I
    .restart local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    move v0, v14

    .line 628
    .end local v15    # "after$iv$iv":I
    .restart local v0    # "after$iv$iv":I
    :goto_3
    const/4 v11, 0x0

    .line 630
    nop

    .line 631
    if-nez v0, :cond_3

    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    goto :goto_5

    .line 644
    .end local v0    # "after$iv$iv":I
    .end local v14    # "before$iv$iv":I
    :catchall_2
    move-exception v0

    goto :goto_8

    .line 632
    .restart local v0    # "after$iv$iv":I
    .restart local v14    # "before$iv$iv":I
    :cond_3
    if-lt v0, v13, :cond_5

    move-object v2, v12

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 633
    .local v3, "$i$f$getEndGap":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v15

    sub-int/2addr v4, v15

    .line 632
    .end local v2    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getEndGap":I
    const/16 v2, 0x8

    if-ge v4, v2, :cond_4

    goto :goto_4

    .line 637
    :cond_4
    move-object v2, v12

    goto :goto_5

    .line 634
    :cond_5
    :goto_4
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 635
    invoke-static {v7, v13}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 630
    :goto_5
    if-nez v2, :cond_6

    .line 638
    goto :goto_6

    .line 640
    .local v2, "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_6
    move-object v12, v2

    .line 641
    const/4 v11, 0x1

    .line 642
    .end local v0    # "after$iv$iv":I
    .end local v2    # "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v14    # "before$iv$iv":I
    if-gtz v13, :cond_8

    .line 644
    :goto_6
    if-eqz v11, :cond_7

    .line 645
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 647
    :cond_7
    nop

    .line 648
    move v0, v6

    move v6, v10

    .line 649
    .end local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v8    # "initialSize$iv$iv":I
    .end local v9    # "$i$f$takeWhileSize":I
    .end local v10    # "dstOffset$iv":I
    .end local v11    # "release$iv$iv":Z
    .end local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v13    # "size$iv$iv":I
    .local v0, "remaining$iv":I
    .local v6, "dstOffset$iv":I
    :goto_7
    nop

    .line 75
    .end local v0    # "remaining$iv":I
    .end local v5    # "$i$f$readFullyTemplate":I
    .end local v6    # "dstOffset$iv":I
    .end local v18    # "componentSize$iv":I
    .end local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    sub-int v0, p3, v0

    return v0

    .line 642
    .restart local v5    # "$i$f$readFullyTemplate":I
    .local v6, "remaining$iv":I
    .restart local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v8    # "initialSize$iv$iv":I
    .restart local v9    # "$i$f$takeWhileSize":I
    .restart local v10    # "dstOffset$iv":I
    .restart local v11    # "release$iv$iv":Z
    .restart local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v13    # "size$iv$iv":I
    .restart local v18    # "componentSize$iv":I
    .restart local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    :cond_8
    move-object/from16 v2, p0

    move/from16 v3, v18

    move-object/from16 v4, v19

    goto/16 :goto_0

    .line 644
    .end local v18    # "componentSize$iv":I
    .end local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .local v3, "componentSize$iv":I
    .restart local v4    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    :catchall_3
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v19, v4

    .end local v3    # "componentSize$iv":I
    .end local v4    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v18    # "componentSize$iv":I
    .restart local v19    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    :goto_8
    if-eqz v11, :cond_9

    .line 645
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_9
    throw v0
.end method

.method public static synthetic readAvailable$default(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/Buffer;IILjava/lang/Object;)I
    .locals 1

    .line 109
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    move-object p2, p1

    .local p2, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 p3, 0x0

    .line 889
    .local p3, "$i$f$getWriteRemaining":I
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result p4

    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v0

    sub-int p2, p4, v0

    .line 109
    .end local p2    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local p3    # "$i$f$getWriteRemaining":I
    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/Buffer;I)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailable$default(Lio/ktor/utils/io/core/Input;[BIIILjava/lang/Object;)I
    .locals 0

    .line 67
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable(Lio/ktor/utils/io/core/Input;[BII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailable$default(Lio/ktor/utils/io/core/Input;[DIIILjava/lang/Object;)I
    .locals 0

    .line 102
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable(Lio/ktor/utils/io/core/Input;[DII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailable$default(Lio/ktor/utils/io/core/Input;[FIIILjava/lang/Object;)I
    .locals 0

    .line 95
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable(Lio/ktor/utils/io/core/Input;[FII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailable$default(Lio/ktor/utils/io/core/Input;[IIIILjava/lang/Object;)I
    .locals 0

    .line 81
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable(Lio/ktor/utils/io/core/Input;[III)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailable$default(Lio/ktor/utils/io/core/Input;[JIIILjava/lang/Object;)I
    .locals 0

    .line 88
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable(Lio/ktor/utils/io/core/Input;[JII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailable$default(Lio/ktor/utils/io/core/Input;[SIIILjava/lang/Object;)I
    .locals 0

    .line 74
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable(Lio/ktor/utils/io/core/Input;[SII)I

    move-result p0

    return p0
.end method

.method public static final readAvailable-UAd2zVI(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;II)I
    .locals 7
    .param p0, "$this$readAvailable_u2dUAd2zVI"    # Lio/ktor/utils/io/core/Input;
    .param p1, "destination"    # Ljava/nio/ByteBuffer;
    .param p2, "destinationOffset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$readAvailable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    int-to-long v3, p2

    int-to-long v5, p3

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable-UAd2zVI(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static final readAvailable-UAd2zVI(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;JJ)J
    .locals 28
    .param p0, "$this$readAvailable_u2dUAd2zVI"    # Lio/ktor/utils/io/core/Input;
    .param p1, "destination"    # Ljava/nio/ByteBuffer;
    .param p2, "destinationOffset"    # J
    .param p4, "length"    # J

    const-string v0, "$this$readAvailable"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    move-object/from16 v10, p1

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    move-object/from16 v11, p0

    .local v11, "$this$readFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Input;
    const/4 v12, 0x0

    .line 890
    .local v12, "$i$f$readFullyBytesTemplate":I
    const-wide/16 v2, 0x0

    .local v2, "remaining$iv":J
    move-wide/from16 v2, p4

    .line 891
    const-wide/16 v4, 0x0

    .local v4, "dstOffset$iv":J
    move-wide/from16 v4, p2

    .line 893
    move-object v13, v11

    .local v13, "$this$takeWhile$iv$iv":Lio/ktor/utils/io/core/Input;
    const/4 v14, 0x0

    .line 894
    .local v14, "$i$f$takeWhile":I
    const/4 v0, 0x1

    .line 895
    .local v0, "release$iv$iv":Z
    const/4 v15, 0x1

    invoke-static {v13, v15}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v6

    const-wide/16 v16, 0x0

    if-nez v6, :cond_0

    goto/16 :goto_3

    .line 897
    .local v6, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move/from16 v18, v0

    move-wide/from16 v19, v4

    move-object v4, v6

    move-wide v6, v2

    .line 899
    .end local v0    # "release$iv$iv":Z
    .end local v2    # "remaining$iv":J
    .local v4, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v6, "remaining$iv":J
    .local v18, "release$iv$iv":Z
    .local v19, "dstOffset$iv":J
    :goto_0
    :try_start_0
    move-object v0, v4

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v21, 0x0

    .line 900
    .local v21, "$i$a$-takeWhile-InputArraysKt$readFullyBytesTemplate$2$iv":I
    move-object v2, v0

    .local v2, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 901
    .local v3, "$i$f$getReadRemaining":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v8

    sub-int/2addr v5, v8

    .line 900
    .end local v2    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getReadRemaining":I
    int-to-long v2, v5

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v5, v2

    .line 902
    .local v5, "count$iv":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    int-to-long v8, v3

    .local v8, "srcOffset":J
    move-wide/from16 v22, v8

    .end local v8    # "srcOffset":J
    .local v2, "src":Ljava/nio/ByteBuffer;
    .local v22, "srcOffset":J
    move-wide/from16 v8, v19

    .local v8, "dstOffset":J
    move v3, v5

    .local v3, "count":I
    const/16 v24, 0x0

    .line 123
    .local v24, "$i$a$-readFullyBytesTemplate-InputArraysKt$readAvailable$remaining$1":I
    move-wide/from16 v25, v6

    .end local v6    # "remaining$iv":J
    .local v25, "remaining$iv":J
    int-to-long v6, v3

    move/from16 v27, v3

    .end local v3    # "count":I
    .local v27, "count":I
    move-object/from16 v3, p1

    move-object v15, v4

    move v1, v5

    .end local v4    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v5    # "count$iv":I
    .local v1, "count$iv":I
    .local v15, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move-wide/from16 v4, v22

    :try_start_1
    invoke-static/range {v2 .. v9}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JJJ)V

    .line 124
    nop

    .line 902
    .end local v2    # "src":Ljava/nio/ByteBuffer;
    .end local v8    # "dstOffset":J
    .end local v22    # "srcOffset":J
    .end local v24    # "$i$a$-readFullyBytesTemplate-InputArraysKt$readAvailable$remaining$1":I
    .end local v27    # "count":I
    nop

    .line 903
    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 904
    int-to-long v2, v1

    sub-long v6, v25, v2

    .line 905
    .end local v25    # "remaining$iv":J
    .restart local v6    # "remaining$iv":J
    int-to-long v2, v1

    add-long v19, v19, v2

    .line 907
    cmp-long v2, v6, v16

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 899
    .end local v0    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "count$iv":I
    .end local v21    # "$i$a$-takeWhile-InputArraysKt$readFullyBytesTemplate$2$iv":I
    :goto_1
    if-nez v2, :cond_2

    .line 908
    goto :goto_2

    .line 910
    :cond_2
    const/16 v18, 0x0

    .line 911
    :try_start_2
    invoke-static {v13, v15}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_5

    .line 916
    :goto_2
    if-eqz v18, :cond_3

    .line 917
    invoke-static {v13, v15}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 919
    :cond_3
    nop

    .line 920
    move-wide v2, v6

    move-wide/from16 v4, v19

    .line 921
    .end local v6    # "remaining$iv":J
    .end local v13    # "$this$takeWhile$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v14    # "$i$f$takeWhile":I
    .end local v15    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v18    # "release$iv$iv":Z
    .end local v19    # "dstOffset$iv":J
    .local v2, "remaining$iv":J
    .local v4, "dstOffset$iv":J
    :goto_3
    nop

    .line 122
    .end local v2    # "remaining$iv":J
    .end local v4    # "dstOffset$iv":J
    .end local v11    # "$this$readFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v12    # "$i$f$readFullyBytesTemplate":I
    move-wide v0, v2

    .line 125
    .local v0, "remaining":J
    sub-long v2, p4, v0

    .line 126
    .local v2, "result":J
    nop

    .line 127
    cmp-long v4, v2, v16

    if-nez v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/core/Input;->getEndOfInput()Z

    move-result v4

    if-eqz v4, :cond_4

    const-wide/16 v4, -0x1

    goto :goto_4

    .line 128
    :cond_4
    move-wide v4, v2

    .line 126
    :goto_4
    return-wide v4

    .line 912
    .end local v2    # "result":J
    .local v0, "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v6    # "remaining$iv":J
    .restart local v11    # "$this$readFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v12    # "$i$f$readFullyBytesTemplate":I
    .restart local v13    # "$this$takeWhile$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v14    # "$i$f$takeWhile":I
    .restart local v15    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v18    # "release$iv$iv":Z
    .restart local v19    # "dstOffset$iv":J
    :cond_5
    move-object v4, v0

    .line 913
    .end local v15    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v4, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/16 v18, 0x1

    .line 914
    .end local v0    # "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v15, 0x1

    move-object/from16 v1, p0

    goto :goto_0

    .line 916
    .end local v4    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v15    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_0
    move-exception v0

    goto :goto_5

    .end local v6    # "remaining$iv":J
    .restart local v25    # "remaining$iv":J
    :catchall_1
    move-exception v0

    move-wide/from16 v6, v25

    goto :goto_5

    .end local v15    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v25    # "remaining$iv":J
    .restart local v4    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v6    # "remaining$iv":J
    :catchall_2
    move-exception v0

    move-object v15, v4

    move-wide/from16 v25, v6

    .end local v4    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v15    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_5
    if-eqz v18, :cond_6

    .line 917
    invoke-static {v13, v15}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_6
    throw v0
.end method

.method public static final readFully(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/Buffer;I)V
    .locals 18
    .param p0, "$this$readFully"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # Lio/ktor/utils/io/core/Buffer;
    .param p2, "length"    # I

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    const/4 v3, 0x0

    .local v3, "initialDstOffset$iv":I
    move-object/from16 v4, p0

    .local v4, "$this$readFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Input;
    const/4 v5, 0x0

    .line 531
    .local v5, "$i$f$readFullyBytesTemplate":I
    const/4 v0, 0x0

    .local v0, "remaining$iv":I
    move/from16 v0, p2

    .line 532
    const/4 v6, 0x0

    .local v6, "dstOffset$iv":I
    move v6, v3

    .line 534
    move-object v7, v4

    .local v7, "$this$takeWhile$iv$iv":Lio/ktor/utils/io/core/Input;
    const/4 v8, 0x0

    .line 535
    .local v8, "$i$f$takeWhile":I
    const/4 v9, 0x1

    .line 536
    .local v9, "release$iv$iv":Z
    const/4 v10, 0x1

    invoke-static {v7, v10}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v11

    if-nez v11, :cond_0

    goto :goto_3

    .line 538
    .local v11, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move-object v12, v11

    move v11, v9

    move v9, v6

    move v6, v0

    .line 540
    .end local v0    # "remaining$iv":I
    .local v6, "remaining$iv":I
    .local v9, "dstOffset$iv":I
    .local v11, "release$iv$iv":Z
    .local v12, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    :try_start_0
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v13, 0x0

    .line 541
    .local v13, "$i$a$-takeWhile-InputArraysKt$readFullyBytesTemplate$1$iv":I
    move-object v14, v0

    .local v14, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v15, 0x0

    .line 542
    .local v15, "$i$f$getReadRemaining":I
    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v16

    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v17

    sub-int v14, v16, v17

    .line 541
    .end local v14    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "$i$f$getReadRemaining":I
    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 543
    .local v14, "count$iv":I
    move-object v15, v0

    .local v15, "src":Lio/ktor/utils/io/core/Buffer;
    move/from16 v16, v14

    .local v16, "count":I
    const/16 v17, 0x0

    .line 50
    .local v17, "$i$a$-readFullyBytesTemplate-InputArraysKt$readFully$7":I
    move/from16 v10, v16

    .end local v16    # "count":I
    .local v10, "count":I
    invoke-static {v15, v1, v10}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;I)I

    .line 51
    nop

    .line 543
    .end local v10    # "count":I
    .end local v15    # "src":Lio/ktor/utils/io/core/Buffer;
    .end local v17    # "$i$a$-readFullyBytesTemplate-InputArraysKt$readFully$7":I
    nop

    .line 544
    sub-int/2addr v6, v14

    .line 545
    add-int/2addr v9, v14

    .line 547
    if-lez v6, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 540
    .end local v0    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$a$-takeWhile-InputArraysKt$readFullyBytesTemplate$1$iv":I
    .end local v14    # "count$iv":I
    :goto_1
    if-nez v10, :cond_2

    .line 548
    goto :goto_2

    .line 550
    :cond_2
    const/4 v11, 0x0

    .line 551
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    .line 556
    :goto_2
    if-eqz v11, :cond_3

    .line 557
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 559
    :cond_3
    nop

    .line 560
    move v0, v6

    move v6, v9

    .line 561
    .end local v7    # "$this$takeWhile$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v8    # "$i$f$takeWhile":I
    .end local v9    # "dstOffset$iv":I
    .end local v11    # "release$iv$iv":Z
    .end local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v0, "remaining$iv":I
    .local v6, "dstOffset$iv":I
    :goto_3
    nop

    .line 51
    .end local v0    # "remaining$iv":I
    .end local v3    # "initialDstOffset$iv":I
    .end local v4    # "$this$readFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v5    # "$i$f$readFullyBytesTemplate":I
    .end local v6    # "dstOffset$iv":I
    nop

    .local v0, "$this$requireNoRemaining$iv":I
    const/4 v3, 0x0

    .line 562
    .local v3, "$i$f$requireNoRemaining":I
    if-gtz v0, :cond_4

    .line 565
    nop

    .line 52
    .end local v0    # "$this$requireNoRemaining$iv":I
    .end local v3    # "$i$f$requireNoRemaining":I
    return-void

    .line 563
    .restart local v0    # "$this$requireNoRemaining$iv":I
    .restart local v3    # "$i$f$requireNoRemaining":I
    :cond_4
    invoke-static {v0}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4

    .line 552
    .local v0, "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v3, "initialDstOffset$iv":I
    .restart local v4    # "$this$readFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v5    # "$i$f$readFullyBytesTemplate":I
    .local v6, "remaining$iv":I
    .restart local v7    # "$this$takeWhile$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v8    # "$i$f$takeWhile":I
    .restart local v9    # "dstOffset$iv":I
    .restart local v11    # "release$iv$iv":Z
    .restart local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_5
    move-object v12, v0

    .line 553
    const/4 v11, 0x1

    .line 554
    .end local v0    # "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v10, 0x1

    goto :goto_0

    .line 556
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_6

    .line 557
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_6
    throw v0
.end method

.method public static final readFully(Lio/ktor/utils/io/core/Input;[BII)V
    .locals 18
    .param p0, "$this$readFully"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    move-object/from16 v3, p0

    .local v3, "$this$readFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Input;
    const/4 v4, 0x0

    .line 216
    .local v4, "$i$f$readFullyBytesTemplate":I
    const/4 v0, 0x0

    .local v0, "remaining$iv":I
    move/from16 v0, p3

    .line 217
    const/4 v5, 0x0

    .local v5, "dstOffset$iv":I
    move/from16 v5, p2

    .line 219
    move-object v6, v3

    .local v6, "$this$takeWhile$iv$iv":Lio/ktor/utils/io/core/Input;
    const/4 v7, 0x0

    .line 220
    .local v7, "$i$f$takeWhile":I
    const/4 v8, 0x1

    .line 221
    .local v8, "release$iv$iv":Z
    const/4 v9, 0x1

    invoke-static {v6, v9}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v10

    if-nez v10, :cond_0

    goto :goto_3

    .line 223
    .local v10, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move-object v11, v10

    move v10, v8

    move v8, v5

    move v5, v0

    .line 225
    .end local v0    # "remaining$iv":I
    .local v5, "remaining$iv":I
    .local v8, "dstOffset$iv":I
    .local v10, "release$iv$iv":Z
    .local v11, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    :try_start_0
    move-object v0, v11

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v12, 0x0

    .line 226
    .local v12, "$i$a$-takeWhile-InputArraysKt$readFullyBytesTemplate$1$iv":I
    move-object v13, v0

    .local v13, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 227
    .local v14, "$i$f$getReadRemaining":I
    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v15

    invoke-virtual {v13}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v16

    sub-int v15, v15, v16

    .line 226
    .end local v13    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$getReadRemaining":I
    invoke-static {v5, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 228
    .local v13, "count$iv":I
    move-object v14, v0

    .local v14, "src":Lio/ktor/utils/io/core/Buffer;
    move v15, v8

    .local v15, "dstOffset":I
    move/from16 v16, v13

    .local v16, "count":I
    const/16 v17, 0x0

    .line 8
    .local v17, "$i$a$-readFullyBytesTemplate-InputArraysKt$readFully$1":I
    move/from16 v9, v16

    .end local v16    # "count":I
    .local v9, "count":I
    invoke-static {v14, v1, v15, v9}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[BII)V

    .line 9
    nop

    .line 228
    .end local v9    # "count":I
    .end local v14    # "src":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "dstOffset":I
    .end local v17    # "$i$a$-readFullyBytesTemplate-InputArraysKt$readFully$1":I
    nop

    .line 229
    sub-int/2addr v5, v13

    .line 230
    add-int/2addr v8, v13

    .line 232
    if-lez v5, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 225
    .end local v0    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "$i$a$-takeWhile-InputArraysKt$readFullyBytesTemplate$1$iv":I
    .end local v13    # "count$iv":I
    :goto_1
    if-nez v9, :cond_2

    .line 233
    goto :goto_2

    .line 235
    :cond_2
    const/4 v10, 0x0

    .line 236
    invoke-static {v6, v11}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    .line 241
    :goto_2
    if-eqz v10, :cond_3

    .line 242
    invoke-static {v6, v11}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 244
    :cond_3
    nop

    .line 245
    move v0, v5

    move v5, v8

    .line 246
    .end local v6    # "$this$takeWhile$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v7    # "$i$f$takeWhile":I
    .end local v8    # "dstOffset$iv":I
    .end local v10    # "release$iv$iv":Z
    .end local v11    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v0, "remaining$iv":I
    .local v5, "dstOffset$iv":I
    :goto_3
    nop

    .line 9
    .end local v0    # "remaining$iv":I
    .end local v3    # "$this$readFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "$i$f$readFullyBytesTemplate":I
    .end local v5    # "dstOffset$iv":I
    nop

    .local v0, "$this$requireNoRemaining$iv":I
    const/4 v3, 0x0

    .line 247
    .local v3, "$i$f$requireNoRemaining":I
    if-gtz v0, :cond_4

    .line 250
    nop

    .line 10
    .end local v0    # "$this$requireNoRemaining$iv":I
    .end local v3    # "$i$f$requireNoRemaining":I
    return-void

    .line 248
    .restart local v0    # "$this$requireNoRemaining$iv":I
    .restart local v3    # "$i$f$requireNoRemaining":I
    :cond_4
    invoke-static {v0}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4

    .line 237
    .local v0, "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v3, "$this$readFullyBytesTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v4    # "$i$f$readFullyBytesTemplate":I
    .local v5, "remaining$iv":I
    .restart local v6    # "$this$takeWhile$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v7    # "$i$f$takeWhile":I
    .restart local v8    # "dstOffset$iv":I
    .restart local v10    # "release$iv$iv":Z
    .restart local v11    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_5
    move-object v11, v0

    .line 238
    const/4 v10, 0x1

    .line 239
    .end local v0    # "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v9, 0x1

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_6

    .line 242
    invoke-static {v6, v11}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_6
    throw v0
.end method

.method public static final readFully(Lio/ktor/utils/io/core/Input;[DII)V
    .locals 22
    .param p0, "$this$readFully"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    const/16 v0, 0x8

    .local v0, "componentSize$iv":I
    move-object/from16 v3, p0

    .local v3, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    move v4, v0

    .end local v0    # "componentSize$iv":I
    .local v4, "componentSize$iv":I
    const/4 v5, 0x0

    .line 475
    .local v5, "$i$f$readFullyTemplate":I
    const/4 v0, 0x0

    .local v0, "remaining$iv":I
    move/from16 v0, p3

    .line 476
    const/4 v6, 0x0

    .local v6, "dstOffset$iv":I
    move/from16 v6, p2

    .line 478
    move-object v7, v3

    .line 479
    .local v7, "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    const/4 v8, 0x1

    .local v8, "initialSize$iv$iv":I
    const/4 v9, 0x0

    .line 480
    .local v9, "$i$f$takeWhileSize":I
    const/4 v10, 0x1

    .line 481
    .local v10, "release$iv$iv":Z
    invoke-static {v7, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v11

    if-nez v11, :cond_0

    move-object/from16 v18, v3

    move/from16 v19, v4

    goto/16 :goto_7

    .line 482
    .local v11, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move v12, v8

    .line 484
    .local v12, "size$iv$iv":I
    move v13, v12

    move-object v12, v11

    move v11, v10

    move v10, v6

    move v6, v0

    .line 486
    .end local v0    # "remaining$iv":I
    .local v6, "remaining$iv":I
    .local v10, "dstOffset$iv":I
    .local v11, "release$iv$iv":Z
    .local v12, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v13, "size$iv$iv":I
    :goto_0
    :try_start_0
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 487
    .local v14, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v15

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    sub-int v15, v15, v16

    .line 486
    .end local v0    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$getReadRemaining":I
    move v14, v15

    .local v14, "before$iv$iv":I
    const/4 v15, 0x0

    .line 488
    .local v15, "after$iv$iv":I
    if-lt v14, v13, :cond_2

    .line 489
    nop

    .line 490
    :try_start_1
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v16, 0x0

    .line 491
    .local v16, "$i$a$-takeWhileSize$default-InputArraysKt$readFullyTemplate$1$iv":I
    move-object/from16 v17, v0

    .local v17, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v18, 0x0

    .line 487
    .local v18, "$i$f$getReadRemaining":I
    invoke-virtual/range {v17 .. v17}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v19

    invoke-virtual/range {v17 .. v17}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v20

    sub-int v19, v19, v20

    .line 491
    .end local v17    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v18    # "$i$f$getReadRemaining":I
    div-int v2, v19, v4

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 492
    .local v2, "count$iv":I
    move-object/from16 v17, v0

    .local v17, "src":Lio/ktor/utils/io/core/Buffer;
    move/from16 v18, v10

    .local v18, "dstOffset":I
    move/from16 v19, v2

    .local v19, "count":I
    move-object/from16 v20, v17

    .end local v17    # "src":Lio/ktor/utils/io/core/Buffer;
    .local v20, "src":Lio/ktor/utils/io/core/Buffer;
    const/16 v17, 0x0

    .line 43
    .local v17, "$i$a$-readFullyTemplate-InputArraysKt$readFully$6":I
    move-object/from16 v21, v0

    move/from16 v0, v18

    move-object/from16 v18, v3

    move/from16 v3, v19

    move/from16 v19, v4

    move-object/from16 v4, v20

    .end local v20    # "src":Lio/ktor/utils/io/core/Buffer;
    .local v0, "dstOffset":I
    .local v3, "count":I
    .local v4, "src":Lio/ktor/utils/io/core/Buffer;
    .local v18, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .local v19, "componentSize$iv":I
    .local v21, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    :try_start_2
    invoke-static {v4, v1, v0, v3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[DII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    nop

    .line 492
    .end local v0    # "dstOffset":I
    .end local v3    # "count":I
    .end local v4    # "src":Lio/ktor/utils/io/core/Buffer;
    .end local v17    # "$i$a$-readFullyTemplate-InputArraysKt$readFully$6":I
    nop

    .line 493
    sub-int/2addr v6, v2

    .line 494
    add-int/2addr v10, v2

    .line 496
    nop

    .line 497
    if-lez v6, :cond_1

    move/from16 v0, v19

    goto :goto_1

    .line 498
    :cond_1
    const/4 v0, 0x0

    .line 496
    :goto_1
    nop

    .line 490
    .end local v2    # "count$iv":I
    .end local v16    # "$i$a$-takeWhileSize$default-InputArraysKt$readFullyTemplate$1$iv":I
    .end local v21    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    move v13, v0

    .line 499
    :try_start_3
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 487
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 499
    .end local v0    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    move v0, v3

    .line 500
    .end local v15    # "after$iv$iv":I
    .local v0, "after$iv$iv":I
    goto :goto_3

    .line 499
    .end local v0    # "after$iv$iv":I
    .restart local v15    # "after$iv$iv":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v19    # "componentSize$iv":I
    .local v3, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .local v4, "componentSize$iv":I
    :catchall_1
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v19, v4

    .end local v3    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "componentSize$iv":I
    .restart local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v19    # "componentSize$iv":I
    :goto_2
    move-object v2, v12

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 487
    .local v3, "$i$f$getReadRemaining":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v16

    sub-int v4, v4, v16

    .line 499
    .end local v2    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getReadRemaining":I
    move v2, v4

    .end local v5    # "$i$f$readFullyTemplate":I
    .end local v6    # "remaining$iv":I
    .end local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v8    # "initialSize$iv$iv":I
    .end local v9    # "$i$f$takeWhileSize":I
    .end local v10    # "dstOffset$iv":I
    .end local v11    # "release$iv$iv":Z
    .end local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v13    # "size$iv$iv":I
    .end local v15    # "after$iv$iv":I
    .end local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v19    # "componentSize$iv":I
    .end local p0    # "$this$readFully":Lio/ktor/utils/io/core/Input;
    .end local p1    # "dst":[D
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .local v2, "after$iv$iv":I
    throw v0

    .line 502
    .end local v2    # "after$iv$iv":I
    .local v3, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v4    # "componentSize$iv":I
    .restart local v5    # "$i$f$readFullyTemplate":I
    .restart local v6    # "remaining$iv":I
    .restart local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v8    # "initialSize$iv$iv":I
    .restart local v9    # "$i$f$takeWhileSize":I
    .restart local v10    # "dstOffset$iv":I
    .restart local v11    # "release$iv$iv":Z
    .restart local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v13    # "size$iv$iv":I
    .restart local v15    # "after$iv$iv":I
    .restart local p0    # "$this$readFully":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "dst":[D
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :cond_2
    move-object/from16 v18, v3

    move/from16 v19, v4

    .end local v3    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "componentSize$iv":I
    .restart local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v19    # "componentSize$iv":I
    move v0, v14

    .line 505
    .end local v15    # "after$iv$iv":I
    .restart local v0    # "after$iv$iv":I
    :goto_3
    const/4 v11, 0x0

    .line 507
    nop

    .line 508
    if-nez v0, :cond_3

    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    goto :goto_5

    .line 521
    .end local v0    # "after$iv$iv":I
    .end local v14    # "before$iv$iv":I
    :catchall_2
    move-exception v0

    goto :goto_8

    .line 509
    .restart local v0    # "after$iv$iv":I
    .restart local v14    # "before$iv$iv":I
    :cond_3
    if-lt v0, v13, :cond_5

    move-object v2, v12

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 510
    .local v3, "$i$f$getEndGap":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v15

    sub-int/2addr v4, v15

    .line 509
    .end local v2    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getEndGap":I
    const/16 v2, 0x8

    if-ge v4, v2, :cond_4

    goto :goto_4

    .line 514
    :cond_4
    move-object v2, v12

    goto :goto_5

    .line 511
    :cond_5
    :goto_4
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 512
    invoke-static {v7, v13}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 507
    :goto_5
    if-nez v2, :cond_6

    .line 515
    goto :goto_6

    .line 517
    .local v2, "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_6
    move-object v12, v2

    .line 518
    const/4 v11, 0x1

    .line 519
    .end local v0    # "after$iv$iv":I
    .end local v2    # "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v14    # "before$iv$iv":I
    if-gtz v13, :cond_9

    .line 521
    :goto_6
    if-eqz v11, :cond_7

    .line 522
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 524
    :cond_7
    nop

    .line 525
    move v0, v6

    move v6, v10

    .line 526
    .end local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v8    # "initialSize$iv$iv":I
    .end local v9    # "$i$f$takeWhileSize":I
    .end local v10    # "dstOffset$iv":I
    .end local v11    # "release$iv$iv":Z
    .end local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v13    # "size$iv$iv":I
    .local v0, "remaining$iv":I
    .local v6, "dstOffset$iv":I
    :goto_7
    nop

    .line 44
    .end local v0    # "remaining$iv":I
    .end local v5    # "$i$f$readFullyTemplate":I
    .end local v6    # "dstOffset$iv":I
    .end local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v19    # "componentSize$iv":I
    nop

    .local v0, "$this$requireNoRemaining$iv":I
    const/4 v2, 0x0

    .line 527
    .local v2, "$i$f$requireNoRemaining":I
    if-gtz v0, :cond_8

    .line 530
    nop

    .line 45
    .end local v0    # "$this$requireNoRemaining$iv":I
    .end local v2    # "$i$f$requireNoRemaining":I
    return-void

    .line 528
    .restart local v0    # "$this$requireNoRemaining$iv":I
    .restart local v2    # "$i$f$requireNoRemaining":I
    :cond_8
    invoke-static {v0}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3

    .line 519
    .end local v0    # "$this$requireNoRemaining$iv":I
    .end local v2    # "$i$f$requireNoRemaining":I
    .restart local v5    # "$i$f$readFullyTemplate":I
    .local v6, "remaining$iv":I
    .restart local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v8    # "initialSize$iv$iv":I
    .restart local v9    # "$i$f$takeWhileSize":I
    .restart local v10    # "dstOffset$iv":I
    .restart local v11    # "release$iv$iv":Z
    .restart local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v13    # "size$iv$iv":I
    .restart local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v19    # "componentSize$iv":I
    :cond_9
    move-object/from16 v2, p0

    move-object/from16 v3, v18

    move/from16 v4, v19

    goto/16 :goto_0

    .line 521
    .end local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v19    # "componentSize$iv":I
    .local v3, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v4    # "componentSize$iv":I
    :catchall_3
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v19, v4

    .end local v3    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "componentSize$iv":I
    .restart local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v19    # "componentSize$iv":I
    :goto_8
    if-eqz v11, :cond_a

    .line 522
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_a
    throw v0
.end method

.method public static final readFully(Lio/ktor/utils/io/core/Input;[FII)V
    .locals 22
    .param p0, "$this$readFully"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x4

    .local v0, "componentSize$iv":I
    move-object/from16 v3, p0

    .local v3, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    move v4, v0

    .end local v0    # "componentSize$iv":I
    .local v4, "componentSize$iv":I
    const/4 v5, 0x0

    .line 419
    .local v5, "$i$f$readFullyTemplate":I
    const/4 v0, 0x0

    .local v0, "remaining$iv":I
    move/from16 v0, p3

    .line 420
    const/4 v6, 0x0

    .local v6, "dstOffset$iv":I
    move/from16 v6, p2

    .line 422
    move-object v7, v3

    .line 423
    .local v7, "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    const/4 v8, 0x1

    .local v8, "initialSize$iv$iv":I
    const/4 v9, 0x0

    .line 424
    .local v9, "$i$f$takeWhileSize":I
    const/4 v10, 0x1

    .line 425
    .local v10, "release$iv$iv":Z
    invoke-static {v7, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v11

    if-nez v11, :cond_0

    move-object/from16 v18, v3

    move/from16 v19, v4

    goto/16 :goto_7

    .line 426
    .local v11, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move v12, v8

    .line 428
    .local v12, "size$iv$iv":I
    move v13, v12

    move-object v12, v11

    move v11, v10

    move v10, v6

    move v6, v0

    .line 430
    .end local v0    # "remaining$iv":I
    .local v6, "remaining$iv":I
    .local v10, "dstOffset$iv":I
    .local v11, "release$iv$iv":Z
    .local v12, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v13, "size$iv$iv":I
    :goto_0
    :try_start_0
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 431
    .local v14, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v15

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    sub-int v15, v15, v16

    .line 430
    .end local v0    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$getReadRemaining":I
    move v14, v15

    .local v14, "before$iv$iv":I
    const/4 v15, 0x0

    .line 432
    .local v15, "after$iv$iv":I
    if-lt v14, v13, :cond_2

    .line 433
    nop

    .line 434
    :try_start_1
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v16, 0x0

    .line 435
    .local v16, "$i$a$-takeWhileSize$default-InputArraysKt$readFullyTemplate$1$iv":I
    move-object/from16 v17, v0

    .local v17, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v18, 0x0

    .line 431
    .local v18, "$i$f$getReadRemaining":I
    invoke-virtual/range {v17 .. v17}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v19

    invoke-virtual/range {v17 .. v17}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v20

    sub-int v19, v19, v20

    .line 435
    .end local v17    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v18    # "$i$f$getReadRemaining":I
    div-int v2, v19, v4

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 436
    .local v2, "count$iv":I
    move-object/from16 v17, v0

    .local v17, "src":Lio/ktor/utils/io/core/Buffer;
    move/from16 v18, v10

    .local v18, "dstOffset":I
    move/from16 v19, v2

    .local v19, "count":I
    move-object/from16 v20, v17

    .end local v17    # "src":Lio/ktor/utils/io/core/Buffer;
    .local v20, "src":Lio/ktor/utils/io/core/Buffer;
    const/16 v17, 0x0

    .line 36
    .local v17, "$i$a$-readFullyTemplate-InputArraysKt$readFully$5":I
    move-object/from16 v21, v0

    move/from16 v0, v18

    move-object/from16 v18, v3

    move/from16 v3, v19

    move/from16 v19, v4

    move-object/from16 v4, v20

    .end local v20    # "src":Lio/ktor/utils/io/core/Buffer;
    .local v0, "dstOffset":I
    .local v3, "count":I
    .local v4, "src":Lio/ktor/utils/io/core/Buffer;
    .local v18, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .local v19, "componentSize$iv":I
    .local v21, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    :try_start_2
    invoke-static {v4, v1, v0, v3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[FII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    nop

    .line 436
    .end local v0    # "dstOffset":I
    .end local v3    # "count":I
    .end local v4    # "src":Lio/ktor/utils/io/core/Buffer;
    .end local v17    # "$i$a$-readFullyTemplate-InputArraysKt$readFully$5":I
    nop

    .line 437
    sub-int/2addr v6, v2

    .line 438
    add-int/2addr v10, v2

    .line 440
    nop

    .line 441
    if-lez v6, :cond_1

    move/from16 v0, v19

    goto :goto_1

    .line 442
    :cond_1
    const/4 v0, 0x0

    .line 440
    :goto_1
    nop

    .line 434
    .end local v2    # "count$iv":I
    .end local v16    # "$i$a$-takeWhileSize$default-InputArraysKt$readFullyTemplate$1$iv":I
    .end local v21    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    move v13, v0

    .line 443
    :try_start_3
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 431
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 443
    .end local v0    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    move v0, v3

    .line 444
    .end local v15    # "after$iv$iv":I
    .local v0, "after$iv$iv":I
    goto :goto_3

    .line 443
    .end local v0    # "after$iv$iv":I
    .restart local v15    # "after$iv$iv":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v19    # "componentSize$iv":I
    .local v3, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .local v4, "componentSize$iv":I
    :catchall_1
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v19, v4

    .end local v3    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "componentSize$iv":I
    .restart local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v19    # "componentSize$iv":I
    :goto_2
    move-object v2, v12

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 431
    .local v3, "$i$f$getReadRemaining":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v16

    sub-int v4, v4, v16

    .line 443
    .end local v2    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getReadRemaining":I
    move v2, v4

    .end local v5    # "$i$f$readFullyTemplate":I
    .end local v6    # "remaining$iv":I
    .end local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v8    # "initialSize$iv$iv":I
    .end local v9    # "$i$f$takeWhileSize":I
    .end local v10    # "dstOffset$iv":I
    .end local v11    # "release$iv$iv":Z
    .end local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v13    # "size$iv$iv":I
    .end local v15    # "after$iv$iv":I
    .end local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v19    # "componentSize$iv":I
    .end local p0    # "$this$readFully":Lio/ktor/utils/io/core/Input;
    .end local p1    # "dst":[F
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .local v2, "after$iv$iv":I
    throw v0

    .line 446
    .end local v2    # "after$iv$iv":I
    .local v3, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v4    # "componentSize$iv":I
    .restart local v5    # "$i$f$readFullyTemplate":I
    .restart local v6    # "remaining$iv":I
    .restart local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v8    # "initialSize$iv$iv":I
    .restart local v9    # "$i$f$takeWhileSize":I
    .restart local v10    # "dstOffset$iv":I
    .restart local v11    # "release$iv$iv":Z
    .restart local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v13    # "size$iv$iv":I
    .restart local v15    # "after$iv$iv":I
    .restart local p0    # "$this$readFully":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "dst":[F
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :cond_2
    move-object/from16 v18, v3

    move/from16 v19, v4

    .end local v3    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "componentSize$iv":I
    .restart local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v19    # "componentSize$iv":I
    move v0, v14

    .line 449
    .end local v15    # "after$iv$iv":I
    .restart local v0    # "after$iv$iv":I
    :goto_3
    const/4 v11, 0x0

    .line 451
    nop

    .line 452
    if-nez v0, :cond_3

    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    goto :goto_5

    .line 465
    .end local v0    # "after$iv$iv":I
    .end local v14    # "before$iv$iv":I
    :catchall_2
    move-exception v0

    goto :goto_8

    .line 453
    .restart local v0    # "after$iv$iv":I
    .restart local v14    # "before$iv$iv":I
    :cond_3
    if-lt v0, v13, :cond_5

    move-object v2, v12

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 454
    .local v3, "$i$f$getEndGap":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v15

    sub-int/2addr v4, v15

    .line 453
    .end local v2    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getEndGap":I
    const/16 v2, 0x8

    if-ge v4, v2, :cond_4

    goto :goto_4

    .line 458
    :cond_4
    move-object v2, v12

    goto :goto_5

    .line 455
    :cond_5
    :goto_4
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 456
    invoke-static {v7, v13}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 451
    :goto_5
    if-nez v2, :cond_6

    .line 459
    goto :goto_6

    .line 461
    .local v2, "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_6
    move-object v12, v2

    .line 462
    const/4 v11, 0x1

    .line 463
    .end local v0    # "after$iv$iv":I
    .end local v2    # "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v14    # "before$iv$iv":I
    if-gtz v13, :cond_9

    .line 465
    :goto_6
    if-eqz v11, :cond_7

    .line 466
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 468
    :cond_7
    nop

    .line 469
    move v0, v6

    move v6, v10

    .line 470
    .end local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v8    # "initialSize$iv$iv":I
    .end local v9    # "$i$f$takeWhileSize":I
    .end local v10    # "dstOffset$iv":I
    .end local v11    # "release$iv$iv":Z
    .end local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v13    # "size$iv$iv":I
    .local v0, "remaining$iv":I
    .local v6, "dstOffset$iv":I
    :goto_7
    nop

    .line 37
    .end local v0    # "remaining$iv":I
    .end local v5    # "$i$f$readFullyTemplate":I
    .end local v6    # "dstOffset$iv":I
    .end local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v19    # "componentSize$iv":I
    nop

    .local v0, "$this$requireNoRemaining$iv":I
    const/4 v2, 0x0

    .line 471
    .local v2, "$i$f$requireNoRemaining":I
    if-gtz v0, :cond_8

    .line 474
    nop

    .line 38
    .end local v0    # "$this$requireNoRemaining$iv":I
    .end local v2    # "$i$f$requireNoRemaining":I
    return-void

    .line 472
    .restart local v0    # "$this$requireNoRemaining$iv":I
    .restart local v2    # "$i$f$requireNoRemaining":I
    :cond_8
    invoke-static {v0}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3

    .line 463
    .end local v0    # "$this$requireNoRemaining$iv":I
    .end local v2    # "$i$f$requireNoRemaining":I
    .restart local v5    # "$i$f$readFullyTemplate":I
    .local v6, "remaining$iv":I
    .restart local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v8    # "initialSize$iv$iv":I
    .restart local v9    # "$i$f$takeWhileSize":I
    .restart local v10    # "dstOffset$iv":I
    .restart local v11    # "release$iv$iv":Z
    .restart local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v13    # "size$iv$iv":I
    .restart local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v19    # "componentSize$iv":I
    :cond_9
    move-object/from16 v2, p0

    move-object/from16 v3, v18

    move/from16 v4, v19

    goto/16 :goto_0

    .line 465
    .end local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v19    # "componentSize$iv":I
    .local v3, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v4    # "componentSize$iv":I
    :catchall_3
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v19, v4

    .end local v3    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "componentSize$iv":I
    .restart local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v19    # "componentSize$iv":I
    :goto_8
    if-eqz v11, :cond_a

    .line 466
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_a
    throw v0
.end method

.method public static final readFully(Lio/ktor/utils/io/core/Input;[III)V
    .locals 22
    .param p0, "$this$readFully"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x4

    .local v0, "componentSize$iv":I
    move-object/from16 v3, p0

    .local v3, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    move v4, v0

    .end local v0    # "componentSize$iv":I
    .local v4, "componentSize$iv":I
    const/4 v5, 0x0

    .line 307
    .local v5, "$i$f$readFullyTemplate":I
    const/4 v0, 0x0

    .local v0, "remaining$iv":I
    move/from16 v0, p3

    .line 308
    const/4 v6, 0x0

    .local v6, "dstOffset$iv":I
    move/from16 v6, p2

    .line 310
    move-object v7, v3

    .line 311
    .local v7, "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    const/4 v8, 0x1

    .local v8, "initialSize$iv$iv":I
    const/4 v9, 0x0

    .line 312
    .local v9, "$i$f$takeWhileSize":I
    const/4 v10, 0x1

    .line 313
    .local v10, "release$iv$iv":Z
    invoke-static {v7, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v11

    if-nez v11, :cond_0

    move-object/from16 v18, v3

    move/from16 v19, v4

    goto/16 :goto_7

    .line 314
    .local v11, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move v12, v8

    .line 316
    .local v12, "size$iv$iv":I
    move v13, v12

    move-object v12, v11

    move v11, v10

    move v10, v6

    move v6, v0

    .line 318
    .end local v0    # "remaining$iv":I
    .local v6, "remaining$iv":I
    .local v10, "dstOffset$iv":I
    .local v11, "release$iv$iv":Z
    .local v12, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v13, "size$iv$iv":I
    :goto_0
    :try_start_0
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 319
    .local v14, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v15

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    sub-int v15, v15, v16

    .line 318
    .end local v0    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$getReadRemaining":I
    move v14, v15

    .local v14, "before$iv$iv":I
    const/4 v15, 0x0

    .line 320
    .local v15, "after$iv$iv":I
    if-lt v14, v13, :cond_2

    .line 321
    nop

    .line 322
    :try_start_1
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v16, 0x0

    .line 323
    .local v16, "$i$a$-takeWhileSize$default-InputArraysKt$readFullyTemplate$1$iv":I
    move-object/from16 v17, v0

    .local v17, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v18, 0x0

    .line 319
    .local v18, "$i$f$getReadRemaining":I
    invoke-virtual/range {v17 .. v17}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v19

    invoke-virtual/range {v17 .. v17}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v20

    sub-int v19, v19, v20

    .line 323
    .end local v17    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v18    # "$i$f$getReadRemaining":I
    div-int v2, v19, v4

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 324
    .local v2, "count$iv":I
    move-object/from16 v17, v0

    .local v17, "src":Lio/ktor/utils/io/core/Buffer;
    move/from16 v18, v10

    .local v18, "dstOffset":I
    move/from16 v19, v2

    .local v19, "count":I
    move-object/from16 v20, v17

    .end local v17    # "src":Lio/ktor/utils/io/core/Buffer;
    .local v20, "src":Lio/ktor/utils/io/core/Buffer;
    const/16 v17, 0x0

    .line 22
    .local v17, "$i$a$-readFullyTemplate-InputArraysKt$readFully$3":I
    move-object/from16 v21, v0

    move/from16 v0, v18

    move-object/from16 v18, v3

    move/from16 v3, v19

    move/from16 v19, v4

    move-object/from16 v4, v20

    .end local v20    # "src":Lio/ktor/utils/io/core/Buffer;
    .local v0, "dstOffset":I
    .local v3, "count":I
    .local v4, "src":Lio/ktor/utils/io/core/Buffer;
    .local v18, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .local v19, "componentSize$iv":I
    .local v21, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    :try_start_2
    invoke-static {v4, v1, v0, v3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    nop

    .line 324
    .end local v0    # "dstOffset":I
    .end local v3    # "count":I
    .end local v4    # "src":Lio/ktor/utils/io/core/Buffer;
    .end local v17    # "$i$a$-readFullyTemplate-InputArraysKt$readFully$3":I
    nop

    .line 325
    sub-int/2addr v6, v2

    .line 326
    add-int/2addr v10, v2

    .line 328
    nop

    .line 329
    if-lez v6, :cond_1

    move/from16 v0, v19

    goto :goto_1

    .line 330
    :cond_1
    const/4 v0, 0x0

    .line 328
    :goto_1
    nop

    .line 322
    .end local v2    # "count$iv":I
    .end local v16    # "$i$a$-takeWhileSize$default-InputArraysKt$readFullyTemplate$1$iv":I
    .end local v21    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    move v13, v0

    .line 331
    :try_start_3
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 319
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 331
    .end local v0    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    move v0, v3

    .line 332
    .end local v15    # "after$iv$iv":I
    .local v0, "after$iv$iv":I
    goto :goto_3

    .line 331
    .end local v0    # "after$iv$iv":I
    .restart local v15    # "after$iv$iv":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v19    # "componentSize$iv":I
    .local v3, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .local v4, "componentSize$iv":I
    :catchall_1
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v19, v4

    .end local v3    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "componentSize$iv":I
    .restart local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v19    # "componentSize$iv":I
    :goto_2
    move-object v2, v12

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 319
    .local v3, "$i$f$getReadRemaining":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v16

    sub-int v4, v4, v16

    .line 331
    .end local v2    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getReadRemaining":I
    move v2, v4

    .end local v5    # "$i$f$readFullyTemplate":I
    .end local v6    # "remaining$iv":I
    .end local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v8    # "initialSize$iv$iv":I
    .end local v9    # "$i$f$takeWhileSize":I
    .end local v10    # "dstOffset$iv":I
    .end local v11    # "release$iv$iv":Z
    .end local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v13    # "size$iv$iv":I
    .end local v15    # "after$iv$iv":I
    .end local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v19    # "componentSize$iv":I
    .end local p0    # "$this$readFully":Lio/ktor/utils/io/core/Input;
    .end local p1    # "dst":[I
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .local v2, "after$iv$iv":I
    throw v0

    .line 334
    .end local v2    # "after$iv$iv":I
    .local v3, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v4    # "componentSize$iv":I
    .restart local v5    # "$i$f$readFullyTemplate":I
    .restart local v6    # "remaining$iv":I
    .restart local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v8    # "initialSize$iv$iv":I
    .restart local v9    # "$i$f$takeWhileSize":I
    .restart local v10    # "dstOffset$iv":I
    .restart local v11    # "release$iv$iv":Z
    .restart local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v13    # "size$iv$iv":I
    .restart local v15    # "after$iv$iv":I
    .restart local p0    # "$this$readFully":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "dst":[I
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :cond_2
    move-object/from16 v18, v3

    move/from16 v19, v4

    .end local v3    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "componentSize$iv":I
    .restart local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v19    # "componentSize$iv":I
    move v0, v14

    .line 337
    .end local v15    # "after$iv$iv":I
    .restart local v0    # "after$iv$iv":I
    :goto_3
    const/4 v11, 0x0

    .line 339
    nop

    .line 340
    if-nez v0, :cond_3

    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    goto :goto_5

    .line 353
    .end local v0    # "after$iv$iv":I
    .end local v14    # "before$iv$iv":I
    :catchall_2
    move-exception v0

    goto :goto_8

    .line 341
    .restart local v0    # "after$iv$iv":I
    .restart local v14    # "before$iv$iv":I
    :cond_3
    if-lt v0, v13, :cond_5

    move-object v2, v12

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 342
    .local v3, "$i$f$getEndGap":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v15

    sub-int/2addr v4, v15

    .line 341
    .end local v2    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getEndGap":I
    const/16 v2, 0x8

    if-ge v4, v2, :cond_4

    goto :goto_4

    .line 346
    :cond_4
    move-object v2, v12

    goto :goto_5

    .line 343
    :cond_5
    :goto_4
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 344
    invoke-static {v7, v13}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 339
    :goto_5
    if-nez v2, :cond_6

    .line 347
    goto :goto_6

    .line 349
    .local v2, "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_6
    move-object v12, v2

    .line 350
    const/4 v11, 0x1

    .line 351
    .end local v0    # "after$iv$iv":I
    .end local v2    # "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v14    # "before$iv$iv":I
    if-gtz v13, :cond_9

    .line 353
    :goto_6
    if-eqz v11, :cond_7

    .line 354
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 356
    :cond_7
    nop

    .line 357
    move v0, v6

    move v6, v10

    .line 358
    .end local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v8    # "initialSize$iv$iv":I
    .end local v9    # "$i$f$takeWhileSize":I
    .end local v10    # "dstOffset$iv":I
    .end local v11    # "release$iv$iv":Z
    .end local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v13    # "size$iv$iv":I
    .local v0, "remaining$iv":I
    .local v6, "dstOffset$iv":I
    :goto_7
    nop

    .line 23
    .end local v0    # "remaining$iv":I
    .end local v5    # "$i$f$readFullyTemplate":I
    .end local v6    # "dstOffset$iv":I
    .end local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v19    # "componentSize$iv":I
    nop

    .local v0, "$this$requireNoRemaining$iv":I
    const/4 v2, 0x0

    .line 359
    .local v2, "$i$f$requireNoRemaining":I
    if-gtz v0, :cond_8

    .line 362
    nop

    .line 24
    .end local v0    # "$this$requireNoRemaining$iv":I
    .end local v2    # "$i$f$requireNoRemaining":I
    return-void

    .line 360
    .restart local v0    # "$this$requireNoRemaining$iv":I
    .restart local v2    # "$i$f$requireNoRemaining":I
    :cond_8
    invoke-static {v0}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3

    .line 351
    .end local v0    # "$this$requireNoRemaining$iv":I
    .end local v2    # "$i$f$requireNoRemaining":I
    .restart local v5    # "$i$f$readFullyTemplate":I
    .local v6, "remaining$iv":I
    .restart local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v8    # "initialSize$iv$iv":I
    .restart local v9    # "$i$f$takeWhileSize":I
    .restart local v10    # "dstOffset$iv":I
    .restart local v11    # "release$iv$iv":Z
    .restart local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v13    # "size$iv$iv":I
    .restart local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v19    # "componentSize$iv":I
    :cond_9
    move-object/from16 v2, p0

    move-object/from16 v3, v18

    move/from16 v4, v19

    goto/16 :goto_0

    .line 353
    .end local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v19    # "componentSize$iv":I
    .local v3, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v4    # "componentSize$iv":I
    :catchall_3
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v19, v4

    .end local v3    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "componentSize$iv":I
    .restart local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v19    # "componentSize$iv":I
    :goto_8
    if-eqz v11, :cond_a

    .line 354
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_a
    throw v0
.end method

.method public static final readFully(Lio/ktor/utils/io/core/Input;[JII)V
    .locals 22
    .param p0, "$this$readFully"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    const/16 v0, 0x8

    .local v0, "componentSize$iv":I
    move-object/from16 v3, p0

    .local v3, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    move v4, v0

    .end local v0    # "componentSize$iv":I
    .local v4, "componentSize$iv":I
    const/4 v5, 0x0

    .line 363
    .local v5, "$i$f$readFullyTemplate":I
    const/4 v0, 0x0

    .local v0, "remaining$iv":I
    move/from16 v0, p3

    .line 364
    const/4 v6, 0x0

    .local v6, "dstOffset$iv":I
    move/from16 v6, p2

    .line 366
    move-object v7, v3

    .line 367
    .local v7, "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    const/4 v8, 0x1

    .local v8, "initialSize$iv$iv":I
    const/4 v9, 0x0

    .line 368
    .local v9, "$i$f$takeWhileSize":I
    const/4 v10, 0x1

    .line 369
    .local v10, "release$iv$iv":Z
    invoke-static {v7, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v11

    if-nez v11, :cond_0

    move-object/from16 v18, v3

    move/from16 v19, v4

    goto/16 :goto_7

    .line 370
    .local v11, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move v12, v8

    .line 372
    .local v12, "size$iv$iv":I
    move v13, v12

    move-object v12, v11

    move v11, v10

    move v10, v6

    move v6, v0

    .line 374
    .end local v0    # "remaining$iv":I
    .local v6, "remaining$iv":I
    .local v10, "dstOffset$iv":I
    .local v11, "release$iv$iv":Z
    .local v12, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v13, "size$iv$iv":I
    :goto_0
    :try_start_0
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 375
    .local v14, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v15

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    sub-int v15, v15, v16

    .line 374
    .end local v0    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$getReadRemaining":I
    move v14, v15

    .local v14, "before$iv$iv":I
    const/4 v15, 0x0

    .line 376
    .local v15, "after$iv$iv":I
    if-lt v14, v13, :cond_2

    .line 377
    nop

    .line 378
    :try_start_1
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v16, 0x0

    .line 379
    .local v16, "$i$a$-takeWhileSize$default-InputArraysKt$readFullyTemplate$1$iv":I
    move-object/from16 v17, v0

    .local v17, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v18, 0x0

    .line 375
    .local v18, "$i$f$getReadRemaining":I
    invoke-virtual/range {v17 .. v17}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v19

    invoke-virtual/range {v17 .. v17}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v20

    sub-int v19, v19, v20

    .line 379
    .end local v17    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v18    # "$i$f$getReadRemaining":I
    div-int v2, v19, v4

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 380
    .local v2, "count$iv":I
    move-object/from16 v17, v0

    .local v17, "src":Lio/ktor/utils/io/core/Buffer;
    move/from16 v18, v10

    .local v18, "dstOffset":I
    move/from16 v19, v2

    .local v19, "count":I
    move-object/from16 v20, v17

    .end local v17    # "src":Lio/ktor/utils/io/core/Buffer;
    .local v20, "src":Lio/ktor/utils/io/core/Buffer;
    const/16 v17, 0x0

    .line 29
    .local v17, "$i$a$-readFullyTemplate-InputArraysKt$readFully$4":I
    move-object/from16 v21, v0

    move/from16 v0, v18

    move-object/from16 v18, v3

    move/from16 v3, v19

    move/from16 v19, v4

    move-object/from16 v4, v20

    .end local v20    # "src":Lio/ktor/utils/io/core/Buffer;
    .local v0, "dstOffset":I
    .local v3, "count":I
    .local v4, "src":Lio/ktor/utils/io/core/Buffer;
    .local v18, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .local v19, "componentSize$iv":I
    .local v21, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    :try_start_2
    invoke-static {v4, v1, v0, v3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[JII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    nop

    .line 380
    .end local v0    # "dstOffset":I
    .end local v3    # "count":I
    .end local v4    # "src":Lio/ktor/utils/io/core/Buffer;
    .end local v17    # "$i$a$-readFullyTemplate-InputArraysKt$readFully$4":I
    nop

    .line 381
    sub-int/2addr v6, v2

    .line 382
    add-int/2addr v10, v2

    .line 384
    nop

    .line 385
    if-lez v6, :cond_1

    move/from16 v0, v19

    goto :goto_1

    .line 386
    :cond_1
    const/4 v0, 0x0

    .line 384
    :goto_1
    nop

    .line 378
    .end local v2    # "count$iv":I
    .end local v16    # "$i$a$-takeWhileSize$default-InputArraysKt$readFullyTemplate$1$iv":I
    .end local v21    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    move v13, v0

    .line 387
    :try_start_3
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 375
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 387
    .end local v0    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    move v0, v3

    .line 388
    .end local v15    # "after$iv$iv":I
    .local v0, "after$iv$iv":I
    goto :goto_3

    .line 387
    .end local v0    # "after$iv$iv":I
    .restart local v15    # "after$iv$iv":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v19    # "componentSize$iv":I
    .local v3, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .local v4, "componentSize$iv":I
    :catchall_1
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v19, v4

    .end local v3    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "componentSize$iv":I
    .restart local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v19    # "componentSize$iv":I
    :goto_2
    move-object v2, v12

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 375
    .local v3, "$i$f$getReadRemaining":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v16

    sub-int v4, v4, v16

    .line 387
    .end local v2    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getReadRemaining":I
    move v2, v4

    .end local v5    # "$i$f$readFullyTemplate":I
    .end local v6    # "remaining$iv":I
    .end local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v8    # "initialSize$iv$iv":I
    .end local v9    # "$i$f$takeWhileSize":I
    .end local v10    # "dstOffset$iv":I
    .end local v11    # "release$iv$iv":Z
    .end local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v13    # "size$iv$iv":I
    .end local v15    # "after$iv$iv":I
    .end local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v19    # "componentSize$iv":I
    .end local p0    # "$this$readFully":Lio/ktor/utils/io/core/Input;
    .end local p1    # "dst":[J
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .local v2, "after$iv$iv":I
    throw v0

    .line 390
    .end local v2    # "after$iv$iv":I
    .local v3, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v4    # "componentSize$iv":I
    .restart local v5    # "$i$f$readFullyTemplate":I
    .restart local v6    # "remaining$iv":I
    .restart local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v8    # "initialSize$iv$iv":I
    .restart local v9    # "$i$f$takeWhileSize":I
    .restart local v10    # "dstOffset$iv":I
    .restart local v11    # "release$iv$iv":Z
    .restart local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v13    # "size$iv$iv":I
    .restart local v15    # "after$iv$iv":I
    .restart local p0    # "$this$readFully":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "dst":[J
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :cond_2
    move-object/from16 v18, v3

    move/from16 v19, v4

    .end local v3    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "componentSize$iv":I
    .restart local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v19    # "componentSize$iv":I
    move v0, v14

    .line 393
    .end local v15    # "after$iv$iv":I
    .restart local v0    # "after$iv$iv":I
    :goto_3
    const/4 v11, 0x0

    .line 395
    nop

    .line 396
    if-nez v0, :cond_3

    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    goto :goto_5

    .line 409
    .end local v0    # "after$iv$iv":I
    .end local v14    # "before$iv$iv":I
    :catchall_2
    move-exception v0

    goto :goto_8

    .line 397
    .restart local v0    # "after$iv$iv":I
    .restart local v14    # "before$iv$iv":I
    :cond_3
    if-lt v0, v13, :cond_5

    move-object v2, v12

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 398
    .local v3, "$i$f$getEndGap":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v15

    sub-int/2addr v4, v15

    .line 397
    .end local v2    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getEndGap":I
    const/16 v2, 0x8

    if-ge v4, v2, :cond_4

    goto :goto_4

    .line 402
    :cond_4
    move-object v2, v12

    goto :goto_5

    .line 399
    :cond_5
    :goto_4
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 400
    invoke-static {v7, v13}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 395
    :goto_5
    if-nez v2, :cond_6

    .line 403
    goto :goto_6

    .line 405
    .local v2, "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_6
    move-object v12, v2

    .line 406
    const/4 v11, 0x1

    .line 407
    .end local v0    # "after$iv$iv":I
    .end local v2    # "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v14    # "before$iv$iv":I
    if-gtz v13, :cond_9

    .line 409
    :goto_6
    if-eqz v11, :cond_7

    .line 410
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 412
    :cond_7
    nop

    .line 413
    move v0, v6

    move v6, v10

    .line 414
    .end local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v8    # "initialSize$iv$iv":I
    .end local v9    # "$i$f$takeWhileSize":I
    .end local v10    # "dstOffset$iv":I
    .end local v11    # "release$iv$iv":Z
    .end local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v13    # "size$iv$iv":I
    .local v0, "remaining$iv":I
    .local v6, "dstOffset$iv":I
    :goto_7
    nop

    .line 30
    .end local v0    # "remaining$iv":I
    .end local v5    # "$i$f$readFullyTemplate":I
    .end local v6    # "dstOffset$iv":I
    .end local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v19    # "componentSize$iv":I
    nop

    .local v0, "$this$requireNoRemaining$iv":I
    const/4 v2, 0x0

    .line 415
    .local v2, "$i$f$requireNoRemaining":I
    if-gtz v0, :cond_8

    .line 418
    nop

    .line 31
    .end local v0    # "$this$requireNoRemaining$iv":I
    .end local v2    # "$i$f$requireNoRemaining":I
    return-void

    .line 416
    .restart local v0    # "$this$requireNoRemaining$iv":I
    .restart local v2    # "$i$f$requireNoRemaining":I
    :cond_8
    invoke-static {v0}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3

    .line 407
    .end local v0    # "$this$requireNoRemaining$iv":I
    .end local v2    # "$i$f$requireNoRemaining":I
    .restart local v5    # "$i$f$readFullyTemplate":I
    .local v6, "remaining$iv":I
    .restart local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v8    # "initialSize$iv$iv":I
    .restart local v9    # "$i$f$takeWhileSize":I
    .restart local v10    # "dstOffset$iv":I
    .restart local v11    # "release$iv$iv":Z
    .restart local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v13    # "size$iv$iv":I
    .restart local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v19    # "componentSize$iv":I
    :cond_9
    move-object/from16 v2, p0

    move-object/from16 v3, v18

    move/from16 v4, v19

    goto/16 :goto_0

    .line 409
    .end local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v19    # "componentSize$iv":I
    .local v3, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v4    # "componentSize$iv":I
    :catchall_3
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v19, v4

    .end local v3    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "componentSize$iv":I
    .restart local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v19    # "componentSize$iv":I
    :goto_8
    if-eqz v11, :cond_a

    .line 410
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_a
    throw v0
.end method

.method public static final readFully(Lio/ktor/utils/io/core/Input;[SII)V
    .locals 22
    .param p0, "$this$readFully"    # Lio/ktor/utils/io/core/Input;
    .param p1, "dst"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    const/4 v0, 0x2

    .local v0, "componentSize$iv":I
    move-object/from16 v3, p0

    .local v3, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    move v4, v0

    .end local v0    # "componentSize$iv":I
    .local v4, "componentSize$iv":I
    const/4 v5, 0x0

    .line 251
    .local v5, "$i$f$readFullyTemplate":I
    const/4 v0, 0x0

    .local v0, "remaining$iv":I
    move/from16 v0, p3

    .line 252
    const/4 v6, 0x0

    .local v6, "dstOffset$iv":I
    move/from16 v6, p2

    .line 254
    move-object v7, v3

    .line 255
    .local v7, "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    const/4 v8, 0x1

    .local v8, "initialSize$iv$iv":I
    const/4 v9, 0x0

    .line 256
    .local v9, "$i$f$takeWhileSize":I
    const/4 v10, 0x1

    .line 257
    .local v10, "release$iv$iv":Z
    invoke-static {v7, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v11

    if-nez v11, :cond_0

    move-object/from16 v18, v3

    move/from16 v19, v4

    goto/16 :goto_7

    .line 258
    .local v11, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move v12, v8

    .line 260
    .local v12, "size$iv$iv":I
    move v13, v12

    move-object v12, v11

    move v11, v10

    move v10, v6

    move v6, v0

    .line 262
    .end local v0    # "remaining$iv":I
    .local v6, "remaining$iv":I
    .local v10, "dstOffset$iv":I
    .local v11, "release$iv$iv":Z
    .local v12, "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v13, "size$iv$iv":I
    :goto_0
    :try_start_0
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v14, 0x0

    .line 263
    .local v14, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v15

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    sub-int v15, v15, v16

    .line 262
    .end local v0    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v14    # "$i$f$getReadRemaining":I
    move v14, v15

    .local v14, "before$iv$iv":I
    const/4 v15, 0x0

    .line 264
    .local v15, "after$iv$iv":I
    if-lt v14, v13, :cond_2

    .line 265
    nop

    .line 266
    :try_start_1
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v16, 0x0

    .line 267
    .local v16, "$i$a$-takeWhileSize$default-InputArraysKt$readFullyTemplate$1$iv":I
    move-object/from16 v17, v0

    .local v17, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v18, 0x0

    .line 263
    .local v18, "$i$f$getReadRemaining":I
    invoke-virtual/range {v17 .. v17}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v19

    invoke-virtual/range {v17 .. v17}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v20

    sub-int v19, v19, v20

    .line 267
    .end local v17    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v18    # "$i$f$getReadRemaining":I
    div-int v2, v19, v4

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 268
    .local v2, "count$iv":I
    move-object/from16 v17, v0

    .local v17, "src":Lio/ktor/utils/io/core/Buffer;
    move/from16 v18, v10

    .local v18, "dstOffset":I
    move/from16 v19, v2

    .local v19, "count":I
    move-object/from16 v20, v17

    .end local v17    # "src":Lio/ktor/utils/io/core/Buffer;
    .local v20, "src":Lio/ktor/utils/io/core/Buffer;
    const/16 v17, 0x0

    .line 15
    .local v17, "$i$a$-readFullyTemplate-InputArraysKt$readFully$2":I
    move-object/from16 v21, v0

    move/from16 v0, v18

    move-object/from16 v18, v3

    move/from16 v3, v19

    move/from16 v19, v4

    move-object/from16 v4, v20

    .end local v20    # "src":Lio/ktor/utils/io/core/Buffer;
    .local v0, "dstOffset":I
    .local v3, "count":I
    .local v4, "src":Lio/ktor/utils/io/core/Buffer;
    .local v18, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .local v19, "componentSize$iv":I
    .local v21, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    :try_start_2
    invoke-static {v4, v1, v0, v3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[SII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    nop

    .line 268
    .end local v0    # "dstOffset":I
    .end local v3    # "count":I
    .end local v4    # "src":Lio/ktor/utils/io/core/Buffer;
    .end local v17    # "$i$a$-readFullyTemplate-InputArraysKt$readFully$2":I
    nop

    .line 269
    sub-int/2addr v6, v2

    .line 270
    add-int/2addr v10, v2

    .line 272
    nop

    .line 273
    if-lez v6, :cond_1

    move/from16 v0, v19

    goto :goto_1

    .line 274
    :cond_1
    const/4 v0, 0x0

    .line 272
    :goto_1
    nop

    .line 266
    .end local v2    # "count$iv":I
    .end local v16    # "$i$a$-takeWhileSize$default-InputArraysKt$readFullyTemplate$1$iv":I
    .end local v21    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    move v13, v0

    .line 275
    :try_start_3
    move-object v0, v12

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 263
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 275
    .end local v0    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    move v0, v3

    .line 276
    .end local v15    # "after$iv$iv":I
    .local v0, "after$iv$iv":I
    goto :goto_3

    .line 275
    .end local v0    # "after$iv$iv":I
    .restart local v15    # "after$iv$iv":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v19    # "componentSize$iv":I
    .local v3, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .local v4, "componentSize$iv":I
    :catchall_1
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v19, v4

    .end local v3    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "componentSize$iv":I
    .restart local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v19    # "componentSize$iv":I
    :goto_2
    move-object v2, v12

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 263
    .local v3, "$i$f$getReadRemaining":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v16

    sub-int v4, v4, v16

    .line 275
    .end local v2    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getReadRemaining":I
    move v2, v4

    .end local v5    # "$i$f$readFullyTemplate":I
    .end local v6    # "remaining$iv":I
    .end local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v8    # "initialSize$iv$iv":I
    .end local v9    # "$i$f$takeWhileSize":I
    .end local v10    # "dstOffset$iv":I
    .end local v11    # "release$iv$iv":Z
    .end local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v13    # "size$iv$iv":I
    .end local v15    # "after$iv$iv":I
    .end local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v19    # "componentSize$iv":I
    .end local p0    # "$this$readFully":Lio/ktor/utils/io/core/Input;
    .end local p1    # "dst":[S
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .local v2, "after$iv$iv":I
    throw v0

    .line 278
    .end local v2    # "after$iv$iv":I
    .local v3, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v4    # "componentSize$iv":I
    .restart local v5    # "$i$f$readFullyTemplate":I
    .restart local v6    # "remaining$iv":I
    .restart local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v8    # "initialSize$iv$iv":I
    .restart local v9    # "$i$f$takeWhileSize":I
    .restart local v10    # "dstOffset$iv":I
    .restart local v11    # "release$iv$iv":Z
    .restart local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v13    # "size$iv$iv":I
    .restart local v15    # "after$iv$iv":I
    .restart local p0    # "$this$readFully":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "dst":[S
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :cond_2
    move-object/from16 v18, v3

    move/from16 v19, v4

    .end local v3    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "componentSize$iv":I
    .restart local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v19    # "componentSize$iv":I
    move v0, v14

    .line 281
    .end local v15    # "after$iv$iv":I
    .restart local v0    # "after$iv$iv":I
    :goto_3
    const/4 v11, 0x0

    .line 283
    nop

    .line 284
    if-nez v0, :cond_3

    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    goto :goto_5

    .line 297
    .end local v0    # "after$iv$iv":I
    .end local v14    # "before$iv$iv":I
    :catchall_2
    move-exception v0

    goto :goto_8

    .line 285
    .restart local v0    # "after$iv$iv":I
    .restart local v14    # "before$iv$iv":I
    :cond_3
    if-lt v0, v13, :cond_5

    move-object v2, v12

    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    .local v2, "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 286
    .local v3, "$i$f$getEndGap":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v15

    sub-int/2addr v4, v15

    .line 285
    .end local v2    # "this_$iv$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getEndGap":I
    const/16 v2, 0x8

    if-ge v4, v2, :cond_4

    goto :goto_4

    .line 290
    :cond_4
    move-object v2, v12

    goto :goto_5

    .line 287
    :cond_5
    :goto_4
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 288
    invoke-static {v7, v13}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 283
    :goto_5
    if-nez v2, :cond_6

    .line 291
    goto :goto_6

    .line 293
    .local v2, "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_6
    move-object v12, v2

    .line 294
    const/4 v11, 0x1

    .line 295
    .end local v0    # "after$iv$iv":I
    .end local v2    # "next$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v14    # "before$iv$iv":I
    if-gtz v13, :cond_9

    .line 297
    :goto_6
    if-eqz v11, :cond_7

    .line 298
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 300
    :cond_7
    nop

    .line 301
    move v0, v6

    move v6, v10

    .line 302
    .end local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v8    # "initialSize$iv$iv":I
    .end local v9    # "$i$f$takeWhileSize":I
    .end local v10    # "dstOffset$iv":I
    .end local v11    # "release$iv$iv":Z
    .end local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v13    # "size$iv$iv":I
    .local v0, "remaining$iv":I
    .local v6, "dstOffset$iv":I
    :goto_7
    nop

    .line 16
    .end local v0    # "remaining$iv":I
    .end local v5    # "$i$f$readFullyTemplate":I
    .end local v6    # "dstOffset$iv":I
    .end local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v19    # "componentSize$iv":I
    nop

    .local v0, "$this$requireNoRemaining$iv":I
    const/4 v2, 0x0

    .line 303
    .local v2, "$i$f$requireNoRemaining":I
    if-gtz v0, :cond_8

    .line 306
    nop

    .line 17
    .end local v0    # "$this$requireNoRemaining$iv":I
    .end local v2    # "$i$f$requireNoRemaining":I
    return-void

    .line 304
    .restart local v0    # "$this$requireNoRemaining$iv":I
    .restart local v2    # "$i$f$requireNoRemaining":I
    :cond_8
    invoke-static {v0}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3

    .line 295
    .end local v0    # "$this$requireNoRemaining$iv":I
    .end local v2    # "$i$f$requireNoRemaining":I
    .restart local v5    # "$i$f$readFullyTemplate":I
    .local v6, "remaining$iv":I
    .restart local v7    # "$this$takeWhileSize_u24default$iv$iv":Lio/ktor/utils/io/core/Input;
    .restart local v8    # "initialSize$iv$iv":I
    .restart local v9    # "$i$f$takeWhileSize":I
    .restart local v10    # "dstOffset$iv":I
    .restart local v11    # "release$iv$iv":Z
    .restart local v12    # "current$iv$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v13    # "size$iv$iv":I
    .restart local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v19    # "componentSize$iv":I
    :cond_9
    move-object/from16 v2, p0

    move-object/from16 v3, v18

    move/from16 v4, v19

    goto/16 :goto_0

    .line 297
    .end local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v19    # "componentSize$iv":I
    .local v3, "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v4    # "componentSize$iv":I
    :catchall_3
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v19, v4

    .end local v3    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "componentSize$iv":I
    .restart local v18    # "$this$readFullyTemplate$iv":Lio/ktor/utils/io/core/Input;
    .restart local v19    # "componentSize$iv":I
    :goto_8
    if-eqz v11, :cond_a

    .line 298
    invoke-static {v7, v12}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_a
    throw v0
.end method

.method public static synthetic readFully$default(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/Buffer;IILjava/lang/Object;)V
    .locals 1

    .line 48
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    move-object p2, p1

    .local p2, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 p3, 0x0

    .line 566
    .local p3, "$i$f$getWriteRemaining":I
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result p4

    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v0

    sub-int p2, p4, v0

    .line 48
    .end local p2    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local p3    # "$i$f$getWriteRemaining":I
    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/Buffer;I)V

    return-void
.end method

.method public static synthetic readFully$default(Lio/ktor/utils/io/core/Input;[BIIILjava/lang/Object;)V
    .locals 0

    .line 6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[BII)V

    return-void
.end method

.method public static synthetic readFully$default(Lio/ktor/utils/io/core/Input;[DIIILjava/lang/Object;)V
    .locals 0

    .line 41
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[DII)V

    return-void
.end method

.method public static synthetic readFully$default(Lio/ktor/utils/io/core/Input;[FIIILjava/lang/Object;)V
    .locals 0

    .line 34
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[FII)V

    return-void
.end method

.method public static synthetic readFully$default(Lio/ktor/utils/io/core/Input;[IIIILjava/lang/Object;)V
    .locals 0

    .line 20
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[III)V

    return-void
.end method

.method public static synthetic readFully$default(Lio/ktor/utils/io/core/Input;[JIIILjava/lang/Object;)V
    .locals 0

    .line 27
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[JII)V

    return-void
.end method

.method public static synthetic readFully$default(Lio/ktor/utils/io/core/Input;[SIIILjava/lang/Object;)V
    .locals 0

    .line 13
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[SII)V

    return-void
.end method

.method public static final readFully-UAd2zVI(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;II)V
    .locals 7
    .param p0, "$this$readFully_u2dUAd2zVI"    # Lio/ktor/utils/io/core/Input;
    .param p1, "destination"    # Ljava/nio/ByteBuffer;
    .param p2, "destinationOffset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$readFully"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    int-to-long v3, p2

    int-to-long v5, p3

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lio/ktor/utils/io/core/InputArraysKt;->readFully-UAd2zVI(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;JJ)V

    .line 57
    return-void
.end method

.method public static final readFully-UAd2zVI(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;JJ)V
    .locals 2
    .param p0, "$this$readFully_u2dUAd2zVI"    # Lio/ktor/utils/io/core/Input;
    .param p1, "destination"    # Ljava/nio/ByteBuffer;
    .param p2, "destinationOffset"    # J
    .param p4, "length"    # J

    const-string v0, "$this$readFully"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-static/range {p0 .. p5}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable-UAd2zVI(Lio/ktor/utils/io/core/Input;Ljava/nio/ByteBuffer;JJ)J

    move-result-wide v0

    cmp-long v0, v0, p4

    if-nez v0, :cond_0

    .line 64
    return-void

    .line 62
    :cond_0
    invoke-static {p4, p5}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(J)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method private static final readFullyBytesTemplate(Lio/ktor/utils/io/core/Input;IILkotlin/jvm/functions/Function3;)I
    .locals 14
    .param p0, "$this$readFullyBytesTemplate"    # Lio/ktor/utils/io/core/Input;
    .param p1, "initialDstOffset"    # I
    .param p2, "length"    # I
    .param p3, "readBlock"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Input;",
            "II",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/utils/io/core/Buffer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    .line 141
    .local v1, "$i$f$readFullyBytesTemplate":I
    const/4 v0, 0x0

    .local v0, "remaining":I
    move/from16 v0, p2

    .line 142
    const/4 v2, 0x0

    .local v2, "dstOffset":I
    move v2, p1

    .line 144
    move-object v3, p0

    .local v3, "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    const/4 v4, 0x0

    .line 922
    .local v4, "$i$f$takeWhile":I
    const/4 v5, 0x1

    .line 923
    .local v5, "release$iv":Z
    const/4 v6, 0x1

    invoke-static {v3, v6}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v7

    if-nez v7, :cond_0

    move-object/from16 v13, p3

    goto :goto_3

    .line 925
    .local v7, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move-object v8, v7

    move v7, v5

    move v5, v2

    move v2, v0

    .line 927
    .end local v0    # "remaining":I
    .local v2, "remaining":I
    .local v5, "dstOffset":I
    .local v7, "release$iv":Z
    .local v8, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    :try_start_0
    move-object v0, v8

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer":Lio/ktor/utils/io/core/Buffer;
    const/4 v9, 0x0

    .line 145
    .local v9, "$i$a$-takeWhile-InputArraysKt$readFullyBytesTemplate$1":I
    move-object v10, v0

    .local v10, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v11, 0x0

    .line 928
    .local v11, "$i$f$getReadRemaining":I
    invoke-virtual {v10}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v12

    invoke-virtual {v10}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v13

    sub-int/2addr v12, v13

    .line 145
    .end local v10    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v11    # "$i$f$getReadRemaining":I
    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 146
    .local v10, "count":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v13, p3

    :try_start_1
    invoke-interface {v13, v0, v11, v12}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sub-int/2addr v2, v10

    .line 148
    add-int/2addr v5, v10

    .line 150
    if-lez v2, :cond_1

    move v11, v6

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 927
    .end local v0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v9    # "$i$a$-takeWhile-InputArraysKt$readFullyBytesTemplate$1":I
    .end local v10    # "count":I
    :goto_1
    if-nez v11, :cond_2

    .line 929
    goto :goto_2

    .line 931
    :cond_2
    const/4 v7, 0x0

    .line 932
    invoke-static {v3, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_4

    .line 935
    :goto_2
    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 937
    if-eqz v7, :cond_3

    .line 938
    invoke-static {v3, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_3
    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 940
    nop

    .line 941
    move v0, v2

    move v2, v5

    .line 153
    .end local v3    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "$i$f$takeWhile":I
    .end local v5    # "dstOffset":I
    .end local v7    # "release$iv":Z
    .end local v8    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v0, "remaining":I
    .local v2, "dstOffset":I
    :goto_3
    return v0

    .line 933
    .local v0, "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v2, "remaining":I
    .restart local v3    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .restart local v4    # "$i$f$takeWhile":I
    .restart local v5    # "dstOffset":I
    .restart local v7    # "release$iv":Z
    .restart local v8    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_4
    move-object v8, v0

    .line 934
    const/4 v7, 0x1

    .line 935
    .end local v0    # "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    goto :goto_0

    .line 937
    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v13, p3

    :goto_4
    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    if-eqz v7, :cond_5

    .line 938
    invoke-static {v3, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_5
    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v0
.end method

.method private static final readFullyBytesTemplate(Lio/ktor/utils/io/core/Input;JJLkotlin/jvm/functions/Function4;)J
    .locals 21
    .param p0, "$this$readFullyBytesTemplate"    # Lio/ktor/utils/io/core/Input;
    .param p1, "initialDstOffset"    # J
    .param p3, "length"    # J
    .param p5, "readBlock"    # Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Input;",
            "JJ",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Lio/ktor/utils/io/bits/Memory;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)J"
        }
    .end annotation

    const/4 v1, 0x0

    .line 165
    .local v1, "$i$f$readFullyBytesTemplate":I
    const-wide/16 v2, 0x0

    .local v2, "remaining":J
    move-wide/from16 v2, p3

    .line 166
    const-wide/16 v4, 0x0

    .local v4, "dstOffset":J
    move-wide/from16 v4, p1

    .line 168
    move-object/from16 v6, p0

    .local v6, "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    const/4 v7, 0x0

    .line 942
    .local v7, "$i$f$takeWhile":I
    const/4 v0, 0x1

    .line 943
    .local v0, "release$iv":Z
    const/4 v8, 0x1

    invoke-static {v6, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v9

    if-nez v9, :cond_0

    move/from16 v16, v1

    move-object/from16 v1, p5

    goto/16 :goto_3

    .line 945
    .local v9, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move-wide/from16 v17, v2

    move v2, v0

    move-wide/from16 v19, v4

    move-object v5, v9

    move-wide/from16 v3, v17

    move-wide/from16 v9, v19

    .line 947
    .end local v0    # "release$iv":Z
    .end local v4    # "dstOffset":J
    .local v2, "release$iv":Z
    .local v3, "remaining":J
    .local v5, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v9, "dstOffset":J
    :goto_0
    :try_start_0
    move-object v0, v5

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer":Lio/ktor/utils/io/core/Buffer;
    const/4 v11, 0x0

    .line 169
    .local v11, "$i$a$-takeWhile-InputArraysKt$readFullyBytesTemplate$2":I
    move-object v12, v0

    .local v12, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v13, 0x0

    .line 948
    .local v13, "$i$f$getReadRemaining":I
    invoke-virtual {v12}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v14

    invoke-virtual {v12}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v15

    sub-int/2addr v14, v15

    .line 169
    .end local v12    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$f$getReadRemaining":I
    int-to-long v12, v14

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v12, v12

    .line 170
    .local v12, "count":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-static {v13}, Lio/ktor/utils/io/bits/Memory;->box-impl(Ljava/nio/ByteBuffer;)Lio/ktor/utils/io/bits/Memory;

    move-result-object v13

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v14

    int-to-long v14, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v16, v1

    move-object/from16 v1, p5

    .end local v1    # "$i$f$readFullyBytesTemplate":I
    .local v16, "$i$f$readFullyBytesTemplate":I
    :try_start_1
    invoke-interface {v1, v13, v14, v15, v8}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {v0, v12}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 172
    int-to-long v13, v12

    sub-long/2addr v3, v13

    .line 173
    int-to-long v13, v12

    add-long/2addr v9, v13

    .line 175
    const-wide/16 v13, 0x0

    cmp-long v8, v3, v13

    if-lez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 947
    .end local v0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v11    # "$i$a$-takeWhile-InputArraysKt$readFullyBytesTemplate$2":I
    .end local v12    # "count":I
    :goto_1
    if-nez v8, :cond_2

    .line 949
    goto :goto_2

    .line 951
    :cond_2
    const/4 v2, 0x0

    .line 952
    invoke-static {v6, v5}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_4

    .line 955
    :goto_2
    const/4 v8, 0x1

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 957
    if-eqz v2, :cond_3

    .line 958
    invoke-static {v6, v5}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_3
    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 960
    nop

    .line 961
    move-wide v2, v3

    move-wide v4, v9

    .line 178
    .end local v3    # "remaining":J
    .end local v5    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v6    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .end local v7    # "$i$f$takeWhile":I
    .end local v9    # "dstOffset":J
    .local v2, "remaining":J
    .restart local v4    # "dstOffset":J
    :goto_3
    return-wide v2

    .line 953
    .end local v4    # "dstOffset":J
    .local v0, "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v2, "release$iv":Z
    .restart local v3    # "remaining":J
    .restart local v5    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v6    # "$this$takeWhile$iv":Lio/ktor/utils/io/core/Input;
    .restart local v7    # "$i$f$takeWhile":I
    .restart local v9    # "dstOffset":J
    :cond_4
    move-object v5, v0

    .line 954
    const/4 v2, 0x1

    .line 955
    .end local v0    # "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move/from16 v1, v16

    const/4 v8, 0x1

    goto :goto_0

    .line 957
    :catchall_0
    move-exception v0

    goto :goto_4

    .end local v16    # "$i$f$readFullyBytesTemplate":I
    .restart local v1    # "$i$f$readFullyBytesTemplate":I
    :catchall_1
    move-exception v0

    move/from16 v16, v1

    move-object/from16 v1, p5

    .end local v1    # "$i$f$readFullyBytesTemplate":I
    .restart local v16    # "$i$f$readFullyBytesTemplate":I
    :goto_4
    const/4 v8, 0x1

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    if-eqz v2, :cond_5

    .line 958
    invoke-static {v6, v5}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_5
    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v0
.end method

.method private static final readFullyTemplate(Lio/ktor/utils/io/core/Input;IIILkotlin/jvm/functions/Function3;)I
    .locals 18
    .param p0, "$this$readFullyTemplate"    # Lio/ktor/utils/io/core/Input;
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "componentSize"    # I
    .param p4, "readBlock"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Input;",
            "III",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/utils/io/core/Buffer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    .line 191
    .local v1, "$i$f$readFullyTemplate":I
    const/4 v0, 0x0

    .local v0, "remaining":I
    move/from16 v0, p2

    .line 192
    const/4 v2, 0x0

    .local v2, "dstOffset":I
    move/from16 v2, p1

    .line 194
    move-object/from16 v3, p0

    .line 962
    .local v3, "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    const/4 v4, 0x1

    .local v4, "initialSize$iv":I
    const/4 v5, 0x0

    .line 963
    .local v5, "$i$f$takeWhileSize":I
    const/4 v6, 0x1

    .line 964
    .local v6, "release$iv":Z
    invoke-static {v3, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v7

    if-nez v7, :cond_0

    move/from16 v17, v1

    move-object/from16 v1, p4

    goto/16 :goto_7

    .line 965
    .local v7, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_0
    move v8, v4

    .line 967
    .local v8, "size$iv":I
    move v9, v8

    move-object v8, v7

    move v7, v6

    move v6, v2

    move v2, v0

    .line 969
    .end local v0    # "remaining":I
    .local v2, "remaining":I
    .local v6, "dstOffset":I
    .local v7, "release$iv":Z
    .local v8, "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .local v9, "size$iv":I
    :goto_0
    :try_start_0
    move-object v0, v8

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v11, 0x0

    .line 970
    .local v11, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v12

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    sub-int/2addr v12, v13

    .line 969
    .end local v0    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v11    # "$i$f$getReadRemaining":I
    move v11, v12

    .local v11, "before$iv":I
    const/4 v12, 0x0

    .line 971
    .local v12, "after$iv":I
    if-lt v11, v9, :cond_2

    .line 972
    nop

    .line 973
    :try_start_1
    move-object v0, v8

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "buffer":Lio/ktor/utils/io/core/Buffer;
    const/4 v13, 0x0

    .line 195
    .local v13, "$i$a$-takeWhileSize$default-InputArraysKt$readFullyTemplate$1":I
    move-object v14, v0

    .local v14, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v15, 0x0

    .line 974
    .local v15, "$i$f$getReadRemaining":I
    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v16

    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v17

    sub-int v16, v16, v17

    .line 195
    .end local v14    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "$i$f$getReadRemaining":I
    div-int v14, v16, p3

    invoke-static {v2, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 196
    .local v14, "count":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v17, v1

    move-object/from16 v1, p4

    .end local v1    # "$i$f$readFullyTemplate":I
    .local v17, "$i$f$readFullyTemplate":I
    :try_start_2
    invoke-interface {v1, v0, v15, v10}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    sub-int/2addr v2, v14

    .line 198
    add-int/2addr v6, v14

    .line 200
    nop

    .line 201
    if-lez v2, :cond_1

    move/from16 v10, p3

    goto :goto_1

    .line 202
    :cond_1
    const/4 v10, 0x0

    .line 200
    :goto_1
    nop

    .line 973
    .end local v0    # "buffer":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$a$-takeWhileSize$default-InputArraysKt$readFullyTemplate$1":I
    .end local v14    # "count":I
    move v9, v10

    const/4 v10, 0x1

    :try_start_3
    invoke-static {v10}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 975
    move-object v0, v8

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    .local v0, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v10, 0x0

    .line 970
    .local v10, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v13

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v14

    sub-int/2addr v13, v14

    .line 975
    .end local v0    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v10    # "$i$f$getReadRemaining":I
    move v0, v13

    const/4 v10, 0x1

    .end local v12    # "after$iv":I
    .local v0, "after$iv":I
    invoke-static {v10}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 976
    goto :goto_3

    .line 975
    .end local v0    # "after$iv":I
    .restart local v12    # "after$iv":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v17    # "$i$f$readFullyTemplate":I
    .restart local v1    # "$i$f$readFullyTemplate":I
    :catchall_1
    move-exception v0

    move/from16 v17, v1

    move-object/from16 v1, p4

    .end local v1    # "$i$f$readFullyTemplate":I
    .restart local v17    # "$i$f$readFullyTemplate":I
    :goto_2
    const/4 v10, 0x1

    invoke-static {v10}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    move-object v10, v8

    check-cast v10, Lio/ktor/utils/io/core/Buffer;

    .local v10, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v13, 0x0

    .line 970
    .local v13, "$i$f$getReadRemaining":I
    invoke-virtual {v10}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v14

    invoke-virtual {v10}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v15

    sub-int/2addr v14, v15

    .line 975
    .end local v10    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$f$getReadRemaining":I
    move v10, v14

    const/4 v12, 0x1

    .end local v12    # "after$iv":I
    .local v10, "after$iv":I
    invoke-static {v12}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .end local v2    # "remaining":I
    .end local v3    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "initialSize$iv":I
    .end local v5    # "$i$f$takeWhileSize":I
    .end local v6    # "dstOffset":I
    .end local v7    # "release$iv":Z
    .end local v8    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v9    # "size$iv":I
    .end local v17    # "$i$f$readFullyTemplate":I
    .end local p0    # "$this$readFullyTemplate":Lio/ktor/utils/io/core/Input;
    .end local p1    # "offset":I
    .end local p2    # "length":I
    .end local p3    # "componentSize":I
    .end local p4    # "readBlock":Lkotlin/jvm/functions/Function3;
    throw v0

    .line 978
    .end local v10    # "after$iv":I
    .restart local v1    # "$i$f$readFullyTemplate":I
    .restart local v2    # "remaining":I
    .restart local v3    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v4    # "initialSize$iv":I
    .restart local v5    # "$i$f$takeWhileSize":I
    .restart local v6    # "dstOffset":I
    .restart local v7    # "release$iv":Z
    .restart local v8    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v9    # "size$iv":I
    .restart local v12    # "after$iv":I
    .restart local p0    # "$this$readFullyTemplate":Lio/ktor/utils/io/core/Input;
    .restart local p1    # "offset":I
    .restart local p2    # "length":I
    .restart local p3    # "componentSize":I
    .restart local p4    # "readBlock":Lkotlin/jvm/functions/Function3;
    :cond_2
    move/from16 v17, v1

    move-object/from16 v1, p4

    .end local v1    # "$i$f$readFullyTemplate":I
    .restart local v17    # "$i$f$readFullyTemplate":I
    move v0, v11

    .line 981
    .end local v12    # "after$iv":I
    .restart local v0    # "after$iv":I
    :goto_3
    const/4 v7, 0x0

    .line 983
    nop

    .line 984
    if-nez v0, :cond_3

    invoke-static {v3, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v10

    goto :goto_5

    .line 997
    .end local v0    # "after$iv":I
    .end local v11    # "before$iv":I
    :catchall_2
    move-exception v0

    goto :goto_8

    .line 985
    .restart local v0    # "after$iv":I
    .restart local v11    # "before$iv":I
    :cond_3
    if-lt v0, v9, :cond_5

    move-object v10, v8

    check-cast v10, Lio/ktor/utils/io/core/Buffer;

    .local v10, "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v12, 0x0

    .line 986
    .local v12, "$i$f$getEndGap":I
    invoke-virtual {v10}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v13

    invoke-virtual {v10}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v14

    sub-int/2addr v13, v14

    .line 985
    .end local v10    # "this_$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v12    # "$i$f$getEndGap":I
    const/16 v10, 0x8

    if-ge v13, v10, :cond_4

    goto :goto_4

    .line 990
    :cond_4
    move-object v10, v8

    goto :goto_5

    .line 987
    :cond_5
    :goto_4
    invoke-static {v3, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 988
    invoke-static {v3, v9}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 983
    :goto_5
    if-nez v10, :cond_6

    .line 991
    goto :goto_6

    .line 993
    .local v10, "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :cond_6
    move-object v8, v10

    .line 994
    const/4 v7, 0x1

    .line 995
    .end local v0    # "after$iv":I
    .end local v10    # "next$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v11    # "before$iv":I
    if-gtz v9, :cond_8

    :goto_6
    const/4 v10, 0x1

    invoke-static {v10}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 997
    if-eqz v7, :cond_7

    .line 998
    invoke-static {v3, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_7
    invoke-static {v10}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 1000
    nop

    .line 1001
    move v0, v2

    move v2, v6

    .line 206
    .end local v3    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "initialSize$iv":I
    .end local v5    # "$i$f$takeWhileSize":I
    .end local v6    # "dstOffset":I
    .end local v7    # "release$iv":Z
    .end local v8    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v9    # "size$iv":I
    .local v0, "remaining":I
    .local v2, "dstOffset":I
    :goto_7
    return v0

    .line 995
    .end local v0    # "remaining":I
    .local v2, "remaining":I
    .restart local v3    # "$this$takeWhileSize_u24default$iv":Lio/ktor/utils/io/core/Input;
    .restart local v4    # "initialSize$iv":I
    .restart local v5    # "$i$f$takeWhileSize":I
    .restart local v6    # "dstOffset":I
    .restart local v7    # "release$iv":Z
    .restart local v8    # "current$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v9    # "size$iv":I
    :cond_8
    move/from16 v1, v17

    goto/16 :goto_0

    .line 997
    .end local v17    # "$i$f$readFullyTemplate":I
    .restart local v1    # "$i$f$readFullyTemplate":I
    :catchall_3
    move-exception v0

    move/from16 v17, v1

    move-object/from16 v1, p4

    .end local v1    # "$i$f$readFullyTemplate":I
    .restart local v17    # "$i$f$readFullyTemplate":I
    :goto_8
    const/4 v10, 0x1

    invoke-static {v10}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    if-eqz v7, :cond_9

    .line 998
    invoke-static {v3, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_9
    invoke-static {v10}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v0
.end method

.method private static final requireNoRemaining(I)V
    .locals 2
    .param p0, "$this$requireNoRemaining"    # I

    const/4 v0, 0x0

    .line 211
    .local v0, "$i$f$requireNoRemaining":I
    if-gtz p0, :cond_0

    .line 214
    return-void

    .line 212
    :cond_0
    invoke-static {p0}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method
