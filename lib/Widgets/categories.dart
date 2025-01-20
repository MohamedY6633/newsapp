import 'package:flutter/cupertino.dart';
class Categories extends StatelessWidget {
  final String asset;
  final VoidCallback? onTap;

  const Categories({
    super.key,
    required this.asset,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 160,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: GestureDetector(
          onTap: onTap ?? () {},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              asset,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
