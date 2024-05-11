import Cars from 0x05

transaction (_name : String,_model:UInt32, _price: UInt32) {

  prepare(acct: AuthAccount) {}

  execute {
    Cars.addcar(_name: _name, _model: _model, _price: _price);
  }
}