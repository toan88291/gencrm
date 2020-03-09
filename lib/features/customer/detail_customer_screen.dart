import 'package:flutter/material.dart';
import 'package:flutter_gencrm/data/data_customer.dart';
import 'package:flutter_gencrm/features/customer/tab_indicator.dart';
import 'package:flutter_gencrm/features/features.dart';

import 'clue_widget.dart';
import 'contract_widget.dart';
import 'general_information_widget.dart';

class DetailCustomerScreen extends StatefulWidget {

  final DataCustomer data;

  DetailCustomerScreen(this.data);

  @override
  _DetailCustomerScreenState createState() => _DetailCustomerScreenState();
}

class _DetailCustomerScreenState extends State<DetailCustomerScreen> with SingleTickerProviderStateMixin{

  PageController _pageController  = PageController(initialPage: 0);

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data.name),
      ),
      body: Column(
        children: <Widget>[
          TabBar(
            controller: _tabController,
            isScrollable: true,
            indicatorWeight: 0,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold
            ),
            labelColor: Colors.black87,
            indicator: UnderlineTabIndicator2(),
            onTap: (index){
              _pageController.jumpToPage(index);
            },
            tabs: <Widget>[
              Tab(
                child: Text('Thông tin chung'),
              ),
              Tab(
                child: Text('Đầu mối'),
              ),
              Tab(
                child: Text('Cơ hội'),
              ),
              Tab(
                child: Text('Hợp đồng'),
              ),
              Tab(
                child: Text('Công việc'),
              )
            ],
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              children: <Widget>[
                GeneralInformationWidget(widget.data),
                ClueWidget(),
                OpprtuninyPage(false),
                ContractWidget(),
                TaskPage(false),
              ],
            ),
          )
        ],
      ),
    );
  }
}