import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late List<String> _filteredList;
  String _keywords = '';
  final List<String> _originList = [
    'phyton',
    'dart',
    'java',
    'HTML',
    'CSS',
    'PHP',
    'JavaScript',
    'Flutter',
    'C++'
        'React Native',
    'Ruby',
    'C#',
    'SQL',
    'Swift',
    'C',
    'Perl',
    'Go',
    'Visual Basic .NFT',
    'Rust',
    'Objective-C',
  ];

  final TextEditingController _searchController = TextEditingController();
  @override
  void initState() {
    _filteredList = [];
    _originList.sort();
    _searchController.addListener(() {
      debugPrint('search value : ${_searchController.text}');
      setState(() => _keywords = _searchController.text);
      _search();
    });
    super.initState();
  }

  void _search() {
    _filteredList.clear();
    for (int i = 0; i < _originList.length; i++) {
      String item = _originList[i];
      if (item.toLowerCase().contains(_keywords.toLowerCase())) {
        _filteredList.add(item);
      }
    }
  }

  Widget _buildList({required List<String> list}) => Expanded(
        child: ListView.separated(
          itemBuilder: (context, index) => SizedBox(
            height: 50,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                list[index],
                style: const TextStyle(color: Colors.black87, fontSize: 18),
              ),
            ),
          ),
          separatorBuilder: (context, index) =>
              const Divider(height: 2, color: Colors.blue),
          itemCount: list.length,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only( left: 3, bottom: 15, top: 50),
            child: Text(
              "Search Your Courses ",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800,
                letterSpacing: 1,
                wordSpacing: 2,
                color: Colors.blueAccent,
                
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5, bottom: 20),
            width: MediaQuery.of(context).size.width,
            height: 55,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 64, 136, 207),
              borderRadius: BorderRadius.circular(10),
            ),
        
            child: TextFormField(
              controller: _searchController,
              decoration:const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search here.....",
                  hintStyle: TextStyle(
                    color: Colors.white, fontSize: 18,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 25,
                  )),
            ),
          ),
          _buildList(list: _keywords.isEmpty ? _originList : _filteredList),
        ],
      ),
    );
  }
}
