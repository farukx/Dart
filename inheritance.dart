void main() {
  CustomerManager customerManager = new CustomerManager();
  customerManager.GetBestCustomer();
  PersonelManager personelManager = new PersonelManager();
  personelManager.Pay();
  personelManager.Save();
}

class PersonManager {
  void Save() {
    print("Kaydedildi");
  }
}

class CustomerManager extends PersonManager {
  void GetBestCustomer() {
    print("En iyi müşteri getirildi");
  }
}

class PersonelManager extends PersonManager {
  void Pay() {
    print("Ödeme yapıldı.");
  }

  @override
  void Save() {
    print("Kaydedildi ve loglandı");
  }
}
