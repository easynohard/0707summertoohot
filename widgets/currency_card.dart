import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final int order;

  final blackColor = const Color(0xFF1F2123);

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -20 * (order - 1)),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : blackColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: isInverted ? blackColor : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: isInverted ? blackColor : Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        code,
                        style: TextStyle(
                          color: isInverted ? blackColor : Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2,
                /*원래 크기의 2배 */
                child: Transform.translate(
                  /*x,y축 변화 */
                  offset: Offset(-5, 10),
                  child: Icon(
                    icon,
                    color: isInverted ? blackColor : Colors.white,
                    size: 58,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
