import 'package:flutter/material.dart';
import 'package:flutter_gencrm/data/data_task.dart';
import 'package:flutter_gencrm/widget/features_widget.dart';

class TaskPage extends StatefulWidget {

  final bool showSearch;

  TaskPage(this.showSearch);

  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {

  List<DataTask> data = [
    DataTask(
      'assets/face.jpg',
      'Nguyễn Bá Nam',
      '22 min - 15/3/2020',
      'Chuẩn bị báo giá ',
      'Molly là loại ma túy tổng hợp chứa chất MDMA ở dạng tinh thể trong viên nén con nhộng. MDMA là tên viết tắt của chất 3,4-methylenedioxymethamphetamine, loại chất hóa học là thành phần chính của thuốc lắc phổ biến tại các hộp đêm trong những năm 1980 và 1990, tạo hưng phấn và gây hiệu ứng ảo giác cho người dùng.',
      35,
      'Đang làm',
    ),
    DataTask(
      'assets/face.jpg',
      'Nguyễn Bá Nam',
      '22 min - 15/3/2020',
      'Chuẩn bị báo giá ',
      'Molly là loại ma túy tổng hợp chứa chất MDMA ở dạng tinh thể trong viên nén con nhộng. MDMA là tên viết tắt của chất 3,4-methylenedioxymethamphetamine, loại chất hóa học là thành phần chính của thuốc lắc phổ biến tại các hộp đêm trong những năm 1980 và 1990, tạo hưng phấn và gây hiệu ứng ảo giác cho người dùng.',
      35,
      'Đang làm',
    ),
    DataTask(
      'assets/face.jpg',
      'Nguyễn Bá Nam',
      '22 min - 15/3/2020',
      'Chuẩn bị báo giá ',
      'Molly là loại ma túy tổng hợp chứa chất MDMA ở dạng tinh thể trong viên nén con nhộng. MDMA là tên viết tắt của chất 3,4-methylenedioxymethamphetamine, loại chất hóa học là thành phần chính của thuốc lắc phổ biến tại các hộp đêm trong những năm 1980 và 1990, tạo hưng phấn và gây hiệu ứng ảo giác cho người dùng.',
      35,
      'Đang làm',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: Form(
        child: Column(
          children: <Widget>[
            Visibility(
              visible: widget.showSearch,
              child: SearchWidget('Tìm công việc'),
            ),
            SizedBox(height: 12,),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 12, right: 12, left: 12),
                child: ListView.separated(
                  itemCount: data.length,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 8,);
                  },
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                CircleAvatarWidget(44,'assets/face.jpg'),
                                SizedBox(width: 8,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        data[index].name,
                                        style: Theme.of(context).textTheme.title.copyWith(
                                          color: Colors.black87
                                        ),
                                      ),
                                      Text(
                                        data[index].dateTime,
                                        style: Theme.of(context).textTheme.subtitle.copyWith(
                                            color: Colors.grey[400]
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Icon(Icons.more_vert, size: 40,color: Colors.grey[300],)
                              ],
                            ),
                            SizedBox(height: 8,),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                data[index].title,
                                style: Theme.of(context).textTheme.subtitle.copyWith(
                                    color: Colors.black87
                                ),
                              ),
                            ),
                            SizedBox(height: 8,),
                            Container(
                              height: 80,
                              child: Text(
                                data[index].content,
                                overflow: TextOverflow.fade,
                              ),
                            ),
                            SizedBox(height: 8,),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.play_circle_filled,
                                  size: 24,
                                  color: Colors.redAccent,
                                ),
                                SizedBox(width: 16,),
                                Icon(
                                  Icons.message,
                                  size: 24,
                                  color: Colors.blue,
                                ),
                                Text(
                                  data[index].numberMessage.toString(),
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      alignment: Alignment.center,
                                      color: Colors.amber,
                                      width: 80,
                                      height: 32,
                                      child: Text(
                                        data[index].status,
                                        style: TextStyle(
                                          color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                )

                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ),
            Container(
              padding: EdgeInsets.only(bottom: 12, left: 12, right: 12),
              child: ButtonActionWidget('Thêm công việc'),
            )
          ],
        ),
      ),
    );
  }
}