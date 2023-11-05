import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/model/movie.dart';

class DetailScreen extends StatefulWidget {
  final Movie data;

  const DetailScreen({super.key, required this.data});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 700) {
            return DetailWidget(data: widget.data,);
          } else {
            return DetailWidgetDesktop(data: widget.data,);
          }
        },
      )
    );
  }
}

class DetailWidgetDesktop extends StatefulWidget {
  final Movie data;
  const DetailWidgetDesktop({super.key, required this.data});

  @override
  State<DetailWidgetDesktop> createState() => _DetailWidgetDesktopState();
}

class _DetailWidgetDesktopState extends State<DetailWidgetDesktop> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: screenSize.width * 0.4,
        child: Stack(
          children: [
            Container(
              height: screenSize.height,
              width: screenSize.width,
              child: Image.asset(
                fit: BoxFit.cover,
                widget.data.imagePath
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        color: Colors.white,
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                      ),
                      IconButton(
                        color: Colors.white,
                        icon: widget.data.isFavorite ?  
                        Icon(Icons.favorite, color: Colors.pink,)
                        : 
                        Icon(Icons.favorite_border),
                        onPressed: () {
                          setState(() {
                            widget.data.isFavorite = !widget.data.isFavorite;
                          });
                        },
                      ),
                    ]
                  ),
                ),
                SizedBox(height: screenSize.height * 0.3,),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(35),
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                    ),
                    width: screenSize.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.data.title,
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: GoogleFonts.exo2(
                            fontSize: 25,
                            color: Colors.white70,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          '${widget.data.rating}/10.0⭐',
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: GoogleFonts.exo2(
                            fontSize: 18,
                            color: Colors.white60,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          widget.data.genre,
                          textAlign: TextAlign.start,
                          style: GoogleFonts.exo2(
                            color: Colors.white54,
                            fontSize: 12
                          ),
                        ),
                        SizedBox(height: 10,),
                        Expanded(
                          child: SingleChildScrollView(
                            child: SizedBox(
                              height: 250,
                              child: Text(
                                widget.data.description,
                                textAlign: TextAlign.start,
                                style: GoogleFonts.exo2(
                                  color: Colors.white70,
                                  fontSize: 15
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextButton(
                          style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all<Color>(Colors.grey),
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.white)
                          ),
                          onPressed: () {},
                          child: Text(
                            "WATCH NOW",
                            style: GoogleFonts.exo2(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              left: screenSize.width * 0.17,
              top: screenSize.height * 0.35,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black, spreadRadius: 5)],
                ),
                child: CircleAvatar(
                  maxRadius: 40,
                  backgroundColor: Colors.grey[900],
                  child: Icon(Icons.local_movies_rounded, size: 50, color: Colors.white54,),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DetailWidget extends StatefulWidget {
  final Movie data;
  const DetailWidget({super.key, required this.data});

  @override
  State<DetailWidget> createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: screenSize.height,
          width: screenSize.width,
          child: Image.asset(
            fit: BoxFit.cover,
            widget.data.imagePath
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    color: Colors.white,
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                  ),
                  IconButton(
                    color: Colors.white,
                    icon: widget.data.isFavorite ?  
                    Icon(Icons.favorite, color: Colors.pink,)
                    : 
                    Icon(Icons.favorite_border),
                    onPressed: () {
                      setState(() {
                        widget.data.isFavorite = !widget.data.isFavorite;
                      });
                    },
                  ),
                ]
              ),
            ),
            SizedBox(height: screenSize.height * 0.3,),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(35),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                width: screenSize.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.data.title,
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: GoogleFonts.exo2(
                        fontSize: 25,
                        color: Colors.white70,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      '${widget.data.rating}/10.0⭐',
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: GoogleFonts.exo2(
                        fontSize: 18,
                        color: Colors.white60,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      widget.data.genre,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.exo2(
                        color: Colors.white54,
                        fontSize: 12
                      ),
                    ),
                    SizedBox(height: 10,),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Text(
                          widget.data.description,
                          textAlign: TextAlign.start,
                          style: GoogleFonts.exo2(
                            color: Colors.white70,
                            fontSize: 15
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all<Color>(Colors.grey),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white)
                      ),
                      onPressed: () {},
                      child: Text(
                        "WATCH NOW",
                        style: GoogleFonts.exo2(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: screenSize.width * 0.39,
          top: screenSize.height * 0.37,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black, spreadRadius: 5)],
            ),
            child: CircleAvatar(
              maxRadius: 40,
              backgroundColor: Colors.grey[900],
              child: Icon(Icons.local_movies_rounded, size: 50, color: Colors.white54,),
            ),
          ),
        )
      ],
    );
  }
}