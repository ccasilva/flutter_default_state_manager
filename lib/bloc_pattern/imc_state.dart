class ImcState {
  final double imc;

  ImcState({
     this.imc = 0,
  });
}

class ImcStateLoading extends ImcState {
  ImcStateLoading() : super(imc: 0);
}

class ImcStateError extends ImcState {
  //ImcStateError() : super(imc: 0);
  String message;

  ImcStateError({
    required this.message,
  });
}
