import 'package:flutter/material.dart';
import 'package:movies_app/model/movie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:collection/collection.dart';
import 'package:movies_app/screen/detail_screen.dart';

class ShowAllScreen extends StatelessWidget {
  final List<Movie> data;
  final String message;
  
  const ShowAllScreen({super.key, required this.data, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 350) {
            return ShowAllScWidget(data: data, message: message, gridCount: 1, imgRatio: 0.73);
          } else if (constraints.maxWidth <= 450) {
            return ShowAllScWidget(data: data, message: message, gridCount: 2, imgRatio: 0.45,);
          } else if (constraints.maxWidth <= 620) {
            return ShowAllScWidget(data: data, message: message, gridCount: 2, imgRatio: 0.55,);
          } else if (constraints.maxWidth <= 800) {
            return ShowAllScWidget(data: data, message: message, gridCount: 3);
          } else if (constraints.maxWidth <= 1200) {
            return ShowAllScWidget(data: data, message: message, gridCount: 4);
          } else if (constraints.maxWidth <= 1400) {
            return ShowAllScWidget(data: data, message: message, gridCount: 5);
          } else if (constraints.maxWidth <= 1600) {
            return ShowAllScWidget(data: data, message: message, gridCount: 7);
          } else if (constraints.maxWidth <= 2000) {
            return ShowAllScWidget(data: data, message: message, gridCount: 8);
          } else {
            return ShowAllScWidget(data: data, message: message, gridCount: 10,);
          }
        },
      )
    );
  }
}

class ShowAllScWidget extends StatelessWidget {
  final List<Movie> data;
  final String message;
  final int gridCount;
  final double imgRatio;
  const ShowAllScWidget({
    super.key,
    required this.data,
    required this.message,
    required this.gridCount,
    this.imgRatio = 175/300,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Movie+++",
                style: GoogleFonts.exo2(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                )
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                message,
                style: GoogleFonts.exo2(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 18
                )
              )
            ),
            data.isEmpty ?
            Container(
              height: screenSize.height * 0.7,
              child: Center(
                child: Text(
                  "Data Tidak Ditemukan",
                  style: GoogleFonts.exo2(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 25
                  )
                ),
              ),
            )
            :
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                child: GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: gridCount,
                  childAspectRatio: imgRatio,
                  crossAxisSpacing: 15,
                  children: data.map((movie) =>
                    InkWell(
                      borderRadius: BorderRadius.circular(30),
                      overlayColor: MaterialStateProperty.all<Color>(Colors.grey[800]!),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return DetailScreen(data: movie);
                        }));
                      },
                      child: SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 175,
                              height: 250,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  width: 175,
                                  height: 250,
                                  fit: BoxFit.cover,
                                  movie.imagePath,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  movie.title,
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: GoogleFonts.exo2(
                                    fontSize: 18,
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text(
                                  movie.genre,
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.exo2(
                                    color: Colors.white54,
                                    fontSize: 12
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ).whereNotNull().toList()
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}