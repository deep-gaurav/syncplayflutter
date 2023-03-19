// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

mixin PlayerFieldsMixin {
  late String name;
  late String id;
}
mixin RoomFieldsMixin {
  late String id;
  late List<RoomFieldsMixin$LobbyPlayer> users;
}
mixin LobbyPlayerFieldsMixin {
  late LobbyPlayerFieldsMixin$Player player;
  late bool isConnected;
  late LobbyPlayerFieldsMixin$UserState state;
}
mixin ReadyDataFieldsMixin {
  late bool playing;
  late int positionSecs;
}

@JsonSerializable(explicitToJson: true)
class CreateLobby$MutationRoot extends JsonSerializable with EquatableMixin {
  CreateLobby$MutationRoot();

  factory CreateLobby$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$CreateLobby$MutationRootFromJson(json);

  late String createLobby;

  @override
  List<Object?> get props => [createLobby];
  @override
  Map<String, dynamic> toJson() => _$CreateLobby$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class JoinLobby$MutationRoot extends JsonSerializable with EquatableMixin {
  JoinLobby$MutationRoot();

  factory JoinLobby$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$JoinLobby$MutationRootFromJson(json);

  late String joinLobby;

  @override
  List<Object?> get props => [joinLobby];
  @override
  Map<String, dynamic> toJson() => _$JoinLobby$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Disconnect$MutationRoot extends JsonSerializable with EquatableMixin {
  Disconnect$MutationRoot();

  factory Disconnect$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$Disconnect$MutationRootFromJson(json);

  late String disconnect;

  @override
  List<Object?> get props => [disconnect];
  @override
  Map<String, dynamic> toJson() => _$Disconnect$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Chat$MutationRoot extends JsonSerializable with EquatableMixin {
  Chat$MutationRoot();

  factory Chat$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$Chat$MutationRootFromJson(json);

  late String chat;

  @override
  List<Object?> get props => [chat];
  @override
  Map<String, dynamic> toJson() => _$Chat$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Ping$QueryRoot extends JsonSerializable with EquatableMixin {
  Ping$QueryRoot();

  factory Ping$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$Ping$QueryRootFromJson(json);

  late String ping;

  @override
  List<Object?> get props => [ping];
  @override
  Map<String, dynamic> toJson() => _$Ping$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ServerMessages$Subscription$ServerResponse$PlayerLeft$Player
    extends JsonSerializable with EquatableMixin, PlayerFieldsMixin {
  ServerMessages$Subscription$ServerResponse$PlayerLeft$Player();

  factory ServerMessages$Subscription$ServerResponse$PlayerLeft$Player.fromJson(
          Map<String, dynamic> json) =>
      _$ServerMessages$Subscription$ServerResponse$PlayerLeft$PlayerFromJson(
          json);

  @override
  List<Object?> get props => [name, id];
  @override
  Map<String, dynamic> toJson() =>
      _$ServerMessages$Subscription$ServerResponse$PlayerLeft$PlayerToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ServerMessages$Subscription$ServerResponse$PlayerLeft$Room
    extends JsonSerializable with EquatableMixin, RoomFieldsMixin {
  ServerMessages$Subscription$ServerResponse$PlayerLeft$Room();

  factory ServerMessages$Subscription$ServerResponse$PlayerLeft$Room.fromJson(
          Map<String, dynamic> json) =>
      _$ServerMessages$Subscription$ServerResponse$PlayerLeft$RoomFromJson(
          json);

  @override
  List<Object?> get props => [id, users];
  @override
  Map<String, dynamic> toJson() =>
      _$ServerMessages$Subscription$ServerResponse$PlayerLeft$RoomToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ServerMessages$Subscription$ServerResponse$PlayerLeft
    extends ServerMessages$Subscription$ServerResponse with EquatableMixin {
  ServerMessages$Subscription$ServerResponse$PlayerLeft();

  factory ServerMessages$Subscription$ServerResponse$PlayerLeft.fromJson(
          Map<String, dynamic> json) =>
      _$ServerMessages$Subscription$ServerResponse$PlayerLeftFromJson(json);

  late ServerMessages$Subscription$ServerResponse$PlayerLeft$Player player;

  late ServerMessages$Subscription$ServerResponse$PlayerLeft$Room room;

  @override
  List<Object?> get props => [player, room];
  @override
  Map<String, dynamic> toJson() =>
      _$ServerMessages$Subscription$ServerResponse$PlayerLeftToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ServerMessages$Subscription$ServerResponse$PlayerJoined$Player
    extends JsonSerializable with EquatableMixin, PlayerFieldsMixin {
  ServerMessages$Subscription$ServerResponse$PlayerJoined$Player();

  factory ServerMessages$Subscription$ServerResponse$PlayerJoined$Player.fromJson(
          Map<String, dynamic> json) =>
      _$ServerMessages$Subscription$ServerResponse$PlayerJoined$PlayerFromJson(
          json);

  @override
  List<Object?> get props => [name, id];
  @override
  Map<String, dynamic> toJson() =>
      _$ServerMessages$Subscription$ServerResponse$PlayerJoined$PlayerToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ServerMessages$Subscription$ServerResponse$PlayerJoined$Room
    extends JsonSerializable with EquatableMixin, RoomFieldsMixin {
  ServerMessages$Subscription$ServerResponse$PlayerJoined$Room();

  factory ServerMessages$Subscription$ServerResponse$PlayerJoined$Room.fromJson(
          Map<String, dynamic> json) =>
      _$ServerMessages$Subscription$ServerResponse$PlayerJoined$RoomFromJson(
          json);

  @override
  List<Object?> get props => [id, users];
  @override
  Map<String, dynamic> toJson() =>
      _$ServerMessages$Subscription$ServerResponse$PlayerJoined$RoomToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ServerMessages$Subscription$ServerResponse$PlayerJoined
    extends ServerMessages$Subscription$ServerResponse with EquatableMixin {
  ServerMessages$Subscription$ServerResponse$PlayerJoined();

  factory ServerMessages$Subscription$ServerResponse$PlayerJoined.fromJson(
          Map<String, dynamic> json) =>
      _$ServerMessages$Subscription$ServerResponse$PlayerJoinedFromJson(json);

  late ServerMessages$Subscription$ServerResponse$PlayerJoined$Player player;

  late ServerMessages$Subscription$ServerResponse$PlayerJoined$Room room;

  @override
  List<Object?> get props => [player, room];
  @override
  Map<String, dynamic> toJson() =>
      _$ServerMessages$Subscription$ServerResponse$PlayerJoinedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ServerMessages$Subscription$ServerResponse$PlayerConnected$Player
    extends JsonSerializable with EquatableMixin, PlayerFieldsMixin {
  ServerMessages$Subscription$ServerResponse$PlayerConnected$Player();

  factory ServerMessages$Subscription$ServerResponse$PlayerConnected$Player.fromJson(
          Map<String, dynamic> json) =>
      _$ServerMessages$Subscription$ServerResponse$PlayerConnected$PlayerFromJson(
          json);

  @override
  List<Object?> get props => [name, id];
  @override
  Map<String, dynamic> toJson() =>
      _$ServerMessages$Subscription$ServerResponse$PlayerConnected$PlayerToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ServerMessages$Subscription$ServerResponse$PlayerConnected$Room
    extends JsonSerializable with EquatableMixin, RoomFieldsMixin {
  ServerMessages$Subscription$ServerResponse$PlayerConnected$Room();

  factory ServerMessages$Subscription$ServerResponse$PlayerConnected$Room.fromJson(
          Map<String, dynamic> json) =>
      _$ServerMessages$Subscription$ServerResponse$PlayerConnected$RoomFromJson(
          json);

  @override
  List<Object?> get props => [id, users];
  @override
  Map<String, dynamic> toJson() =>
      _$ServerMessages$Subscription$ServerResponse$PlayerConnected$RoomToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ServerMessages$Subscription$ServerResponse$PlayerConnected
    extends ServerMessages$Subscription$ServerResponse with EquatableMixin {
  ServerMessages$Subscription$ServerResponse$PlayerConnected();

  factory ServerMessages$Subscription$ServerResponse$PlayerConnected.fromJson(
          Map<String, dynamic> json) =>
      _$ServerMessages$Subscription$ServerResponse$PlayerConnectedFromJson(
          json);

  late ServerMessages$Subscription$ServerResponse$PlayerConnected$Player player;

  late ServerMessages$Subscription$ServerResponse$PlayerConnected$Room room;

  @override
  List<Object?> get props => [player, room];
  @override
  Map<String, dynamic> toJson() =>
      _$ServerMessages$Subscription$ServerResponse$PlayerConnectedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ServerMessages$Subscription$ServerResponse$PlayerRemoved$Player
    extends JsonSerializable with EquatableMixin, PlayerFieldsMixin {
  ServerMessages$Subscription$ServerResponse$PlayerRemoved$Player();

  factory ServerMessages$Subscription$ServerResponse$PlayerRemoved$Player.fromJson(
          Map<String, dynamic> json) =>
      _$ServerMessages$Subscription$ServerResponse$PlayerRemoved$PlayerFromJson(
          json);

  @override
  List<Object?> get props => [name, id];
  @override
  Map<String, dynamic> toJson() =>
      _$ServerMessages$Subscription$ServerResponse$PlayerRemoved$PlayerToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ServerMessages$Subscription$ServerResponse$PlayerRemoved$Room
    extends JsonSerializable with EquatableMixin, RoomFieldsMixin {
  ServerMessages$Subscription$ServerResponse$PlayerRemoved$Room();

  factory ServerMessages$Subscription$ServerResponse$PlayerRemoved$Room.fromJson(
          Map<String, dynamic> json) =>
      _$ServerMessages$Subscription$ServerResponse$PlayerRemoved$RoomFromJson(
          json);

  @override
  List<Object?> get props => [id, users];
  @override
  Map<String, dynamic> toJson() =>
      _$ServerMessages$Subscription$ServerResponse$PlayerRemoved$RoomToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ServerMessages$Subscription$ServerResponse$PlayerRemoved
    extends ServerMessages$Subscription$ServerResponse with EquatableMixin {
  ServerMessages$Subscription$ServerResponse$PlayerRemoved();

  factory ServerMessages$Subscription$ServerResponse$PlayerRemoved.fromJson(
          Map<String, dynamic> json) =>
      _$ServerMessages$Subscription$ServerResponse$PlayerRemovedFromJson(json);

  late ServerMessages$Subscription$ServerResponse$PlayerRemoved$Player player;

  late ServerMessages$Subscription$ServerResponse$PlayerRemoved$Room room;

  @override
  List<Object?> get props => [player, room];
  @override
  Map<String, dynamic> toJson() =>
      _$ServerMessages$Subscription$ServerResponse$PlayerRemovedToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ServerMessages$Subscription$ServerResponse$ReadyData
    extends ServerMessages$Subscription$ServerResponse
    with EquatableMixin, ReadyDataFieldsMixin {
  ServerMessages$Subscription$ServerResponse$ReadyData();

  factory ServerMessages$Subscription$ServerResponse$ReadyData.fromJson(
          Map<String, dynamic> json) =>
      _$ServerMessages$Subscription$ServerResponse$ReadyDataFromJson(json);

  @override
  List<Object?> get props => [playing, positionSecs];
  @override
  Map<String, dynamic> toJson() =>
      _$ServerMessages$Subscription$ServerResponse$ReadyDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ServerMessages$Subscription$ServerResponse$ChatMessage$Player
    extends JsonSerializable with EquatableMixin, PlayerFieldsMixin {
  ServerMessages$Subscription$ServerResponse$ChatMessage$Player();

  factory ServerMessages$Subscription$ServerResponse$ChatMessage$Player.fromJson(
          Map<String, dynamic> json) =>
      _$ServerMessages$Subscription$ServerResponse$ChatMessage$PlayerFromJson(
          json);

  @override
  List<Object?> get props => [name, id];
  @override
  Map<String, dynamic> toJson() =>
      _$ServerMessages$Subscription$ServerResponse$ChatMessage$PlayerToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class ServerMessages$Subscription$ServerResponse$ChatMessage
    extends ServerMessages$Subscription$ServerResponse with EquatableMixin {
  ServerMessages$Subscription$ServerResponse$ChatMessage();

  factory ServerMessages$Subscription$ServerResponse$ChatMessage.fromJson(
          Map<String, dynamic> json) =>
      _$ServerMessages$Subscription$ServerResponse$ChatMessageFromJson(json);

  late ServerMessages$Subscription$ServerResponse$ChatMessage$Player player;

  late String message;

  @override
  List<Object?> get props => [player, message];
  @override
  Map<String, dynamic> toJson() =>
      _$ServerMessages$Subscription$ServerResponse$ChatMessageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ServerMessages$Subscription$ServerResponse extends JsonSerializable
    with EquatableMixin {
  ServerMessages$Subscription$ServerResponse();

  factory ServerMessages$Subscription$ServerResponse.fromJson(
      Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'PlayerLeft':
        return ServerMessages$Subscription$ServerResponse$PlayerLeft.fromJson(
            json);
      case r'PlayerJoined':
        return ServerMessages$Subscription$ServerResponse$PlayerJoined.fromJson(
            json);
      case r'PlayerConnected':
        return ServerMessages$Subscription$ServerResponse$PlayerConnected
            .fromJson(json);
      case r'PlayerRemoved':
        return ServerMessages$Subscription$ServerResponse$PlayerRemoved
            .fromJson(json);
      case r'ReadyData':
        return ServerMessages$Subscription$ServerResponse$ReadyData.fromJson(
            json);
      case r'ChatMessage':
        return ServerMessages$Subscription$ServerResponse$ChatMessage.fromJson(
            json);
      default:
    }
    return _$ServerMessages$Subscription$ServerResponseFromJson(json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'PlayerLeft':
        return (this as ServerMessages$Subscription$ServerResponse$PlayerLeft)
            .toJson();
      case r'PlayerJoined':
        return (this as ServerMessages$Subscription$ServerResponse$PlayerJoined)
            .toJson();
      case r'PlayerConnected':
        return (this
                as ServerMessages$Subscription$ServerResponse$PlayerConnected)
            .toJson();
      case r'PlayerRemoved':
        return (this
                as ServerMessages$Subscription$ServerResponse$PlayerRemoved)
            .toJson();
      case r'ReadyData':
        return (this as ServerMessages$Subscription$ServerResponse$ReadyData)
            .toJson();
      case r'ChatMessage':
        return (this as ServerMessages$Subscription$ServerResponse$ChatMessage)
            .toJson();
      default:
    }
    return _$ServerMessages$Subscription$ServerResponseToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class ServerMessages$Subscription extends JsonSerializable with EquatableMixin {
  ServerMessages$Subscription();

  factory ServerMessages$Subscription.fromJson(Map<String, dynamic> json) =>
      _$ServerMessages$SubscriptionFromJson(json);

  late ServerMessages$Subscription$ServerResponse serverMessages;

  @override
  List<Object?> get props => [serverMessages];
  @override
  Map<String, dynamic> toJson() => _$ServerMessages$SubscriptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RoomFieldsMixin$LobbyPlayer extends JsonSerializable
    with EquatableMixin, LobbyPlayerFieldsMixin {
  RoomFieldsMixin$LobbyPlayer();

  factory RoomFieldsMixin$LobbyPlayer.fromJson(Map<String, dynamic> json) =>
      _$RoomFieldsMixin$LobbyPlayerFromJson(json);

  @override
  List<Object?> get props => [player, isConnected, state];
  @override
  Map<String, dynamic> toJson() => _$RoomFieldsMixin$LobbyPlayerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LobbyPlayerFieldsMixin$Player extends JsonSerializable
    with EquatableMixin, PlayerFieldsMixin {
  LobbyPlayerFieldsMixin$Player();

  factory LobbyPlayerFieldsMixin$Player.fromJson(Map<String, dynamic> json) =>
      _$LobbyPlayerFieldsMixin$PlayerFromJson(json);

  @override
  List<Object?> get props => [name, id];
  @override
  Map<String, dynamic> toJson() => _$LobbyPlayerFieldsMixin$PlayerToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LobbyPlayerFieldsMixin$UserState$ReadyData
    extends LobbyPlayerFieldsMixin$UserState
    with EquatableMixin, ReadyDataFieldsMixin {
  LobbyPlayerFieldsMixin$UserState$ReadyData();

  factory LobbyPlayerFieldsMixin$UserState$ReadyData.fromJson(
          Map<String, dynamic> json) =>
      _$LobbyPlayerFieldsMixin$UserState$ReadyDataFromJson(json);

  @override
  List<Object?> get props => [playing, positionSecs];
  @override
  Map<String, dynamic> toJson() =>
      _$LobbyPlayerFieldsMixin$UserState$ReadyDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LobbyPlayerFieldsMixin$UserState$NotReadyData
    extends LobbyPlayerFieldsMixin$UserState with EquatableMixin {
  LobbyPlayerFieldsMixin$UserState$NotReadyData();

  factory LobbyPlayerFieldsMixin$UserState$NotReadyData.fromJson(
          Map<String, dynamic> json) =>
      _$LobbyPlayerFieldsMixin$UserState$NotReadyDataFromJson(json);

  late int empty;

  @override
  List<Object?> get props => [empty];
  @override
  Map<String, dynamic> toJson() =>
      _$LobbyPlayerFieldsMixin$UserState$NotReadyDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LobbyPlayerFieldsMixin$UserState extends JsonSerializable
    with EquatableMixin {
  LobbyPlayerFieldsMixin$UserState();

  factory LobbyPlayerFieldsMixin$UserState.fromJson(Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'ReadyData':
        return LobbyPlayerFieldsMixin$UserState$ReadyData.fromJson(json);
      case r'NotReadyData':
        return LobbyPlayerFieldsMixin$UserState$NotReadyData.fromJson(json);
      default:
    }
    return _$LobbyPlayerFieldsMixin$UserStateFromJson(json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  @override
  List<Object?> get props => [$$typename];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'ReadyData':
        return (this as LobbyPlayerFieldsMixin$UserState$ReadyData).toJson();
      case r'NotReadyData':
        return (this as LobbyPlayerFieldsMixin$UserState$NotReadyData).toJson();
      default:
    }
    return _$LobbyPlayerFieldsMixin$UserStateToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class StatusUpdate$QueryRoot$ReadyData extends JsonSerializable
    with EquatableMixin, ReadyDataFieldsMixin {
  StatusUpdate$QueryRoot$ReadyData();

  factory StatusUpdate$QueryRoot$ReadyData.fromJson(
          Map<String, dynamic> json) =>
      _$StatusUpdate$QueryRoot$ReadyDataFromJson(json);

  @override
  List<Object?> get props => [playing, positionSecs];
  @override
  Map<String, dynamic> toJson() =>
      _$StatusUpdate$QueryRoot$ReadyDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StatusUpdate$QueryRoot extends JsonSerializable with EquatableMixin {
  StatusUpdate$QueryRoot();

  factory StatusUpdate$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$StatusUpdate$QueryRootFromJson(json);

  late StatusUpdate$QueryRoot$ReadyData statusUpdate;

  @override
  List<Object?> get props => [statusUpdate];
  @override
  Map<String, dynamic> toJson() => _$StatusUpdate$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Resumed$QueryRoot$ReadyData extends JsonSerializable
    with EquatableMixin, ReadyDataFieldsMixin {
  Resumed$QueryRoot$ReadyData();

  factory Resumed$QueryRoot$ReadyData.fromJson(Map<String, dynamic> json) =>
      _$Resumed$QueryRoot$ReadyDataFromJson(json);

  @override
  List<Object?> get props => [playing, positionSecs];
  @override
  Map<String, dynamic> toJson() => _$Resumed$QueryRoot$ReadyDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Resumed$QueryRoot extends JsonSerializable with EquatableMixin {
  Resumed$QueryRoot();

  factory Resumed$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$Resumed$QueryRootFromJson(json);

  late Resumed$QueryRoot$ReadyData resumed;

  @override
  List<Object?> get props => [resumed];
  @override
  Map<String, dynamic> toJson() => _$Resumed$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Paused$QueryRoot$ReadyData extends JsonSerializable
    with EquatableMixin, ReadyDataFieldsMixin {
  Paused$QueryRoot$ReadyData();

  factory Paused$QueryRoot$ReadyData.fromJson(Map<String, dynamic> json) =>
      _$Paused$QueryRoot$ReadyDataFromJson(json);

  @override
  List<Object?> get props => [playing, positionSecs];
  @override
  Map<String, dynamic> toJson() => _$Paused$QueryRoot$ReadyDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Paused$QueryRoot extends JsonSerializable with EquatableMixin {
  Paused$QueryRoot();

  factory Paused$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$Paused$QueryRootFromJson(json);

  late Paused$QueryRoot$ReadyData paused;

  @override
  List<Object?> get props => [paused];
  @override
  Map<String, dynamic> toJson() => _$Paused$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateLobbyArguments extends JsonSerializable with EquatableMixin {
  CreateLobbyArguments({
    required this.userId,
    required this.userName,
    required this.delay_secs,
  });

  @override
  factory CreateLobbyArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateLobbyArgumentsFromJson(json);

  late String userId;

  late String userName;

  late int delay_secs;

  @override
  List<Object?> get props => [userId, userName, delay_secs];
  @override
  Map<String, dynamic> toJson() => _$CreateLobbyArgumentsToJson(this);
}

final CREATE_LOBBY_MUTATION_DOCUMENT_OPERATION_NAME = 'createLobby';
final CREATE_LOBBY_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'createLobby'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'delay_secs')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createLobby'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'userName'),
            value: VariableNode(name: NameNode(value: 'userName')),
          ),
          ArgumentNode(
            name: NameNode(value: 'delayDifferenceSecs'),
            value: VariableNode(name: NameNode(value: 'delay_secs')),
          ),
        ],
        directives: [],
        selectionSet: null,
      )
    ]),
  )
]);

class CreateLobbyMutation
    extends GraphQLQuery<CreateLobby$MutationRoot, CreateLobbyArguments> {
  CreateLobbyMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_LOBBY_MUTATION_DOCUMENT;

  @override
  final String operationName = CREATE_LOBBY_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreateLobbyArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateLobby$MutationRoot parse(Map<String, dynamic> json) =>
      CreateLobby$MutationRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class JoinLobbyArguments extends JsonSerializable with EquatableMixin {
  JoinLobbyArguments({
    required this.userId,
    required this.userName,
    required this.roomId,
  });

  @override
  factory JoinLobbyArguments.fromJson(Map<String, dynamic> json) =>
      _$JoinLobbyArgumentsFromJson(json);

  late String userId;

  late String userName;

  late String roomId;

  @override
  List<Object?> get props => [userId, userName, roomId];
  @override
  Map<String, dynamic> toJson() => _$JoinLobbyArgumentsToJson(this);
}

final JOIN_LOBBY_MUTATION_DOCUMENT_OPERATION_NAME = 'joinLobby';
final JOIN_LOBBY_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'joinLobby'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'roomId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'joinLobby'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'playerId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'playerName'),
            value: VariableNode(name: NameNode(value: 'userName')),
          ),
          ArgumentNode(
            name: NameNode(value: 'roomId'),
            value: VariableNode(name: NameNode(value: 'roomId')),
          ),
        ],
        directives: [],
        selectionSet: null,
      )
    ]),
  )
]);

class JoinLobbyMutation
    extends GraphQLQuery<JoinLobby$MutationRoot, JoinLobbyArguments> {
  JoinLobbyMutation({required this.variables});

  @override
  final DocumentNode document = JOIN_LOBBY_MUTATION_DOCUMENT;

  @override
  final String operationName = JOIN_LOBBY_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final JoinLobbyArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  JoinLobby$MutationRoot parse(Map<String, dynamic> json) =>
      JoinLobby$MutationRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class DisconnectArguments extends JsonSerializable with EquatableMixin {
  DisconnectArguments({
    required this.userId,
    required this.roomId,
  });

  @override
  factory DisconnectArguments.fromJson(Map<String, dynamic> json) =>
      _$DisconnectArgumentsFromJson(json);

  late String userId;

  late String roomId;

  @override
  List<Object?> get props => [userId, roomId];
  @override
  Map<String, dynamic> toJson() => _$DisconnectArgumentsToJson(this);
}

final DISCONNECT_MUTATION_DOCUMENT_OPERATION_NAME = 'disconnect';
final DISCONNECT_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'disconnect'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'roomId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'disconnect'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'playerId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'roomId'),
            value: VariableNode(name: NameNode(value: 'roomId')),
          ),
        ],
        directives: [],
        selectionSet: null,
      )
    ]),
  )
]);

class DisconnectMutation
    extends GraphQLQuery<Disconnect$MutationRoot, DisconnectArguments> {
  DisconnectMutation({required this.variables});

  @override
  final DocumentNode document = DISCONNECT_MUTATION_DOCUMENT;

  @override
  final String operationName = DISCONNECT_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final DisconnectArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Disconnect$MutationRoot parse(Map<String, dynamic> json) =>
      Disconnect$MutationRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ChatArguments extends JsonSerializable with EquatableMixin {
  ChatArguments({
    required this.userId,
    required this.roomId,
    required this.message,
  });

  @override
  factory ChatArguments.fromJson(Map<String, dynamic> json) =>
      _$ChatArgumentsFromJson(json);

  late String userId;

  late String roomId;

  late String message;

  @override
  List<Object?> get props => [userId, roomId, message];
  @override
  Map<String, dynamic> toJson() => _$ChatArgumentsToJson(this);
}

final CHAT_MUTATION_DOCUMENT_OPERATION_NAME = 'chat';
final CHAT_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'chat'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'roomId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'message')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'chat'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'playerId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'roomId'),
            value: VariableNode(name: NameNode(value: 'roomId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'message'),
            value: VariableNode(name: NameNode(value: 'message')),
          ),
        ],
        directives: [],
        selectionSet: null,
      )
    ]),
  )
]);

class ChatMutation extends GraphQLQuery<Chat$MutationRoot, ChatArguments> {
  ChatMutation({required this.variables});

  @override
  final DocumentNode document = CHAT_MUTATION_DOCUMENT;

  @override
  final String operationName = CHAT_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final ChatArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Chat$MutationRoot parse(Map<String, dynamic> json) =>
      Chat$MutationRoot.fromJson(json);
}

final PING_QUERY_DOCUMENT_OPERATION_NAME = 'ping';
final PING_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ping'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'ping'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      )
    ]),
  )
]);

