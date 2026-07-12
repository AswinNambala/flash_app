class TorchModel {
  bool isAvaliable;
  bool isOn;
  TorchModel({this.isAvaliable = true, this.isOn = false});
  TorchModel copyWith({bool? cisAvaliable, cIsOn}) {
    return TorchModel(
      isAvaliable: cisAvaliable ?? isAvaliable,
      isOn: cIsOn ?? isOn,
    );
  }
}
