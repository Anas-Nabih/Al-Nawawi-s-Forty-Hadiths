import 'package:alnawawisfortyhadiths/networking/NetworkingPageContent.dart';
import 'package:flutter/material.dart';

import '../models/Hadith.dart';

class NetworkingPage extends StatelessWidget {
 final String data;
  final  Hadith hadith;
   const NetworkingPage({required this.data,required this.hadith});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        NetworkingPageContent(data: data)
      ],
    );
  }
}
