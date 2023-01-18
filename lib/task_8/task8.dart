// Создайте класс User, у которого есть поле email. Реализуйте два наследника данного класса
// AdminUser и GeneralUser. Реализуйте mixin над классом User, у которого будет метод
// getMailSystem, который возвращает значение из email, которое находится после @.
// Например, если email пользователя user@mail.ru, то данный метод вернёт mail.ru.
// Используйте данный миксин на AdminUser. Далее реализуйте класс UserManager<T extends User>,
// у которого будет храниться список пользователей и будут методы добавления или удаления их.
// Также в UserManager реализуйте метод, который выведет почту всех пользователей,
// однако если пользователь admin, будет выведено значение после @.
// Проверьте реализованные методы на практике.

class User {
  final String email;

  User(this.email);
}

mixin GetMailSystem on User {
  String getMailSystem() {
    return email.split('@')[1];
  }
}

class AdminUser extends User with GetMailSystem {
  AdminUser(super.email);
}

class GeneralUser extends User {
  GeneralUser(super.email);
}

class UserManager<T extends User> {
  List<T> users = [];

  void addUser(T user) {
    users.add(user);
  }

  void removeUser(T user) {
    users.remove(user);
  }

  void printEmail() {
    for (var user in users) {
      if (user is AdminUser) {
        print(user.getMailSystem());
      } else {
        print(user.email);
      }
    }
  }
}

void main() {
  UserManager userManager = UserManager();

  AdminUser adminUser1 = AdminUser('adminuser1@mail.com');
  AdminUser adminUser2 = AdminUser('adminuser2@fmail.com');
  GeneralUser generalUser1 = GeneralUser('genuser1@mail.com');
  GeneralUser generalUser2 = GeneralUser('genuser2@mail.com');
  GeneralUser generalUser3 = GeneralUser('genuser3@mail.com');

  userManager.addUser(adminUser1);
  userManager.addUser(generalUser1);
  userManager.addUser(generalUser2);
  userManager.addUser(adminUser2);
  userManager.addUser(generalUser3);

  userManager.printEmail();

  userManager.removeUser(adminUser1);
  userManager.removeUser(generalUser2);

  print('--------------------');
  userManager.printEmail();
}
