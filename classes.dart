void main() {
  Customer customer = new Customer(1, "John", "Doe");
  // customer.id = 1;
  // customer.name = "John";
  // customer.lastName = "Doe";

  CustomerManager customerManager = new CustomerManager();
  customerManager.Save(customer);
  customerManager.Delete(customer);
  customerManager.Update(customer);
}

class CustomerManager {
  void Save(Customer customer) {
    print("Müşteri Kaydedildi " + customer.name);
  }

  void Delete(Customer customer) {
    print("Müşteri Silindi " + customer.name);
  }

  void Update(Customer customer) {
    print("Müşteri Güncellendi " + customer.name);
  }
}

class Customer {
  int id;
  String name;
  String lastName;

  //Cunstructor
  Customer(int id, String name, String lastName) {
    this.id = id;
    this.name = name;
    this.lastName = lastName;
    print("Sinif Oluştu");
  }
}
