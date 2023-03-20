// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateLobby$MutationRoot _$CreateLobby$MutationRootFromJson(
        Map<String, dynamic> json) =>
    CreateLobby$MutationRoot()..createLobby = json['createLobby'] as String;

Map<String, dynamic> _$CreateLobby$MutationRootToJson(
        CreateLobby$MutationRoot instance) =>
    <String, dynamic>{
      'createLobby': instance.createLobby,
    };

JoinLobby$MutationRoot _$JoinLobby$MutationRootFromJson(
        Map<String, dynamic> json) =>
    JoinLobby$MutationRoot()..joinLobby = json['joinLobby'] as String;

Map<String, dynamic> _$JoinLobby$MutationRootToJson(
        JoinLobby$MutationRoot instance) =>
    <String, dynamic>{
      'joinLobby': instance.joinLobby,
    };

Disconnect$MutationRoot _$Disconnect$MutationRootFromJson(
        Map<String, dynamic> json) =>
    Disconnect$MutationRoot()..disconnect = json['disconnect'] as String;

Map<String, dynamic> _$Disconnect$MutationRootToJson(
        Disconnect$MutationRoot instance) =>
    <String, dynamic>{
      'disconnect': instance.disconnect,
    };

Chat$MutationRoot _$Chat$MutationRootFromJson(Map<String, dynamic> json) =>
    Chat$MutationRoot()..chat = json['chat'] as String;

Map<String, dynamic> _$Chat$MutationRootToJson(Chat$MutationRoot instance) =>
    <String, dynamic>{
      'chat': instance.chat,
    };

Ping$QueryRoot _$Ping$QueryRootFromJson(Map<String, dynamic> json) =>
    Ping$QueryRoot()..ping = json['ping'] as String;

Map<String, dynamic> _$Ping$QueryRootToJson(Ping$QueryRoot instance) =>
    <String, dynamic>{
      'ping': instance.ping,
    };

ServerMessages$Subscription$ServerResponse$PlayerLeft$Player
    _$ServerMessages$Subscription$ServerResponse$PlayerLeft$PlayerFromJson(
            Map<String, dynamic> json) =>
        ServerMessages$Subscription$ServerResponse$PlayerLeft$Player()
          ..name = json['name'] as String
          ..id = json['id'] as String;

Map<String, dynamic>
    _$ServerMessages$Subscription$ServerResponse$PlayerLeft$PlayerToJson(
            ServerMessages$Subscription$ServerResponse$PlayerLeft$Player
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'id': instance.id,
        };

ServerMessages$Subscription$ServerResponse$PlayerLeft$Room
    _$ServerMessages$Subscription$ServerResponse$PlayerLeft$RoomFromJson(
            Map<String, dynamic> json) =>
        ServerMessages$Subscription$ServerResponse$PlayerLeft$Room()
          ..id = json['id'] as String
          ..users = (json['users'] as List<dynamic>)
              .map((e) => RoomFieldsMixin$LobbyPlayer.fromJson(
                  e as Map<String, dynamic>))
              .toList();

Map<String,
    dynamic> _$ServerMessages$Subscription$ServerResponse$PlayerLeft$RoomToJson(
        ServerMessages$Subscription$ServerResponse$PlayerLeft$Room instance) =>
    <String, dynamic>{
      'id': instance.id,
      'users': instance.users.map((e) => e.toJson()).toList(),
    };

ServerMessages$Subscription$ServerResponse$PlayerLeft
    _$ServerMessages$Subscription$ServerResponse$PlayerLeftFromJson(
            Map<String, dynamic> json) =>
        ServerMessages$Subscription$ServerResponse$PlayerLeft()
          ..$$typename = json['__typename'] as String?
          ..player =
              ServerMessages$Subscription$ServerResponse$PlayerLeft$Player
                  .fromJson(json['player'] as Map<String, dynamic>)
          ..room = ServerMessages$Subscription$ServerResponse$PlayerLeft$Room
              .fromJson(json['room'] as Map<String, dynamic>);

