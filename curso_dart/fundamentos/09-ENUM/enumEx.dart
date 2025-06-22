//enum for connection states

/*enum ConnectionState {
  connected,
  disconnected,
  connecting,
  error,
}

void main() {
  ConnectionState connectionState = ConnectionState.error;

  switch (connectionState) {
    case ConnectionState.connected:
      print("You are connected");
      break;
    case ConnectionState.disconnected:
      print("You are not connected");
      break;
    case ConnectionState.connecting:
      print("Still connecting please wait");
      break;
    default:
      print("ERROR 404");
      break;
  }
}*/

//handling user roles
enum UserRole {
  admin,
  editor,
  viewer,
}

void main() {
  UserRole userRole = UserRole.admin;

  switch (userRole) {
    case UserRole.admin:
      print("You have administrative rights");
      break;
    case UserRole.editor:
      print("You have editing rights");
      break;
    default:
      print("You can only view it");
  }
}
