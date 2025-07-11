import 'package:flutter/material.dart';
import 'package:webtoon/models/webtoon_model.dart';
import 'package:webtoon/services/api_service.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  List<WebtoonModel> webtoons = [];
  bool isLoading = true;

  void waitForWebToons() async {
    webtoons = await ApiService.getTodaysToons();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    waitForWebToons();
  }

  @override
  Widget build(BuildContext context) {
    print(webtoons);
    print(isLoading);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true, //왼쪽 정렬이 기본에서 가운데정렬
        elevation: 8, //음영
        surfaceTintColor: Colors.white, //앱바 하얗게
        shadowColor: Colors.black, //???
        title: const Text(
          '오늘의 웹툰',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        foregroundColor: Colors.green,
        backgroundColor: Colors.white,
      ),
    );
  }
}
