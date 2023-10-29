//... (previous imports)

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: const Text('Ulpan Computer Manager'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(child: DynamicPopupMenuButton()),
          Expanded(child: ComputerList()), // Added list of computers
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Dummy data for a new computer
          ComputerData newComputer = ComputerData(name: 'New Computer', state: 'Available');
          await DatabaseHelper.instance.insert(newComputer);
          // Show a snackbar message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('New computer added')),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class ComputerList extends StatefulWidget {
  @override
  _ComputerListState createState() => _ComputerListState();
}

class _ComputerListState extends State<ComputerList> {
  late Future<List<ComputerData>> computerList;

  @override
  void initState() {
    super.initState();
    computerList = DatabaseHelper.instance.queryAllComputers();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ComputerData>>(
      future: computerList,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                ComputerData computer = snapshot.data![index];
                return ListTile(
                  title: Text(computer.name),
                  subtitle: Text('State: ${computer.state}'),
                );
              },
            );
          } else {
            return Center(child: Text('No computers found'));
          }
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

//... (remaining code)
