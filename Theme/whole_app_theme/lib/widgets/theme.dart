import 'package:flutter/material.dart';

class AppTheme extends StatefulWidget {
  const AppTheme({super.key});

  @override
  State<AppTheme> createState() => _AppThemeState();

}

class _AppThemeState extends State<AppTheme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dynamic"),
      ),
      drawer: const AppDrawer(),
      body: const BodyContent(),
      floatingActionButton: FloatingActionButton (
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: 
                Text('Floating Action Button Pressed')
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            child:  Center (
              child: Text(
                "Navigation Drawer",
                style: Theme.of(context).textTheme.headlineLarge,
              )
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text("About"),
            onTap: () {},
          ),
        ],
      )
    );
  }
}

class BodyContent extends StatelessWidget {
  const BodyContent({super.key});

  @override
 Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        Card(
          elevation: 4,
          child: ListTile(
            leading: Icon(
              Icons.lightbulb,
              color: Theme.of(context).colorScheme.secondary,
            ),
            title: const Text('Idea Generator'),
            subtitle: const Text('Generate creative ideas quickly.'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {},
          ),
        ),
        const SizedBox(height: 10),
        Card(
          elevation: 4,
          child: ListTile(
            leading: Icon(
              Icons.task,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            title: const Text('Task Manager'),
            subtitle: const Text('Manage your daily tasks efficiently.'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {},
          ),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Primary Action'),
        ),
        const SizedBox(height: 10),
        OutlinedButton(
          onPressed: () {},
          child: const Text('Secondary Action'),
        ),
      ],
    );
  }
}