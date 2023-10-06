import 'package:flutter/material.dart';
import 'package:loom_app/components/buttons.dart';

class AddTileScreen extends StatefulWidget {
  const AddTileScreen({super.key});

  @override
  State<AddTileScreen> createState() => _AddTileScreenState();
}

class _AddTileScreenState extends State<AddTileScreen> {
  TextEditingController _textController = new TextEditingController();
  List<int> selectedStatus = [];
  @override
  void initState() {
    for (int i = 0; i < 8; i++) {
      for (int j = 0; j < 8; j++) {
        selectedStatus.add(0);
      }
    }
    super.initState();
  }

  Widget RowTile() {
    return Row(
      children: [
        Container(
          height: (MediaQuery.of(context).size.width - 60) / 8,
          width: (MediaQuery.of(context).size.width - 60) / 8,
          color: Colors.blueGrey,
        ),
        Container(
          height: (MediaQuery.of(context).size.width - 60) / 8,
          width: (MediaQuery.of(context).size.width - 60) / 8,
          color: Colors.blueGrey,
        ),
        Container(
          height: (MediaQuery.of(context).size.width - 60) / 8,
          width: (MediaQuery.of(context).size.width - 60) / 8,
          color: Colors.blueGrey,
        ),
        Container(
          height: (MediaQuery.of(context).size.width - 60) / 8,
          width: (MediaQuery.of(context).size.width - 60) / 8,
          color: Colors.blueGrey,
        ),
        Container(
          height: (MediaQuery.of(context).size.width - 60) / 8,
          width: (MediaQuery.of(context).size.width - 60) / 8,
          color: Colors.blueGrey,
        ),
        Container(
          height: (MediaQuery.of(context).size.width - 60) / 8,
          width: (MediaQuery.of(context).size.width - 60) / 8,
          color: Colors.blueGrey,
        ),
        Container(
          height: (MediaQuery.of(context).size.width - 60) / 8,
          width: (MediaQuery.of(context).size.width - 60) / 8,
          color: Colors.blueGrey,
        ),
        Container(
          height: (MediaQuery.of(context).size.width - 60) / 8,
          width: (MediaQuery.of(context).size.width - 60) / 8,
          color: Colors.blueGrey,
        ),
      ],
    );
  }

  Widget PreviewLarge() {
    return Container(
      width: MediaQuery.of(context).size.width - 60,
      height: MediaQuery.of(context).size.width - 60,
      color: Colors.green,
      child: Column(
        children: [
          RowTile(),
          RowTile(),
          RowTile(),
          RowTile(),
          RowTile(),
          RowTile(),
          RowTile(),
          RowTile(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: null,
                          icon: Icon(Icons.arrow_back_ios),
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: _textController,
                            decoration: const InputDecoration(
                              hintText: "Add File Name",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  PreviewLarge(),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.width * 0.6,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ),

          //reuse for tile wala screen
          Align(
            alignment: Alignment(0, 1),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 20,
                    offset: Offset(0, -1),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Row(
                  children: [
                    Expanded(
                      child: ButtonComp(
                        label: "Reset",
                        isPrimary: false,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: ButtonComp(
                        label: "Save",
                        isPrimary: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
