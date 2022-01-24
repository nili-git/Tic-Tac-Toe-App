import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // To sdd Icon Image
  var cross = Icon(Icons.cancel);
   var circle = Icon(Icons.circle);
    var edit = Icon(Icons.edit);

    bool  isCross = true;
    String message;
    List<String> gameState;
    // Initialize Box with Empty Value
    @override
  void initState() {
    gameState= List.filled(9, "empty");
    this.message=" ";
    super.initState();
  }
  // To Play Game
  playGame(int index){
    if(this.gameState[index]=="empty"){
      setState(() {
        if(this.isCross){
          this.gameState[index]="circle";

        }
      });
    }
  }
//Reset Game
resetGame(){
  setState(() {
    gameState=List.filled(9, "empty");
    this.message="";

  });
}

// To get Icon image
Icon getImage(String title){
  switch(title){
   case('empty');
   return edit;
   break;

   case("cross");
   return cross;
   break;

   case("circle");
   return circle;
   break;
  }
}
// To check for winning
checkWin(){

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tic Tac Toe"),
      centerTitle: true,
     ),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
Expanded(child: Gridview.builder(
  padding: EdgeInsets.all(10),
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
    childAspectRatio: 1.0,
    crossAxisSpacing: 10,
    mainAxisSpacing: 10 

   )
))
       ],
     ),
    );
  }
}