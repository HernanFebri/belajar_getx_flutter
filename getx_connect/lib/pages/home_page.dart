import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/route_name.dart';
import '../controllers/usersC.dart';

class HomePage extends StatelessWidget {
  final usersC = Get.find<UsersC>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ALL USERS"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => Get.toNamed(RouteName.add),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: SafeArea(
        child: Obx(
          () => Padding(
            padding: const EdgeInsets.all(20),
            child: usersC.users.isEmpty
                ? const Center(
                    child: Text("Belum ada data"),
                  )
                : ListView.builder(
                    itemCount: usersC.users.length,
                    itemBuilder: (context, i) => ListTile(
                      leading: const CircleAvatar(),
                      title: Text("${usersC.users[i].name}"),
                      subtitle: Text("${usersC.users[i].email}"),
                      trailing: IconButton(
                        onPressed: () => usersC.delete(usersC.users[i].id),
                        icon: Icon(
                          Icons.delete_forever,
                          color: Colors.red[900],
                        ),
                      ),
                      onTap: () => Get.toNamed(
                        RouteName.profile,
                        arguments: usersC.users[i].id,
                      ),
                    ),
                  ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.get_app_rounded),
      ),
    );
  }
}
