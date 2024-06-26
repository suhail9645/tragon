import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tragon/manager/font_manager.dart';
import 'package:tragon/manager/space_manager.dart';
import 'package:tragon/widgets/lesson_tile.dart';

class SessionsScreen extends StatelessWidget {
  const SessionsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            height: 219,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://s3-alpha-sig.figma.com/img/52ee/6b62/fc3bd284e526321591016a13bb8781d5?Expires=1720396800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Io87zVBCLCmpIOcAqRx~Li7n0GXvsybp9F2fIlxiEkHTsmb2diuX0wrnSxudrmfaSeH9LHGBcX3IX92ZBjkAboiMEQBV9ap3lPw75Hltl3ao~8Xff8Ve8aFRwqOIbxhgB35db5Nrq~eIMWBWBCc7ckIDhxX5HzIRXljrtSG-8TwxzSyYXh~LEqCwIWVL84tVapBUrWv4HBuwWUH1DJdzLwTGpk1NAqKATUTaCB62pjwiJSgRqWhUksgCOk6O6-gYBtz1us3Izm5lGyvAHfy4Kz8OTovOeUq7gAgCKKG3veM6aHpsHAfifOYc8RA31O9h~wu2fOA0r3k8U9GqxeH2Cw__'))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                appSpaces.spaceForHeight6,
                CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.4),
                    child:const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    )),
               const LinearProgressIndicator(
                  value: 0.6,
                )
              ],
            ),
          ),
          appSpaces.spaceForHeight20,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Subject Name',
                  style: appFont.f16w600Black,
                ),
                Text(
                  'Part - 01 | 1hr 37m',
                  style: appFont.f16w500Black
                      .copyWith(color: const Color(0xffADADAD)),
                ),
                appSpaces.spaceForHeight10,
                Text(
                  'Topics Covered',
                  style: appFont.f16w600Black,
                ),
                appSpaces.spaceForHeight10,
                SizedBox(
                  height: 37,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        List<String> titles = [
                          'White Critically',
                          'Recognize & Reinforce'
                        ];
                        List<Color> colors = [];
                        return Container(
                          padding: EdgeInsets.all(2),
                          height: 37,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: Colors.grey.withOpacity(0.6))),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                             const CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.amber,
                                child: Icon(
                                  Icons.book,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                titles[index < 2 ? index : index - 2],
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) =>
                          appSpaces.spaceForWidth10,
                      itemCount: 4),
                ),
                appSpaces.spaceForHeight20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    4,
                    (index) {
                      List<IconData>icons=[Icons.file_copy_outlined,Icons.download_outlined,CupertinoIcons.share,Icons.call_end_outlined];
                      List<String>titles=['Document','Download','Share','Doubts'];
                      return Column(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                border: Border.all(color: Colors.grey.withOpacity(0.8))),
                                child: Center(child: Icon(icons[index]),),
                          ),
                          appSpaces.spaceForHeight6,
                          Text(titles[index],style: appFont.f14w500Black,)
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          appSpaces.spaceForHeight20,
           Expanded(
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                itemBuilder: (context, index) {
                  return LessonTile();
                },
                separatorBuilder: (context, index) =>
                    appSpaces.spaceForHeight10,
                itemCount: 5))
        ],
      )),
    );
  }
}
