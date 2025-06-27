import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chat')),
      body: Column(),

      /// 🔽 Campo de input fixado no final da tela
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(12.0, 30.0, 12.0, 30.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withAlpha(51),
                blurRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
          ),

          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Olá, como posso ajudar?',
                      hintStyle: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                    ),
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.mic_none, color: Colors.grey),
                onPressed: () {
                  // microfone
                },
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: IconButton(
                    icon: Icon(Icons.send, color: Colors.white),
                    onPressed: () {
                      // enviar mensagem
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
