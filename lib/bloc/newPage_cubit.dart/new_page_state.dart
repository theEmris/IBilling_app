abstract class NewPageState {
  NewPageState();
}

class NewPageInitial extends NewPageState {
  NewPageInitial();
}

class NewPageComplete extends NewPageState {
  NewPageComplete();
}

class ErrorNewPage extends NewPageState {
  String errorMessage;

  ErrorNewPage(this.errorMessage);
}