Map<String, dynamic>
    _$ServerMessages$Subscription$ServerResponse$PlayerLeftToJson(
            ServerMessages$Subscription$ServerResponse$PlayerLeft instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'player': instance.player.toJson(),
          'room': instance.room.toJson(),
        };

ServerMessages$Subscription$ServerResponse$PlayerJoined$Player
    _$ServerMessages$Subscription$ServerResponse$PlayerJoined$PlayerFromJson(
            Map<String, dynamic> json) =>
        ServerMessages$Subscription$ServerResponse$PlayerJoined$Player()
          ..name = json['name'] as String
          ..id = json['id'] as String;

Map<String, dynamic>
    _$ServerMessages$Subscription$ServerResponse$PlayerJoined$PlayerToJson(
            ServerMessages$Subscription$ServerResponse$PlayerJoined$Player
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'id': instance.id,
        };

ServerMessages$Subscription$ServerResponse$PlayerJoined$Room
    _$ServerMessages$Subscription$ServerResponse$PlayerJoined$RoomFromJson(
            Map<String, dynamic> json) =>
        ServerMessages$Subscription$ServerResponse$PlayerJoined$Room()
          ..id = json['id'] as String
          ..users = (json['users'] as List<dynamic>)
              .map((e) => RoomFieldsMixin$LobbyPlayer.fromJson(
                  e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$ServerMessages$Subscription$ServerResponse$PlayerJoined$RoomToJson(
            ServerMessages$Subscription$ServerResponse$PlayerJoined$Room
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'users': instance.users.map((e) => e.toJson()).toList(),
        };

ServerMessages$Subscription$ServerResponse$PlayerJoined
    _$ServerMessages$Subscription$ServerResponse$PlayerJoinedFromJson(
            Map<String, dynamic> json) =>
        ServerMessages$Subscription$ServerResponse$PlayerJoined()
          ..$$typename = json['__typename'] as String?
          ..player =
              ServerMessages$Subscription$ServerResponse$PlayerJoined$Player
                  .fromJson(json['player'] as Map<String, dynamic>)
          ..room = ServerMessages$Subscription$ServerResponse$PlayerJoined$Room
              .fromJson(json['room'] as Map<String, dynamic>);

Map<String, dynamic>
    _$ServerMessages$Subscription$ServerResponse$PlayerJoinedToJson(
            ServerMessages$Subscription$ServerResponse$PlayerJoined instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'player': instance.player.toJson(),
          'room': instance.room.toJson(),
        };

ServerMessages$Subscription$ServerResponse$PlayerConnected$Player
    _$ServerMessages$Subscription$ServerResponse$PlayerConnected$PlayerFromJson(
            Map<String, dynamic> json) =>
        ServerMessages$Subscription$ServerResponse$PlayerConnected$Player()
          ..name = json['name'] as String
          ..id = json['id'] as String;

Map<String, dynamic>
    _$ServerMessages$Subscription$ServerResponse$PlayerConnected$PlayerToJson(
            ServerMessages$Subscription$ServerResponse$PlayerConnected$Player
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'id': instance.id,
        };

ServerMessages$Subscription$ServerResponse$PlayerConnected$Room
    _$ServerMessages$Subscription$ServerResponse$PlayerConnected$RoomFromJson(
            Map<String, dynamic> json) =>
        ServerMessages$Subscription$ServerResponse$PlayerConnected$Room()
          ..id = json['id'] as String
          ..users = (json['users'] as List<dynamic>)
              .map((e) => RoomFieldsMixin$LobbyPlayer.fromJson(
                  e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$ServerMessages$Subscription$ServerResponse$PlayerConnected$RoomToJson(
            ServerMessages$Subscription$ServerResponse$PlayerConnected$Room
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'users': instance.users.map((e) => e.toJson()).toList(),
        };

ServerMessages$Subscription$ServerResponse$PlayerConnected
    _$ServerMessages$Subscription$ServerResponse$PlayerConnectedFromJson(
            Map<String, dynamic> json) =>
        ServerMessages$Subscription$ServerResponse$PlayerConnected()
          ..$$typename = json['__typename'] as String?
          ..player =
              ServerMessages$Subscription$ServerResponse$PlayerConnected$Player
                  .fromJson(json['player'] as Map<String, dynamic>)
          ..room =
              ServerMessages$Subscription$ServerResponse$PlayerConnected$Room
                  .fromJson(json['room'] as Map<String, dynamic>);

Map<String,
    dynamic> _$ServerMessages$Subscription$ServerResponse$PlayerConnectedToJson(
        ServerMessages$Subscription$ServerResponse$PlayerConnected instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'player': instance.player.toJson(),
      'room': instance.room.toJson(),
    };

ServerMessages$Subscription$ServerResponse$PlayerRemoved$Player
    _$ServerMessages$Subscription$ServerResponse$PlayerRemoved$PlayerFromJson(
            Map<String, dynamic> json) =>
        ServerMessages$Subscription$ServerResponse$PlayerRemoved$Player()
          ..name = json['name'] as String
          ..id = json['id'] as String;

Map<String, dynamic>
    _$ServerMessages$Subscription$ServerResponse$PlayerRemoved$PlayerToJson(
            ServerMessages$Subscription$ServerResponse$PlayerRemoved$Player
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'id': instance.id,
        };

ServerMessages$Subscription$ServerResponse$PlayerRemoved$Room
    _$ServerMessages$Subscription$ServerResponse$PlayerRemoved$RoomFromJson(
            Map<String, dynamic> json) =>
        ServerMessages$Subscription$ServerResponse$PlayerRemoved$Room()
          ..id = json['id'] as String
          ..users = (json['users'] as List<dynamic>)
              .map((e) => RoomFieldsMixin$LobbyPlayer.fromJson(
                  e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$ServerMessages$Subscription$ServerResponse$PlayerRemoved$RoomToJson(
            ServerMessages$Subscription$ServerResponse$PlayerRemoved$Room
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'users': instance.users.map((e) => e.toJson()).toList(),
        };

ServerMessages$Subscription$ServerResponse$PlayerRemoved
    _$ServerMessages$Subscription$ServerResponse$PlayerRemovedFromJson(
            Map<String, dynamic> json) =>
        ServerMessages$Subscription$ServerResponse$PlayerRemoved()
          ..$$typename = json['__typename'] as String?
          ..player =
              ServerMessages$Subscription$ServerResponse$PlayerRemoved$Player
                  .fromJson(json['player'] as Map<String, dynamic>)
          ..room = ServerMessages$Subscription$ServerResponse$PlayerRemoved$Room
              .fromJson(json['room'] as Map<String, dynamic>);

Map<String,
    dynamic> _$ServerMessages$Subscription$ServerResponse$PlayerRemovedToJson(
        ServerMessages$Subscription$ServerResponse$PlayerRemoved instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'player': instance.player.toJson(),
      'room': instance.room.toJson(),
    };

ServerMessages$Subscription$ServerResponse$ReadyData
    _$ServerMessages$Subscription$ServerResponse$ReadyDataFromJson(
            Map<String, dynamic> json) =>
        ServerMessages$Subscription$ServerResponse$ReadyData()
          ..playing = json['playing'] as bool
          ..positionSecs = json['positionSecs'] as int
          ..$$typename = json['__typename'] as String?;

Map<String, dynamic>
    _$ServerMessages$Subscription$ServerResponse$ReadyDataToJson(
            ServerMessages$Subscription$ServerResponse$ReadyData instance) =>
        <String, dynamic>{
          'playing': instance.playing,
          'positionSecs': instance.positionSecs,
          '__typename': instance.$$typename,
        };

ServerMessages$Subscription$ServerResponse$ChatMessage$Player
    _$ServerMessages$Subscription$ServerResponse$ChatMessage$PlayerFromJson(
            Map<String, dynamic> json) =>
        ServerMessages$Subscription$ServerResponse$ChatMessage$Player()
          ..name = json['name'] as String
          ..id = json['id'] as String;

Map<String, dynamic>
    _$ServerMessages$Subscription$ServerResponse$ChatMessage$PlayerToJson(
            ServerMessages$Subscription$ServerResponse$ChatMessage$Player
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'id': instance.id,
        };

ServerMessages$Subscription$ServerResponse$ChatMessage
    _$ServerMessages$Subscription$ServerResponse$ChatMessageFromJson(
            Map<String, dynamic> json) =>
        ServerMessages$Subscription$ServerResponse$ChatMessage()
          ..$$typename = json['__typename'] as String?
          ..player =
              ServerMessages$Subscription$ServerResponse$ChatMessage$Player
                  .fromJson(json['player'] as Map<String, dynamic>)
          ..message = json['message'] as String
          ..color = json['color'] as String?;

Map<String, dynamic>
    _$ServerMessages$Subscription$ServerResponse$ChatMessageToJson(
            ServerMessages$Subscription$ServerResponse$ChatMessage instance) =>
        <String, dynamic>{
          '__typename': instance.$$typename,
          'player': instance.player.toJson(),
          'message': instance.message,
          'color': instance.color,
        };

ServerMessages$Subscription$ServerResponse
    _$ServerMessages$Subscription$ServerResponseFromJson(
            Map<String, dynamic> json) =>
        ServerMessages$Subscription$ServerResponse()
          ..$$typename = json['__typename'] as String?;

Map<String, dynamic> _$ServerMessages$Subscription$ServerResponseToJson(
        ServerMessages$Subscription$ServerResponse instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
    };

ServerMessages$Subscription _$ServerMessages$SubscriptionFromJson(
        Map<String, dynamic> json) =>
    ServerMessages$Subscription()
      ..serverMessages = ServerMessages$Subscription$ServerResponse.fromJson(
          json['serverMessages'] as Map<String, dynamic>);

Map<String, dynamic> _$ServerMessages$SubscriptionToJson(
        ServerMessages$Subscription instance) =>
    <String, dynamic>{
      'serverMessages': instance.serverMessages.toJson(),
    };

RoomFieldsMixin$LobbyPlayer _$RoomFieldsMixin$LobbyPlayerFromJson(
        Map<String, dynamic> json) =>
    RoomFieldsMixin$LobbyPlayer()
      ..player = LobbyPlayerFieldsMixin$Player.fromJson(
          json['player'] as Map<String, dynamic>)
      ..isConnected = json['isConnected'] as bool
      ..state = LobbyPlayerFieldsMixin$UserState.fromJson(
          json['state'] as Map<String, dynamic>);

Map<String, dynamic> _$RoomFieldsMixin$LobbyPlayerToJson(
        RoomFieldsMixin$LobbyPlayer instance) =>
    <String, dynamic>{
      'player': instance.player.toJson(),
      'isConnected': instance.isConnected,
      'state': instance.state.toJson(),
    };

LobbyPlayerFieldsMixin$Player _$LobbyPlayerFieldsMixin$PlayerFromJson(
        Map<String, dynamic> json) =>
    LobbyPlayerFieldsMixin$Player()
      ..name = json['name'] as String
      ..id = json['id'] as String;

Map<String, dynamic> _$LobbyPlayerFieldsMixin$PlayerToJson(
        LobbyPlayerFieldsMixin$Player instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };

LobbyPlayerFieldsMixin$UserState$ReadyData
    _$LobbyPlayerFieldsMixin$UserState$ReadyDataFromJson(
            Map<String, dynamic> json) =>
        LobbyPlayerFieldsMixin$UserState$ReadyData()
          ..playing = json['playing'] as bool
          ..positionSecs = json['positionSecs'] as int
          ..$$typename = json['__typename'] as String?;

Map<String, dynamic> _$LobbyPlayerFieldsMixin$UserState$ReadyDataToJson(
        LobbyPlayerFieldsMixin$UserState$ReadyData instance) =>
    <String, dynamic>{
      'playing': instance.playing,
      'positionSecs': instance.positionSecs,
      '__typename': instance.$$typename,
    };

LobbyPlayerFieldsMixin$UserState$NotReadyData
    _$LobbyPlayerFieldsMixin$UserState$NotReadyDataFromJson(
            Map<String, dynamic> json) =>
        LobbyPlayerFieldsMixin$UserState$NotReadyData()
          ..$$typename = json['__typename'] as String?
          ..empty = json['empty'] as int;

Map<String, dynamic> _$LobbyPlayerFieldsMixin$UserState$NotReadyDataToJson(
        LobbyPlayerFieldsMixin$UserState$NotReadyData instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'empty': instance.empty,
    };

LobbyPlayerFieldsMixin$UserState _$LobbyPlayerFieldsMixin$UserStateFromJson(
        Map<String, dynamic> json) =>
    LobbyPlayerFieldsMixin$UserState()
      ..$$typename = json['__typename'] as String?;

Map<String, dynamic> _$LobbyPlayerFieldsMixin$UserStateToJson(
        LobbyPlayerFieldsMixin$UserState instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
    };

StatusUpdate$QueryRoot$ReadyData _$StatusUpdate$QueryRoot$ReadyDataFromJson(
        Map<String, dynamic> json) =>
    StatusUpdate$QueryRoot$ReadyData()
      ..playing = json['playing'] as bool
      ..positionSecs = json['positionSecs'] as int;

Map<String, dynamic> _$StatusUpdate$QueryRoot$ReadyDataToJson(
        StatusUpdate$QueryRoot$ReadyData instance) =>
    <String, dynamic>{
      'playing': instance.playing,
      'positionSecs': instance.positionSecs,
    };

StatusUpdate$QueryRoot _$StatusUpdate$QueryRootFromJson(
        Map<String, dynamic> json) =>
    StatusUpdate$QueryRoot()
      ..statusUpdate = StatusUpdate$QueryRoot$ReadyData.fromJson(
          json['statusUpdate'] as Map<String, dynamic>);

Map<String, dynamic> _$StatusUpdate$QueryRootToJson(
        StatusUpdate$QueryRoot instance) =>
    <String, dynamic>{
      'statusUpdate': instance.statusUpdate.toJson(),
    };

Resumed$QueryRoot$ReadyData _$Resumed$QueryRoot$ReadyDataFromJson(
        Map<String, dynamic> json) =>
    Resumed$QueryRoot$ReadyData()
      ..playing = json['playing'] as bool
      ..positionSecs = json['positionSecs'] as int;

Map<String, dynamic> _$Resumed$QueryRoot$ReadyDataToJson(
        Resumed$QueryRoot$ReadyData instance) =>
    <String, dynamic>{
      'playing': instance.playing,
      'positionSecs': instance.positionSecs,
    };

Resumed$QueryRoot _$Resumed$QueryRootFromJson(Map<String, dynamic> json) =>
    Resumed$QueryRoot()
      ..resumed = Resumed$QueryRoot$ReadyData.fromJson(
          json['resumed'] as Map<String, dynamic>);

Map<String, dynamic> _$Resumed$QueryRootToJson(Resumed$QueryRoot instance) =>
    <String, dynamic>{
      'resumed': instance.resumed.toJson(),
    };

Paused$QueryRoot$ReadyData _$Paused$QueryRoot$ReadyDataFromJson(
        Map<String, dynamic> json) =>
    Paused$QueryRoot$ReadyData()
      ..playing = json['playing'] as bool
      ..positionSecs = json['positionSecs'] as int;

Map<String, dynamic> _$Paused$QueryRoot$ReadyDataToJson(
        Paused$QueryRoot$ReadyData instance) =>
    <String, dynamic>{
      'playing': instance.playing,
      'positionSecs': instance.positionSecs,
    };

Paused$QueryRoot _$Paused$QueryRootFromJson(Map<String, dynamic> json) =>
    Paused$QueryRoot()
      ..paused = Paused$QueryRoot$ReadyData.fromJson(
          json['paused'] as Map<String, dynamic>);

Map<String, dynamic> _$Paused$QueryRootToJson(Paused$QueryRoot instance) =>
    <String, dynamic>{
      'paused': instance.paused.toJson(),
    };

CreateLobbyArguments _$CreateLobbyArgumentsFromJson(
        Map<String, dynamic> json) =>
    CreateLobbyArguments(
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      delay_secs: json['delay_secs'] as int,
    );

Map<String, dynamic> _$CreateLobbyArgumentsToJson(
        CreateLobbyArguments instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'delay_secs': instance.delay_secs,
    };

JoinLobbyArguments _$JoinLobbyArgumentsFromJson(Map<String, dynamic> json) =>
    JoinLobbyArguments(
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      roomId: json['roomId'] as String,
    );

Map<String, dynamic> _$JoinLobbyArgumentsToJson(JoinLobbyArguments instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'roomId': instance.roomId,
    };

DisconnectArguments _$DisconnectArgumentsFromJson(Map<String, dynamic> json) =>
    DisconnectArguments(
      userId: json['userId'] as String,
      roomId: json['roomId'] as String,
    );

Map<String, dynamic> _$DisconnectArgumentsToJson(
        DisconnectArguments instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'roomId': instance.roomId,
    };

ChatArguments _$ChatArgumentsFromJson(Map<String, dynamic> json) =>
    ChatArguments(
      userId: json['userId'] as String,
      roomId: json['roomId'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$ChatArgumentsToJson(ChatArguments instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'roomId': instance.roomId,
      'message': instance.message,
    };

ServerMessagesArguments _$ServerMessagesArgumentsFromJson(
        Map<String, dynamic> json) =>
    ServerMessagesArguments(
      roomId: json['roomId'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$ServerMessagesArgumentsToJson(
        ServerMessagesArguments instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'userId': instance.userId,
    };

StatusUpdateArguments _$StatusUpdateArgumentsFromJson(
        Map<String, dynamic> json) =>
    StatusUpdateArguments(
      userId: json['userId'] as String,
      roomId: json['roomId'] as String,
      isPlaying: json['isPlaying'] as bool,
      positionSecs: json['positionSecs'] as int,
    );

Map<String, dynamic> _$StatusUpdateArgumentsToJson(
        StatusUpdateArguments instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'roomId': instance.roomId,
      'isPlaying': instance.isPlaying,
      'positionSecs': instance.positionSecs,
    };

ResumedArguments _$ResumedArgumentsFromJson(Map<String, dynamic> json) =>
    ResumedArguments(
      userId: json['userId'] as String,
      roomId: json['roomId'] as String,
      positionSecs: json['positionSecs'] as int,
    );

Map<String, dynamic> _$ResumedArgumentsToJson(ResumedArguments instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'roomId': instance.roomId,
      'positionSecs': instance.positionSecs,
    };

PausedArguments _$PausedArgumentsFromJson(Map<String, dynamic> json) =>
    PausedArguments(
      userId: json['userId'] as String,
      roomId: json['roomId'] as String,
      positionSecs: json['positionSecs'] as int,
    );

Map<String, dynamic> _$PausedArgumentsToJson(PausedArguments instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'roomId': instance.roomId,
      'positionSecs': instance.positionSecs,
    };
