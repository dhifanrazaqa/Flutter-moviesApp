import 'package:flutter/material.dart';
import 'package:movies_app/model/movie.dart';
import 'package:collection/collection.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/screen/detail_screen.dart';
import 'package:movies_app/screen/show_all_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 350) {
          return const MainWidget(gridCount: 1, imgRatio: 0.73);
        } else if (constraints.maxWidth <= 450) {
          return const MainWidget(gridCount: 2, imgRatio: 0.45,);
        } else if (constraints.maxWidth <= 600) {
          return const MainWidget(gridCount: 2);
        } else if (constraints.maxWidth <= 800) {
          return const MainWidget(gridCount: 3);
        } else if (constraints.maxWidth <= 1200) {
          return const MainWidget(gridCount: 4);
        } else if (constraints.maxWidth <= 1400) {
          return const MainWidget(gridCount: 5);
        } else if (constraints.maxWidth <= 1600) {
          return const MainWidget(gridCount: 7);
        } else if (constraints.maxWidth <= 2000) {
          return const MainWidget(gridCount: 8);
        } else {
          return const MainWidget(gridCount: 10,);
        }
      },
    );
  }
}

class MainWidget extends StatefulWidget {
  final int gridCount;
  final double imgRatio;
  const MainWidget({
    super.key, 
    required this.gridCount,
    this.imgRatio = 175/300,
  });

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  bool showSearch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              showSearch ?
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)
                  ),
                  color: Colors.white
                ),
                padding: const EdgeInsets.all(15),
                child: TextField(
                  textInputAction: TextInputAction.search,
                  style: GoogleFonts.exo2(
                    color: Colors.grey[800],
                  ),
                  onTapOutside: (event) {
                    FocusScopeNode currentFocus = FocusScope.of(context);
  
                    if (!currentFocus.hasPrimaryFocus) {
                      currentFocus.unfocus();
                    }
                  },
                  cursorColor: Colors.grey[800],
                  decoration: InputDecoration(
                    fillColor: Colors.grey[300],
                    filled: true,
                    prefixIconColor: Colors.grey[500],
                    suffixIconColor: Colors.grey[500],
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.white)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.white)
                    ),
                    hintText: 'Search Movies',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          showSearch = !showSearch;
                        });
                      },
                      icon: Icon(Icons.close)
                    )
                  ),
                  onSubmitted: (value) {
                    value = value.toLowerCase();
  
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return ShowAllScreen(
                        data: movies.where((movie) => movie.title.toLowerCase().contains(value)).toList(),
                        message: "Search",
                      );
                    }));
                  },
                ),
              )
              :
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Movie+++",
                      style: GoogleFonts.exo2(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                      )
                    ),
                    IconButton(
                      color: Colors.white,
                      onPressed: () {
                        setState(() {
                          showSearch = !showSearch;
                        });
                      },
                      icon: const Icon(Icons.search)
                      )
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Featured",
                      style: GoogleFonts.exo2(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 18
                      )
                    )
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return ShowAllScreen(
                          data: movies.where((movie) => movie.featured).toList(),
                          message: "Featured",
                        );
                      }));
                    },
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all<Color>(Colors.grey),
                    ),
                    child: Text(
                      "Show All >>",
                      style: GoogleFonts.exo2(
                        color: Colors.white60,
                        fontWeight: FontWeight.w400,
                        fontSize: 15
                      )
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 600,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: movies.map((movie) =>
                  movie.featured ?
                    SizedBox(
                      width: 350,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        overlayColor: MaterialStateProperty.all<Color>(Colors.grey[800]!),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return DetailScreen(data: movie);
                          })).then((_) => setState(() {}));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(15),
                              width: 500,
                              height: 500,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  width: 300,
                                  height: 500,
                                  fit: BoxFit.cover,
                                  movie.imagePath,
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, right: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    movie.title,
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: GoogleFonts.exo2(
                                      fontSize: 25,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        movie.genre,
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.exo2(
                                          color: Colors.white54,
                                          fontSize: 15
                                        ),
                                      ),
                                      Text(
                                        '${movie.rating}/10⭐',
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.exo2(
                                          color: Colors.white54,
                                          fontSize: 15
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                    :
                    null 
                  ).whereNotNull().toList()
                ),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Favorite",
                      style: GoogleFonts.exo2(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 18
                      )
                    )
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return ShowAllScreen(
                          data: movies.where((movie) => movie.isFavorite).toList(),
                          message: "Favorite",
                        );
                      }));
                    },
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all<Color>(Colors.grey),
                    ),
                    child: Text(
                      "Show All >>",
                      style: GoogleFonts.exo2(
                        color: Colors.white60,
                        fontWeight: FontWeight.w400,
                        fontSize: 15
                      )
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 350,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: movies.map((movie) =>
                  !movie.isFavorite ?
                  null 
                  :
                    InkWell(
                      borderRadius: BorderRadius.circular(30),
                      overlayColor: MaterialStateProperty.all<Color>(Colors.grey[800]!),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return DetailScreen(data: movie);
                        })).then((_) => setState(() {}));
                      },
                      child: SizedBox(
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 200,
                              height: 275,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  width: 175,
                                  height: 275,
                                  fit: BoxFit.cover,
                                  movie.imagePath,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
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
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ).whereNotNull().toList()
                ),
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "All Movies",
                      style: GoogleFonts.exo2(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 18
                      )
                    )
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return ShowAllScreen(
                          data: movies,
                          message: "All Movies",
                        );
                      }));
                    },
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all<Color>(Colors.grey),
                    ),
                    child: Text(
                      "Show All >>",
                      style: GoogleFonts.exo2(
                        color: Colors.white60,
                        fontWeight: FontWeight.w400,
                        fontSize: 15
                      )
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: SizedBox(
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: widget.gridCount,
                    childAspectRatio: widget.imgRatio,
                    crossAxisSpacing: 15,
                    children: movies.map((movie) =>
                    movie.isFavorite || movie.featured ?
                    null 
                    :
                      InkWell(
                        borderRadius: BorderRadius.circular(30),
                        overlayColor: MaterialStateProperty.all<Color>(Colors.grey[800]!),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return DetailScreen(data: movie);
                          })).then((_) => setState(() {}));
                        },
                        child: SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 250,
                                width: 175,
                                alignment: Alignment.center,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    height: 250,
                                    width: 175,
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
                                    maxLines: 1,
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
      ),
    );
  }
}