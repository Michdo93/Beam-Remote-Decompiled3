.class public Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v8, 0x0

    .line 130
    sget-object v7, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->TAG:Ljava/lang/String;

    const-string v9, "getMacAddress"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v3, ""

    .line 133
    .local v3, "macAddress":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 134
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 135
    .local v5, "nif":Ljava/net/NetworkInterface;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v10, "wlan0"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 137
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getHardwareAddress()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 138
    .local v4, "macBytes":[B
    if-nez v4, :cond_2

    .line 156
    .end local v0    # "all":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v4    # "macBytes":[B
    .end local v5    # "nif":Ljava/net/NetworkInterface;
    :cond_1
    :goto_1
    sget-object v7, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "local mac address "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-object v3

    .line 142
    .restart local v0    # "all":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .restart local v4    # "macBytes":[B
    .restart local v5    # "nif":Ljava/net/NetworkInterface;
    :cond_2
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v6, "stringBuilder":Ljava/lang/StringBuilder;
    array-length v10, v4

    move v7, v8

    :goto_2
    if-ge v7, v10, :cond_3

    aget-byte v1, v4, v7

    .line 144
    .local v1, "b":B
    const-string v11, "%02X:"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 147
    .end local v1    # "b":B
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 148
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 150
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 151
    goto :goto_0

    .line 152
    .end local v0    # "all":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v4    # "macBytes":[B
    .end local v5    # "nif":Ljava/net/NetworkInterface;
    .end local v6    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 153
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v7, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->TAG:Ljava/lang/String;

    const-string v8, "Exception while reading mac address"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v3, "02:00:00:00:00:00"

    goto :goto_1
.end method

.method public static getUserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 26
    sget-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->TAG:Ljava/lang/String;

    const-string v5, "getUserName"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const-string v3, ""

    .line 28
    .local v3, "userName":Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string v5, "com.google"

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 29
    .local v1, "accs":[Landroid/accounts/Account;
    array-length v4, v1

    if-lez v4, :cond_0

    .line 30
    aget-object v4, v1, v6

    iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 31
    .local v0, "accountName":Ljava/lang/String;
    const-string v4, "@"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "parts":[Ljava/lang/String;
    array-length v4, v2

    if-le v4, v7, :cond_0

    .line 33
    aget-object v3, v2, v6

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 37
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v2    # "parts":[Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UserName  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-object v3
.end method

.method public static readBeamInfo(Ljava/io/InputStream;Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;Ljava/lang/String;Ljava/lang/String;)Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .locals 21
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "connectionType"    # Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "remoteMacAddress"    # Ljava/lang/String;

    .prologue
    .line 60
    sget-object v18, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "readBeamInfo "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", ip "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",mac address "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v14, 0x0

    .line 62
    .local v14, "reader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 64
    .local v6, "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    :try_start_0
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .local v15, "reader":Ljava/io/BufferedReader;
    const/16 v18, 0xfa0

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->timeout(Ljava/io/InputStream;I)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 66
    sget-object v18, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Timed out while trying to read beam identity "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    const/16 v18, 0x0

    .line 119
    :try_start_2
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    .line 120
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    move-object v14, v15

    .line 125
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    :goto_1
    return-object v18

    .line 121
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v11

    .line 122
    .local v11, "ex":Ljava/io/IOException;
    sget-object v19, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->TAG:Ljava/lang/String;

    const-string v20, "Exception while closing the input stream"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    .end local v11    # "ex":Ljava/io/IOException;
    :cond_0
    :try_start_3
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 70
    .local v12, "fullBeamName":Ljava/lang/String;
    if-nez v12, :cond_1

    .line 71
    sget-object v18, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Not a beam device "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    const/16 v18, 0x0

    .line 119
    :try_start_4
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    .line 120
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_2
    move-object v14, v15

    .line 72
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 121
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v11

    .line 122
    .restart local v11    # "ex":Ljava/io/IOException;
    sget-object v19, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->TAG:Ljava/lang/String;

    const-string v20, "Exception while closing the input stream"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 74
    .end local v11    # "ex":Ljava/io/IOException;
    :cond_1
    :try_start_5
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    const-string v19, ";"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 75
    .local v17, "volume":I
    const-wide/16 v18, 0x32

    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V

    .line 76
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    const-string v19, ";"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 77
    .local v13, "led":I
    const-wide/16 v18, 0x32

    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V

    .line 78
    const/16 v16, 0x0

    .line 79
    .local v16, "version":I
    const/16 v18, 0xfa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->timeout(Ljava/io/InputStream;I)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 80
    sget-object v18, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->TAG:Ljava/lang/String;

    const-string v19, "Timed out while reading beam version. Could be old beam"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/16 v16, 0x1

    .line 85
    :goto_3
    sget-object v18, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Read beam version"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    move-object/from16 v2, p2

    .line 88
    .local v2, "beamIp":Ljava/lang/String;
    move-object/from16 v4, p3

    .line 89
    .local v4, "bluetoothMac":Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 90
    sget-object v18, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "New beam service.. "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    const-string v19, ";"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "beamIpCommand":[Ljava/lang/String;
    const-wide/16 v18, 0x32

    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V

    .line 93
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    const-string v19, ";"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, "bluetoothMacCommand":[Ljava/lang/String;
    array-length v0, v3

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    .line 95
    const/16 v18, 0x1

    aget-object v2, v3, v18

    .line 97
    :cond_2
    array-length v0, v5

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 98
    const/16 v18, 0x1

    aget-object v4, v5, v18

    .line 101
    .end local v3    # "beamIpCommand":[Ljava/lang/String;
    .end local v5    # "bluetoothMacCommand":[Ljava/lang/String;
    :cond_3
    new-instance v7, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    invoke-direct {v7}, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;-><init>()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 102
    .end local v6    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .local v7, "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    :try_start_6
    const-string v18, ";"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iput-object v0, v7, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->title:Ljava/lang/String;

    .line 103
    move/from16 v0, v17

    iput v0, v7, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->volume:I

    .line 104
    iput v13, v7, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->led:I

    .line 105
    move/from16 v0, v16

    iput v0, v7, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->version:I

    .line 106
    iput-object v2, v7, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    .line 107
    iput-object v4, v7, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->mac:Ljava/lang/String;

    .line 108
    move-object/from16 v0, p1

    iput-object v0, v7, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->connectionType:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    .line 109
    sget-object v18, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Read beam info successfully - for"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v7, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "Beam IP "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " bluetooth mac: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", connection type "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 119
    :try_start_7
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    .line 120
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    move-object v6, v7

    .end local v7    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .restart local v6    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    move-object v14, v15

    .end local v2    # "beamIp":Ljava/lang/String;
    .end local v4    # "bluetoothMac":Ljava/lang/String;
    .end local v12    # "fullBeamName":Ljava/lang/String;
    .end local v13    # "led":I
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .end local v16    # "version":I
    .end local v17    # "volume":I
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    :goto_4
    move-object/from16 v18, v6

    .line 125
    goto/16 :goto_1

    .line 83
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "fullBeamName":Ljava/lang/String;
    .restart local v13    # "led":I
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "version":I
    .restart local v17    # "volume":I
    :cond_4
    :try_start_8
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    const-string v19, ";"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v16

    goto/16 :goto_3

    .line 121
    .end local v6    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .restart local v2    # "beamIp":Ljava/lang/String;
    .restart local v4    # "bluetoothMac":Ljava/lang/String;
    .restart local v7    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    :catch_2
    move-exception v11

    .line 122
    .restart local v11    # "ex":Ljava/io/IOException;
    sget-object v18, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->TAG:Ljava/lang/String;

    const-string v19, "Exception while closing the input stream"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .end local v7    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .restart local v6    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    move-object v14, v15

    .line 124
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 111
    .end local v2    # "beamIp":Ljava/lang/String;
    .end local v4    # "bluetoothMac":Ljava/lang/String;
    .end local v11    # "ex":Ljava/io/IOException;
    .end local v12    # "fullBeamName":Ljava/lang/String;
    .end local v13    # "led":I
    .end local v16    # "version":I
    .end local v17    # "volume":I
    :catch_3
    move-exception v8

    .line 112
    .local v8, "e":Ljava/io/IOException;
    :goto_5
    :try_start_9
    sget-object v18, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "I/O exception occurred while reading Beam identity info"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 119
    :try_start_a
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    .line 120
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_4

    .line 121
    :catch_4
    move-exception v11

    .line 122
    .restart local v11    # "ex":Ljava/io/IOException;
    sget-object v18, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->TAG:Ljava/lang/String;

    const-string v19, "Exception while closing the input stream"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 113
    .end local v8    # "e":Ljava/io/IOException;
    .end local v11    # "ex":Ljava/io/IOException;
    :catch_5
    move-exception v9

    .line 114
    .local v9, "e1":Ljava/lang/InterruptedException;
    :goto_6
    :try_start_b
    sget-object v18, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Interrupted exception occurred while reading Beam identity info"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 119
    :try_start_c
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    .line 120
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_4

    .line 121
    :catch_6
    move-exception v11

    .line 122
    .restart local v11    # "ex":Ljava/io/IOException;
    sget-object v18, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->TAG:Ljava/lang/String;

    const-string v19, "Exception while closing the input stream"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 115
    .end local v9    # "e1":Ljava/lang/InterruptedException;
    .end local v11    # "ex":Ljava/io/IOException;
    :catch_7
    move-exception v10

    .line 116
    .local v10, "e2":Ljava/lang/Exception;
    :goto_7
    :try_start_d
    sget-object v18, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception occurred while reading Beam identity info"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 119
    :try_start_e
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    .line 120
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto/16 :goto_4

    .line 121
    :catch_8
    move-exception v11

    .line 122
    .restart local v11    # "ex":Ljava/io/IOException;
    sget-object v18, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->TAG:Ljava/lang/String;

    const-string v19, "Exception while closing the input stream"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 118
    .end local v10    # "e2":Ljava/lang/Exception;
    .end local v11    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    .line 119
    :goto_8
    :try_start_f
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    .line 120
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 123
    :goto_9
    throw v18

    .line 121
    :catch_9
    move-exception v11

    .line 122
    .restart local v11    # "ex":Ljava/io/IOException;
    sget-object v19, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->TAG:Ljava/lang/String;

    const-string v20, "Exception while closing the input stream"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 118
    .end local v11    # "ex":Ljava/io/IOException;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v18

    move-object v14, v15

    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    goto :goto_8

    .end local v6    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "beamIp":Ljava/lang/String;
    .restart local v4    # "bluetoothMac":Ljava/lang/String;
    .restart local v7    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .restart local v12    # "fullBeamName":Ljava/lang/String;
    .restart local v13    # "led":I
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "version":I
    .restart local v17    # "volume":I
    :catchall_2
    move-exception v18

    move-object v6, v7

    .end local v7    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .restart local v6    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    move-object v14, v15

    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    goto :goto_8

    .line 115
    .end local v2    # "beamIp":Ljava/lang/String;
    .end local v4    # "bluetoothMac":Ljava/lang/String;
    .end local v12    # "fullBeamName":Ljava/lang/String;
    .end local v13    # "led":I
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .end local v16    # "version":I
    .end local v17    # "volume":I
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    :catch_a
    move-exception v10

    move-object v14, v15

    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .end local v6    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "beamIp":Ljava/lang/String;
    .restart local v4    # "bluetoothMac":Ljava/lang/String;
    .restart local v7    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .restart local v12    # "fullBeamName":Ljava/lang/String;
    .restart local v13    # "led":I
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "version":I
    .restart local v17    # "volume":I
    :catch_b
    move-exception v10

    move-object v6, v7

    .end local v7    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .restart local v6    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    move-object v14, v15

    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .line 113
    .end local v2    # "beamIp":Ljava/lang/String;
    .end local v4    # "bluetoothMac":Ljava/lang/String;
    .end local v12    # "fullBeamName":Ljava/lang/String;
    .end local v13    # "led":I
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .end local v16    # "version":I
    .end local v17    # "volume":I
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    :catch_c
    move-exception v9

    move-object v14, v15

    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .end local v6    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "beamIp":Ljava/lang/String;
    .restart local v4    # "bluetoothMac":Ljava/lang/String;
    .restart local v7    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .restart local v12    # "fullBeamName":Ljava/lang/String;
    .restart local v13    # "led":I
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "version":I
    .restart local v17    # "volume":I
    :catch_d
    move-exception v9

    move-object v6, v7

    .end local v7    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .restart local v6    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    move-object v14, v15

    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 111
    .end local v2    # "beamIp":Ljava/lang/String;
    .end local v4    # "bluetoothMac":Ljava/lang/String;
    .end local v12    # "fullBeamName":Ljava/lang/String;
    .end local v13    # "led":I
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .end local v16    # "version":I
    .end local v17    # "volume":I
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    :catch_e
    move-exception v8

    move-object v14, v15

    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_5

    .end local v6    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "beamIp":Ljava/lang/String;
    .restart local v4    # "bluetoothMac":Ljava/lang/String;
    .restart local v7    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .restart local v12    # "fullBeamName":Ljava/lang/String;
    .restart local v13    # "led":I
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "version":I
    .restart local v17    # "volume":I
    :catch_f
    move-exception v8

    move-object v6, v7

    .end local v7    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .restart local v6    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    move-object v14, v15

    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_5
.end method

.method private static timeout(Ljava/io/InputStream;I)Z
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "timeoutInMs"    # I

    .prologue
    const/4 v3, 0x1

    .line 42
    const/4 v2, 0x0

    .local v2, "timeout":I
    div-int/lit16 v1, p1, 0xfa

    .line 44
    .local v1, "maxTimeout":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v4

    if-nez v4, :cond_1

    if-ge v2, v1, :cond_1

    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    const-wide/16 v4, 0xfa

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return v3

    .line 48
    :cond_1
    if-eq v2, v1, :cond_0

    .line 51
    const/4 v3, 0x0

    goto :goto_1
.end method
