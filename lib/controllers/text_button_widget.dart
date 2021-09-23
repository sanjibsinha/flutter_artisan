class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 20,
              ),
            ),
            onPressed: null,
            child: const Text(
              'Text Button Disabled',
            ),
          ),
          const SizedBox(height: 30),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 20,
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Text Button Enabled',
            ),
          ),
        ],
      ),
    );
  }
}