class PingQuery extends GraphQLQuery<Ping$QueryRoot, JsonSerializable> {
  PingQuery();

  @override
  final DocumentNode document = PING_QUERY_DOCUMENT;

  @override
  final String operationName = PING_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  Ping$QueryRoot parse(Map<String, dynamic> json) =>
      Ping$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ServerMessagesArguments extends JsonSerializable with EquatableMixin {
  ServerMessagesArguments({
    required this.roomId,
    required this.userId,
  });

  @override
  factory ServerMessagesArguments.fromJson(Map<String, dynamic> json) =>
      _$ServerMessagesArgumentsFromJson(json);

  late String roomId;

  late String userId;

  @override
  List<Object?> get props => [roomId, userId];
  @override
  Map<String, dynamic> toJson() => _$ServerMessagesArgumentsToJson(this);
}

final SERVER_MESSAGES_SUBSCRIPTION_DOCUMENT_OPERATION_NAME = 'serverMessages';
final SERVER_MESSAGES_SUBSCRIPTION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'serverMessages'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'roomId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'serverMessages'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'roomId'),
            value: VariableNode(name: NameNode(value: 'roomId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'playerId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'PlayerLeft'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'player'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'PlayerFields'),
                    directives: [],
                  )
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'room'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'RoomFields'),
                    directives: [],
                  )
                ]),
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'PlayerJoined'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'player'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'PlayerFields'),
                    directives: [],
                  )
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'room'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'RoomFields'),
                    directives: [],
                  )
                ]),
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'PlayerConnected'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'player'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'PlayerFields'),
                    directives: [],
                  )
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'room'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'RoomFields'),
                    directives: [],
                  )
                ]),
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'PlayerRemoved'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'player'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'PlayerFields'),
                    directives: [],
                  )
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'room'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'RoomFields'),
                    directives: [],
                  )
                ]),
              ),
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReadyData'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'ReadyDataFields'),
                directives: [],
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ChatMessage'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'player'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'PlayerFields'),
                    directives: [],
                  )
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'message'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'PlayerFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Player'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'RoomFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Room'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'users'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'LobbyPlayerFields'),
            directives: [],
          )
        ]),
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'LobbyPlayerFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'LobbyPlayer'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'player'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PlayerFields'),
            directives: [],
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'isConnected'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'state'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReadyData'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'ReadyDataFields'),
                directives: [],
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'NotReadyData'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'empty'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
        ]),
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'ReadyDataFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'ReadyData'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'playing'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'positionSecs'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class ServerMessagesSubscription
    extends GraphQLQuery<ServerMessages$Subscription, ServerMessagesArguments> {
  ServerMessagesSubscription({required this.variables});

  @override
  final DocumentNode document = SERVER_MESSAGES_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      SERVER_MESSAGES_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final ServerMessagesArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  ServerMessages$Subscription parse(Map<String, dynamic> json) =>
      ServerMessages$Subscription.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class StatusUpdateArguments extends JsonSerializable with EquatableMixin {
  StatusUpdateArguments({
    required this.userId,
    required this.roomId,
    required this.isPlaying,
    required this.positionSecs,
  });

  @override
  factory StatusUpdateArguments.fromJson(Map<String, dynamic> json) =>
      _$StatusUpdateArgumentsFromJson(json);

  late String userId;

  late String roomId;

  late bool isPlaying;

  late int positionSecs;

  @override
  List<Object?> get props => [userId, roomId, isPlaying, positionSecs];
  @override
  Map<String, dynamic> toJson() => _$StatusUpdateArgumentsToJson(this);
}

final STATUS_UPDATE_QUERY_DOCUMENT_OPERATION_NAME = 'statusUpdate';
final STATUS_UPDATE_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'statusUpdate'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'roomId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'isPlaying')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'positionSecs')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'statusUpdate'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'roomId'),
            value: VariableNode(name: NameNode(value: 'roomId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'isPlaying'),
            value: VariableNode(name: NameNode(value: 'isPlaying')),
          ),
          ArgumentNode(
            name: NameNode(value: 'positionSecs'),
            value: VariableNode(name: NameNode(value: 'positionSecs')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'ReadyDataFields'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'ReadyDataFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'ReadyData'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'playing'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'positionSecs'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class StatusUpdateQuery
    extends GraphQLQuery<StatusUpdate$QueryRoot, StatusUpdateArguments> {
  StatusUpdateQuery({required this.variables});

  @override
  final DocumentNode document = STATUS_UPDATE_QUERY_DOCUMENT;

  @override
  final String operationName = STATUS_UPDATE_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final StatusUpdateArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  StatusUpdate$QueryRoot parse(Map<String, dynamic> json) =>
      StatusUpdate$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ResumedArguments extends JsonSerializable with EquatableMixin {
  ResumedArguments({
    required this.userId,
    required this.roomId,
    required this.positionSecs,
  });

  @override
  factory ResumedArguments.fromJson(Map<String, dynamic> json) =>
      _$ResumedArgumentsFromJson(json);

  late String userId;

  late String roomId;

  late int positionSecs;

  @override
  List<Object?> get props => [userId, roomId, positionSecs];
  @override
  Map<String, dynamic> toJson() => _$ResumedArgumentsToJson(this);
}

final RESUMED_QUERY_DOCUMENT_OPERATION_NAME = 'resumed';
final RESUMED_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'resumed'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'roomId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'positionSecs')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'resumed'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'roomId'),
            value: VariableNode(name: NameNode(value: 'roomId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'positionSecs'),
            value: VariableNode(name: NameNode(value: 'positionSecs')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'ReadyDataFields'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'ReadyDataFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'ReadyData'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'playing'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'positionSecs'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class ResumedQuery extends GraphQLQuery<Resumed$QueryRoot, ResumedArguments> {
  ResumedQuery({required this.variables});

  @override
  final DocumentNode document = RESUMED_QUERY_DOCUMENT;

  @override
  final String operationName = RESUMED_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final ResumedArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Resumed$QueryRoot parse(Map<String, dynamic> json) =>
      Resumed$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class PausedArguments extends JsonSerializable with EquatableMixin {
  PausedArguments({
    required this.userId,
    required this.roomId,
    required this.positionSecs,
  });

  @override
  factory PausedArguments.fromJson(Map<String, dynamic> json) =>
      _$PausedArgumentsFromJson(json);

  late String userId;

  late String roomId;

  late int positionSecs;

  @override
  List<Object?> get props => [userId, roomId, positionSecs];
  @override
  Map<String, dynamic> toJson() => _$PausedArgumentsToJson(this);
}

final PAUSED_QUERY_DOCUMENT_OPERATION_NAME = 'paused';
final PAUSED_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'paused'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'roomId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'positionSecs')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'paused'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'roomId'),
            value: VariableNode(name: NameNode(value: 'roomId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'positionSecs'),
            value: VariableNode(name: NameNode(value: 'positionSecs')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'ReadyDataFields'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'ReadyDataFields'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'ReadyData'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'playing'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'positionSecs'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class PausedQuery extends GraphQLQuery<Paused$QueryRoot, PausedArguments> {
  PausedQuery({required this.variables});

  @override
  final DocumentNode document = PAUSED_QUERY_DOCUMENT;

  @override
  final String operationName = PAUSED_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final PausedArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Paused$QueryRoot parse(Map<String, dynamic> json) =>
      Paused$QueryRoot.fromJson(json);
}
