import 'package:flutter/material.dart';

import 'message_model.dart';


class ChatScreen extends StatefulWidget{

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen>{

  _buildMessage(Message message, bool isMe){

    final Container msg = Container(
      margin: isMe ? EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80.0)
          :  EdgeInsets.only(top: 8.0, bottom: 8.0,
      ),

      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: isMe ? Colors.lightBlueAccent : Color(0xFFFFEFEE),
          borderRadius: isMe ?
          BorderRadius.only(
            topLeft: Radius.circular(15.0),
            bottomLeft: Radius.circular(15.0),
          ):
          BorderRadius.only(
            topRight: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0),
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(message.time, style: TextStyle(color: Colors.blueGrey, fontSize: 16.0, fontWeight: FontWeight.w600),),
          SizedBox(height: 8.0,),
          Text(message.text, style: TextStyle(color: Colors.blueGrey, fontSize: 16.0, fontWeight: FontWeight.w600),)
        ],
      ),
    );
    if(isMe){
      return msg;
    }

    return(Row(
      children: <Widget>[
        Expanded(
          child: msg,
        ),

        IconButton(
          icon: message.isLiked ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
          iconSize: 30.0,
          color: message.isLiked ? Theme.of(context).primaryColor : Colors.blueGrey,
          onPressed: (){},
        ),
      ],
    )
    );
  }

  _buildMessageComposer(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          IconButton(icon: Icon(Icons.photo),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: (){},
          ),
          Expanded(
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value){},
              decoration: InputDecoration.collapsed(
                hintText: 'Send a message...',
              ),
            ),
          ),
          IconButton(icon: Icon(Icons.send),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: (){},
          ),

        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Peter',
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_horiz),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: (){},
            ),
          ],
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: ListView.builder(
                        reverse: true,
                        itemCount: messages.length,
                        itemBuilder: (BuildContext, int index){
                          final Message message = messages[messages.length - 1 - index];
                          final bool isMe = message.sender.id == currentUser.id;
                          return _buildMessage(message, isMe);
                        },
                      ),
                    ),
                  ),
                ),
              ),

              _buildMessageComposer(),


            ],
          ),
        )
    );

  }
}