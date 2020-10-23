import 'package:flutter/material.dart';
import './controller.dart';

class DetailMenuView extends StatefulWidget {
  final String namaOlahraga;
  final String namaBerita;
  final String namaPesawat;
  final String namaGame;
  final String namaLiburan;
  final String namaMall;
  final String namaKereta;
  final String namaLagu;

  DetailMenuView({
    this.namaOlahraga,
    this.namaBerita,
    this.namaPesawat,
    this.namaGame,
    this.namaLiburan,
    this.namaMall,
    this.namaKereta,
    this.namaLagu,
  });

  @override
  _DetailMenuViewState createState() => _DetailMenuViewState();
}

class _DetailMenuViewState extends DetailMenuController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Menu'),
        ),
        body:Container(
        child: Text(widget.namaOlahraga),
      ),
    );
    Scaffold(
      appBar: AppBar(
        title: Text('Detail Menu'),
        ),
        body:Container(
        child: Text(widget.namaBerita)
      ),
    );
     Scaffold(
      appBar: AppBar(
        title: Text('Detail Menu'),
        ),
        body:Container(
        child: Text(widget.namaPesawat)
      ),
    );
     Scaffold(
      appBar: AppBar(
        title: Text('Detail Menu'),
        ),
        body:Container(
        child: Text(widget.namaGame)
      ),
    );
     Scaffold(
      appBar: AppBar(
        title: Text('Detail Menu'),
        ),
        body:Container(
        child: Text(widget.namaLiburan)
      ),
    );
     Scaffold(
      appBar: AppBar(
        title: Text('Detail Menu'),
        ),
        body:Container(
        child: Text(widget.namaMall)
      ),
    );
     Scaffold(
      appBar: AppBar(
        title: Text('Detail Menu'),
        ),
        body:Container(
        child: Text(widget.namaLagu)
      ),
    );
     Scaffold(
      appBar: AppBar(
        title: Text('Detail Menu'),
        ),
        body:Container(
        child: Text(widget.namaKereta)
      ),
    );
  }
}