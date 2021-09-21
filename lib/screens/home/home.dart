import 'package:dream11/utils/model/homeitems.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<HomeItemList> home = <HomeItemList>[];

  @override
  void initState() {
    super.initState();

    home.add(HomeItemList('Vivo IPL', 'Chennai Super King', 'Mumbai Indians',
        'assets/images/chennaii.png', 'assets/images/mi.png', 'CSK', 'MI', '\$20 Crores'));
    home.add(HomeItemList('Vivo IPL', 'Chennai Super King', 'Mumbai Indians',
        'assets/images/chennaii.png', 'assets/images/mi.png', 'CSK', 'MI', '\$20 Crores'));
    home.add(HomeItemList('Vivo IPL', 'Chennai Super King', 'Kolkata Knight Riders',
        'assets/images/chennaii.png', 'assets/images/kkr.png', 'CSK', 'KKR', '\$20 Crores'));
    home.add(HomeItemList('Vivo IPL', 'Chennai Super King', 'Mumbai Indians',
        'assets/images/chennaii.png', 'assets/images/mi.png', 'CSK', 'MI', '\$20 Crores'));
    home.add(HomeItemList('Vivo IPL', 'Chennai Super King', 'Mumbai Indians',
        'assets/images/chennaii.png', 'assets/images/mi.png', 'CSK', 'MI', '\$20 Crores'));
    home.add(HomeItemList('Vivo IPL', 'Chennai Super King', 'Kolkata Knight Riders',
        'assets/images/chennaii.png', 'assets/images/kkr.png', 'CSK', 'KKR', '\$20 Crores'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
          itemCount: home.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(16),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('${home[index].eventName}'),
                        Expanded(child: Container()),
                        Icon(Icons.notifications_none_sharp,color: Colors.grey,size: 16,)
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('${home[index].teamName1}')
                          ],
                        ),
                        Row(
                          children: [
                            Text('${home[index].teamName2}')
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:5 ,),
                  // Row(
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.all(8.0),
                  //       child: Expanded(
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.start,
                  //             children: [
                  //               Image.asset('${home[index].team_logo1}',width: 50,height: 50,),
                  //               Text('${home[index].team_shortName1}')
                  //             ],
                  //           )),
                  //     ),
                  //
                  //     Expanded(
                  //         child: Row(
                  //           mainAxisAlignment: MainAxisAlignment.center,
                  //           children: [
                  //             Text('6h 29 mins'),
                  //           ],
                  //         )),
                  //     Expanded(
                  //         child: Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.end,
                  //             children: [
                  //               Text('${home[index].team_shortName2}'),
                  //               Image.asset('${home[index].team_logo2}',width: 50,height: 50,)
                  //             ],
                  //           ),
                  //         )),
                  //   ],
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('${home[index].team_logo1}',width: 50,height: 50,),
                          SizedBox(width: 5,),
                          Text('${home[index].team_shortName1}')
                        ],
                      ),
                      Row(
                        children: [
                          Text('6h 29 mins'),
                        ],
                      ),
                      Row(
                        children: [
                          Text('${home[index].team_shortName2}'),
                          SizedBox(width: 5,),
                          Image.asset('${home[index].team_logo2}',width: 50,height: 50,)
                        ],
                      ),
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
