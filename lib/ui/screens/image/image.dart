part of screens;

class ImageScreen extends StatelessWidget {
  const ImageScreen({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: GestureDetector(
        onTap: () => Get.back(),
        child: ClipRRect(
          child: Image.network(
            image,
            width: double.infinity,
            fit: BoxFit.fitWidth,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return const Center(
                child: CircularProgressIndicator(color: Colors.red),
              );
            },
            errorBuilder: (context, error, stackTrace) =>
                const Text('Some errors occurred!'),
          ),
        ),
      ),
    );
  }
}
