part of screens;

class TemplateScreen extends StatelessWidget {
  const TemplateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: Center(
          child: Text('Template'),
        ),
      ),
    );
  }
}
