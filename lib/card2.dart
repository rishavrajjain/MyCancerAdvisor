import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'videoClass.dart';
import 'src/pages/index.dart';
//import 'package:url_launcher/url_launcher.dart';

class MatchCard2 extends StatefulWidget {
  @override
  _MatchCardState createState() => _MatchCardState();
  final String title, body, image, url;

  MatchCard2({this.title, this.body, this.image, this.url});
}

class _MatchCardState extends State<MatchCard2> {
  Color prime = Colors.white;
  Color secondary = Colors.black;
  Color third = Colors.teal[600];

  @override
  Widget build(BuildContext context) {
    return Card(
        color: prime,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Material(
                borderRadius: BorderRadius.circular(0.0),
                child: VideoClass(
                  videoURL: 'https://www.youtube.com/watch?v=XFpA9xIOnyM',
                  title: '',
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Text(
                  widget.title,
                  style: GoogleFonts.openSans(
                    fontSize: 20,
                    color: third,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 6),
                child: Text(
                  'Speaks:',
                  style: GoogleFonts.openSans(
                    fontSize: 15,
                    color: third,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 4, 2, 2),
                child: buildRow(
                    Icon(
                      Icons.calendar_today,
                      color: third,
                    ),
                    "English"),
              ),
              SizedBox(height:3),
               
              
              Padding(
                  padding: EdgeInsets.fromLTRB(10, 2, 2, 0),
                  child: buildRow(Icon(Icons.map, color: third), "Latin")),
              SizedBox(height:3),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: Row(
                  children: [
                    Text(
                      'Age: ',
                      style: GoogleFonts.openSans(
                        fontSize: 15,
                        color: third,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text('51',style: GoogleFonts.openSans(
                              fontSize: 15, color: secondary),)
                  ],
                ),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.all(10),
                child: SingleChildScrollView(
                                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 8),
                        Text(
                          "About Me",
                          style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: third),
                        ),
                        SizedBox(height: 3),
                        Text(
                          widget.body,
                          style: GoogleFonts.openSans(
                              fontSize: 15, color: secondary),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Reviews",
                          style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 17,
                              color: third),
                        ),
                        SizedBox(height: 3),
                        Row(
                          children: <Widget>[
                            Icon(Icons.stars, color: Colors.amber[700]),
                            Icon(Icons.stars, color: Colors.amber[700]),
                            Icon(Icons.stars, color: Colors.amber[700]),
                            Icon(Icons.stars, color: Colors.amber[700]),
                          ],
                        ),
                         SizedBox(height: 3),
                        Text(
                          widget.body,
                          style: GoogleFonts.openSans(
                              fontSize: 15, color: secondary),
                        )
                      ]),
                ),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: third,
                      child: InkWell(
                        highlightColor: Colors.purple[200],
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => IndexPage()),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text('Book Now',
                                textAlign: TextAlign.start,
                                style: GoogleFonts.openSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: prime)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
            ]));
  }

  Row buildRow(Icon icons, String text) {
    return Row(
      children: <Widget>[
        
        SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: GoogleFonts.openSans(
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  // _launchURL(String url) async {
  //   if (await canLaunch(url)) {
  //     await launch(url, forceWebView: true);
  //   }
  // }
}
