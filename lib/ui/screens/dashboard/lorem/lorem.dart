part of screens;

class LoremScreen extends StatefulWidget {
  const LoremScreen({Key? key}) : super(key: key);

  @override
  State<LoremScreen> createState() => _LoremScreenState();
}

class _LoremScreenState extends State<LoremScreen> {
  @override
  void initState() {
    super.initState();
    bloc.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Wallhaven>(
      stream: bloc.subject.stream,
      builder: (context, AsyncSnapshot<Wallhaven> snapshot) {
        if (snapshot.hasData) {
          return _buildUserWidget(snapshot.data!);
        } else {
          return _buildLoadingWidget();
        }
      },
    );
  }

  Widget _buildLoadingWidget() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Loading data from API..."),
          CircularProgressIndicator()
        ],
      ),
    );
  }

  Widget _buildUserWidget(Wallhaven data) {
    return Center(
      child: ListView.builder(
        itemCount: data.data?.length,
        itemBuilder: (context, index) {
          final item = data.data![index];
          return ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.network(
              item.path ?? '',
              width: double.infinity,
              fit: BoxFit.fill,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const Center(
                  child: CircularProgressIndicator(color: Colors.red),
                );
              },
              errorBuilder: (context, error, stackTrace) =>
                  const Text('Some errors occurred!'),
            ),
          );
        },
      ),
    );
  }
}
