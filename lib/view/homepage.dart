import 'package:flutter/material.dart';
import 'package:infynitybox/view/drawer.dart';

const AppBarTitleStyle = TextStyle(color: Colors.black,fontSize: 20.0, fontWeight: FontWeight.w400);

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "InfiBox",
            style: AppBarTitleStyle,
          ),
        ),

        drawer: MyDrawer(),

        body: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200,
              margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assests/images/logo.jpg'),
                  fit: BoxFit.contain
                )
              )
            ),

            Container(
              padding: EdgeInsets.all(10.0),
              child: const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
                      " Ut fringilla molestie scelerisque. Vivamus at cursus lectus."
                      " Sed vulputate nec odio vitae volutpat. In volutpat lobortis mi,"
                      " in pharetra purus eleifend eu. Maecenas ornare odio sed mauris facilisis,"
                      " at viverra ligula egestas. In vitae urna libero. Pellentesque dignissim"
                      " dignissim justo, nec imperdiet magna placerat sed. Maecenas gravida, velit"
                      " lacinia pellentesque ornare, metus mi gravida eros, non posuere odio odio a arcu."
              , textAlign: TextAlign.center,),
            )
          ],
        )
        ),
      );
  }
}
