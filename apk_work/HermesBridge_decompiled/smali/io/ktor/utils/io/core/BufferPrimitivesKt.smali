.class public final Lio/ktor/utils/io/core/BufferPrimitivesKt;
.super Ljava/lang/Object;
.source "BufferPrimitives.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBufferPrimitives.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferPrimitives.kt\nio/ktor/utils/io/core/BufferPrimitivesKt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 3 Memory.kt\nio/ktor/utils/io/bits/MemoryKt\n+ 4 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 5 MemoryPrimitivesJvm.kt\nio/ktor/utils/io/bits/MemoryPrimitivesJvmKt\n+ 6 MemoryPrimitives.kt\nio/ktor/utils/io/bits/MemoryPrimitivesKt\n+ 7 PrimiteArrays.kt\nio/ktor/utils/io/bits/PrimiteArraysKt\n+ 8 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 9 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 10 MemoryFactoryJvm.kt\nio/ktor/utils/io/bits/MemoryFactoryJvmKt\n*L\n1#1,797:1\n762#1,7:807\n769#1,5:819\n774#1:825\n777#1:828\n762#1,7:829\n769#1,5:841\n774#1:848\n777#1:851\n762#1,7:852\n769#1,5:864\n774#1:870\n777#1:873\n762#1,7:874\n769#1,5:886\n774#1:893\n777#1:896\n762#1,7:897\n769#1,5:909\n774#1:915\n777#1:918\n762#1,7:919\n769#1,5:931\n774#1:938\n777#1:941\n762#1,7:942\n769#1,5:954\n774#1:960\n777#1:963\n762#1,7:964\n769#1,5:976\n774#1:982\n777#1:985\n784#1,5:986\n789#1,5:996\n794#1:1003\n796#1:1006\n784#1,5:1007\n789#1,5:1017\n794#1:1025\n796#1:1028\n784#1,5:1029\n789#1,5:1039\n794#1:1046\n796#1:1049\n784#1,5:1050\n789#1,5:1060\n794#1:1068\n796#1:1071\n784#1,5:1072\n789#1,5:1082\n794#1:1089\n796#1:1092\n784#1,5:1093\n789#1,5:1103\n794#1:1111\n796#1:1114\n784#1,5:1115\n789#1,5:1125\n794#1:1132\n796#1:1135\n784#1,5:1136\n789#1,5:1146\n794#1:1153\n796#1:1156\n762#1,7:1157\n769#1,5:1169\n774#1:1176\n777#1:1179\n784#1,5:1183\n789#1,5:1193\n794#1:1206\n796#1:1209\n762#1,7:1210\n769#1,6:1222\n777#1:1230\n784#1,5:1233\n789#1,6:1243\n796#1:1251\n762#1,7:1252\n769#1,6:1264\n777#1:1272\n784#1,5:1275\n789#1,6:1285\n796#1:1293\n762#1,7:1294\n769#1,6:1306\n777#1:1314\n784#1,5:1317\n789#1,6:1327\n796#1:1335\n762#1,7:1336\n769#1,6:1348\n777#1:1356\n784#1,5:1359\n789#1,6:1369\n796#1:1377\n762#1,7:1378\n769#1,6:1390\n777#1:1398\n784#1,5:1401\n789#1,6:1411\n796#1:1419\n762#1,7:1421\n769#1,6:1433\n777#1:1441\n762#1,7:1446\n769#1,6:1458\n777#1:1466\n784#1,5:1469\n789#1,6:1479\n796#1:1487\n784#1,5:1492\n789#1,6:1502\n796#1:1510\n372#2,5:798\n377#2,2:805\n372#2,5:814\n377#2,2:826\n372#2,5:836\n377#2,2:849\n372#2,5:859\n377#2,2:871\n372#2,5:881\n377#2,2:894\n372#2,5:904\n377#2,2:916\n372#2,5:926\n377#2,2:939\n372#2,5:949\n377#2,2:961\n372#2,5:971\n377#2,2:983\n390#2,5:991\n395#2,2:1004\n390#2,5:1012\n395#2,2:1026\n390#2,5:1034\n395#2,2:1047\n390#2,5:1055\n395#2,2:1069\n390#2,5:1077\n395#2,2:1090\n390#2,5:1098\n395#2,2:1112\n390#2,5:1120\n395#2,2:1133\n390#2,5:1141\n395#2,2:1154\n372#2,5:1164\n377#2,2:1177\n355#2:1181\n390#2,5:1188\n395#2,2:1207\n372#2,5:1217\n377#2,2:1228\n355#2:1231\n390#2,5:1238\n395#2,2:1249\n372#2,5:1259\n377#2,2:1270\n355#2:1273\n390#2,5:1280\n395#2,2:1291\n372#2,5:1301\n377#2,2:1312\n355#2:1315\n390#2,5:1322\n395#2,2:1333\n372#2,5:1343\n377#2,2:1354\n355#2:1357\n390#2,5:1364\n395#2,2:1375\n372#2,5:1385\n377#2,2:1396\n355#2:1399\n390#2,5:1406\n395#2,2:1417\n372#2,5:1428\n377#2,2:1439\n355#2:1443\n372#2,5:1453\n377#2,2:1464\n390#2,5:1474\n395#2,2:1485\n390#2,5:1497\n395#2,2:1508\n372#2,7:1511\n390#2,7:1518\n84#3:803\n26#4:804\n8#5:824\n8#5:847\n16#5:869\n16#5:892\n24#5:914\n24#5:937\n32#5:959\n40#5:981\n65#5,2:1001\n65#5,2:1023\n51#5,2:1044\n51#5,2:1066\n79#5,2:1087\n79#5,2:1109\n93#5,2:1130\n107#5,2:1151\n28#6:846\n68#6:891\n108#6:936\n38#6:1022\n78#6:1065\n118#6:1108\n15#7,2:1174\n282#7:1198\n283#7,3:1203\n1#8:1180\n69#9:1182\n69#9:1232\n69#9:1274\n69#9:1316\n69#9:1358\n69#9:1400\n74#9:1420\n74#9:1442\n74#9:1444\n69#9:1445\n74#9:1467\n69#9:1468\n69#9:1488\n69#9:1489\n74#9:1490\n74#9:1491\n17#10,4:1199\n*S KotlinDebug\n*F\n+ 1 BufferPrimitives.kt\nio/ktor/utils/io/core/BufferPrimitivesKt\n*L\n49#1:807,7\n49#1:819,5\n49#1:825\n49#1:828\n61#1:829,7\n61#1:841,5\n61#1:848\n61#1:851\n73#1:852,7\n73#1:864,5\n73#1:870\n73#1:873\n85#1:874,7\n85#1:886,5\n85#1:893\n85#1:896\n97#1:897,7\n97#1:909,5\n97#1:915\n97#1:918\n109#1:919,7\n109#1:931,5\n109#1:938\n109#1:941\n121#1:942,7\n121#1:954,5\n121#1:960\n121#1:963\n133#1:964,7\n133#1:976,5\n133#1:982\n133#1:985\n145#1:986,5\n145#1:996,5\n145#1:1003\n145#1:1006\n158#1:1007,5\n158#1:1017,5\n158#1:1025\n158#1:1028\n170#1:1029,5\n170#1:1039,5\n170#1:1046\n170#1:1049\n182#1:1050,5\n182#1:1060,5\n182#1:1068\n182#1:1071\n194#1:1072,5\n194#1:1082,5\n194#1:1089\n194#1:1092\n206#1:1093,5\n206#1:1103,5\n206#1:1111\n206#1:1114\n219#1:1115,5\n219#1:1125,5\n219#1:1132\n219#1:1135\n235#1:1136,5\n235#1:1146,5\n235#1:1153\n235#1:1156\n250#1:1157,7\n250#1:1169,5\n250#1:1176\n250#1:1179\n324#1:1183,5\n324#1:1193,5\n324#1:1206\n324#1:1209\n349#1:1210,7\n349#1:1222,6\n349#1:1230\n415#1:1233,5\n415#1:1243,6\n415#1:1251\n436#1:1252,7\n436#1:1264,6\n436#1:1272\n494#1:1275,5\n494#1:1285,6\n494#1:1293\n515#1:1294,7\n515#1:1306,6\n515#1:1314\n577#1:1317,5\n577#1:1327,6\n577#1:1335\n598#1:1336,7\n598#1:1348,6\n598#1:1356\n636#1:1359,5\n636#1:1369,6\n636#1:1377\n647#1:1378,7\n647#1:1390,6\n647#1:1398\n685#1:1401,5\n685#1:1411,6\n685#1:1419\n699#1:1421,7\n699#1:1433,6\n699#1:1441\n717#1:1446,7\n717#1:1458,6\n717#1:1466\n732#1:1469,5\n732#1:1479,6\n732#1:1487\n752#1:1492,5\n752#1:1502,6\n752#1:1510\n14#1:798,5\n14#1:805,2\n49#1:814,5\n49#1:826,2\n61#1:836,5\n61#1:849,2\n73#1:859,5\n73#1:871,2\n85#1:881,5\n85#1:894,2\n97#1:904,5\n97#1:916,2\n109#1:926,5\n109#1:939,2\n121#1:949,5\n121#1:961,2\n133#1:971,5\n133#1:983,2\n145#1:991,5\n145#1:1004,2\n158#1:1012,5\n158#1:1026,2\n170#1:1034,5\n170#1:1047,2\n182#1:1055,5\n182#1:1069,2\n194#1:1077,5\n194#1:1090,2\n206#1:1098,5\n206#1:1112,2\n219#1:1120,5\n219#1:1133,2\n235#1:1141,5\n235#1:1154,2\n250#1:1164,5\n250#1:1177,2\n288#1:1181\n324#1:1188,5\n324#1:1207,2\n349#1:1217,5\n349#1:1228,2\n385#1:1231\n415#1:1238,5\n415#1:1249,2\n436#1:1259,5\n436#1:1270,2\n468#1:1273\n494#1:1280,5\n494#1:1291,2\n515#1:1301,5\n515#1:1312,2\n547#1:1315\n577#1:1322,5\n577#1:1333,2\n598#1:1343,5\n598#1:1354,2\n624#1:1357\n636#1:1364,5\n636#1:1375,2\n647#1:1385,5\n647#1:1396,2\n673#1:1399\n685#1:1406,5\n685#1:1417,2\n699#1:1428,5\n699#1:1439,2\n713#1:1443\n717#1:1453,5\n717#1:1464,2\n732#1:1474,5\n732#1:1485,2\n752#1:1497,5\n752#1:1508,2\n768#1:1511,7\n788#1:1518,7\n16#1:803\n16#1:804\n50#1:824\n62#1:847\n74#1:869\n86#1:892\n98#1:914\n110#1:937\n122#1:959\n134#1:981\n146#1:1001,2\n159#1:1023,2\n171#1:1044,2\n183#1:1066,2\n195#1:1087,2\n207#1:1109,2\n220#1:1130,2\n236#1:1151,2\n62#1:846\n86#1:891\n110#1:936\n159#1:1022\n183#1:1065\n207#1:1108\n251#1:1174,2\n325#1:1198\n325#1:1203,3\n289#1:1182\n386#1:1232\n469#1:1274\n548#1:1316\n625#1:1358\n674#1:1400\n697#1:1420\n695#1:1442\n715#1:1444\n715#1:1445\n712#1:1467\n730#1:1468\n745#1:1488\n746#1:1489\n748#1:1490\n749#1:1491\n325#1:1199,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0013\n\u0002\u0010\u0014\n\u0002\u0010\u0015\n\u0002\u0010\u0016\n\u0002\u0010\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0010\t\n\u0000\n\u0002\u0010\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008!\u001a$\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0086\u0008\u00f8\u0001\u0000\u001a\u001c\u0010\u0006\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u001a&\u0010\u0006\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u001a&\u0010\u0006\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\n\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u001a&\u0010\u0006\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\n\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u001a&\u0010\u0006\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\n\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u001a&\u0010\u0006\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\n\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u001a&\u0010\u0006\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\n\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u001a3\u0010\u0006\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\n\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u001a3\u0010\u0006\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\n\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u001a3\u0010\u0006\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\n\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001a\u001a3\u0010\u0006\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\n\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u001a)\u0010\u0006\u001a\u00020\u0007*\u00020\u001e2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007H\u0086\u0008\u001a\n\u0010\u001f\u001a\u00020 *\u00020\u0002\u001a\r\u0010\u001f\u001a\u00020 *\u00020\u001eH\u0086\u0008\u001as\u0010!\u001a\u0002H\"\"\u0004\u0008\u0000\u0010\"*\u00020\u00022\u0006\u0010#\u001a\u00020\u00072\u0006\u0010$\u001a\u00020%26\u0010\u0003\u001a2\u0012\u0013\u0012\u00110\'\u00a2\u0006\u000c\u0008(\u0012\u0008\u0008$\u0012\u0004\u0008\u0008()\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008(\u0012\u0008\u0008$\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u0002H\"0&H\u0081\u0008\u00f8\u0001\u0000\u00f8\u0001\u0002\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0003 \u0001\u00a2\u0006\u0002\u0010*\u001a\n\u0010+\u001a\u00020,*\u00020\u0002\u001a\r\u0010+\u001a\u00020,*\u00020\u001eH\u0086\u0008\u001a\u001c\u0010-\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u001a&\u0010-\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u001a&\u0010-\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\n\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u001a&\u0010-\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\n\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u001a&\u0010-\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\n\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u001a&\u0010-\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\n\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u001a&\u0010-\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\n\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u001a3\u0010-\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\n\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008.\u0010/\u001a3\u0010-\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\n\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u00080\u00101\u001a3\u0010-\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\n\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u00082\u00103\u001a3\u0010-\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\n\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u00084\u00105\u001a)\u0010-\u001a\u00020\u0001*\u00020\u001e2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007H\u0086\u0008\u001a\n\u00106\u001a\u00020\u0007*\u00020\u0002\u001a\r\u00106\u001a\u00020\u0007*\u00020\u001eH\u0086\u0008\u001a\n\u00107\u001a\u000208*\u00020\u0002\u001a\r\u00107\u001a\u000208*\u00020\u001eH\u0086\u0008\u001a\n\u00109\u001a\u00020:*\u00020\u0002\u001a\r\u00109\u001a\u00020:*\u00020\u001eH\u0086\u0008\u001a\u0012\u0010;\u001a\u00020<*\u00020\u0002\u00f8\u0001\u0002\u00a2\u0006\u0002\u0010=\u001a\u0015\u0010;\u001a\u00020<*\u00020\u001eH\u0086\u0008\u00f8\u0001\u0002\u00a2\u0006\u0002\u0010>\u001a\u0012\u0010?\u001a\u00020@*\u00020\u0002\u00f8\u0001\u0002\u00a2\u0006\u0002\u0010A\u001a\u0015\u0010?\u001a\u00020@*\u00020\u001eH\u0086\u0008\u00f8\u0001\u0002\u00a2\u0006\u0002\u0010B\u001a\u0012\u0010C\u001a\u00020D*\u00020\u0002\u00f8\u0001\u0002\u00a2\u0006\u0002\u0010E\u001a\u0015\u0010C\u001a\u00020D*\u00020\u001eH\u0086\u0008\u00f8\u0001\u0002\u00a2\u0006\u0002\u0010F\u001a\u0012\u0010G\u001a\u00020H*\u00020\u0002\u00f8\u0001\u0002\u00a2\u0006\u0002\u0010I\u001a\u0015\u0010G\u001a\u00020H*\u00020\u001eH\u0086\u0008\u00f8\u0001\u0002\u00a2\u0006\u0002\u0010J\u001a\u0012\u0010K\u001a\u00020\u0001*\u00020\u00022\u0006\u0010L\u001a\u00020 \u001a\u0015\u0010K\u001a\u00020\u0001*\u00020\u001e2\u0006\u0010L\u001a\u00020 H\u0086\u0008\u001ah\u0010M\u001a\u00020\u0001*\u00020\u00022\u0006\u0010#\u001a\u00020\u00072\u0006\u0010$\u001a\u00020%26\u0010\u0003\u001a2\u0012\u0013\u0012\u00110\'\u00a2\u0006\u000c\u0008(\u0012\u0008\u0008$\u0012\u0004\u0008\u0008()\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008(\u0012\u0008\u0008$\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\u00010&H\u0081\u0008\u00f8\u0001\u0000\u00f8\u0001\u0002\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0003 \u0001\u001a\u0012\u0010N\u001a\u00020\u0001*\u00020\u00022\u0006\u0010L\u001a\u00020,\u001a\u0015\u0010N\u001a\u00020\u0001*\u00020\u001e2\u0006\u0010L\u001a\u00020,H\u0086\u0008\u001a\u0012\u0010O\u001a\u00020\u0001*\u00020\u00022\u0006\u0010P\u001a\u00020\u0002\u001a\u001a\u0010O\u001a\u00020\u0001*\u00020\u00022\u0006\u0010P\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0007\u001a&\u0010O\u001a\u00020\u0001*\u00020\u00022\u0006\u0010Q\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u001a&\u0010O\u001a\u00020\u0001*\u00020\u00022\u0006\u0010Q\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u001a&\u0010O\u001a\u00020\u0001*\u00020\u00022\u0006\u0010Q\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u001a&\u0010O\u001a\u00020\u0001*\u00020\u00022\u0006\u0010Q\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u001a&\u0010O\u001a\u00020\u0001*\u00020\u00022\u0006\u0010Q\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u001a&\u0010O\u001a\u00020\u0001*\u00020\u00022\u0006\u0010Q\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u001a3\u0010O\u001a\u00020\u0001*\u00020\u00022\u0006\u0010Q\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008R\u0010/\u001a3\u0010O\u001a\u00020\u0001*\u00020\u00022\u0006\u0010Q\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008S\u00101\u001a3\u0010O\u001a\u00020\u0001*\u00020\u00022\u0006\u0010Q\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008T\u00103\u001a3\u0010O\u001a\u00020\u0001*\u00020\u00022\u0006\u0010Q\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008U\u00105\u001a)\u0010O\u001a\u00020\u0001*\u00020\u001e2\u0006\u0010Q\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007H\u0086\u0008\u001a\u0012\u0010V\u001a\u00020\u0001*\u00020\u00022\u0006\u0010L\u001a\u00020\u0007\u001a\u0015\u0010V\u001a\u00020\u0001*\u00020\u001e2\u0006\u0010L\u001a\u00020\u0007H\u0086\u0008\u001a\u0012\u0010W\u001a\u00020\u0001*\u00020\u00022\u0006\u0010L\u001a\u000208\u001a\u0015\u0010W\u001a\u00020\u0001*\u00020\u001e2\u0006\u0010L\u001a\u000208H\u0086\u0008\u001a\u0012\u0010X\u001a\u00020\u0001*\u00020\u00022\u0006\u0010L\u001a\u00020:\u001a\u0015\u0010X\u001a\u00020\u0001*\u00020\u001e2\u0006\u0010L\u001a\u00020:H\u0086\u0008\u001a\u001f\u0010Y\u001a\u00020\u0001*\u00020\u00022\u0006\u0010L\u001a\u00020<\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008Z\u0010[\u001a\u001f\u0010Y\u001a\u00020\u0001*\u00020\u001e2\u0006\u0010L\u001a\u00020<\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008Z\u0010\\\u001a\u001f\u0010]\u001a\u00020\u0001*\u00020\u00022\u0006\u0010L\u001a\u00020@\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008^\u0010_\u001a\"\u0010]\u001a\u00020\u0001*\u00020\u001e2\u0006\u0010L\u001a\u00020@H\u0086\u0008\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008^\u0010`\u001a\u001f\u0010a\u001a\u00020\u0001*\u00020\u00022\u0006\u0010L\u001a\u00020D\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008b\u0010c\u001a\"\u0010a\u001a\u00020\u0001*\u00020\u001e2\u0006\u0010L\u001a\u00020DH\u0086\u0008\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008b\u0010d\u001a\u001f\u0010e\u001a\u00020\u0001*\u00020\u00022\u0006\u0010L\u001a\u00020H\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008f\u0010g\u001a\"\u0010e\u001a\u00020\u0001*\u00020\u001e2\u0006\u0010L\u001a\u00020HH\u0086\u0008\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008f\u0010h\u0082\u0002\u0012\n\u0005\u0008\u009920\u0001\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006i"
    }
    d2 = {
        "forEach",
        "",
        "Lio/ktor/utils/io/core/Buffer;",
        "block",
        "Lkotlin/Function1;",
        "",
        "readAvailable",
        "",
        "dst",
        "length",
        "destination",
        "",
        "offset",
        "",
        "",
        "",
        "",
        "",
        "Lkotlin/UByteArray;",
        "readAvailable-o1GoV1E",
        "(Lio/ktor/utils/io/core/Buffer;[BII)I",
        "Lkotlin/UIntArray;",
        "readAvailable-o2ZM2JE",
        "(Lio/ktor/utils/io/core/Buffer;[III)I",
        "Lkotlin/ULongArray;",
        "readAvailable-pqYNikA",
        "(Lio/ktor/utils/io/core/Buffer;[JII)I",
        "Lkotlin/UShortArray;",
        "readAvailable-Wt3Bwxc",
        "(Lio/ktor/utils/io/core/Buffer;[SII)I",
        "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
        "readDouble",
        "",
        "readExact",
        "R",
        "size",
        "name",
        "",
        "Lkotlin/Function2;",
        "Lio/ktor/utils/io/bits/Memory;",
        "Lkotlin/ParameterName;",
        "memory",
        "(Lio/ktor/utils/io/core/Buffer;ILjava/lang/String;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "readFloat",
        "",
        "readFully",
        "readFully-o1GoV1E",
        "(Lio/ktor/utils/io/core/Buffer;[BII)V",
        "readFully-o2ZM2JE",
        "(Lio/ktor/utils/io/core/Buffer;[III)V",
        "readFully-pqYNikA",
        "(Lio/ktor/utils/io/core/Buffer;[JII)V",
        "readFully-Wt3Bwxc",
        "(Lio/ktor/utils/io/core/Buffer;[SII)V",
        "readInt",
        "readLong",
        "",
        "readShort",
        "",
        "readUByte",
        "Lkotlin/UByte;",
        "(Lio/ktor/utils/io/core/Buffer;)B",
        "(Lio/ktor/utils/io/core/internal/ChunkBuffer;)B",
        "readUInt",
        "Lkotlin/UInt;",
        "(Lio/ktor/utils/io/core/Buffer;)I",
        "(Lio/ktor/utils/io/core/internal/ChunkBuffer;)I",
        "readULong",
        "Lkotlin/ULong;",
        "(Lio/ktor/utils/io/core/Buffer;)J",
        "(Lio/ktor/utils/io/core/internal/ChunkBuffer;)J",
        "readUShort",
        "Lkotlin/UShort;",
        "(Lio/ktor/utils/io/core/Buffer;)S",
        "(Lio/ktor/utils/io/core/internal/ChunkBuffer;)S",
        "writeDouble",
        "value",
        "writeExact",
        "writeFloat",
        "writeFully",
        "src",
        "source",
        "writeFully-o1GoV1E",
        "writeFully-o2ZM2JE",
        "writeFully-pqYNikA",
        "writeFully-Wt3Bwxc",
        "writeInt",
        "writeLong",
        "writeShort",
        "writeUByte",
        "writeUByte-EK-6454",
        "(Lio/ktor/utils/io/core/Buffer;B)V",
        "(Lio/ktor/utils/io/core/internal/ChunkBuffer;B)V",
        "writeUInt",
        "writeUInt-Qn1smSk",
        "(Lio/ktor/utils/io/core/Buffer;I)V",
        "(Lio/ktor/utils/io/core/internal/ChunkBuffer;I)V",
        "writeULong",
        "writeULong-2TYgG_w",
        "(Lio/ktor/utils/io/core/Buffer;J)V",
        "(Lio/ktor/utils/io/core/internal/ChunkBuffer;J)V",
        "writeUShort",
        "writeUShort-i8woANY",
        "(Lio/ktor/utils/io/core/Buffer;S)V",
        "(Lio/ktor/utils/io/core/internal/ChunkBuffer;S)V",
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
.method public static final forEach(Lio/ktor/utils/io/core/Buffer;Lkotlin/jvm/functions/Function1;)V
    .locals 11
    .param p0, "$this$forEach"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Buffer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Byte;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 14
    .local v0, "$i$f$forEach":I
    move-object v1, p0

    .local v1, "$this$read$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 798
    .local v2, "$i$f$read":I
    nop

    .line 802
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v3

    .local v3, "memory":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    .local v4, "start":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    .local v5, "endExclusive":I
    const/4 v6, 0x0

    .line 15
    .local v6, "$i$a$-read-BufferPrimitivesKt$forEach$1":I
    move v7, v4

    .local v7, "index":I
    :goto_0
    if-ge v7, v5, :cond_0

    .line 16
    move-object v8, v3

    .local v8, "$this$get_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/4 v9, 0x0

    .line 803
    .local v9, "$i$f$get-eY85DW0":I
    const/4 v10, 0x0

    .line 804
    .local v10, "$i$f$loadAt-impl":I
    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    .line 803
    .end local v10    # "$i$f$loadAt-impl":I
    nop

    .end local v8    # "$this$get_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v9    # "$i$f$get-eY85DW0":I
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    .line 16
    invoke-interface {p1, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 18
    .end local v7    # "index":I
    :cond_0
    sub-int/2addr v5, v4

    .line 802
    .end local v3    # "memory":Ljava/nio/ByteBuffer;
    .end local v4    # "start":I
    .end local v5    # "endExclusive":I
    .end local v6    # "$i$a$-read-BufferPrimitivesKt$forEach$1":I
    move v3, v5

    .line 805
    .local v3, "rc$iv":I
    invoke-virtual {v1, v3}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 806
    nop

    .line 20
    .end local v1    # "$this$read$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$read":I
    .end local v3    # "rc$iv":I
    return-void
.end method

.method public static final readAvailable(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;I)I
    .locals 17
    .param p0, "$this$readAvailable"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "dst"    # Lio/ktor/utils/io/core/Buffer;
    .param p2, "length"    # I

    move-object/from16 v0, p1

    const-string v1, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "dst"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 713
    move-object/from16 v1, p0

    .local v1, "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 1443
    .local v3, "$i$f$canRead":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    if-le v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 713
    .end local v1    # "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$canRead":I
    :goto_0
    if-nez v4, :cond_1

    const/4 v1, -0x1

    return v1

    .line 715
    :cond_1
    move-object/from16 v1, p1

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 1444
    .local v3, "$i$f$getWriteRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v4

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    sub-int/2addr v4, v5

    .line 715
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getWriteRemaining":I
    move-object/from16 v1, p0

    .restart local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 1445
    .local v3, "$i$f$getReadRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v6

    sub-int/2addr v5, v6

    .line 715
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getReadRemaining":I
    move/from16 v1, p2

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 717
    .local v3, "readSize":I
    const-string v4, "buffer content"

    .local v4, "name$iv":Ljava/lang/String;
    move-object/from16 v5, p0

    .local v5, "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 1446
    .local v6, "$i$f$readExact":I
    nop

    .line 1450
    const/4 v7, 0x0

    .line 1452
    .local v7, "value$iv":Ljava/lang/Object;
    move-object v8, v5

    .local v8, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v9, 0x0

    .line 1453
    .local v9, "$i$f$read":I
    nop

    .line 1457
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v10

    .local v10, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v11

    .local v11, "start$iv":I
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v12

    .local v12, "endExclusive$iv":I
    const/4 v13, 0x0

    .line 1458
    .local v13, "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    sub-int v14, v12, v11

    if-lt v14, v3, :cond_2

    .line 1462
    move-object v14, v10

    .local v14, "memory":Ljava/nio/ByteBuffer;
    move v15, v11

    .local v15, "offset":I
    const/16 v16, 0x0

    .line 718
    .local v16, "$i$a$-readExact-BufferPrimitivesKt$readAvailable$19":I
    invoke-virtual/range {p1 .. p1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    invoke-static {v14, v1, v15, v3, v2}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    .line 719
    invoke-virtual {v0, v3}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 720
    nop

    .end local v14    # "memory":Ljava/nio/ByteBuffer;
    .end local v15    # "offset":I
    .end local v16    # "$i$a$-readExact-BufferPrimitivesKt$readAvailable$19":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1462
    nop

    .line 1463
    .end local v7    # "value$iv":Ljava/lang/Object;
    .local v1, "value$iv":Ljava/lang/Object;
    nop

    .line 1457
    .end local v10    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v11    # "start$iv":I
    .end local v12    # "endExclusive$iv":I
    .end local v13    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    move v2, v3

    .line 1464
    .local v2, "rc$iv$iv":I
    invoke-virtual {v8, v2}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 1465
    nop

    .line 1466
    .end local v2    # "rc$iv$iv":I
    .end local v8    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v9    # "$i$f$read":I
    nop

    .line 722
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v4    # "name$iv":Ljava/lang/String;
    .end local v5    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$readExact":I
    return v3

    .line 1459
    .restart local v4    # "name$iv":Ljava/lang/String;
    .restart local v5    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v6    # "$i$f$readExact":I
    .restart local v7    # "value$iv":Ljava/lang/Object;
    .restart local v8    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v9    # "$i$f$read":I
    .restart local v10    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v11    # "start$iv":I
    .restart local v12    # "endExclusive$iv":I
    .restart local v13    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    :cond_2
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Not enough bytes to read a "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, " of size "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v14, 0x2e

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final readAvailable(Lio/ktor/utils/io/core/Buffer;[BII)I
    .locals 6
    .param p0, "$this$readAvailable"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "destination"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_7

    .line 282
    if-ltz p3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_6

    .line 283
    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    if-eqz v2, :cond_5

    .line 288
    move-object v2, p0

    .local v2, "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 1181
    .local v3, "$i$f$canRead":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    if-le v4, v5, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    .line 288
    .end local v2    # "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$canRead":I
    :goto_3
    if-nez v0, :cond_4

    const/4 v0, -0x1

    return v0

    .line 289
    :cond_4
    move-object v0, p0

    .local v0, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v1, 0x0

    .line 1182
    .local v1, "$i$f$getReadRemaining":I
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    sub-int/2addr v2, v3

    .line 289
    .end local v0    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v1    # "$i$f$getReadRemaining":I
    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 290
    .local v0, "toBeRead":I
    invoke-static {p0, p1, p2, v0}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[BII)V

    .line 291
    return v0

    .line 283
    .end local v0    # "toBeRead":I
    :cond_5
    const/4 v0, 0x0

    .line 284
    .local v0, "$i$a$-require-BufferPrimitivesKt$readAvailable$3":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset + length should be less than the destination size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 285
    nop

    .line 284
    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 285
    nop

    .line 284
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 285
    nop

    .line 284
    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 285
    array-length v2, p1

    .line 284
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .end local v0    # "$i$a$-require-BufferPrimitivesKt$readAvailable$3":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1180
    :cond_6
    const/4 v0, 0x0

    .line 282
    .local v0, "$i$a$-require-BufferPrimitivesKt$readAvailable$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length shouldn\'t be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BufferPrimitivesKt$readAvailable$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1180
    :cond_7
    const/4 v0, 0x0

    .line 281
    .local v0, "$i$a$-require-BufferPrimitivesKt$readAvailable$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset shouldn\'t be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BufferPrimitivesKt$readAvailable$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final readAvailable(Lio/ktor/utils/io/core/Buffer;[DII)I
    .locals 6
    .param p0, "$this$readAvailable"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "destination"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_7

    .line 667
    if-ltz p3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_6

    .line 668
    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    if-eqz v2, :cond_5

    .line 673
    move-object v2, p0

    .local v2, "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 1399
    .local v3, "$i$f$canRead":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    if-le v4, v5, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    .line 673
    .end local v2    # "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$canRead":I
    :goto_3
    if-nez v0, :cond_4

    const/4 v0, -0x1

    return v0

    .line 674
    :cond_4
    div-int/lit8 v0, p3, 0x8

    move-object v1, p0

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 1400
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 674
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 675
    .local v0, "toBeRead":I
    invoke-static {p0, p1, p2, v0}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[DII)V

    .line 676
    return v0

    .line 668
    .end local v0    # "toBeRead":I
    :cond_5
    const/4 v0, 0x0

    .line 669
    .local v0, "$i$a$-require-BufferPrimitivesKt$readAvailable$18":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset + length should be less than the destination size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 670
    nop

    .line 669
    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 670
    nop

    .line 669
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 670
    nop

    .line 669
    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 670
    array-length v2, p1

    .line 669
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 668
    .end local v0    # "$i$a$-require-BufferPrimitivesKt$readAvailable$18":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1180
    :cond_6
    const/4 v0, 0x0

    .line 667
    .local v0, "$i$a$-require-BufferPrimitivesKt$readAvailable$17":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length shouldn\'t be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BufferPrimitivesKt$readAvailable$17":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1180
    :cond_7
    const/4 v0, 0x0

    .line 666
    .local v0, "$i$a$-require-BufferPrimitivesKt$readAvailable$16":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset shouldn\'t be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BufferPrimitivesKt$readAvailable$16":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final readAvailable(Lio/ktor/utils/io/core/Buffer;[FII)I
    .locals 6
    .param p0, "$this$readAvailable"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "destination"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_7

    .line 618
    if-ltz p3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_6

    .line 619
    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    if-eqz v2, :cond_5

    .line 624
    move-object v2, p0

    .local v2, "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 1357
    .local v3, "$i$f$canRead":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    if-le v4, v5, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    .line 624
    .end local v2    # "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$canRead":I
    :goto_3
    if-nez v0, :cond_4

    const/4 v0, -0x1

    return v0

    .line 625
    :cond_4
    div-int/lit8 v0, p3, 0x4

    move-object v1, p0

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 1358
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 625
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 626
    .local v0, "toBeRead":I
    invoke-static {p0, p1, p2, v0}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[FII)V

    .line 627
    return v0

    .line 619
    .end local v0    # "toBeRead":I
    :cond_5
    const/4 v0, 0x0

    .line 620
    .local v0, "$i$a$-require-BufferPrimitivesKt$readAvailable$15":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset + length should be less than the destination size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 621
    nop

    .line 620
    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 621
    nop

    .line 620
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 621
    nop

    .line 620
    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 621
    array-length v2, p1

    .line 620
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    .end local v0    # "$i$a$-require-BufferPrimitivesKt$readAvailable$15":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1180
    :cond_6
    const/4 v0, 0x0

    .line 618
    .local v0, "$i$a$-require-BufferPrimitivesKt$readAvailable$14":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length shouldn\'t be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BufferPrimitivesKt$readAvailable$14":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1180
    :cond_7
    const/4 v0, 0x0

    .line 617
    .local v0, "$i$a$-require-BufferPrimitivesKt$readAvailable$13":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset shouldn\'t be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BufferPrimitivesKt$readAvailable$13":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final readAvailable(Lio/ktor/utils/io/core/Buffer;[III)I
    .locals 6
    .param p0, "$this$readAvailable"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "destination"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_7

    .line 462
    if-ltz p3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_6

    .line 463
    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    if-eqz v2, :cond_5

    .line 468
    move-object v2, p0

    .local v2, "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 1273
    .local v3, "$i$f$canRead":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    if-le v4, v5, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    .line 468
    .end local v2    # "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$canRead":I
    :goto_3
    if-nez v0, :cond_4

    const/4 v0, -0x1

    return v0

    .line 469
    :cond_4
    div-int/lit8 v0, p3, 0x4

    move-object v1, p0

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 1274
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 469
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 470
    .local v0, "toBeRead":I
    invoke-static {p0, p1, p2, v0}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[III)V

    .line 471
    return v0

    .line 463
    .end local v0    # "toBeRead":I
    :cond_5
    const/4 v0, 0x0

    .line 464
    .local v0, "$i$a$-require-BufferPrimitivesKt$readAvailable$9":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset + length should be less than the destination size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 465
    nop

    .line 464
    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 465
    nop

    .line 464
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 465
    nop

    .line 464
    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 465
    array-length v2, p1

    .line 464
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 463
    .end local v0    # "$i$a$-require-BufferPrimitivesKt$readAvailable$9":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1180
    :cond_6
    const/4 v0, 0x0

    .line 462
    .local v0, "$i$a$-require-BufferPrimitivesKt$readAvailable$8":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length shouldn\'t be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BufferPrimitivesKt$readAvailable$8":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1180
    :cond_7
    const/4 v0, 0x0

    .line 461
    .local v0, "$i$a$-require-BufferPrimitivesKt$readAvailable$7":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset shouldn\'t be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BufferPrimitivesKt$readAvailable$7":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final readAvailable(Lio/ktor/utils/io/core/Buffer;[JII)I
    .locals 6
    .param p0, "$this$readAvailable"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "destination"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_7

    .line 541
    if-ltz p3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_6

    .line 542
    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    if-eqz v2, :cond_5

    .line 547
    move-object v2, p0

    .local v2, "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 1315
    .local v3, "$i$f$canRead":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    if-le v4, v5, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    .line 547
    .end local v2    # "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$canRead":I
    :goto_3
    if-nez v0, :cond_4

    const/4 v0, -0x1

    return v0

    .line 548
    :cond_4
    div-int/lit8 v0, p3, 0x8

    move-object v1, p0

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 1316
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 548
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 549
    .local v0, "toBeRead":I
    invoke-static {p0, p1, p2, v0}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[JII)V

    .line 550
    return v0

    .line 542
    .end local v0    # "toBeRead":I
    :cond_5
    const/4 v0, 0x0

    .line 543
    .local v0, "$i$a$-require-BufferPrimitivesKt$readAvailable$12":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset + length should be less than the destination size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 544
    nop

    .line 543
    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 544
    nop

    .line 543
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 544
    nop

    .line 543
    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 544
    array-length v2, p1

    .line 543
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 542
    .end local v0    # "$i$a$-require-BufferPrimitivesKt$readAvailable$12":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1180
    :cond_6
    const/4 v0, 0x0

    .line 541
    .local v0, "$i$a$-require-BufferPrimitivesKt$readAvailable$11":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length shouldn\'t be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BufferPrimitivesKt$readAvailable$11":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1180
    :cond_7
    const/4 v0, 0x0

    .line 540
    .local v0, "$i$a$-require-BufferPrimitivesKt$readAvailable$10":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset shouldn\'t be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BufferPrimitivesKt$readAvailable$10":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final readAvailable(Lio/ktor/utils/io/core/Buffer;[SII)I
    .locals 6
    .param p0, "$this$readAvailable"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "destination"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_7

    .line 379
    if-ltz p3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_6

    .line 380
    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    if-eqz v2, :cond_5

    .line 385
    move-object v2, p0

    .local v2, "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 1231
    .local v3, "$i$f$canRead":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    if-le v4, v5, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    .line 385
    .end local v2    # "$this$canRead$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$canRead":I
    :goto_3
    if-nez v0, :cond_4

    const/4 v0, -0x1

    return v0

    .line 386
    :cond_4
    div-int/lit8 v0, p3, 0x2

    move-object v1, p0

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 1232
    .local v2, "$i$f$getReadRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 386
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$getReadRemaining":I
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 387
    .local v0, "toBeRead":I
    invoke-static {p0, p1, p2, v0}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[SII)V

    .line 388
    return v0

    .line 380
    .end local v0    # "toBeRead":I
    :cond_5
    const/4 v0, 0x0

    .line 381
    .local v0, "$i$a$-require-BufferPrimitivesKt$readAvailable$6":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset + length should be less than the destination size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 382
    nop

    .line 381
    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 382
    nop

    .line 381
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 382
    nop

    .line 381
    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 382
    array-length v2, p1

    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    .end local v0    # "$i$a$-require-BufferPrimitivesKt$readAvailable$6":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1180
    :cond_6
    const/4 v0, 0x0

    .line 379
    .local v0, "$i$a$-require-BufferPrimitivesKt$readAvailable$5":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length shouldn\'t be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BufferPrimitivesKt$readAvailable$5":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1180
    :cond_7
    const/4 v0, 0x0

    .line 378
    .local v0, "$i$a$-require-BufferPrimitivesKt$readAvailable$4":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset shouldn\'t be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-BufferPrimitivesKt$readAvailable$4":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final readAvailable(Lio/ktor/utils/io/core/internal/ChunkBuffer;[BII)I
    .locals 2
    .param p0, "$this$readAvailable"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p1, "destination"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 300
    .local v0, "$i$f$readAvailable":I
    move-object v1, p0

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v1, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readAvailable(Lio/ktor/utils/io/core/Buffer;[BII)I

    move-result v1

    return v1
.end method

.method public static synthetic readAvailable$default(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;IILjava/lang/Object;)I
    .locals 1

    .line 712
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    move-object p2, p1

    .local p2, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 p3, 0x0

    .line 1467
    .local p3, "$i$f$getWriteRemaining":I
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result p4

    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v0

    sub-int p2, p4, v0

    .line 712
    .end local p2    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local p3    # "$i$f$getWriteRemaining":I
    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readAvailable(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;I)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailable$default(Lio/ktor/utils/io/core/Buffer;[BIIILjava/lang/Object;)I
    .locals 0

    .line 280
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readAvailable(Lio/ktor/utils/io/core/Buffer;[BII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailable$default(Lio/ktor/utils/io/core/Buffer;[DIIILjava/lang/Object;)I
    .locals 0

    .line 661
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 663
    const/4 p2, 0x0

    .line 661
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 664
    array-length p3, p1

    sub-int/2addr p3, p2

    .line 661
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readAvailable(Lio/ktor/utils/io/core/Buffer;[DII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailable$default(Lio/ktor/utils/io/core/Buffer;[FIIILjava/lang/Object;)I
    .locals 0

    .line 612
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 614
    const/4 p2, 0x0

    .line 612
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 615
    array-length p3, p1

    sub-int/2addr p3, p2

    .line 612
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readAvailable(Lio/ktor/utils/io/core/Buffer;[FII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailable$default(Lio/ktor/utils/io/core/Buffer;[IIIILjava/lang/Object;)I
    .locals 0

    .line 460
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readAvailable(Lio/ktor/utils/io/core/Buffer;[III)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailable$default(Lio/ktor/utils/io/core/Buffer;[JIIILjava/lang/Object;)I
    .locals 0

    .line 539
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readAvailable(Lio/ktor/utils/io/core/Buffer;[JII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailable$default(Lio/ktor/utils/io/core/Buffer;[SIIILjava/lang/Object;)I
    .locals 0

    .line 373
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 375
    const/4 p2, 0x0

    .line 373
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 376
    array-length p3, p1

    sub-int/2addr p3, p2

    .line 373
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readAvailable(Lio/ktor/utils/io/core/Buffer;[SII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailable$default(Lio/ktor/utils/io/core/internal/ChunkBuffer;[BIIILjava/lang/Object;)I
    .locals 0
    .param p0, "$this$readAvailable_u24default"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p1, "destination"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 295
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 297
    const/4 p2, 0x0

    .line 295
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 298
    array-length p4, p1

    sub-int p3, p4, p2

    .line 295
    :cond_1
    const-string p4, "<this>"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "destination"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 300
    .local p4, "$i$f$readAvailable":I
    move-object p5, p0

    check-cast p5, Lio/ktor/utils/io/core/Buffer;

    invoke-static {p5, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readAvailable(Lio/ktor/utils/io/core/Buffer;[BII)I

    move-result p5

    return p5
.end method

.method public static final readAvailable-Wt3Bwxc(Lio/ktor/utils/io/core/Buffer;[SII)I
    .locals 1
    .param p0, "$this$readAvailable_u2dWt3Bwxc"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "destination"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$readAvailable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readAvailable(Lio/ktor/utils/io/core/Buffer;[SII)I

    move-result v0

    return v0
.end method

.method public static synthetic readAvailable-Wt3Bwxc$default(Lio/ktor/utils/io/core/Buffer;[SIIILjava/lang/Object;)I
    .locals 0

    .line 401
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 403
    const/4 p2, 0x0

    .line 401
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 404
    invoke-static {p1}, Lkotlin/UShortArray;->getSize-impl([S)I

    move-result p3

    sub-int/2addr p3, p2

    .line 401
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readAvailable-Wt3Bwxc(Lio/ktor/utils/io/core/Buffer;[SII)I

    move-result p0

    return p0
.end method

.method public static final readAvailable-o1GoV1E(Lio/ktor/utils/io/core/Buffer;[BII)I
    .locals 1
    .param p0, "$this$readAvailable_u2do1GoV1E"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "destination"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$readAvailable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readAvailable(Lio/ktor/utils/io/core/Buffer;[BII)I

    move-result v0

    return v0
.end method

.method public static synthetic readAvailable-o1GoV1E$default(Lio/ktor/utils/io/core/Buffer;[BIIILjava/lang/Object;)I
    .locals 0

    .line 311
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 313
    const/4 p2, 0x0

    .line 311
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 314
    invoke-static {p1}, Lkotlin/UByteArray;->getSize-impl([B)I

    move-result p3

    sub-int/2addr p3, p2

    .line 311
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readAvailable-o1GoV1E(Lio/ktor/utils/io/core/Buffer;[BII)I

    move-result p0

    return p0
.end method

.method public static final readAvailable-o2ZM2JE(Lio/ktor/utils/io/core/Buffer;[III)I
    .locals 1
    .param p0, "$this$readAvailable_u2do2ZM2JE"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "destination"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$readAvailable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readAvailable(Lio/ktor/utils/io/core/Buffer;[III)I

    move-result v0

    return v0
.end method

.method public static synthetic readAvailable-o2ZM2JE$default(Lio/ktor/utils/io/core/Buffer;[IIIILjava/lang/Object;)I
    .locals 0

    .line 484
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {p1}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readAvailable-o2ZM2JE(Lio/ktor/utils/io/core/Buffer;[III)I

    move-result p0

    return p0
.end method

.method public static final readAvailable-pqYNikA(Lio/ktor/utils/io/core/Buffer;[JII)I
    .locals 1
    .param p0, "$this$readAvailable_u2dpqYNikA"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "destination"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$readAvailable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readAvailable(Lio/ktor/utils/io/core/Buffer;[JII)I

    move-result v0

    return v0
.end method

.method public static synthetic readAvailable-pqYNikA$default(Lio/ktor/utils/io/core/Buffer;[JIIILjava/lang/Object;)I
    .locals 0

    .line 563
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 565
    const/4 p2, 0x0

    .line 563
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 566
    invoke-static {p1}, Lkotlin/ULongArray;->getSize-impl([J)I

    move-result p3

    sub-int/2addr p3, p2

    .line 563
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readAvailable-pqYNikA(Lio/ktor/utils/io/core/Buffer;[JII)I

    move-result p0

    return p0
.end method

.method public static final readDouble(Lio/ktor/utils/io/core/Buffer;)D
    .locals 17
    .param p0, "$this$readDouble"    # Lio/ktor/utils/io/core/Buffer;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    const/16 v0, 0x8

    .local v0, "size$iv":I
    const-string v2, "long floating point number"

    .local v2, "name$iv":Ljava/lang/String;
    move-object/from16 v3, p0

    .local v3, "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 964
    .local v4, "$i$f$readExact":I
    nop

    .line 968
    const/4 v5, 0x0

    .line 970
    .local v5, "value$iv":Ljava/lang/Object;
    move-object v6, v3

    .local v6, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v7, 0x0

    .line 971
    .local v7, "$i$f$read":I
    nop

    .line 975
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v8

    .local v8, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v9

    .local v9, "start$iv":I
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v10

    .local v10, "endExclusive$iv":I
    const/4 v11, 0x0

    .line 976
    .local v11, "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    sub-int v12, v10, v9

    if-lt v12, v0, :cond_0

    .line 980
    move-object v12, v8

    .local v12, "memory":Ljava/nio/ByteBuffer;
    move v13, v9

    .local v13, "offset":I
    const/4 v14, 0x0

    .line 134
    .local v14, "$i$a$-readExact-BufferPrimitivesKt$readDouble$1":I
    move-object v15, v12

    .local v15, "$this$loadDoubleAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/16 v16, 0x0

    .line 981
    .local v16, "$i$f$loadDoubleAt-eY85DW0":I
    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v15

    .line 134
    .end local v15    # "$this$loadDoubleAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v16    # "$i$f$loadDoubleAt-eY85DW0":I
    nop

    .end local v12    # "memory":Ljava/nio/ByteBuffer;
    .end local v13    # "offset":I
    .end local v14    # "$i$a$-readExact-BufferPrimitivesKt$readDouble$1":I
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    .line 980
    move-object v5, v12

    .line 982
    nop

    .line 975
    .end local v8    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v9    # "start$iv":I
    .end local v10    # "endExclusive$iv":I
    .end local v11    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    move v8, v0

    .line 983
    .local v8, "rc$iv$iv":I
    invoke-virtual {v6, v8}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 984
    nop

    .line 985
    .end local v6    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v7    # "$i$f$read":I
    .end local v8    # "rc$iv$iv":I
    nop

    .end local v0    # "size$iv":I
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$readExact":I
    .end local v5    # "value$iv":Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 135
    return-wide v2

    .line 977
    .restart local v0    # "size$iv":I
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v3    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v4    # "$i$f$readExact":I
    .restart local v5    # "value$iv":Ljava/lang/Object;
    .restart local v6    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v7    # "$i$f$read":I
    .local v8, "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v9    # "start$iv":I
    .restart local v10    # "endExclusive$iv":I
    .restart local v11    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    :cond_0
    new-instance v12, Ljava/io/EOFException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Not enough bytes to read a "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " of size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method public static final readDouble(Lio/ktor/utils/io/core/internal/ChunkBuffer;)D
    .locals 3
    .param p0, "$this$readDouble"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 138
    .local v0, "$i$f$readDouble":I
    move-object v1, p0

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readDouble(Lio/ktor/utils/io/core/Buffer;)D

    move-result-wide v1

    return-wide v1
.end method

.method public static final readExact(Lio/ktor/utils/io/core/Buffer;ILjava/lang/String;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 11
    .param p0, "$this$readExact"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "size"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/utils/io/core/Buffer;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/utils/io/bits/Memory;",
            "-",
            "Ljava/lang/Integer;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 762
    .local v0, "$i$f$readExact":I
    nop

    .line 766
    const/4 v1, 0x0

    .line 768
    .local v1, "value":Ljava/lang/Object;
    move-object v2, p0

    .local v2, "$this$read$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 1511
    .local v3, "$i$f$read":I
    nop

    .line 1515
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v4

    .local v4, "memory":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    .local v5, "start":I
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    .local v6, "endExclusive":I
    const/4 v7, 0x0

    .line 769
    .local v7, "$i$a$-read-BufferPrimitivesKt$readExact$2":I
    sub-int v8, v6, v5

    if-lt v8, p1, :cond_0

    .line 773
    invoke-static {v4}, Lio/ktor/utils/io/bits/Memory;->box-impl(Ljava/nio/ByteBuffer;)Lio/ktor/utils/io/bits/Memory;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p3, v8, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 774
    nop

    .line 1515
    .end local v4    # "memory":Ljava/nio/ByteBuffer;
    .end local v5    # "start":I
    .end local v6    # "endExclusive":I
    .end local v7    # "$i$a$-read-BufferPrimitivesKt$readExact$2":I
    move v4, p1

    .line 1516
    .local v4, "rc$iv":I
    invoke-virtual {v2, v4}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 1517
    nop

    .line 777
    .end local v2    # "$this$read$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$read":I
    .end local v4    # "rc$iv":I
    return-object v1

    .line 770
    .restart local v2    # "$this$read$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v3    # "$i$f$read":I
    .local v4, "memory":Ljava/nio/ByteBuffer;
    .restart local v5    # "start":I
    .restart local v6    # "endExclusive":I
    .restart local v7    # "$i$a$-read-BufferPrimitivesKt$readExact$2":I
    :cond_0
    new-instance v8, Ljava/io/EOFException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not enough bytes to read a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " of size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x2e

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static final readFloat(Lio/ktor/utils/io/core/Buffer;)F
    .locals 17
    .param p0, "$this$readFloat"    # Lio/ktor/utils/io/core/Buffer;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x4

    .local v0, "size$iv":I
    const-string v2, "floating point number"

    .local v2, "name$iv":Ljava/lang/String;
    move-object/from16 v3, p0

    .local v3, "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 942
    .local v4, "$i$f$readExact":I
    nop

    .line 946
    const/4 v5, 0x0

    .line 948
    .local v5, "value$iv":Ljava/lang/Object;
    move-object v6, v3

    .local v6, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v7, 0x0

    .line 949
    .local v7, "$i$f$read":I
    nop

    .line 953
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v8

    .local v8, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v9

    .local v9, "start$iv":I
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v10

    .local v10, "endExclusive$iv":I
    const/4 v11, 0x0

    .line 954
    .local v11, "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    sub-int v12, v10, v9

    if-lt v12, v0, :cond_0

    .line 958
    move-object v12, v8

    .local v12, "memory":Ljava/nio/ByteBuffer;
    move v13, v9

    .local v13, "offset":I
    const/4 v14, 0x0

    .line 122
    .local v14, "$i$a$-readExact-BufferPrimitivesKt$readFloat$1":I
    move-object v15, v12

    .local v15, "$this$loadFloatAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/16 v16, 0x0

    .line 959
    .local v16, "$i$f$loadFloatAt-eY85DW0":I
    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v15

    .line 122
    .end local v15    # "$this$loadFloatAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v16    # "$i$f$loadFloatAt-eY85DW0":I
    nop

    .end local v12    # "memory":Ljava/nio/ByteBuffer;
    .end local v13    # "offset":I
    .end local v14    # "$i$a$-readExact-BufferPrimitivesKt$readFloat$1":I
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    .line 958
    move-object v5, v12

    .line 960
    nop

    .line 953
    .end local v8    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v9    # "start$iv":I
    .end local v10    # "endExclusive$iv":I
    .end local v11    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    move v8, v0

    .line 961
    .local v8, "rc$iv$iv":I
    invoke-virtual {v6, v8}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 962
    nop

    .line 963
    .end local v6    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v7    # "$i$f$read":I
    .end local v8    # "rc$iv$iv":I
    nop

    .end local v0    # "size$iv":I
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$readExact":I
    .end local v5    # "value$iv":Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 123
    return v0

    .line 955
    .restart local v0    # "size$iv":I
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v3    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v4    # "$i$f$readExact":I
    .restart local v5    # "value$iv":Ljava/lang/Object;
    .restart local v6    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v7    # "$i$f$read":I
    .local v8, "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v9    # "start$iv":I
    .restart local v10    # "endExclusive$iv":I
    .restart local v11    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    :cond_0
    new-instance v12, Ljava/io/EOFException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Not enough bytes to read a "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " of size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method public static final readFloat(Lio/ktor/utils/io/core/internal/ChunkBuffer;)F
    .locals 2
    .param p0, "$this$readFloat"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 126
    .local v0, "$i$f$readFloat":I
    move-object v1, p0

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFloat(Lio/ktor/utils/io/core/Buffer;)F

    move-result v1

    return v1
.end method

.method public static final readFully(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;I)I
    .locals 16
    .param p0, "$this$readFully"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "dst"    # Lio/ktor/utils/io/core/Buffer;
    .param p2, "length"    # I

    move/from16 v0, p2

    const-string v1, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "dst"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    const/4 v1, 0x1

    const/4 v4, 0x0

    if-ltz v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    const-string v6, "Failed requirement."

    if-eqz v5, :cond_4

    .line 697
    move-object/from16 v5, p1

    .local v5, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v7, 0x0

    .line 1420
    .local v7, "$i$f$getWriteRemaining":I
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v8

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v9

    sub-int/2addr v8, v9

    .end local v5    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v7    # "$i$f$getWriteRemaining":I
    if-gt v0, v8, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    .line 697
    :goto_1
    if-eqz v1, :cond_3

    .line 699
    const-string v1, "buffer content"

    .local v1, "name$iv":Ljava/lang/String;
    move-object/from16 v4, p0

    .local v4, "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v5, 0x0

    .line 1421
    .local v5, "$i$f$readExact":I
    nop

    .line 1425
    const/4 v6, 0x0

    .line 1427
    .local v6, "value$iv":Ljava/lang/Object;
    move-object v7, v4

    .local v7, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v8, 0x0

    .line 1428
    .local v8, "$i$f$read":I
    nop

    .line 1432
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v9

    .local v9, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v10

    .local v10, "start$iv":I
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v11

    .local v11, "endExclusive$iv":I
    const/4 v12, 0x0

    .line 1433
    .local v12, "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    sub-int v13, v11, v10

    if-lt v13, v0, :cond_2

    .line 1437
    move-object v13, v9

    .local v13, "memory":Ljava/nio/ByteBuffer;
    move v14, v10

    .local v14, "offset":I
    const/4 v15, 0x0

    .line 700
    .local v15, "$i$a$-readExact-BufferPrimitivesKt$readFully$7":I
    invoke-virtual/range {p1 .. p1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-static {v13, v2, v14, v0, v3}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    .line 701
    invoke-virtual/range {p1 .. p2}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 702
    nop

    .end local v13    # "memory":Ljava/nio/ByteBuffer;
    .end local v14    # "offset":I
    .end local v15    # "$i$a$-readExact-BufferPrimitivesKt$readFully$7":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1437
    nop

    .line 1438
    .end local v6    # "value$iv":Ljava/lang/Object;
    .local v2, "value$iv":Ljava/lang/Object;
    nop

    .line 1432
    .end local v9    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v10    # "start$iv":I
    .end local v11    # "endExclusive$iv":I
    .end local v12    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    move/from16 v3, p2

    .line 1439
    .local v3, "rc$iv$iv":I
    invoke-virtual {v7, v3}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 1440
    nop

    .line 1441
    .end local v3    # "rc$iv$iv":I
    .end local v7    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v8    # "$i$f$read":I
    nop

    .line 704
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v4    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "$i$f$readExact":I
    return v0

    .line 1434
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v4    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v5    # "$i$f$readExact":I
    .restart local v6    # "value$iv":Ljava/lang/Object;
    .restart local v7    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v8    # "$i$f$read":I
    .restart local v9    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v10    # "start$iv":I
    .restart local v11    # "endExclusive$iv":I
    .restart local v12    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Not enough bytes to read a "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " of size "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v13, 0x2e

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 697
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v4    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "$i$f$readExact":I
    .end local v6    # "value$iv":Ljava/lang/Object;
    .end local v7    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v8    # "$i$f$read":I
    .end local v9    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v10    # "start$iv":I
    .end local v11    # "endExclusive$iv":I
    .end local v12    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 696
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final readFully(Lio/ktor/utils/io/core/Buffer;[BII)V
    .locals 19
    .param p0, "$this$readFully"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "destination"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v0, p1

    move/from16 v1, p3

    const-string v2, "<this>"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "destination"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    const-string v2, "byte array"

    .local v2, "name$iv":Ljava/lang/String;
    move-object/from16 v4, p0

    .local v4, "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v5, 0x0

    .line 1157
    .local v5, "$i$f$readExact":I
    nop

    .line 1161
    const/4 v6, 0x0

    .line 1163
    .local v6, "value$iv":Ljava/lang/Object;
    move-object v7, v4

    .local v7, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v8, 0x0

    .line 1164
    .local v8, "$i$f$read":I
    nop

    .line 1168
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v9

    .local v9, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v10

    .local v10, "start$iv":I
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v11

    .local v11, "endExclusive$iv":I
    const/4 v12, 0x0

    .line 1169
    .local v12, "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    sub-int v13, v11, v10

    if-lt v13, v1, :cond_0

    .line 1173
    move-object v13, v9

    .local v13, "memory":Ljava/nio/ByteBuffer;
    move v14, v10

    .local v14, "srcOffset":I
    const/4 v15, 0x0

    .line 251
    .local v15, "$i$a$-readExact-BufferPrimitivesKt$readFully$1":I
    move-object/from16 v16, v13

    .local v16, "$this$loadByteArray_u2d9zorpBc$iv":Ljava/nio/ByteBuffer;
    const/16 v17, 0x0

    .line 1174
    .local v17, "$i$f$loadByteArray-9zorpBc":I
    move/from16 v3, p2

    move-object/from16 v18, v16

    move-object/from16 v16, v4

    move-object/from16 v4, v18

    .local v4, "$this$loadByteArray_u2d9zorpBc$iv":Ljava/nio/ByteBuffer;
    .local v16, "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    invoke-static {v4, v0, v14, v1, v3}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-9zorpBc(Ljava/nio/ByteBuffer;[BIII)V

    .line 1175
    nop

    .line 252
    .end local v4    # "$this$loadByteArray_u2d9zorpBc$iv":Ljava/nio/ByteBuffer;
    .end local v17    # "$i$f$loadByteArray-9zorpBc":I
    nop

    .end local v13    # "memory":Ljava/nio/ByteBuffer;
    .end local v14    # "srcOffset":I
    .end local v15    # "$i$a$-readExact-BufferPrimitivesKt$readFully$1":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1173
    nop

    .line 1176
    .end local v6    # "value$iv":Ljava/lang/Object;
    .local v4, "value$iv":Ljava/lang/Object;
    nop

    .line 1168
    .end local v9    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v10    # "start$iv":I
    .end local v11    # "endExclusive$iv":I
    .end local v12    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    move/from16 v6, p3

    .line 1177
    .local v6, "rc$iv$iv":I
    invoke-virtual {v7, v6}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 1178
    nop

    .line 1179
    .end local v6    # "rc$iv$iv":I
    .end local v7    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v8    # "$i$f$read":I
    nop

    .line 253
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v4    # "value$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$readExact":I
    .end local v16    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    return-void

    .line 1170
    .restart local v2    # "name$iv":Ljava/lang/String;
    .local v4, "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v5    # "$i$f$readExact":I
    .local v6, "value$iv":Ljava/lang/Object;
    .restart local v7    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v8    # "$i$f$read":I
    .restart local v9    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v10    # "start$iv":I
    .restart local v11    # "endExclusive$iv":I
    .restart local v12    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    :cond_0
    move-object/from16 v16, v4

    .end local v4    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v16    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    new-instance v4, Ljava/io/EOFException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Not enough bytes to read a "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " of size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static final readFully(Lio/ktor/utils/io/core/Buffer;[DII)V
    .locals 17
    .param p0, "$this$readFully"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "destination"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v0, p1

    move/from16 v1, p3

    const-string v2, "<this>"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "destination"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 647
    mul-int/lit8 v2, v1, 0x8

    .local v2, "size$iv":I
    const-string v4, "floating point numbers array"

    .local v4, "name$iv":Ljava/lang/String;
    move-object/from16 v5, p0

    .local v5, "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 1378
    .local v6, "$i$f$readExact":I
    nop

    .line 1382
    const/4 v7, 0x0

    .line 1384
    .local v7, "value$iv":Ljava/lang/Object;
    move-object v8, v5

    .local v8, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v9, 0x0

    .line 1385
    .local v9, "$i$f$read":I
    nop

    .line 1389
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v10

    .local v10, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v11

    .local v11, "start$iv":I
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v12

    .local v12, "endExclusive$iv":I
    const/4 v13, 0x0

    .line 1390
    .local v13, "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    sub-int v14, v12, v11

    if-lt v14, v2, :cond_0

    .line 1394
    move-object v14, v10

    .local v14, "memory":Ljava/nio/ByteBuffer;
    move v15, v11

    .local v15, "srcOffset":I
    const/16 v16, 0x0

    .line 648
    .local v16, "$i$a$-readExact-BufferPrimitivesKt$readFully$6":I
    move/from16 v3, p2

    invoke-static {v14, v15, v0, v3, v1}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadDoubleArray-9zorpBc(Ljava/nio/ByteBuffer;I[DII)V

    .line 649
    nop

    .end local v14    # "memory":Ljava/nio/ByteBuffer;
    .end local v15    # "srcOffset":I
    .end local v16    # "$i$a$-readExact-BufferPrimitivesKt$readFully$6":I
    sget-object v14, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1394
    move-object v7, v14

    .line 1395
    nop

    .line 1389
    .end local v10    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v11    # "start$iv":I
    .end local v12    # "endExclusive$iv":I
    .end local v13    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    move v10, v2

    .line 1396
    .local v10, "rc$iv$iv":I
    invoke-virtual {v8, v10}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 1397
    nop

    .line 1398
    .end local v8    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v9    # "$i$f$read":I
    .end local v10    # "rc$iv$iv":I
    nop

    .line 650
    .end local v2    # "size$iv":I
    .end local v4    # "name$iv":Ljava/lang/String;
    .end local v5    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$readExact":I
    .end local v7    # "value$iv":Ljava/lang/Object;
    return-void

    .line 1391
    .restart local v2    # "size$iv":I
    .restart local v4    # "name$iv":Ljava/lang/String;
    .restart local v5    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v6    # "$i$f$readExact":I
    .restart local v7    # "value$iv":Ljava/lang/Object;
    .restart local v8    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v9    # "$i$f$read":I
    .local v10, "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v11    # "start$iv":I
    .restart local v12    # "endExclusive$iv":I
    .restart local v13    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    :cond_0
    move/from16 v3, p2

    new-instance v14, Ljava/io/EOFException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not enough bytes to read a "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " of size "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v15, 0x2e

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method public static final readFully(Lio/ktor/utils/io/core/Buffer;[FII)V
    .locals 17
    .param p0, "$this$readFully"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "destination"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v0, p1

    move/from16 v1, p3

    const-string v2, "<this>"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "destination"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    mul-int/lit8 v2, v1, 0x4

    .local v2, "size$iv":I
    const-string v4, "floating point numbers array"

    .local v4, "name$iv":Ljava/lang/String;
    move-object/from16 v5, p0

    .local v5, "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 1336
    .local v6, "$i$f$readExact":I
    nop

    .line 1340
    const/4 v7, 0x0

    .line 1342
    .local v7, "value$iv":Ljava/lang/Object;
    move-object v8, v5

    .local v8, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v9, 0x0

    .line 1343
    .local v9, "$i$f$read":I
    nop

    .line 1347
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v10

    .local v10, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v11

    .local v11, "start$iv":I
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v12

    .local v12, "endExclusive$iv":I
    const/4 v13, 0x0

    .line 1348
    .local v13, "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    sub-int v14, v12, v11

    if-lt v14, v2, :cond_0

    .line 1352
    move-object v14, v10

    .local v14, "memory":Ljava/nio/ByteBuffer;
    move v15, v11

    .local v15, "srcOffset":I
    const/16 v16, 0x0

    .line 599
    .local v16, "$i$a$-readExact-BufferPrimitivesKt$readFully$5":I
    move/from16 v3, p2

    invoke-static {v14, v15, v0, v3, v1}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadFloatArray-9zorpBc(Ljava/nio/ByteBuffer;I[FII)V

    .line 600
    nop

    .end local v14    # "memory":Ljava/nio/ByteBuffer;
    .end local v15    # "srcOffset":I
    .end local v16    # "$i$a$-readExact-BufferPrimitivesKt$readFully$5":I
    sget-object v14, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1352
    move-object v7, v14

    .line 1353
    nop

    .line 1347
    .end local v10    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v11    # "start$iv":I
    .end local v12    # "endExclusive$iv":I
    .end local v13    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    move v10, v2

    .line 1354
    .local v10, "rc$iv$iv":I
    invoke-virtual {v8, v10}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 1355
    nop

    .line 1356
    .end local v8    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v9    # "$i$f$read":I
    .end local v10    # "rc$iv$iv":I
    nop

    .line 601
    .end local v2    # "size$iv":I
    .end local v4    # "name$iv":Ljava/lang/String;
    .end local v5    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$readExact":I
    .end local v7    # "value$iv":Ljava/lang/Object;
    return-void

    .line 1349
    .restart local v2    # "size$iv":I
    .restart local v4    # "name$iv":Ljava/lang/String;
    .restart local v5    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v6    # "$i$f$readExact":I
    .restart local v7    # "value$iv":Ljava/lang/Object;
    .restart local v8    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v9    # "$i$f$read":I
    .local v10, "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v11    # "start$iv":I
    .restart local v12    # "endExclusive$iv":I
    .restart local v13    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    :cond_0
    move/from16 v3, p2

    new-instance v14, Ljava/io/EOFException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not enough bytes to read a "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " of size "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v15, 0x2e

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method public static final readFully(Lio/ktor/utils/io/core/Buffer;[III)V
    .locals 17
    .param p0, "$this$readFully"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "destination"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v0, p1

    move/from16 v1, p3

    const-string v2, "<this>"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "destination"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    mul-int/lit8 v2, v1, 0x4

    .local v2, "size$iv":I
    const-string v4, "integers array"

    .local v4, "name$iv":Ljava/lang/String;
    move-object/from16 v5, p0

    .local v5, "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 1252
    .local v6, "$i$f$readExact":I
    nop

    .line 1256
    const/4 v7, 0x0

    .line 1258
    .local v7, "value$iv":Ljava/lang/Object;
    move-object v8, v5

    .local v8, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v9, 0x0

    .line 1259
    .local v9, "$i$f$read":I
    nop

    .line 1263
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v10

    .local v10, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v11

    .local v11, "start$iv":I
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v12

    .local v12, "endExclusive$iv":I
    const/4 v13, 0x0

    .line 1264
    .local v13, "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    sub-int v14, v12, v11

    if-lt v14, v2, :cond_0

    .line 1268
    move-object v14, v10

    .local v14, "memory":Ljava/nio/ByteBuffer;
    move v15, v11

    .local v15, "srcOffset":I
    const/16 v16, 0x0

    .line 437
    .local v16, "$i$a$-readExact-BufferPrimitivesKt$readFully$3":I
    move/from16 v3, p2

    invoke-static {v14, v15, v0, v3, v1}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadIntArray-9zorpBc(Ljava/nio/ByteBuffer;I[III)V

    .line 438
    nop

    .end local v14    # "memory":Ljava/nio/ByteBuffer;
    .end local v15    # "srcOffset":I
    .end local v16    # "$i$a$-readExact-BufferPrimitivesKt$readFully$3":I
    sget-object v14, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1268
    move-object v7, v14

    .line 1269
    nop

    .line 1263
    .end local v10    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v11    # "start$iv":I
    .end local v12    # "endExclusive$iv":I
    .end local v13    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    move v10, v2

    .line 1270
    .local v10, "rc$iv$iv":I
    invoke-virtual {v8, v10}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 1271
    nop

    .line 1272
    .end local v8    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v9    # "$i$f$read":I
    .end local v10    # "rc$iv$iv":I
    nop

    .line 439
    .end local v2    # "size$iv":I
    .end local v4    # "name$iv":Ljava/lang/String;
    .end local v5    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$readExact":I
    .end local v7    # "value$iv":Ljava/lang/Object;
    return-void

    .line 1265
    .restart local v2    # "size$iv":I
    .restart local v4    # "name$iv":Ljava/lang/String;
    .restart local v5    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v6    # "$i$f$readExact":I
    .restart local v7    # "value$iv":Ljava/lang/Object;
    .restart local v8    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v9    # "$i$f$read":I
    .local v10, "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v11    # "start$iv":I
    .restart local v12    # "endExclusive$iv":I
    .restart local v13    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    :cond_0
    move/from16 v3, p2

    new-instance v14, Ljava/io/EOFException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not enough bytes to read a "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " of size "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v15, 0x2e

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method public static final readFully(Lio/ktor/utils/io/core/Buffer;[JII)V
    .locals 17
    .param p0, "$this$readFully"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "destination"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v0, p1

    move/from16 v1, p3

    const-string v2, "<this>"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "destination"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    mul-int/lit8 v2, v1, 0x8

    .local v2, "size$iv":I
    const-string v4, "long integers array"

    .local v4, "name$iv":Ljava/lang/String;
    move-object/from16 v5, p0

    .local v5, "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 1294
    .local v6, "$i$f$readExact":I
    nop

    .line 1298
    const/4 v7, 0x0

    .line 1300
    .local v7, "value$iv":Ljava/lang/Object;
    move-object v8, v5

    .local v8, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v9, 0x0

    .line 1301
    .local v9, "$i$f$read":I
    nop

    .line 1305
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v10

    .local v10, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v11

    .local v11, "start$iv":I
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v12

    .local v12, "endExclusive$iv":I
    const/4 v13, 0x0

    .line 1306
    .local v13, "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    sub-int v14, v12, v11

    if-lt v14, v2, :cond_0

    .line 1310
    move-object v14, v10

    .local v14, "memory":Ljava/nio/ByteBuffer;
    move v15, v11

    .local v15, "srcOffset":I
    const/16 v16, 0x0

    .line 516
    .local v16, "$i$a$-readExact-BufferPrimitivesKt$readFully$4":I
    move/from16 v3, p2

    invoke-static {v14, v15, v0, v3, v1}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadLongArray-9zorpBc(Ljava/nio/ByteBuffer;I[JII)V

    .line 517
    nop

    .end local v14    # "memory":Ljava/nio/ByteBuffer;
    .end local v15    # "srcOffset":I
    .end local v16    # "$i$a$-readExact-BufferPrimitivesKt$readFully$4":I
    sget-object v14, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1310
    move-object v7, v14

    .line 1311
    nop

    .line 1305
    .end local v10    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v11    # "start$iv":I
    .end local v12    # "endExclusive$iv":I
    .end local v13    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    move v10, v2

    .line 1312
    .local v10, "rc$iv$iv":I
    invoke-virtual {v8, v10}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 1313
    nop

    .line 1314
    .end local v8    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v9    # "$i$f$read":I
    .end local v10    # "rc$iv$iv":I
    nop

    .line 518
    .end local v2    # "size$iv":I
    .end local v4    # "name$iv":Ljava/lang/String;
    .end local v5    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$readExact":I
    .end local v7    # "value$iv":Ljava/lang/Object;
    return-void

    .line 1307
    .restart local v2    # "size$iv":I
    .restart local v4    # "name$iv":Ljava/lang/String;
    .restart local v5    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v6    # "$i$f$readExact":I
    .restart local v7    # "value$iv":Ljava/lang/Object;
    .restart local v8    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v9    # "$i$f$read":I
    .local v10, "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v11    # "start$iv":I
    .restart local v12    # "endExclusive$iv":I
    .restart local v13    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    :cond_0
    move/from16 v3, p2

    new-instance v14, Ljava/io/EOFException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not enough bytes to read a "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " of size "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v15, 0x2e

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method public static final readFully(Lio/ktor/utils/io/core/Buffer;[SII)V
    .locals 17
    .param p0, "$this$readFully"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "destination"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v0, p1

    move/from16 v1, p3

    const-string v2, "<this>"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "destination"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    mul-int/lit8 v2, v1, 0x2

    .local v2, "size$iv":I
    const-string v4, "short integers array"

    .local v4, "name$iv":Ljava/lang/String;
    move-object/from16 v5, p0

    .local v5, "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 1210
    .local v6, "$i$f$readExact":I
    nop

    .line 1214
    const/4 v7, 0x0

    .line 1216
    .local v7, "value$iv":Ljava/lang/Object;
    move-object v8, v5

    .local v8, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v9, 0x0

    .line 1217
    .local v9, "$i$f$read":I
    nop

    .line 1221
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v10

    .local v10, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v11

    .local v11, "start$iv":I
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v12

    .local v12, "endExclusive$iv":I
    const/4 v13, 0x0

    .line 1222
    .local v13, "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    sub-int v14, v12, v11

    if-lt v14, v2, :cond_0

    .line 1226
    move-object v14, v10

    .local v14, "memory":Ljava/nio/ByteBuffer;
    move v15, v11

    .local v15, "srcOffset":I
    const/16 v16, 0x0

    .line 350
    .local v16, "$i$a$-readExact-BufferPrimitivesKt$readFully$2":I
    move/from16 v3, p2

    invoke-static {v14, v15, v0, v3, v1}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadShortArray-9zorpBc(Ljava/nio/ByteBuffer;I[SII)V

    .line 351
    nop

    .end local v14    # "memory":Ljava/nio/ByteBuffer;
    .end local v15    # "srcOffset":I
    .end local v16    # "$i$a$-readExact-BufferPrimitivesKt$readFully$2":I
    sget-object v14, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1226
    move-object v7, v14

    .line 1227
    nop

    .line 1221
    .end local v10    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v11    # "start$iv":I
    .end local v12    # "endExclusive$iv":I
    .end local v13    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    move v10, v2

    .line 1228
    .local v10, "rc$iv$iv":I
    invoke-virtual {v8, v10}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 1229
    nop

    .line 1230
    .end local v8    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v9    # "$i$f$read":I
    .end local v10    # "rc$iv$iv":I
    nop

    .line 352
    .end local v2    # "size$iv":I
    .end local v4    # "name$iv":Ljava/lang/String;
    .end local v5    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$readExact":I
    .end local v7    # "value$iv":Ljava/lang/Object;
    return-void

    .line 1223
    .restart local v2    # "size$iv":I
    .restart local v4    # "name$iv":Ljava/lang/String;
    .restart local v5    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v6    # "$i$f$readExact":I
    .restart local v7    # "value$iv":Ljava/lang/Object;
    .restart local v8    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v9    # "$i$f$read":I
    .local v10, "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v11    # "start$iv":I
    .restart local v12    # "endExclusive$iv":I
    .restart local v13    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    :cond_0
    move/from16 v3, p2

    new-instance v14, Ljava/io/EOFException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not enough bytes to read a "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " of size "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v15, 0x2e

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method public static final readFully(Lio/ktor/utils/io/core/internal/ChunkBuffer;[BII)V
    .locals 2
    .param p0, "$this$readFully"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p1, "destination"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 261
    .local v0, "$i$f$readFully":I
    move-object v1, p0

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v1, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[BII)V

    .line 262
    return-void
.end method

.method public static synthetic readFully$default(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;IILjava/lang/Object;)I
    .locals 1

    .line 695
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    move-object p2, p1

    .local p2, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 p3, 0x0

    .line 1442
    .local p3, "$i$f$getWriteRemaining":I
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result p4

    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v0

    sub-int p2, p4, v0

    .line 695
    .end local p2    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local p3    # "$i$f$getWriteRemaining":I
    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;I)I

    move-result p0

    return p0
.end method

.method public static synthetic readFully$default(Lio/ktor/utils/io/core/Buffer;[BIIILjava/lang/Object;)V
    .locals 0

    .line 249
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[BII)V

    return-void
.end method

.method public static synthetic readFully$default(Lio/ktor/utils/io/core/Buffer;[DIIILjava/lang/Object;)V
    .locals 0

    .line 646
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[DII)V

    return-void
.end method

.method public static synthetic readFully$default(Lio/ktor/utils/io/core/Buffer;[FIIILjava/lang/Object;)V
    .locals 0

    .line 597
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[FII)V

    return-void
.end method

.method public static synthetic readFully$default(Lio/ktor/utils/io/core/Buffer;[IIIILjava/lang/Object;)V
    .locals 0

    .line 435
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[III)V

    return-void
.end method

.method public static synthetic readFully$default(Lio/ktor/utils/io/core/Buffer;[JIIILjava/lang/Object;)V
    .locals 0

    .line 514
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[JII)V

    return-void
.end method

.method public static synthetic readFully$default(Lio/ktor/utils/io/core/Buffer;[SIIILjava/lang/Object;)V
    .locals 0

    .line 348
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[SII)V

    return-void
.end method

.method public static synthetic readFully$default(Lio/ktor/utils/io/core/internal/ChunkBuffer;[BIIILjava/lang/Object;)V
    .locals 0
    .param p0, "$this$readFully_u24default"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p1, "destination"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 256
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 258
    const/4 p2, 0x0

    .line 256
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 259
    array-length p4, p1

    sub-int p3, p4, p2

    .line 256
    :cond_1
    const-string p4, "<this>"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "destination"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 261
    .local p4, "$i$f$readFully":I
    move-object p5, p0

    check-cast p5, Lio/ktor/utils/io/core/Buffer;

    invoke-static {p5, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[BII)V

    .line 262
    return-void
.end method

.method public static final readFully-Wt3Bwxc(Lio/ktor/utils/io/core/Buffer;[SII)V
    .locals 1
    .param p0, "$this$readFully_u2dWt3Bwxc"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "destination"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$readFully"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[SII)V

    .line 362
    return-void
.end method

.method public static synthetic readFully-Wt3Bwxc$default(Lio/ktor/utils/io/core/Buffer;[SIIILjava/lang/Object;)V
    .locals 0

    .line 360
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {p1}, Lkotlin/UShortArray;->getSize-impl([S)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully-Wt3Bwxc(Lio/ktor/utils/io/core/Buffer;[SII)V

    return-void
.end method

.method public static final readFully-o1GoV1E(Lio/ktor/utils/io/core/Buffer;[BII)V
    .locals 1
    .param p0, "$this$readFully_u2do1GoV1E"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "destination"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$readFully"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[BII)V

    .line 271
    return-void
.end method

.method public static synthetic readFully-o1GoV1E$default(Lio/ktor/utils/io/core/Buffer;[BIIILjava/lang/Object;)V
    .locals 0

    .line 269
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {p1}, Lkotlin/UByteArray;->getSize-impl([B)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully-o1GoV1E(Lio/ktor/utils/io/core/Buffer;[BII)V

    return-void
.end method

.method public static final readFully-o2ZM2JE(Lio/ktor/utils/io/core/Buffer;[III)V
    .locals 1
    .param p0, "$this$readFully_u2do2ZM2JE"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "destination"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$readFully"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[III)V

    .line 449
    return-void
.end method

.method public static synthetic readFully-o2ZM2JE$default(Lio/ktor/utils/io/core/Buffer;[IIIILjava/lang/Object;)V
    .locals 0

    .line 447
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {p1}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully-o2ZM2JE(Lio/ktor/utils/io/core/Buffer;[III)V

    return-void
.end method

.method public static final readFully-pqYNikA(Lio/ktor/utils/io/core/Buffer;[JII)V
    .locals 1
    .param p0, "$this$readFully_u2dpqYNikA"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "destination"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$readFully"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[JII)V

    .line 528
    return-void
.end method

.method public static synthetic readFully-pqYNikA$default(Lio/ktor/utils/io/core/Buffer;[JIIILjava/lang/Object;)V
    .locals 0

    .line 526
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {p1}, Lkotlin/ULongArray;->getSize-impl([J)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully-pqYNikA(Lio/ktor/utils/io/core/Buffer;[JII)V

    return-void
.end method

.method public static final readInt(Lio/ktor/utils/io/core/Buffer;)I
    .locals 17
    .param p0, "$this$readInt"    # Lio/ktor/utils/io/core/Buffer;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x4

    .local v0, "size$iv":I
    const-string v2, "regular integer"

    .local v2, "name$iv":Ljava/lang/String;
    move-object/from16 v3, p0

    .local v3, "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 852
    .local v4, "$i$f$readExact":I
    nop

    .line 856
    const/4 v5, 0x0

    .line 858
    .local v5, "value$iv":Ljava/lang/Object;
    move-object v6, v3

    .local v6, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v7, 0x0

    .line 859
    .local v7, "$i$f$read":I
    nop

    .line 863
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v8

    .local v8, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v9

    .local v9, "start$iv":I
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v10

    .local v10, "endExclusive$iv":I
    const/4 v11, 0x0

    .line 864
    .local v11, "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    sub-int v12, v10, v9

    if-lt v12, v0, :cond_0

    .line 868
    move-object v12, v8

    .local v12, "memory":Ljava/nio/ByteBuffer;
    move v13, v9

    .local v13, "offset":I
    const/4 v14, 0x0

    .line 74
    .local v14, "$i$a$-readExact-BufferPrimitivesKt$readInt$1":I
    move-object v15, v12

    .local v15, "$this$loadIntAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/16 v16, 0x0

    .line 869
    .local v16, "$i$f$loadIntAt-eY85DW0":I
    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v15

    .line 74
    .end local v15    # "$this$loadIntAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v16    # "$i$f$loadIntAt-eY85DW0":I
    nop

    .end local v12    # "memory":Ljava/nio/ByteBuffer;
    .end local v13    # "offset":I
    .end local v14    # "$i$a$-readExact-BufferPrimitivesKt$readInt$1":I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 868
    move-object v5, v12

    .line 870
    nop

    .line 863
    .end local v8    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v9    # "start$iv":I
    .end local v10    # "endExclusive$iv":I
    .end local v11    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    move v8, v0

    .line 871
    .local v8, "rc$iv$iv":I
    invoke-virtual {v6, v8}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 872
    nop

    .line 873
    .end local v6    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v7    # "$i$f$read":I
    .end local v8    # "rc$iv$iv":I
    nop

    .end local v0    # "size$iv":I
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$readExact":I
    .end local v5    # "value$iv":Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 75
    return v0

    .line 865
    .restart local v0    # "size$iv":I
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v3    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v4    # "$i$f$readExact":I
    .restart local v5    # "value$iv":Ljava/lang/Object;
    .restart local v6    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v7    # "$i$f$read":I
    .local v8, "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v9    # "start$iv":I
    .restart local v10    # "endExclusive$iv":I
    .restart local v11    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    :cond_0
    new-instance v12, Ljava/io/EOFException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Not enough bytes to read a "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " of size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method public static final readInt(Lio/ktor/utils/io/core/internal/ChunkBuffer;)I
    .locals 2
    .param p0, "$this$readInt"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 78
    .local v0, "$i$f$readInt":I
    move-object v1, p0

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readInt(Lio/ktor/utils/io/core/Buffer;)I

    move-result v1

    return v1
.end method

.method public static final readLong(Lio/ktor/utils/io/core/Buffer;)J
    .locals 17
    .param p0, "$this$readLong"    # Lio/ktor/utils/io/core/Buffer;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    const/16 v0, 0x8

    .local v0, "size$iv":I
    const-string v2, "long integer"

    .local v2, "name$iv":Ljava/lang/String;
    move-object/from16 v3, p0

    .local v3, "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 897
    .local v4, "$i$f$readExact":I
    nop

    .line 901
    const/4 v5, 0x0

    .line 903
    .local v5, "value$iv":Ljava/lang/Object;
    move-object v6, v3

    .local v6, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v7, 0x0

    .line 904
    .local v7, "$i$f$read":I
    nop

    .line 908
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v8

    .local v8, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v9

    .local v9, "start$iv":I
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v10

    .local v10, "endExclusive$iv":I
    const/4 v11, 0x0

    .line 909
    .local v11, "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    sub-int v12, v10, v9

    if-lt v12, v0, :cond_0

    .line 913
    move-object v12, v8

    .local v12, "memory":Ljava/nio/ByteBuffer;
    move v13, v9

    .local v13, "offset":I
    const/4 v14, 0x0

    .line 98
    .local v14, "$i$a$-readExact-BufferPrimitivesKt$readLong$1":I
    move-object v15, v12

    .local v15, "$this$loadLongAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/16 v16, 0x0

    .line 914
    .local v16, "$i$f$loadLongAt-eY85DW0":I
    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v15

    .line 98
    .end local v15    # "$this$loadLongAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v16    # "$i$f$loadLongAt-eY85DW0":I
    nop

    .end local v12    # "memory":Ljava/nio/ByteBuffer;
    .end local v13    # "offset":I
    .end local v14    # "$i$a$-readExact-BufferPrimitivesKt$readLong$1":I
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 913
    move-object v5, v12

    .line 915
    nop

    .line 908
    .end local v8    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v9    # "start$iv":I
    .end local v10    # "endExclusive$iv":I
    .end local v11    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    move v8, v0

    .line 916
    .local v8, "rc$iv$iv":I
    invoke-virtual {v6, v8}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 917
    nop

    .line 918
    .end local v6    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v7    # "$i$f$read":I
    .end local v8    # "rc$iv$iv":I
    nop

    .end local v0    # "size$iv":I
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$readExact":I
    .end local v5    # "value$iv":Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 99
    return-wide v2

    .line 910
    .restart local v0    # "size$iv":I
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v3    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v4    # "$i$f$readExact":I
    .restart local v5    # "value$iv":Ljava/lang/Object;
    .restart local v6    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v7    # "$i$f$read":I
    .local v8, "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v9    # "start$iv":I
    .restart local v10    # "endExclusive$iv":I
    .restart local v11    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    :cond_0
    new-instance v12, Ljava/io/EOFException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Not enough bytes to read a "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " of size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method public static final readLong(Lio/ktor/utils/io/core/internal/ChunkBuffer;)J
    .locals 3
    .param p0, "$this$readLong"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 102
    .local v0, "$i$f$readLong":I
    move-object v1, p0

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readLong(Lio/ktor/utils/io/core/Buffer;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static final readShort(Lio/ktor/utils/io/core/Buffer;)S
    .locals 17
    .param p0, "$this$readShort"    # Lio/ktor/utils/io/core/Buffer;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x2

    .local v0, "size$iv":I
    const-string v2, "short integer"

    .local v2, "name$iv":Ljava/lang/String;
    move-object/from16 v3, p0

    .local v3, "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 807
    .local v4, "$i$f$readExact":I
    nop

    .line 811
    const/4 v5, 0x0

    .line 813
    .local v5, "value$iv":Ljava/lang/Object;
    move-object v6, v3

    .local v6, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v7, 0x0

    .line 814
    .local v7, "$i$f$read":I
    nop

    .line 818
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v8

    .local v8, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v9

    .local v9, "start$iv":I
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v10

    .local v10, "endExclusive$iv":I
    const/4 v11, 0x0

    .line 819
    .local v11, "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    sub-int v12, v10, v9

    if-lt v12, v0, :cond_0

    .line 823
    move-object v12, v8

    .local v12, "memory":Ljava/nio/ByteBuffer;
    move v13, v9

    .local v13, "offset":I
    const/4 v14, 0x0

    .line 50
    .local v14, "$i$a$-readExact-BufferPrimitivesKt$readShort$1":I
    move-object v15, v12

    .local v15, "$this$loadShortAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/16 v16, 0x0

    .line 824
    .local v16, "$i$f$loadShortAt-eY85DW0":I
    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v15

    .line 50
    .end local v15    # "$this$loadShortAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v16    # "$i$f$loadShortAt-eY85DW0":I
    nop

    .end local v12    # "memory":Ljava/nio/ByteBuffer;
    .end local v13    # "offset":I
    .end local v14    # "$i$a$-readExact-BufferPrimitivesKt$readShort$1":I
    invoke-static {v15}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    .line 823
    move-object v5, v12

    .line 825
    nop

    .line 818
    .end local v8    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v9    # "start$iv":I
    .end local v10    # "endExclusive$iv":I
    .end local v11    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    move v8, v0

    .line 826
    .local v8, "rc$iv$iv":I
    invoke-virtual {v6, v8}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 827
    nop

    .line 828
    .end local v6    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v7    # "$i$f$read":I
    .end local v8    # "rc$iv$iv":I
    nop

    .end local v0    # "size$iv":I
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$readExact":I
    .end local v5    # "value$iv":Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    .line 51
    return v0

    .line 820
    .restart local v0    # "size$iv":I
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v3    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v4    # "$i$f$readExact":I
    .restart local v5    # "value$iv":Ljava/lang/Object;
    .restart local v6    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v7    # "$i$f$read":I
    .local v8, "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v9    # "start$iv":I
    .restart local v10    # "endExclusive$iv":I
    .restart local v11    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    :cond_0
    new-instance v12, Ljava/io/EOFException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Not enough bytes to read a "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " of size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2e

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method public static final readShort(Lio/ktor/utils/io/core/internal/ChunkBuffer;)S
    .locals 2
    .param p0, "$this$readShort"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 54
    .local v0, "$i$f$readShort":I
    move-object v1, p0

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readShort(Lio/ktor/utils/io/core/Buffer;)S

    move-result v1

    return v1
.end method

.method public static final readUByte(Lio/ktor/utils/io/core/Buffer;)B
    .locals 1
    .param p0, "$this$readUByte"    # Lio/ktor/utils/io/core/Buffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->readByte()B

    move-result v0

    invoke-static {v0}, Lkotlin/UByte;->constructor-impl(B)B

    move-result v0

    return v0
.end method

.method public static final readUByte(Lio/ktor/utils/io/core/internal/ChunkBuffer;)B
    .locals 2
    .param p0, "$this$readUByte"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 29
    .local v0, "$i$f$readUByte":I
    move-object v1, p0

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readUByte(Lio/ktor/utils/io/core/Buffer;)B

    move-result v1

    return v1
.end method

.method public static final readUInt(Lio/ktor/utils/io/core/Buffer;)I
    .locals 19
    .param p0, "$this$readUInt"    # Lio/ktor/utils/io/core/Buffer;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x4

    .local v0, "size$iv":I
    const-string v2, "regular unsigned integer"

    .local v2, "name$iv":Ljava/lang/String;
    move-object/from16 v3, p0

    .local v3, "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 874
    .local v4, "$i$f$readExact":I
    nop

    .line 878
    const/4 v5, 0x0

    .line 880
    .local v5, "value$iv":Ljava/lang/Object;
    move-object v6, v3

    .local v6, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v7, 0x0

    .line 881
    .local v7, "$i$f$read":I
    nop

    .line 885
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v8

    .local v8, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v9

    .local v9, "start$iv":I
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v10

    .local v10, "endExclusive$iv":I
    const/4 v11, 0x0

    .line 886
    .local v11, "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    sub-int v12, v10, v9

    if-lt v12, v0, :cond_0

    .line 890
    move-object v12, v8

    .local v12, "memory":Ljava/nio/ByteBuffer;
    move v13, v9

    .local v13, "offset":I
    const/4 v14, 0x0

    .line 86
    .local v14, "$i$a$-readExact-BufferPrimitivesKt$readUInt$1":I
    move-object v15, v12

    .local v15, "$this$loadUIntAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/16 v16, 0x0

    .line 891
    .local v16, "$i$f$loadUIntAt-eY85DW0":I
    move-object/from16 v17, v15

    .local v17, "$this$loadIntAt_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    const/16 v18, 0x0

    .line 892
    .local v18, "$i$f$loadIntAt-eY85DW0":I
    move-object/from16 v1, v17

    .end local v17    # "$this$loadIntAt_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    .local v1, "$this$loadIntAt_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 891
    .end local v1    # "$this$loadIntAt_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    .end local v18    # "$i$f$loadIntAt-eY85DW0":I
    invoke-static {v1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v1

    .line 86
    .end local v15    # "$this$loadUIntAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v16    # "$i$f$loadUIntAt-eY85DW0":I
    nop

    .end local v12    # "memory":Ljava/nio/ByteBuffer;
    .end local v13    # "offset":I
    .end local v14    # "$i$a$-readExact-BufferPrimitivesKt$readUInt$1":I
    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    .line 890
    nop

    .line 893
    .end local v5    # "value$iv":Ljava/lang/Object;
    .local v1, "value$iv":Ljava/lang/Object;
    nop

    .line 885
    .end local v8    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v9    # "start$iv":I
    .end local v10    # "endExclusive$iv":I
    .end local v11    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    move v5, v0

    .line 894
    .local v5, "rc$iv$iv":I
    invoke-virtual {v6, v5}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 895
    nop

    .line 896
    .end local v5    # "rc$iv$iv":I
    .end local v6    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v7    # "$i$f$read":I
    nop

    .end local v0    # "size$iv":I
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$readExact":I
    invoke-virtual {v1}, Lkotlin/UInt;->unbox-impl()I

    move-result v0

    .line 87
    return v0

    .line 887
    .restart local v0    # "size$iv":I
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v3    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v4    # "$i$f$readExact":I
    .local v5, "value$iv":Ljava/lang/Object;
    .restart local v6    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v7    # "$i$f$read":I
    .restart local v8    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v9    # "start$iv":I
    .restart local v10    # "endExclusive$iv":I
    .restart local v11    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Not enough bytes to read a "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " of size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final readUInt(Lio/ktor/utils/io/core/internal/ChunkBuffer;)I
    .locals 2
    .param p0, "$this$readUInt"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 90
    .local v0, "$i$f$readUInt":I
    move-object v1, p0

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readUInt(Lio/ktor/utils/io/core/Buffer;)I

    move-result v1

    return v1
.end method

.method public static final readULong(Lio/ktor/utils/io/core/Buffer;)J
    .locals 19
    .param p0, "$this$readULong"    # Lio/ktor/utils/io/core/Buffer;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    const/16 v0, 0x8

    .local v0, "size$iv":I
    const-string v2, "long unsigned integer"

    .local v2, "name$iv":Ljava/lang/String;
    move-object/from16 v3, p0

    .local v3, "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 919
    .local v4, "$i$f$readExact":I
    nop

    .line 923
    const/4 v5, 0x0

    .line 925
    .local v5, "value$iv":Ljava/lang/Object;
    move-object v6, v3

    .local v6, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v7, 0x0

    .line 926
    .local v7, "$i$f$read":I
    nop

    .line 930
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v8

    .local v8, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v9

    .local v9, "start$iv":I
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v10

    .local v10, "endExclusive$iv":I
    const/4 v11, 0x0

    .line 931
    .local v11, "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    sub-int v12, v10, v9

    if-lt v12, v0, :cond_0

    .line 935
    move-object v12, v8

    .local v12, "memory":Ljava/nio/ByteBuffer;
    move v13, v9

    .local v13, "offset":I
    const/4 v14, 0x0

    .line 110
    .local v14, "$i$a$-readExact-BufferPrimitivesKt$readULong$1":I
    move-object v15, v12

    .local v15, "$this$loadULongAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/16 v16, 0x0

    .line 936
    .local v16, "$i$f$loadULongAt-eY85DW0":I
    move-object/from16 v17, v15

    .local v17, "$this$loadLongAt_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    const/16 v18, 0x0

    .line 937
    .local v18, "$i$f$loadLongAt-eY85DW0":I
    move-object/from16 v1, v17

    .end local v17    # "$this$loadLongAt_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    .local v1, "$this$loadLongAt_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v17

    .line 936
    .end local v1    # "$this$loadLongAt_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    .end local v18    # "$i$f$loadLongAt-eY85DW0":I
    invoke-static/range {v17 .. v18}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v17

    .line 110
    .end local v15    # "$this$loadULongAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v16    # "$i$f$loadULongAt-eY85DW0":I
    nop

    .end local v12    # "memory":Ljava/nio/ByteBuffer;
    .end local v13    # "offset":I
    .end local v14    # "$i$a$-readExact-BufferPrimitivesKt$readULong$1":I
    invoke-static/range {v17 .. v18}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    .line 935
    nop

    .line 938
    .end local v5    # "value$iv":Ljava/lang/Object;
    .local v1, "value$iv":Ljava/lang/Object;
    nop

    .line 930
    .end local v8    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v9    # "start$iv":I
    .end local v10    # "endExclusive$iv":I
    .end local v11    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    move v5, v0

    .line 939
    .local v5, "rc$iv$iv":I
    invoke-virtual {v6, v5}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 940
    nop

    .line 941
    .end local v5    # "rc$iv$iv":I
    .end local v6    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v7    # "$i$f$read":I
    nop

    .end local v0    # "size$iv":I
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$readExact":I
    invoke-virtual {v1}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide v0

    .line 111
    return-wide v0

    .line 932
    .restart local v0    # "size$iv":I
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v3    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v4    # "$i$f$readExact":I
    .local v5, "value$iv":Ljava/lang/Object;
    .restart local v6    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v7    # "$i$f$read":I
    .restart local v8    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v9    # "start$iv":I
    .restart local v10    # "endExclusive$iv":I
    .restart local v11    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Not enough bytes to read a "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " of size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final readULong(Lio/ktor/utils/io/core/internal/ChunkBuffer;)J
    .locals 3
    .param p0, "$this$readULong"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 114
    .local v0, "$i$f$readULong":I
    move-object v1, p0

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readULong(Lio/ktor/utils/io/core/Buffer;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static final readUShort(Lio/ktor/utils/io/core/Buffer;)S
    .locals 19
    .param p0, "$this$readUShort"    # Lio/ktor/utils/io/core/Buffer;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x2

    .local v0, "size$iv":I
    const-string v2, "short unsigned integer"

    .local v2, "name$iv":Ljava/lang/String;
    move-object/from16 v3, p0

    .local v3, "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 829
    .local v4, "$i$f$readExact":I
    nop

    .line 833
    const/4 v5, 0x0

    .line 835
    .local v5, "value$iv":Ljava/lang/Object;
    move-object v6, v3

    .local v6, "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v7, 0x0

    .line 836
    .local v7, "$i$f$read":I
    nop

    .line 840
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v8

    .local v8, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v9

    .local v9, "start$iv":I
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v10

    .local v10, "endExclusive$iv":I
    const/4 v11, 0x0

    .line 841
    .local v11, "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    sub-int v12, v10, v9

    if-lt v12, v0, :cond_0

    .line 845
    move-object v12, v8

    .local v12, "memory":Ljava/nio/ByteBuffer;
    move v13, v9

    .local v13, "offset":I
    const/4 v14, 0x0

    .line 62
    .local v14, "$i$a$-readExact-BufferPrimitivesKt$readUShort$1":I
    move-object v15, v12

    .local v15, "$this$loadUShortAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/16 v16, 0x0

    .line 846
    .local v16, "$i$f$loadUShortAt-eY85DW0":I
    move-object/from16 v17, v15

    .local v17, "$this$loadShortAt_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    const/16 v18, 0x0

    .line 847
    .local v18, "$i$f$loadShortAt-eY85DW0":I
    move-object/from16 v1, v17

    .end local v17    # "$this$loadShortAt_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    .local v1, "$this$loadShortAt_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    .line 846
    .end local v1    # "$this$loadShortAt_u2deY85DW0$iv$iv":Ljava/nio/ByteBuffer;
    .end local v18    # "$i$f$loadShortAt-eY85DW0":I
    invoke-static {v1}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v1

    .line 62
    .end local v15    # "$this$loadUShortAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v16    # "$i$f$loadUShortAt-eY85DW0":I
    nop

    .end local v12    # "memory":Ljava/nio/ByteBuffer;
    .end local v13    # "offset":I
    .end local v14    # "$i$a$-readExact-BufferPrimitivesKt$readUShort$1":I
    invoke-static {v1}, Lkotlin/UShort;->box-impl(S)Lkotlin/UShort;

    move-result-object v1

    .line 845
    nop

    .line 848
    .end local v5    # "value$iv":Ljava/lang/Object;
    .local v1, "value$iv":Ljava/lang/Object;
    nop

    .line 840
    .end local v8    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v9    # "start$iv":I
    .end local v10    # "endExclusive$iv":I
    .end local v11    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    move v5, v0

    .line 849
    .local v5, "rc$iv$iv":I
    invoke-virtual {v6, v5}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 850
    nop

    .line 851
    .end local v5    # "rc$iv$iv":I
    .end local v6    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v7    # "$i$f$read":I
    nop

    .end local v0    # "size$iv":I
    .end local v1    # "value$iv":Ljava/lang/Object;
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$readExact":I
    invoke-virtual {v1}, Lkotlin/UShort;->unbox-impl()S

    move-result v0

    .line 63
    return v0

    .line 842
    .restart local v0    # "size$iv":I
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v3    # "$this$readExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v4    # "$i$f$readExact":I
    .local v5, "value$iv":Ljava/lang/Object;
    .restart local v6    # "$this$read$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v7    # "$i$f$read":I
    .restart local v8    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v9    # "start$iv":I
    .restart local v10    # "endExclusive$iv":I
    .restart local v11    # "$i$a$-read-BufferPrimitivesKt$readExact$2$iv":I
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Not enough bytes to read a "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " of size "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final readUShort(Lio/ktor/utils/io/core/internal/ChunkBuffer;)S
    .locals 2
    .param p0, "$this$readUShort"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 66
    .local v0, "$i$f$readUShort":I
    move-object v1, p0

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readUShort(Lio/ktor/utils/io/core/Buffer;)S

    move-result v1

    return v1
.end method

.method public static final writeDouble(Lio/ktor/utils/io/core/Buffer;D)V
    .locals 19
    .param p0, "$this$writeDouble"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "value"    # D

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    const/16 v0, 0x8

    .local v0, "size$iv":I
    const-string v2, "long floating point number"

    .local v2, "name$iv":Ljava/lang/String;
    move-object/from16 v3, p0

    .local v3, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 1136
    .local v4, "$i$f$writeExact":I
    nop

    .line 1140
    move-object v5, v3

    .local v5, "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 1141
    .local v6, "$i$f$write":I
    nop

    .line 1145
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v7

    .local v7, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v8

    .local v8, "start$iv":I
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v9

    .local v9, "endExclusive$iv":I
    const/4 v10, 0x0

    .line 1146
    .local v10, "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    sub-int v11, v9, v8

    .line 1147
    .local v11, "writeRemaining$iv":I
    if-lt v11, v0, :cond_0

    .line 1150
    move-object v12, v7

    .local v12, "memory":Ljava/nio/ByteBuffer;
    move v13, v8

    .local v13, "offset":I
    const/4 v14, 0x0

    .line 236
    .local v14, "$i$a$-writeExact-BufferPrimitivesKt$writeDouble$1":I
    move-object v15, v12

    .local v15, "$this$storeDoubleAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    const/16 v16, 0x0

    .line 1151
    .local v16, "$i$f$storeDoubleAt-62zg_DM":I
    move-object/from16 v17, v3

    move/from16 v18, v4

    move-wide/from16 v3, p1

    .end local v3    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$writeExact":I
    .local v17, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .local v18, "$i$f$writeExact":I
    invoke-virtual {v15, v13, v3, v4}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    .line 1152
    nop

    .line 237
    .end local v15    # "$this$storeDoubleAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v16    # "$i$f$storeDoubleAt-62zg_DM":I
    nop

    .line 1150
    .end local v12    # "memory":Ljava/nio/ByteBuffer;
    .end local v13    # "offset":I
    .end local v14    # "$i$a$-writeExact-BufferPrimitivesKt$writeDouble$1":I
    nop

    .line 1153
    nop

    .line 1145
    .end local v7    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v8    # "start$iv":I
    .end local v9    # "endExclusive$iv":I
    .end local v10    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .end local v11    # "writeRemaining$iv":I
    move v7, v0

    .line 1154
    .local v7, "rc$iv$iv":I
    invoke-virtual {v5, v7}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 1155
    nop

    .line 1156
    .end local v5    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$write":I
    .end local v7    # "rc$iv$iv":I
    nop

    .line 238
    .end local v0    # "size$iv":I
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v17    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v18    # "$i$f$writeExact":I
    return-void

    .line 1148
    .restart local v0    # "size$iv":I
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v3    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v4    # "$i$f$writeExact":I
    .restart local v5    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v6    # "$i$f$write":I
    .local v7, "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v8    # "start$iv":I
    .restart local v9    # "endExclusive$iv":I
    .restart local v10    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .restart local v11    # "writeRemaining$iv":I
    :cond_0
    new-instance v12, Lio/ktor/utils/io/core/InsufficientSpaceException;

    invoke-direct {v12, v2, v0, v11}, Lio/ktor/utils/io/core/InsufficientSpaceException;-><init>(Ljava/lang/String;II)V

    throw v12
.end method

.method public static final writeDouble(Lio/ktor/utils/io/core/internal/ChunkBuffer;D)V
    .locals 2
    .param p0, "$this$writeDouble"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p1, "value"    # D

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 242
    .local v0, "$i$f$writeDouble":I
    move-object v1, p0

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v1, p1, p2}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeDouble(Lio/ktor/utils/io/core/Buffer;D)V

    .line 243
    return-void
.end method

.method public static final writeExact(Lio/ktor/utils/io/core/Buffer;ILjava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 10
    .param p0, "$this$writeExact"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "size"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Buffer;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/utils/io/bits/Memory;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 784
    .local v0, "$i$f$writeExact":I
    nop

    .line 788
    move-object v1, p0

    .local v1, "$this$write$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x0

    .line 1518
    .local v2, "$i$f$write":I
    nop

    .line 1522
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v3

    .local v3, "memory":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    .local v4, "start":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v5

    .local v5, "endExclusive":I
    const/4 v6, 0x0

    .line 789
    .local v6, "$i$a$-write-BufferPrimitivesKt$writeExact$2":I
    sub-int v7, v5, v4

    .line 790
    .local v7, "writeRemaining":I
    if-lt v7, p1, :cond_0

    .line 793
    invoke-static {v3}, Lio/ktor/utils/io/bits/Memory;->box-impl(Ljava/nio/ByteBuffer;)Lio/ktor/utils/io/bits/Memory;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p3, v8, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    nop

    .line 1522
    .end local v3    # "memory":Ljava/nio/ByteBuffer;
    .end local v4    # "start":I
    .end local v5    # "endExclusive":I
    .end local v6    # "$i$a$-write-BufferPrimitivesKt$writeExact$2":I
    .end local v7    # "writeRemaining":I
    move v3, p1

    .line 1523
    .local v3, "rc$iv":I
    invoke-virtual {v1, v3}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 1524
    nop

    .line 796
    .end local v1    # "$this$write$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v2    # "$i$f$write":I
    .end local v3    # "rc$iv":I
    return-void

    .line 791
    .restart local v1    # "$this$write$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v2    # "$i$f$write":I
    .local v3, "memory":Ljava/nio/ByteBuffer;
    .restart local v4    # "start":I
    .restart local v5    # "endExclusive":I
    .restart local v6    # "$i$a$-write-BufferPrimitivesKt$writeExact$2":I
    .restart local v7    # "writeRemaining":I
    :cond_0
    new-instance v8, Lio/ktor/utils/io/core/InsufficientSpaceException;

    invoke-direct {v8, p2, p1, v7}, Lio/ktor/utils/io/core/InsufficientSpaceException;-><init>(Ljava/lang/String;II)V

    throw v8
.end method

.method public static final writeFloat(Lio/ktor/utils/io/core/Buffer;F)V
    .locals 17
    .param p0, "$this$writeFloat"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "value"    # F

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x4

    .local v0, "size$iv":I
    const-string v2, "floating point number"

    .local v2, "name$iv":Ljava/lang/String;
    move-object/from16 v3, p0

    .local v3, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 1115
    .local v4, "$i$f$writeExact":I
    nop

    .line 1119
    move-object v5, v3

    .local v5, "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 1120
    .local v6, "$i$f$write":I
    nop

    .line 1124
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v7

    .local v7, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v8

    .local v8, "start$iv":I
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v9

    .local v9, "endExclusive$iv":I
    const/4 v10, 0x0

    .line 1125
    .local v10, "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    sub-int v11, v9, v8

    .line 1126
    .local v11, "writeRemaining$iv":I
    if-lt v11, v0, :cond_0

    .line 1129
    move-object v12, v7

    .local v12, "memory":Ljava/nio/ByteBuffer;
    move v13, v8

    .local v13, "offset":I
    const/4 v14, 0x0

    .line 220
    .local v14, "$i$a$-writeExact-BufferPrimitivesKt$writeFloat$1":I
    move-object v15, v12

    .local v15, "$this$storeFloatAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    const/16 v16, 0x0

    .line 1130
    .local v16, "$i$f$storeFloatAt-62zg_DM":I
    move/from16 v1, p1

    invoke-virtual {v15, v13, v1}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    .line 1131
    nop

    .line 221
    .end local v15    # "$this$storeFloatAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v16    # "$i$f$storeFloatAt-62zg_DM":I
    nop

    .line 1129
    .end local v12    # "memory":Ljava/nio/ByteBuffer;
    .end local v13    # "offset":I
    .end local v14    # "$i$a$-writeExact-BufferPrimitivesKt$writeFloat$1":I
    nop

    .line 1132
    nop

    .line 1124
    .end local v7    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v8    # "start$iv":I
    .end local v9    # "endExclusive$iv":I
    .end local v10    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .end local v11    # "writeRemaining$iv":I
    move v7, v0

    .line 1133
    .local v7, "rc$iv$iv":I
    invoke-virtual {v5, v7}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 1134
    nop

    .line 1135
    .end local v5    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$write":I
    .end local v7    # "rc$iv$iv":I
    nop

    .line 222
    .end local v0    # "size$iv":I
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$writeExact":I
    return-void

    .line 1127
    .restart local v0    # "size$iv":I
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v3    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v4    # "$i$f$writeExact":I
    .restart local v5    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v6    # "$i$f$write":I
    .local v7, "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v8    # "start$iv":I
    .restart local v9    # "endExclusive$iv":I
    .restart local v10    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .restart local v11    # "writeRemaining$iv":I
    :cond_0
    move/from16 v1, p1

    new-instance v12, Lio/ktor/utils/io/core/InsufficientSpaceException;

    invoke-direct {v12, v2, v0, v11}, Lio/ktor/utils/io/core/InsufficientSpaceException;-><init>(Ljava/lang/String;II)V

    throw v12
.end method

.method public static final writeFloat(Lio/ktor/utils/io/core/internal/ChunkBuffer;F)V
    .locals 2
    .param p0, "$this$writeFloat"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p1, "value"    # F

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 226
    .local v0, "$i$f$writeFloat":I
    move-object v1, p0

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v1, p1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFloat(Lio/ktor/utils/io/core/Buffer;F)V

    .line 227
    return-void
.end method

.method public static final writeFully(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;)V
    .locals 17
    .param p0, "$this$writeFully"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "src"    # Lio/ktor/utils/io/core/Buffer;

    move-object/from16 v0, p1

    const-string v1, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "src"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 730
    move-object/from16 v1, p1

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v3, 0x0

    .line 1468
    .local v3, "$i$f$getReadRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v5

    sub-int/2addr v4, v5

    .line 730
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v3    # "$i$f$getReadRemaining":I
    move v1, v4

    .line 732
    .local v1, "length":I
    const-string v3, "buffer readable content"

    .local v3, "name$iv":Ljava/lang/String;
    move-object/from16 v4, p0

    .local v4, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v5, 0x0

    .line 1469
    .local v5, "$i$f$writeExact":I
    nop

    .line 1473
    move-object v6, v4

    .local v6, "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v7, 0x0

    .line 1474
    .local v7, "$i$f$write":I
    nop

    .line 1478
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v8

    .local v8, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v9

    .local v9, "start$iv":I
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v10

    .local v10, "endExclusive$iv":I
    const/4 v11, 0x0

    .line 1479
    .local v11, "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    sub-int v12, v10, v9

    .line 1480
    .local v12, "writeRemaining$iv":I
    if-lt v12, v1, :cond_0

    .line 1483
    move-object v13, v8

    .local v13, "memory":Ljava/nio/ByteBuffer;
    move v14, v9

    .local v14, "offset":I
    const/4 v15, 0x0

    .line 733
    .local v15, "$i$a$-writeExact-BufferPrimitivesKt$writeFully$7":I
    invoke-virtual/range {p1 .. p1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v16, v4

    .end local v4    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .local v16, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    invoke-virtual/range {p1 .. p1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    invoke-static {v2, v13, v4, v1, v14}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    .line 734
    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 735
    nop

    .line 1483
    .end local v13    # "memory":Ljava/nio/ByteBuffer;
    .end local v14    # "offset":I
    .end local v15    # "$i$a$-writeExact-BufferPrimitivesKt$writeFully$7":I
    nop

    .line 1484
    nop

    .line 1478
    .end local v8    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v9    # "start$iv":I
    .end local v10    # "endExclusive$iv":I
    .end local v11    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .end local v12    # "writeRemaining$iv":I
    move v2, v1

    .line 1485
    .local v2, "rc$iv$iv":I
    invoke-virtual {v6, v2}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 1486
    nop

    .line 1487
    .end local v2    # "rc$iv$iv":I
    .end local v6    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v7    # "$i$f$write":I
    nop

    .line 736
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v5    # "$i$f$writeExact":I
    .end local v16    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    return-void

    .line 1481
    .restart local v3    # "name$iv":Ljava/lang/String;
    .restart local v4    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v5    # "$i$f$writeExact":I
    .restart local v6    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v7    # "$i$f$write":I
    .restart local v8    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v9    # "start$iv":I
    .restart local v10    # "endExclusive$iv":I
    .restart local v11    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .restart local v12    # "writeRemaining$iv":I
    :cond_0
    new-instance v2, Lio/ktor/utils/io/core/InsufficientSpaceException;

    invoke-direct {v2, v3, v1, v12}, Lio/ktor/utils/io/core/InsufficientSpaceException;-><init>(Ljava/lang/String;II)V

    throw v2
.end method

.method public static final writeFully(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;I)V
    .locals 16
    .param p0, "$this$writeFully"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "src"    # Lio/ktor/utils/io/core/Buffer;
    .param p2, "length"    # I

    move/from16 v0, p2

    const-string v1, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "src"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 744
    const/4 v1, 0x1

    const/4 v4, 0x0

    if-ltz v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    if-eqz v5, :cond_6

    .line 745
    move-object/from16 v5, p1

    .local v5, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 1488
    .local v6, "$i$f$getReadRemaining":I
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v7

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v8

    sub-int/2addr v7, v8

    .end local v5    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$getReadRemaining":I
    if-gt v0, v7, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v4

    .line 745
    :goto_1
    const-string v6, " > "

    if-eqz v5, :cond_5

    .line 748
    move-object/from16 v5, p0

    .restart local v5    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v7, 0x0

    .line 1490
    .local v7, "$i$f$getWriteRemaining":I
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v8

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v9

    sub-int/2addr v8, v9

    .end local v5    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v7    # "$i$f$getWriteRemaining":I
    if-gt v0, v8, :cond_2

    goto :goto_2

    :cond_2
    move v1, v4

    .line 748
    :goto_2
    if-eqz v1, :cond_4

    .line 752
    const-string v1, "buffer readable content"

    .local v1, "name$iv":Ljava/lang/String;
    move-object/from16 v4, p0

    .local v4, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v5, 0x0

    .line 1492
    .local v5, "$i$f$writeExact":I
    nop

    .line 1496
    move-object v6, v4

    .local v6, "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v7, 0x0

    .line 1497
    .local v7, "$i$f$write":I
    nop

    .line 1501
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v8

    .local v8, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v9

    .local v9, "start$iv":I
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v10

    .local v10, "endExclusive$iv":I
    const/4 v11, 0x0

    .line 1502
    .local v11, "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    sub-int v12, v10, v9

    .line 1503
    .local v12, "writeRemaining$iv":I
    if-lt v12, v0, :cond_3

    .line 1506
    move-object v13, v8

    .local v13, "memory":Ljava/nio/ByteBuffer;
    move v14, v9

    .local v14, "offset":I
    const/4 v15, 0x0

    .line 753
    .local v15, "$i$a$-writeExact-BufferPrimitivesKt$writeFully$11":I
    invoke-virtual/range {p1 .. p1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v3

    invoke-static {v2, v13, v3, v0, v14}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    .line 754
    invoke-virtual/range {p1 .. p2}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    .line 755
    nop

    .line 1506
    .end local v13    # "memory":Ljava/nio/ByteBuffer;
    .end local v14    # "offset":I
    .end local v15    # "$i$a$-writeExact-BufferPrimitivesKt$writeFully$11":I
    nop

    .line 1507
    nop

    .line 1501
    .end local v8    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v9    # "start$iv":I
    .end local v10    # "endExclusive$iv":I
    .end local v11    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .end local v12    # "writeRemaining$iv":I
    move/from16 v2, p2

    .line 1508
    .local v2, "rc$iv$iv":I
    invoke-virtual {v6, v2}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 1509
    nop

    .line 1510
    .end local v2    # "rc$iv$iv":I
    .end local v6    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v7    # "$i$f$write":I
    nop

    .line 756
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v4    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "$i$f$writeExact":I
    return-void

    .line 1504
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v4    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v5    # "$i$f$writeExact":I
    .restart local v6    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v7    # "$i$f$write":I
    .restart local v8    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v9    # "start$iv":I
    .restart local v10    # "endExclusive$iv":I
    .restart local v11    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .restart local v12    # "writeRemaining$iv":I
    :cond_3
    new-instance v2, Lio/ktor/utils/io/core/InsufficientSpaceException;

    invoke-direct {v2, v1, v0, v12}, Lio/ktor/utils/io/core/InsufficientSpaceException;-><init>(Ljava/lang/String;II)V

    throw v2

    .line 748
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v4    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "$i$f$writeExact":I
    .end local v6    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v7    # "$i$f$write":I
    .end local v8    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v9    # "start$iv":I
    .end local v10    # "endExclusive$iv":I
    .end local v11    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .end local v12    # "writeRemaining$iv":I
    :cond_4
    const/4 v1, 0x0

    .line 749
    .local v1, "$i$a$-require-BufferPrimitivesKt$writeFully$10":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length shouldn\'t be greater than the destination write remaining space: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p0

    .local v3, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 1491
    .local v4, "$i$f$getWriteRemaining":I
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v5

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    sub-int/2addr v5, v6

    .line 749
    .end local v3    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$getWriteRemaining":I
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 748
    .end local v1    # "$i$a$-require-BufferPrimitivesKt$writeFully$10":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 745
    :cond_5
    const/4 v1, 0x0

    .line 746
    .local v1, "$i$a$-require-BufferPrimitivesKt$writeFully$9":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length shouldn\'t be greater than the source read remaining: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p1

    .restart local v3    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 1489
    .local v4, "$i$f$getReadRemaining":I
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v5

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v6

    sub-int/2addr v5, v6

    .line 746
    .end local v3    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$getReadRemaining":I
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 745
    .end local v1    # "$i$a$-require-BufferPrimitivesKt$writeFully$9":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1180
    :cond_6
    const/4 v1, 0x0

    .line 744
    .local v1, "$i$a$-require-BufferPrimitivesKt$writeFully$8":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length shouldn\'t be negative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require-BufferPrimitivesKt$writeFully$8":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final writeFully(Lio/ktor/utils/io/core/Buffer;[BII)V
    .locals 22
    .param p0, "$this$writeFully"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move/from16 v0, p3

    const-string v1, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "source"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    const-string v1, "byte array"

    .local v1, "name$iv":Ljava/lang/String;
    move-object/from16 v4, p0

    .local v4, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v5, 0x0

    .line 1183
    .local v5, "$i$f$writeExact":I
    nop

    .line 1187
    move-object v6, v4

    .local v6, "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v7, 0x0

    .line 1188
    .local v7, "$i$f$write":I
    nop

    .line 1192
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v8

    .local v8, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v9

    .local v9, "start$iv":I
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v10

    .local v10, "endExclusive$iv":I
    const/4 v11, 0x0

    .line 1193
    .local v11, "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    sub-int v12, v10, v9

    .line 1194
    .local v12, "writeRemaining$iv":I
    if-lt v12, v0, :cond_0

    .line 1197
    move-object v13, v8

    .local v13, "memory":Ljava/nio/ByteBuffer;
    move v14, v9

    .local v14, "dstOffset":I
    const/4 v15, 0x0

    .line 325
    .local v15, "$i$a$-writeExact-BufferPrimitivesKt$writeFully$1":I
    move-object/from16 v16, v13

    .local v16, "$this$storeByteArray_u2d9zorpBc$iv":Ljava/nio/ByteBuffer;
    const/16 v17, 0x0

    .line 1198
    .local v17, "$i$f$storeByteArray-9zorpBc":I
    move-object/from16 v18, p1

    .local v18, "$this$useMemory$iv$iv":[B
    const/16 v19, 0x0

    .line 1199
    .local v19, "$i$f$useMemory":I
    nop

    .line 1202
    move/from16 v2, p2

    move-object/from16 v3, v18

    .end local v18    # "$this$useMemory$iv$iv":[B
    .local v3, "$this$useMemory$iv$iv":[B
    invoke-static {v3, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v18, v3

    .end local v3    # "$this$useMemory$iv$iv":[B
    .restart local v18    # "$this$useMemory$iv$iv":[B
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-string v3, "wrap(this, offset, lengt\u2026der(ByteOrder.BIG_ENDIAN)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .local v2, "sourceMemory$iv":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 1203
    .local v3, "$i$a$-useMemory-PrimiteArraysKt$storeByteArray$1$iv":I
    move/from16 v20, v3

    .end local v3    # "$i$a$-useMemory-PrimiteArraysKt$storeByteArray$1$iv":I
    .local v20, "$i$a$-useMemory-PrimiteArraysKt$storeByteArray$1$iv":I
    const/4 v3, 0x0

    move-object/from16 v21, v4

    move-object/from16 v4, v16

    .end local v16    # "$this$storeByteArray_u2d9zorpBc$iv":Ljava/nio/ByteBuffer;
    .local v4, "$this$storeByteArray_u2d9zorpBc$iv":Ljava/nio/ByteBuffer;
    .local v21, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    invoke-static {v2, v4, v3, v0, v14}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    .line 1204
    nop

    .line 1202
    .end local v2    # "sourceMemory$iv":Ljava/nio/ByteBuffer;
    .end local v20    # "$i$a$-useMemory-PrimiteArraysKt$storeByteArray$1$iv":I
    nop

    .line 1205
    .end local v18    # "$this$useMemory$iv$iv":[B
    .end local v19    # "$i$f$useMemory":I
    nop

    .line 326
    .end local v4    # "$this$storeByteArray_u2d9zorpBc$iv":Ljava/nio/ByteBuffer;
    .end local v17    # "$i$f$storeByteArray-9zorpBc":I
    nop

    .line 1197
    .end local v13    # "memory":Ljava/nio/ByteBuffer;
    .end local v14    # "dstOffset":I
    .end local v15    # "$i$a$-writeExact-BufferPrimitivesKt$writeFully$1":I
    nop

    .line 1206
    nop

    .line 1192
    .end local v8    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v9    # "start$iv":I
    .end local v10    # "endExclusive$iv":I
    .end local v11    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .end local v12    # "writeRemaining$iv":I
    move/from16 v2, p3

    .line 1207
    .local v2, "rc$iv$iv":I
    invoke-virtual {v6, v2}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 1208
    nop

    .line 1209
    .end local v2    # "rc$iv$iv":I
    .end local v6    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v7    # "$i$f$write":I
    nop

    .line 327
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v5    # "$i$f$writeExact":I
    .end local v21    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    return-void

    .line 1195
    .restart local v1    # "name$iv":Ljava/lang/String;
    .local v4, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v5    # "$i$f$writeExact":I
    .restart local v6    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v7    # "$i$f$write":I
    .restart local v8    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v9    # "start$iv":I
    .restart local v10    # "endExclusive$iv":I
    .restart local v11    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .restart local v12    # "writeRemaining$iv":I
    :cond_0
    new-instance v2, Lio/ktor/utils/io/core/InsufficientSpaceException;

    invoke-direct {v2, v1, v0, v12}, Lio/ktor/utils/io/core/InsufficientSpaceException;-><init>(Ljava/lang/String;II)V

    throw v2
.end method

.method public static final writeFully(Lio/ktor/utils/io/core/Buffer;[DII)V
    .locals 17
    .param p0, "$this$writeFully"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "source"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v0, p1

    move/from16 v1, p3

    const-string v2, "<this>"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "source"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    mul-int/lit8 v2, v1, 0x8

    .local v2, "size$iv":I
    const-string v4, "floating point numbers array"

    .local v4, "name$iv":Ljava/lang/String;
    move-object/from16 v5, p0

    .local v5, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 1401
    .local v6, "$i$f$writeExact":I
    nop

    .line 1405
    move-object v7, v5

    .local v7, "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v8, 0x0

    .line 1406
    .local v8, "$i$f$write":I
    nop

    .line 1410
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v9

    .local v9, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v10

    .local v10, "start$iv":I
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v11

    .local v11, "endExclusive$iv":I
    const/4 v12, 0x0

    .line 1411
    .local v12, "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    sub-int v13, v11, v10

    .line 1412
    .local v13, "writeRemaining$iv":I
    if-lt v13, v2, :cond_0

    .line 1415
    move-object v14, v9

    .local v14, "memory":Ljava/nio/ByteBuffer;
    move v15, v10

    .local v15, "dstOffset":I
    const/16 v16, 0x0

    .line 686
    .local v16, "$i$a$-writeExact-BufferPrimitivesKt$writeFully$6":I
    move/from16 v3, p2

    invoke-static {v14, v15, v0, v3, v1}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeDoubleArray-9zorpBc(Ljava/nio/ByteBuffer;I[DII)V

    .line 687
    nop

    .line 1415
    .end local v14    # "memory":Ljava/nio/ByteBuffer;
    .end local v15    # "dstOffset":I
    .end local v16    # "$i$a$-writeExact-BufferPrimitivesKt$writeFully$6":I
    nop

    .line 1416
    nop

    .line 1410
    .end local v9    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v10    # "start$iv":I
    .end local v11    # "endExclusive$iv":I
    .end local v12    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .end local v13    # "writeRemaining$iv":I
    move v9, v2

    .line 1417
    .local v9, "rc$iv$iv":I
    invoke-virtual {v7, v9}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 1418
    nop

    .line 1419
    .end local v7    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v8    # "$i$f$write":I
    .end local v9    # "rc$iv$iv":I
    nop

    .line 688
    .end local v2    # "size$iv":I
    .end local v4    # "name$iv":Ljava/lang/String;
    .end local v5    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$writeExact":I
    return-void

    .line 1413
    .restart local v2    # "size$iv":I
    .restart local v4    # "name$iv":Ljava/lang/String;
    .restart local v5    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v6    # "$i$f$writeExact":I
    .restart local v7    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v8    # "$i$f$write":I
    .local v9, "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v10    # "start$iv":I
    .restart local v11    # "endExclusive$iv":I
    .restart local v12    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .restart local v13    # "writeRemaining$iv":I
    :cond_0
    move/from16 v3, p2

    new-instance v14, Lio/ktor/utils/io/core/InsufficientSpaceException;

    invoke-direct {v14, v4, v2, v13}, Lio/ktor/utils/io/core/InsufficientSpaceException;-><init>(Ljava/lang/String;II)V

    throw v14
.end method

.method public static final writeFully(Lio/ktor/utils/io/core/Buffer;[FII)V
    .locals 17
    .param p0, "$this$writeFully"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "source"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v0, p1

    move/from16 v1, p3

    const-string v2, "<this>"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "source"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 636
    mul-int/lit8 v2, v1, 0x4

    .local v2, "size$iv":I
    const-string v4, "floating point numbers array"

    .local v4, "name$iv":Ljava/lang/String;
    move-object/from16 v5, p0

    .local v5, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 1359
    .local v6, "$i$f$writeExact":I
    nop

    .line 1363
    move-object v7, v5

    .local v7, "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v8, 0x0

    .line 1364
    .local v8, "$i$f$write":I
    nop

    .line 1368
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v9

    .local v9, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v10

    .local v10, "start$iv":I
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v11

    .local v11, "endExclusive$iv":I
    const/4 v12, 0x0

    .line 1369
    .local v12, "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    sub-int v13, v11, v10

    .line 1370
    .local v13, "writeRemaining$iv":I
    if-lt v13, v2, :cond_0

    .line 1373
    move-object v14, v9

    .local v14, "memory":Ljava/nio/ByteBuffer;
    move v15, v10

    .local v15, "dstOffset":I
    const/16 v16, 0x0

    .line 637
    .local v16, "$i$a$-writeExact-BufferPrimitivesKt$writeFully$5":I
    move/from16 v3, p2

    invoke-static {v14, v15, v0, v3, v1}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeFloatArray-9zorpBc(Ljava/nio/ByteBuffer;I[FII)V

    .line 638
    nop

    .line 1373
    .end local v14    # "memory":Ljava/nio/ByteBuffer;
    .end local v15    # "dstOffset":I
    .end local v16    # "$i$a$-writeExact-BufferPrimitivesKt$writeFully$5":I
    nop

    .line 1374
    nop

    .line 1368
    .end local v9    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v10    # "start$iv":I
    .end local v11    # "endExclusive$iv":I
    .end local v12    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .end local v13    # "writeRemaining$iv":I
    move v9, v2

    .line 1375
    .local v9, "rc$iv$iv":I
    invoke-virtual {v7, v9}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 1376
    nop

    .line 1377
    .end local v7    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v8    # "$i$f$write":I
    .end local v9    # "rc$iv$iv":I
    nop

    .line 639
    .end local v2    # "size$iv":I
    .end local v4    # "name$iv":Ljava/lang/String;
    .end local v5    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$writeExact":I
    return-void

    .line 1371
    .restart local v2    # "size$iv":I
    .restart local v4    # "name$iv":Ljava/lang/String;
    .restart local v5    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v6    # "$i$f$writeExact":I
    .restart local v7    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v8    # "$i$f$write":I
    .local v9, "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v10    # "start$iv":I
    .restart local v11    # "endExclusive$iv":I
    .restart local v12    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .restart local v13    # "writeRemaining$iv":I
    :cond_0
    move/from16 v3, p2

    new-instance v14, Lio/ktor/utils/io/core/InsufficientSpaceException;

    invoke-direct {v14, v4, v2, v13}, Lio/ktor/utils/io/core/InsufficientSpaceException;-><init>(Ljava/lang/String;II)V

    throw v14
.end method

.method public static final writeFully(Lio/ktor/utils/io/core/Buffer;[III)V
    .locals 17
    .param p0, "$this$writeFully"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "source"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v0, p1

    move/from16 v1, p3

    const-string v2, "<this>"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "source"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    mul-int/lit8 v2, v1, 0x4

    .local v2, "size$iv":I
    const-string v4, "integers array"

    .local v4, "name$iv":Ljava/lang/String;
    move-object/from16 v5, p0

    .local v5, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 1275
    .local v6, "$i$f$writeExact":I
    nop

    .line 1279
    move-object v7, v5

    .local v7, "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v8, 0x0

    .line 1280
    .local v8, "$i$f$write":I
    nop

    .line 1284
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v9

    .local v9, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v10

    .local v10, "start$iv":I
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v11

    .local v11, "endExclusive$iv":I
    const/4 v12, 0x0

    .line 1285
    .local v12, "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    sub-int v13, v11, v10

    .line 1286
    .local v13, "writeRemaining$iv":I
    if-lt v13, v2, :cond_0

    .line 1289
    move-object v14, v9

    .local v14, "memory":Ljava/nio/ByteBuffer;
    move v15, v10

    .local v15, "dstOffset":I
    const/16 v16, 0x0

    .line 495
    .local v16, "$i$a$-writeExact-BufferPrimitivesKt$writeFully$3":I
    move/from16 v3, p2

    invoke-static {v14, v15, v0, v3, v1}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeIntArray-9zorpBc(Ljava/nio/ByteBuffer;I[III)V

    .line 496
    nop

    .line 1289
    .end local v14    # "memory":Ljava/nio/ByteBuffer;
    .end local v15    # "dstOffset":I
    .end local v16    # "$i$a$-writeExact-BufferPrimitivesKt$writeFully$3":I
    nop

    .line 1290
    nop

    .line 1284
    .end local v9    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v10    # "start$iv":I
    .end local v11    # "endExclusive$iv":I
    .end local v12    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .end local v13    # "writeRemaining$iv":I
    move v9, v2

    .line 1291
    .local v9, "rc$iv$iv":I
    invoke-virtual {v7, v9}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 1292
    nop

    .line 1293
    .end local v7    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v8    # "$i$f$write":I
    .end local v9    # "rc$iv$iv":I
    nop

    .line 497
    .end local v2    # "size$iv":I
    .end local v4    # "name$iv":Ljava/lang/String;
    .end local v5    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$writeExact":I
    return-void

    .line 1287
    .restart local v2    # "size$iv":I
    .restart local v4    # "name$iv":Ljava/lang/String;
    .restart local v5    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v6    # "$i$f$writeExact":I
    .restart local v7    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v8    # "$i$f$write":I
    .local v9, "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v10    # "start$iv":I
    .restart local v11    # "endExclusive$iv":I
    .restart local v12    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .restart local v13    # "writeRemaining$iv":I
    :cond_0
    move/from16 v3, p2

    new-instance v14, Lio/ktor/utils/io/core/InsufficientSpaceException;

    invoke-direct {v14, v4, v2, v13}, Lio/ktor/utils/io/core/InsufficientSpaceException;-><init>(Ljava/lang/String;II)V

    throw v14
.end method

.method public static final writeFully(Lio/ktor/utils/io/core/Buffer;[JII)V
    .locals 17
    .param p0, "$this$writeFully"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "source"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v0, p1

    move/from16 v1, p3

    const-string v2, "<this>"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "source"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    mul-int/lit8 v2, v1, 0x8

    .local v2, "size$iv":I
    const-string v4, "long integers array"

    .local v4, "name$iv":Ljava/lang/String;
    move-object/from16 v5, p0

    .local v5, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 1317
    .local v6, "$i$f$writeExact":I
    nop

    .line 1321
    move-object v7, v5

    .local v7, "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v8, 0x0

    .line 1322
    .local v8, "$i$f$write":I
    nop

    .line 1326
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v9

    .local v9, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v10

    .local v10, "start$iv":I
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v11

    .local v11, "endExclusive$iv":I
    const/4 v12, 0x0

    .line 1327
    .local v12, "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    sub-int v13, v11, v10

    .line 1328
    .local v13, "writeRemaining$iv":I
    if-lt v13, v2, :cond_0

    .line 1331
    move-object v14, v9

    .local v14, "memory":Ljava/nio/ByteBuffer;
    move v15, v10

    .local v15, "dstOffset":I
    const/16 v16, 0x0

    .line 578
    .local v16, "$i$a$-writeExact-BufferPrimitivesKt$writeFully$4":I
    move/from16 v3, p2

    invoke-static {v14, v15, v0, v3, v1}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeLongArray-9zorpBc(Ljava/nio/ByteBuffer;I[JII)V

    .line 579
    nop

    .line 1331
    .end local v14    # "memory":Ljava/nio/ByteBuffer;
    .end local v15    # "dstOffset":I
    .end local v16    # "$i$a$-writeExact-BufferPrimitivesKt$writeFully$4":I
    nop

    .line 1332
    nop

    .line 1326
    .end local v9    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v10    # "start$iv":I
    .end local v11    # "endExclusive$iv":I
    .end local v12    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .end local v13    # "writeRemaining$iv":I
    move v9, v2

    .line 1333
    .local v9, "rc$iv$iv":I
    invoke-virtual {v7, v9}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 1334
    nop

    .line 1335
    .end local v7    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v8    # "$i$f$write":I
    .end local v9    # "rc$iv$iv":I
    nop

    .line 580
    .end local v2    # "size$iv":I
    .end local v4    # "name$iv":Ljava/lang/String;
    .end local v5    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$writeExact":I
    return-void

    .line 1329
    .restart local v2    # "size$iv":I
    .restart local v4    # "name$iv":Ljava/lang/String;
    .restart local v5    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v6    # "$i$f$writeExact":I
    .restart local v7    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v8    # "$i$f$write":I
    .local v9, "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v10    # "start$iv":I
    .restart local v11    # "endExclusive$iv":I
    .restart local v12    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .restart local v13    # "writeRemaining$iv":I
    :cond_0
    move/from16 v3, p2

    new-instance v14, Lio/ktor/utils/io/core/InsufficientSpaceException;

    invoke-direct {v14, v4, v2, v13}, Lio/ktor/utils/io/core/InsufficientSpaceException;-><init>(Ljava/lang/String;II)V

    throw v14
.end method

.method public static final writeFully(Lio/ktor/utils/io/core/Buffer;[SII)V
    .locals 17
    .param p0, "$this$writeFully"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "source"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    move-object/from16 v0, p1

    move/from16 v1, p3

    const-string v2, "<this>"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "source"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    mul-int/lit8 v2, v1, 0x2

    .local v2, "size$iv":I
    const-string v4, "short integers array"

    .local v4, "name$iv":Ljava/lang/String;
    move-object/from16 v5, p0

    .local v5, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 1233
    .local v6, "$i$f$writeExact":I
    nop

    .line 1237
    move-object v7, v5

    .local v7, "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v8, 0x0

    .line 1238
    .local v8, "$i$f$write":I
    nop

    .line 1242
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v9

    .local v9, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v10

    .local v10, "start$iv":I
    invoke-virtual {v7}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v11

    .local v11, "endExclusive$iv":I
    const/4 v12, 0x0

    .line 1243
    .local v12, "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    sub-int v13, v11, v10

    .line 1244
    .local v13, "writeRemaining$iv":I
    if-lt v13, v2, :cond_0

    .line 1247
    move-object v14, v9

    .local v14, "memory":Ljava/nio/ByteBuffer;
    move v15, v10

    .local v15, "dstOffset":I
    const/16 v16, 0x0

    .line 416
    .local v16, "$i$a$-writeExact-BufferPrimitivesKt$writeFully$2":I
    move/from16 v3, p2

    invoke-static {v14, v15, v0, v3, v1}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeShortArray-9zorpBc(Ljava/nio/ByteBuffer;I[SII)V

    .line 417
    nop

    .line 1247
    .end local v14    # "memory":Ljava/nio/ByteBuffer;
    .end local v15    # "dstOffset":I
    .end local v16    # "$i$a$-writeExact-BufferPrimitivesKt$writeFully$2":I
    nop

    .line 1248
    nop

    .line 1242
    .end local v9    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v10    # "start$iv":I
    .end local v11    # "endExclusive$iv":I
    .end local v12    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .end local v13    # "writeRemaining$iv":I
    move v9, v2

    .line 1249
    .local v9, "rc$iv$iv":I
    invoke-virtual {v7, v9}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 1250
    nop

    .line 1251
    .end local v7    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v8    # "$i$f$write":I
    .end local v9    # "rc$iv$iv":I
    nop

    .line 418
    .end local v2    # "size$iv":I
    .end local v4    # "name$iv":Ljava/lang/String;
    .end local v5    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$writeExact":I
    return-void

    .line 1245
    .restart local v2    # "size$iv":I
    .restart local v4    # "name$iv":Ljava/lang/String;
    .restart local v5    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v6    # "$i$f$writeExact":I
    .restart local v7    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v8    # "$i$f$write":I
    .local v9, "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v10    # "start$iv":I
    .restart local v11    # "endExclusive$iv":I
    .restart local v12    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .restart local v13    # "writeRemaining$iv":I
    :cond_0
    move/from16 v3, p2

    new-instance v14, Lio/ktor/utils/io/core/InsufficientSpaceException;

    invoke-direct {v14, v4, v2, v13}, Lio/ktor/utils/io/core/InsufficientSpaceException;-><init>(Ljava/lang/String;II)V

    throw v14
.end method

.method public static final writeFully(Lio/ktor/utils/io/core/internal/ChunkBuffer;[BII)V
    .locals 2
    .param p0, "$this$writeFully"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 331
    .local v0, "$i$f$writeFully":I
    move-object v1, p0

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v1, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully(Lio/ktor/utils/io/core/Buffer;[BII)V

    .line 332
    return-void
.end method

.method public static synthetic writeFully$default(Lio/ktor/utils/io/core/Buffer;[BIIILjava/lang/Object;)V
    .locals 0

    .line 323
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully(Lio/ktor/utils/io/core/Buffer;[BII)V

    return-void
.end method

.method public static synthetic writeFully$default(Lio/ktor/utils/io/core/Buffer;[DIIILjava/lang/Object;)V
    .locals 0

    .line 684
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully(Lio/ktor/utils/io/core/Buffer;[DII)V

    return-void
.end method

.method public static synthetic writeFully$default(Lio/ktor/utils/io/core/Buffer;[FIIILjava/lang/Object;)V
    .locals 0

    .line 635
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully(Lio/ktor/utils/io/core/Buffer;[FII)V

    return-void
.end method

.method public static synthetic writeFully$default(Lio/ktor/utils/io/core/Buffer;[IIIILjava/lang/Object;)V
    .locals 0

    .line 493
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully(Lio/ktor/utils/io/core/Buffer;[III)V

    return-void
.end method

.method public static synthetic writeFully$default(Lio/ktor/utils/io/core/Buffer;[JIIILjava/lang/Object;)V
    .locals 0

    .line 576
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully(Lio/ktor/utils/io/core/Buffer;[JII)V

    return-void
.end method

.method public static synthetic writeFully$default(Lio/ktor/utils/io/core/Buffer;[SIIILjava/lang/Object;)V
    .locals 0

    .line 414
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully(Lio/ktor/utils/io/core/Buffer;[SII)V

    return-void
.end method

.method public static synthetic writeFully$default(Lio/ktor/utils/io/core/internal/ChunkBuffer;[BIIILjava/lang/Object;)V
    .locals 0
    .param p0, "$this$writeFully_u24default"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 330
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p4, p1

    sub-int p3, p4, p2

    :cond_1
    const-string p4, "<this>"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "source"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 331
    .local p4, "$i$f$writeFully":I
    move-object p5, p0

    check-cast p5, Lio/ktor/utils/io/core/Buffer;

    invoke-static {p5, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully(Lio/ktor/utils/io/core/Buffer;[BII)V

    .line 332
    return-void
.end method

.method public static final writeFully-Wt3Bwxc(Lio/ktor/utils/io/core/Buffer;[SII)V
    .locals 1
    .param p0, "$this$writeFully_u2dWt3Bwxc"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "source"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$writeFully"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully(Lio/ktor/utils/io/core/Buffer;[SII)V

    .line 428
    return-void
.end method

.method public static synthetic writeFully-Wt3Bwxc$default(Lio/ktor/utils/io/core/Buffer;[SIIILjava/lang/Object;)V
    .locals 0

    .line 426
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {p1}, Lkotlin/UShortArray;->getSize-impl([S)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully-Wt3Bwxc(Lio/ktor/utils/io/core/Buffer;[SII)V

    return-void
.end method

.method public static final writeFully-o1GoV1E(Lio/ktor/utils/io/core/Buffer;[BII)V
    .locals 1
    .param p0, "$this$writeFully_u2do1GoV1E"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$writeFully"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully(Lio/ktor/utils/io/core/Buffer;[BII)V

    .line 341
    return-void
.end method

.method public static synthetic writeFully-o1GoV1E$default(Lio/ktor/utils/io/core/Buffer;[BIIILjava/lang/Object;)V
    .locals 0

    .line 339
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {p1}, Lkotlin/UByteArray;->getSize-impl([B)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully-o1GoV1E(Lio/ktor/utils/io/core/Buffer;[BII)V

    return-void
.end method

.method public static final writeFully-o2ZM2JE(Lio/ktor/utils/io/core/Buffer;[III)V
    .locals 1
    .param p0, "$this$writeFully_u2do2ZM2JE"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "source"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$writeFully"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully(Lio/ktor/utils/io/core/Buffer;[III)V

    .line 507
    return-void
.end method

.method public static synthetic writeFully-o2ZM2JE$default(Lio/ktor/utils/io/core/Buffer;[IIIILjava/lang/Object;)V
    .locals 0

    .line 505
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {p1}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully-o2ZM2JE(Lio/ktor/utils/io/core/Buffer;[III)V

    return-void
.end method

.method public static final writeFully-pqYNikA(Lio/ktor/utils/io/core/Buffer;[JII)V
    .locals 1
    .param p0, "$this$writeFully_u2dpqYNikA"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "source"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "$this$writeFully"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully(Lio/ktor/utils/io/core/Buffer;[JII)V

    .line 590
    return-void
.end method

.method public static synthetic writeFully-pqYNikA$default(Lio/ktor/utils/io/core/Buffer;[JIIILjava/lang/Object;)V
    .locals 0

    .line 588
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {p1}, Lkotlin/ULongArray;->getSize-impl([J)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeFully-pqYNikA(Lio/ktor/utils/io/core/Buffer;[JII)V

    return-void
.end method

.method public static final writeInt(Lio/ktor/utils/io/core/Buffer;I)V
    .locals 17
    .param p0, "$this$writeInt"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "value"    # I

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    const/4 v0, 0x4

    .local v0, "size$iv":I
    const-string v2, "regular integer"

    .local v2, "name$iv":Ljava/lang/String;
    move-object/from16 v3, p0

    .local v3, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 1029
    .local v4, "$i$f$writeExact":I
    nop

    .line 1033
    move-object v5, v3

    .local v5, "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 1034
    .local v6, "$i$f$write":I
    nop

    .line 1038
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v7

    .local v7, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v8

    .local v8, "start$iv":I
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v9

    .local v9, "endExclusive$iv":I
    const/4 v10, 0x0

    .line 1039
    .local v10, "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    sub-int v11, v9, v8

    .line 1040
    .local v11, "writeRemaining$iv":I
    if-lt v11, v0, :cond_0

    .line 1043
    move-object v12, v7

    .local v12, "memory":Ljava/nio/ByteBuffer;
    move v13, v8

    .local v13, "offset":I
    const/4 v14, 0x0

    .line 171
    .local v14, "$i$a$-writeExact-BufferPrimitivesKt$writeInt$1":I
    move-object v15, v12

    .local v15, "$this$storeIntAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    const/16 v16, 0x0

    .line 1044
    .local v16, "$i$f$storeIntAt-62zg_DM":I
    move/from16 v1, p1

    invoke-virtual {v15, v13, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 1045
    nop

    .line 172
    .end local v15    # "$this$storeIntAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v16    # "$i$f$storeIntAt-62zg_DM":I
    nop

    .line 1043
    .end local v12    # "memory":Ljava/nio/ByteBuffer;
    .end local v13    # "offset":I
    .end local v14    # "$i$a$-writeExact-BufferPrimitivesKt$writeInt$1":I
    nop

    .line 1046
    nop

    .line 1038
    .end local v7    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v8    # "start$iv":I
    .end local v9    # "endExclusive$iv":I
    .end local v10    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .end local v11    # "writeRemaining$iv":I
    move v7, v0

    .line 1047
    .local v7, "rc$iv$iv":I
    invoke-virtual {v5, v7}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 1048
    nop

    .line 1049
    .end local v5    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$write":I
    .end local v7    # "rc$iv$iv":I
    nop

    .line 172
    .end local v0    # "size$iv":I
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$writeExact":I
    return-void

    .line 1041
    .restart local v0    # "size$iv":I
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v3    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v4    # "$i$f$writeExact":I
    .restart local v5    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v6    # "$i$f$write":I
    .local v7, "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v8    # "start$iv":I
    .restart local v9    # "endExclusive$iv":I
    .restart local v10    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .restart local v11    # "writeRemaining$iv":I
    :cond_0
    move/from16 v1, p1

    new-instance v12, Lio/ktor/utils/io/core/InsufficientSpaceException;

    invoke-direct {v12, v2, v0, v11}, Lio/ktor/utils/io/core/InsufficientSpaceException;-><init>(Ljava/lang/String;II)V

    throw v12
.end method

.method public static final writeInt(Lio/ktor/utils/io/core/internal/ChunkBuffer;I)V
    .locals 2
    .param p0, "$this$writeInt"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p1, "value"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 175
    .local v0, "$i$f$writeInt":I
    move-object v1, p0

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v1, p1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeInt(Lio/ktor/utils/io/core/Buffer;I)V

    return-void
.end method

.method public static final writeLong(Lio/ktor/utils/io/core/Buffer;J)V
    .locals 19
    .param p0, "$this$writeLong"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "value"    # J

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    const/16 v0, 0x8

    .local v0, "size$iv":I
    const-string v2, "long integer"

    .local v2, "name$iv":Ljava/lang/String;
    move-object/from16 v3, p0

    .local v3, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 1072
    .local v4, "$i$f$writeExact":I
    nop

    .line 1076
    move-object v5, v3

    .local v5, "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 1077
    .local v6, "$i$f$write":I
    nop

    .line 1081
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v7

    .local v7, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v8

    .local v8, "start$iv":I
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v9

    .local v9, "endExclusive$iv":I
    const/4 v10, 0x0

    .line 1082
    .local v10, "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    sub-int v11, v9, v8

    .line 1083
    .local v11, "writeRemaining$iv":I
    if-lt v11, v0, :cond_0

    .line 1086
    move-object v12, v7

    .local v12, "memory":Ljava/nio/ByteBuffer;
    move v13, v8

    .local v13, "offset":I
    const/4 v14, 0x0

    .line 195
    .local v14, "$i$a$-writeExact-BufferPrimitivesKt$writeLong$1":I
    move-object v15, v12

    .local v15, "$this$storeLongAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    const/16 v16, 0x0

    .line 1087
    .local v16, "$i$f$storeLongAt-62zg_DM":I
    move-object/from16 v17, v3

    move/from16 v18, v4

    move-wide/from16 v3, p1

    .end local v3    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$writeExact":I
    .local v17, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .local v18, "$i$f$writeExact":I
    invoke-virtual {v15, v13, v3, v4}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 1088
    nop

    .line 196
    .end local v15    # "$this$storeLongAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v16    # "$i$f$storeLongAt-62zg_DM":I
    nop

    .line 1086
    .end local v12    # "memory":Ljava/nio/ByteBuffer;
    .end local v13    # "offset":I
    .end local v14    # "$i$a$-writeExact-BufferPrimitivesKt$writeLong$1":I
    nop

    .line 1089
    nop

    .line 1081
    .end local v7    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v8    # "start$iv":I
    .end local v9    # "endExclusive$iv":I
    .end local v10    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .end local v11    # "writeRemaining$iv":I
    move v7, v0

    .line 1090
    .local v7, "rc$iv$iv":I
    invoke-virtual {v5, v7}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 1091
    nop

    .line 1092
    .end local v5    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$write":I
    .end local v7    # "rc$iv$iv":I
    nop

    .line 196
    .end local v0    # "size$iv":I
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v17    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v18    # "$i$f$writeExact":I
    return-void

    .line 1084
    .restart local v0    # "size$iv":I
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v3    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v4    # "$i$f$writeExact":I
    .restart local v5    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v6    # "$i$f$write":I
    .local v7, "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v8    # "start$iv":I
    .restart local v9    # "endExclusive$iv":I
    .restart local v10    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .restart local v11    # "writeRemaining$iv":I
    :cond_0
    new-instance v12, Lio/ktor/utils/io/core/InsufficientSpaceException;

    invoke-direct {v12, v2, v0, v11}, Lio/ktor/utils/io/core/InsufficientSpaceException;-><init>(Ljava/lang/String;II)V

    throw v12
.end method

.method public static final writeLong(Lio/ktor/utils/io/core/internal/ChunkBuffer;J)V
    .locals 2
    .param p0, "$this$writeLong"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p1, "value"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 199
    .local v0, "$i$f$writeLong":I
    move-object v1, p0

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v1, p1, p2}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeLong(Lio/ktor/utils/io/core/Buffer;J)V

    return-void
.end method

.method public static final writeShort(Lio/ktor/utils/io/core/Buffer;S)V
    .locals 17
    .param p0, "$this$writeShort"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "value"    # S

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x2

    .local v0, "size$iv":I
    const-string v2, "short integer"

    .local v2, "name$iv":Ljava/lang/String;
    move-object/from16 v3, p0

    .local v3, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 986
    .local v4, "$i$f$writeExact":I
    nop

    .line 990
    move-object v5, v3

    .local v5, "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 991
    .local v6, "$i$f$write":I
    nop

    .line 995
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v7

    .local v7, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v8

    .local v8, "start$iv":I
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v9

    .local v9, "endExclusive$iv":I
    const/4 v10, 0x0

    .line 996
    .local v10, "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    sub-int v11, v9, v8

    .line 997
    .local v11, "writeRemaining$iv":I
    if-lt v11, v0, :cond_0

    .line 1000
    move-object v12, v7

    .local v12, "memory":Ljava/nio/ByteBuffer;
    move v13, v8

    .local v13, "offset":I
    const/4 v14, 0x0

    .line 146
    .local v14, "$i$a$-writeExact-BufferPrimitivesKt$writeShort$1":I
    move-object v15, v12

    .local v15, "$this$storeShortAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    const/16 v16, 0x0

    .line 1001
    .local v16, "$i$f$storeShortAt-62zg_DM":I
    move/from16 v1, p1

    invoke-virtual {v15, v13, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 1002
    nop

    .line 147
    .end local v15    # "$this$storeShortAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v16    # "$i$f$storeShortAt-62zg_DM":I
    nop

    .line 1000
    .end local v12    # "memory":Ljava/nio/ByteBuffer;
    .end local v13    # "offset":I
    .end local v14    # "$i$a$-writeExact-BufferPrimitivesKt$writeShort$1":I
    nop

    .line 1003
    nop

    .line 995
    .end local v7    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v8    # "start$iv":I
    .end local v9    # "endExclusive$iv":I
    .end local v10    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .end local v11    # "writeRemaining$iv":I
    move v7, v0

    .line 1004
    .local v7, "rc$iv$iv":I
    invoke-virtual {v5, v7}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 1005
    nop

    .line 1006
    .end local v5    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$write":I
    .end local v7    # "rc$iv$iv":I
    nop

    .line 147
    .end local v0    # "size$iv":I
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v4    # "$i$f$writeExact":I
    return-void

    .line 998
    .restart local v0    # "size$iv":I
    .restart local v2    # "name$iv":Ljava/lang/String;
    .restart local v3    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v4    # "$i$f$writeExact":I
    .restart local v5    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v6    # "$i$f$write":I
    .local v7, "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v8    # "start$iv":I
    .restart local v9    # "endExclusive$iv":I
    .restart local v10    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .restart local v11    # "writeRemaining$iv":I
    :cond_0
    move/from16 v1, p1

    new-instance v12, Lio/ktor/utils/io/core/InsufficientSpaceException;

    invoke-direct {v12, v2, v0, v11}, Lio/ktor/utils/io/core/InsufficientSpaceException;-><init>(Ljava/lang/String;II)V

    throw v12
.end method

.method public static final writeShort(Lio/ktor/utils/io/core/internal/ChunkBuffer;S)V
    .locals 2
    .param p0, "$this$writeShort"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p1, "value"    # S

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 150
    .local v0, "$i$f$writeShort":I
    move-object v1, p0

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v1, p1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeShort(Lio/ktor/utils/io/core/Buffer;S)V

    return-void
.end method

.method public static final writeUByte-EK-6454(Lio/ktor/utils/io/core/Buffer;B)V
    .locals 1
    .param p0, "$this$writeUByte_u2dEK_u2d6454"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "value"    # B

    const-string v0, "$this$writeUByte"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Buffer;->writeByte(B)V

    .line 37
    return-void
.end method

.method public static final writeUByte-EK-6454(Lio/ktor/utils/io/core/internal/ChunkBuffer;B)V
    .locals 1
    .param p0, "$this$writeUByte_u2dEK_u2d6454"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p1, "value"    # B

    const-string v0, "$this$writeUByte"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    move-object v0, p0

    check-cast v0, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v0, p1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeUByte-EK-6454(Lio/ktor/utils/io/core/Buffer;B)V

    .line 42
    return-void
.end method

.method public static final writeUInt-Qn1smSk(Lio/ktor/utils/io/core/Buffer;I)V
    .locals 20
    .param p0, "$this$writeUInt_u2dQn1smSk"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "value"    # I

    const-string v0, "$this$writeUInt"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x4

    .local v0, "size$iv":I
    const-string v2, "regular unsigned integer"

    .local v2, "name$iv":Ljava/lang/String;
    move-object/from16 v3, p0

    .local v3, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 1050
    .local v4, "$i$f$writeExact":I
    nop

    .line 1054
    move-object v5, v3

    .local v5, "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 1055
    .local v6, "$i$f$write":I
    nop

    .line 1059
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v7

    .local v7, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v8

    .local v8, "start$iv":I
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v9

    .local v9, "endExclusive$iv":I
    const/4 v10, 0x0

    .line 1060
    .local v10, "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    sub-int v11, v9, v8

    .line 1061
    .local v11, "writeRemaining$iv":I
    if-lt v11, v0, :cond_0

    .line 1064
    move-object v12, v7

    .local v12, "memory":Ljava/nio/ByteBuffer;
    move v13, v8

    .local v13, "offset":I
    const/4 v14, 0x0

    .line 183
    .local v14, "$i$a$-writeExact-BufferPrimitivesKt$writeUInt$1":I
    move-object v15, v12

    .local v15, "$this$storeUIntAt_u2dc9EmHqw$iv":Ljava/nio/ByteBuffer;
    const/16 v16, 0x0

    .line 1065
    .local v16, "$i$f$storeUIntAt-c9EmHqw":I
    move/from16 v17, p1

    .local v17, "value$iv$iv":I
    move-object/from16 v18, v15

    .local v18, "$this$storeIntAt_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/16 v19, 0x0

    .line 1066
    .local v19, "$i$f$storeIntAt-62zg_DM":I
    move/from16 v1, v17

    move-object/from16 v17, v3

    move-object/from16 v3, v18

    .end local v18    # "$this$storeIntAt_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .local v1, "value$iv$iv":I
    .local v3, "$this$storeIntAt_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .local v17, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    invoke-virtual {v3, v13, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 1067
    nop

    .line 1065
    .end local v1    # "value$iv$iv":I
    .end local v3    # "$this$storeIntAt_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v19    # "$i$f$storeIntAt-62zg_DM":I
    nop

    .line 184
    .end local v15    # "$this$storeUIntAt_u2dc9EmHqw$iv":Ljava/nio/ByteBuffer;
    .end local v16    # "$i$f$storeUIntAt-c9EmHqw":I
    nop

    .line 1064
    .end local v12    # "memory":Ljava/nio/ByteBuffer;
    .end local v13    # "offset":I
    .end local v14    # "$i$a$-writeExact-BufferPrimitivesKt$writeUInt$1":I
    nop

    .line 1068
    nop

    .line 1059
    .end local v7    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v8    # "start$iv":I
    .end local v9    # "endExclusive$iv":I
    .end local v10    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .end local v11    # "writeRemaining$iv":I
    move v1, v0

    .line 1069
    .local v1, "rc$iv$iv":I
    invoke-virtual {v5, v1}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 1070
    nop

    .line 1071
    .end local v1    # "rc$iv$iv":I
    .end local v5    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$write":I
    nop

    .line 184
    .end local v0    # "size$iv":I
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v4    # "$i$f$writeExact":I
    .end local v17    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    return-void

    .line 1062
    .restart local v0    # "size$iv":I
    .restart local v2    # "name$iv":Ljava/lang/String;
    .local v3, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v4    # "$i$f$writeExact":I
    .restart local v5    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v6    # "$i$f$write":I
    .restart local v7    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v8    # "start$iv":I
    .restart local v9    # "endExclusive$iv":I
    .restart local v10    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .restart local v11    # "writeRemaining$iv":I
    :cond_0
    new-instance v1, Lio/ktor/utils/io/core/InsufficientSpaceException;

    invoke-direct {v1, v2, v0, v11}, Lio/ktor/utils/io/core/InsufficientSpaceException;-><init>(Ljava/lang/String;II)V

    throw v1
.end method

.method public static final writeUInt-Qn1smSk(Lio/ktor/utils/io/core/internal/ChunkBuffer;I)V
    .locals 2
    .param p0, "$this$writeUInt_u2dQn1smSk"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p1, "value"    # I

    const-string v0, "$this$writeUInt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 187
    .local v0, "$i$f$writeUInt-Qn1smSk":I
    move-object v1, p0

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v1, p1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeUInt-Qn1smSk(Lio/ktor/utils/io/core/Buffer;I)V

    return-void
.end method

.method public static final writeULong-2TYgG_w(Lio/ktor/utils/io/core/Buffer;J)V
    .locals 23
    .param p0, "$this$writeULong_u2d2TYgG_w"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "value"    # J

    const-string v0, "$this$writeULong"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    const/16 v0, 0x8

    .local v0, "size$iv":I
    const-string v2, "long unsigned integer"

    .local v2, "name$iv":Ljava/lang/String;
    move-object/from16 v3, p0

    .local v3, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 1093
    .local v4, "$i$f$writeExact":I
    nop

    .line 1097
    move-object v5, v3

    .local v5, "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 1098
    .local v6, "$i$f$write":I
    nop

    .line 1102
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v7

    .local v7, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v8

    .local v8, "start$iv":I
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v9

    .local v9, "endExclusive$iv":I
    const/4 v10, 0x0

    .line 1103
    .local v10, "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    sub-int v11, v9, v8

    .line 1104
    .local v11, "writeRemaining$iv":I
    if-lt v11, v0, :cond_0

    .line 1107
    move-object v12, v7

    .local v12, "memory":Ljava/nio/ByteBuffer;
    move v13, v8

    .local v13, "offset":I
    const/4 v14, 0x0

    .line 207
    .local v14, "$i$a$-writeExact-BufferPrimitivesKt$writeULong$1":I
    move-object v15, v12

    .local v15, "$this$storeULongAt_u2dzwzI6Wg$iv":Ljava/nio/ByteBuffer;
    const/16 v16, 0x0

    .line 1108
    .local v16, "$i$f$storeULongAt-zwzI6Wg":I
    move-object/from16 v17, v15

    .local v17, "$this$storeLongAt_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    move-wide/from16 v18, p1

    .local v18, "value$iv$iv":J
    const/16 v20, 0x0

    .line 1109
    .local v20, "$i$f$storeLongAt-62zg_DM":I
    move-object/from16 v1, v17

    move-object/from16 v17, v3

    move-wide/from16 v21, v18

    move/from16 v18, v4

    move-wide/from16 v3, v21

    .end local v4    # "$i$f$writeExact":I
    .local v1, "$this$storeLongAt_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .local v3, "value$iv$iv":J
    .local v17, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .local v18, "$i$f$writeExact":I
    invoke-virtual {v1, v13, v3, v4}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 1110
    nop

    .line 1108
    .end local v1    # "$this$storeLongAt_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v3    # "value$iv$iv":J
    .end local v20    # "$i$f$storeLongAt-62zg_DM":I
    nop

    .line 208
    .end local v15    # "$this$storeULongAt_u2dzwzI6Wg$iv":Ljava/nio/ByteBuffer;
    .end local v16    # "$i$f$storeULongAt-zwzI6Wg":I
    nop

    .line 1107
    .end local v12    # "memory":Ljava/nio/ByteBuffer;
    .end local v13    # "offset":I
    .end local v14    # "$i$a$-writeExact-BufferPrimitivesKt$writeULong$1":I
    nop

    .line 1111
    nop

    .line 1102
    .end local v7    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v8    # "start$iv":I
    .end local v9    # "endExclusive$iv":I
    .end local v10    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .end local v11    # "writeRemaining$iv":I
    move v1, v0

    .line 1112
    .local v1, "rc$iv$iv":I
    invoke-virtual {v5, v1}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 1113
    nop

    .line 1114
    .end local v1    # "rc$iv$iv":I
    .end local v5    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$write":I
    nop

    .line 208
    .end local v0    # "size$iv":I
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v17    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v18    # "$i$f$writeExact":I
    return-void

    .line 1105
    .restart local v0    # "size$iv":I
    .restart local v2    # "name$iv":Ljava/lang/String;
    .local v3, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v4    # "$i$f$writeExact":I
    .restart local v5    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v6    # "$i$f$write":I
    .restart local v7    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v8    # "start$iv":I
    .restart local v9    # "endExclusive$iv":I
    .restart local v10    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .restart local v11    # "writeRemaining$iv":I
    :cond_0
    new-instance v1, Lio/ktor/utils/io/core/InsufficientSpaceException;

    invoke-direct {v1, v2, v0, v11}, Lio/ktor/utils/io/core/InsufficientSpaceException;-><init>(Ljava/lang/String;II)V

    throw v1
.end method

.method public static final writeULong-2TYgG_w(Lio/ktor/utils/io/core/internal/ChunkBuffer;J)V
    .locals 2
    .param p0, "$this$writeULong_u2d2TYgG_w"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p1, "value"    # J

    const-string v0, "$this$writeULong"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 211
    .local v0, "$i$f$writeULong-2TYgG_w":I
    move-object v1, p0

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v1, p1, p2}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeULong-2TYgG_w(Lio/ktor/utils/io/core/Buffer;J)V

    return-void
.end method

.method public static final writeUShort-i8woANY(Lio/ktor/utils/io/core/Buffer;S)V
    .locals 20
    .param p0, "$this$writeUShort_u2di8woANY"    # Lio/ktor/utils/io/core/Buffer;
    .param p1, "value"    # S

    const-string v0, "$this$writeUShort"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x2

    .local v0, "size$iv":I
    const-string v2, "short unsigned integer"

    .local v2, "name$iv":Ljava/lang/String;
    move-object/from16 v3, p0

    .local v3, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v4, 0x0

    .line 1007
    .local v4, "$i$f$writeExact":I
    nop

    .line 1011
    move-object v5, v3

    .local v5, "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v6, 0x0

    .line 1012
    .local v6, "$i$f$write":I
    nop

    .line 1016
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v7

    .local v7, "memory$iv":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v8

    .local v8, "start$iv":I
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v9

    .local v9, "endExclusive$iv":I
    const/4 v10, 0x0

    .line 1017
    .local v10, "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    sub-int v11, v9, v8

    .line 1018
    .local v11, "writeRemaining$iv":I
    if-lt v11, v0, :cond_0

    .line 1021
    move-object v12, v7

    .local v12, "memory":Ljava/nio/ByteBuffer;
    move v13, v8

    .local v13, "offset":I
    const/4 v14, 0x0

    .line 159
    .local v14, "$i$a$-writeExact-BufferPrimitivesKt$writeUShort$1":I
    move-object v15, v12

    .local v15, "$this$storeUShortAt_u2d4ET0KQI$iv":Ljava/nio/ByteBuffer;
    const/16 v16, 0x0

    .line 1022
    .local v16, "$i$f$storeUShortAt-4ET0KQI":I
    move/from16 v17, p1

    .local v17, "value$iv$iv":S
    move-object/from16 v18, v15

    .local v18, "$this$storeShortAt_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/16 v19, 0x0

    .line 1023
    .local v19, "$i$f$storeShortAt-62zg_DM":I
    move/from16 v1, v17

    move-object/from16 v17, v3

    move-object/from16 v3, v18

    .end local v18    # "$this$storeShortAt_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .local v1, "value$iv$iv":S
    .local v3, "$this$storeShortAt_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .local v17, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    invoke-virtual {v3, v13, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 1024
    nop

    .line 1022
    .end local v1    # "value$iv$iv":S
    .end local v3    # "$this$storeShortAt_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v19    # "$i$f$storeShortAt-62zg_DM":I
    nop

    .line 160
    .end local v15    # "$this$storeUShortAt_u2d4ET0KQI$iv":Ljava/nio/ByteBuffer;
    .end local v16    # "$i$f$storeUShortAt-4ET0KQI":I
    nop

    .line 1021
    .end local v12    # "memory":Ljava/nio/ByteBuffer;
    .end local v13    # "offset":I
    .end local v14    # "$i$a$-writeExact-BufferPrimitivesKt$writeUShort$1":I
    nop

    .line 1025
    nop

    .line 1016
    .end local v7    # "memory$iv":Ljava/nio/ByteBuffer;
    .end local v8    # "start$iv":I
    .end local v9    # "endExclusive$iv":I
    .end local v10    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .end local v11    # "writeRemaining$iv":I
    move v1, v0

    .line 1026
    .local v1, "rc$iv$iv":I
    invoke-virtual {v5, v1}, Lio/ktor/utils/io/core/Buffer;->commitWritten(I)V

    .line 1027
    nop

    .line 1028
    .end local v1    # "rc$iv$iv":I
    .end local v5    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v6    # "$i$f$write":I
    nop

    .line 160
    .end local v0    # "size$iv":I
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v4    # "$i$f$writeExact":I
    .end local v17    # "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    return-void

    .line 1019
    .restart local v0    # "size$iv":I
    .restart local v2    # "name$iv":Ljava/lang/String;
    .local v3, "$this$writeExact$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v4    # "$i$f$writeExact":I
    .restart local v5    # "$this$write$iv$iv":Lio/ktor/utils/io/core/Buffer;
    .restart local v6    # "$i$f$write":I
    .restart local v7    # "memory$iv":Ljava/nio/ByteBuffer;
    .restart local v8    # "start$iv":I
    .restart local v9    # "endExclusive$iv":I
    .restart local v10    # "$i$a$-write-BufferPrimitivesKt$writeExact$2$iv":I
    .restart local v11    # "writeRemaining$iv":I
    :cond_0
    new-instance v1, Lio/ktor/utils/io/core/InsufficientSpaceException;

    invoke-direct {v1, v2, v0, v11}, Lio/ktor/utils/io/core/InsufficientSpaceException;-><init>(Ljava/lang/String;II)V

    throw v1
.end method

.method public static final writeUShort-i8woANY(Lio/ktor/utils/io/core/internal/ChunkBuffer;S)V
    .locals 2
    .param p0, "$this$writeUShort_u2di8woANY"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .param p1, "value"    # S

    const-string v0, "$this$writeUShort"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 163
    .local v0, "$i$f$writeUShort-i8woANY":I
    move-object v1, p0

    check-cast v1, Lio/ktor/utils/io/core/Buffer;

    invoke-static {v1, p1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeUShort-i8woANY(Lio/ktor/utils/io/core/Buffer;S)V

    return-void
.end method
