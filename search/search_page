import 'package:flutter/material.dart';

TextEditingController searchController ;
bool removeButton = false;
class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  void initState() {
    // TODO: implement initState
    searchController = TextEditingController();
    searchController.addListener(() {
      setState(() {
        removeButton = searchController.text.length > 0;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text('학교검색 '),
      ),
      body: SafeArea(
        child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                suffixIcon: removeButton ? IconButton(icon: Icon(Icons.cancel),
                onPressed: () {
                  setState(() {
                    searchController.clear();
                  });
                },
                )
                : null,
                hintText: '학교 이름을 검색해 주세요',
                //labelText: '학교 이름을 검색해 주세요',   닉값함 ,어긋남
                
              ),
              onEditingComplete: () {
                print('텍스트 입력 완료');
              },
              textInputAction: TextInputAction.search,
            ),
            Expanded(
              child: 
              ListView.builder(itemBuilder: (context,index) {
              return ListTile(
                title: Text('학교 이름'),
                subtitle: Text('학교 주소'),
              );

            }
            ), 
            )
          ],
        ),
        ),
       ),
    );
  }
}
