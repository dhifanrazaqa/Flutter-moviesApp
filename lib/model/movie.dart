class Movie {
  String id;
  String title;
  String description;
  String genre;
  double rating;
  bool isFavorite;
  bool featured;
  int year;
  String imagePath;

  Movie({
    required this.id,
    required this.title,
    required this.description,
    required this.genre,
    required this.rating,
    required this.isFavorite,
    required this.featured,
    required this.year,
    required this.imagePath
  });
}

var movies = [
  Movie(
    id: "mv-001", 
    title: "Ahsoka", 
    description: "After the fall of the Galactic Empire, former Jedi Knight Ahsoka Tano investigates an emerging threat to a vulnerable galaxy.", 
    genre: "Action, Adventure, Drama",
    rating: 7.7,
    isFavorite: false, 
    featured: true, 
    year: 2023,
    imagePath: "images/ahsoka.png" 
  ),
  Movie(
    id: "mv-002", 
    title: "The Mandalorian", 
    description: "After the stories of Jango and Boba Fett, another warrior emerges in the Star Wars universe. The Mandalorian is set after the fall of the Empire and before the emergence of the First Order. We follow the travails of a lone gunfighter in the outer reaches of the galaxy far from the authority of the New Republic.", 
    genre: "Action, Adventure, Fantasy",
    rating: 8.7,
    isFavorite: true, 
    featured: false, 
    year: 2019,
    imagePath: "images/mandalorian.png" 
  ),
  Movie(
    id: "mv-003", 
    title: "Barbie", 
    description: "The film begins with The Narrator (Helen Mirren) explaining the societal impact of the Barbie doll on history, accompanied by a clip of the original 1959 Barbie towering over a desert landscape, while little girls playing with baby dolls begin to destroy them.", 
    genre: "Adventure, Comedy, Fantasy",
    rating: 7.0,
    isFavorite: false,
    featured: false, 
    year: 2023,
    imagePath: "images/barbie.png" 
  ),
  Movie(
    id: "mv-004", 
    title: "Oppenheimer", 
    description: "A dramatization of the life story of J. Robert Oppenheimer, the physicist who had a large hand in the development of the atomic bomb, thus helping end World War 2. We see his life from university days all the way to post-WW2, where his fame saw him embroiled in political machinations.", 
    genre: "Biography, Drama, History",
    rating: 8.5,
    isFavorite: false,
    featured: false, 
    year: 2023,
    imagePath: "images/oppenheimer.png" 
  ),
  Movie(
    id: "mv-005", 
    title: "Spider-Man: Across the Spider-Verse", 
    description: "Miles Morales catapults across the Multiverse, where he encounters a team of Spider-People charged with protecting its very existence. When the heroes clash on how to handle a new threat, Miles must redefine what it means to be a hero.", 
    genre: "Animation, Action, Adventure",
    rating: 8.7,
    isFavorite: false,
    featured: true, 
    year: 2023,
    imagePath: "images/spiderverse.png" 
  ),
  Movie(
    id: "mv-006", 
    title: "The Lord of the Rings: The Return of the King", 
    description: "The final confrontation between the forces of good and evil fighting for control of the future of Middle-earth. Frodo and Sam reach Mordor in their quest to destroy the One Ring, while Aragorn leads the forces of good against Sauron's evil army at the stone city of Minas Tirith.", 
    genre: "Action, Adventure, Drama",
    rating: 9.0,
    isFavorite: true,
    featured: false, 
    year: 2003,
    imagePath: "images/lotrrotk.png" 
  ),
  Movie(
    id: "mv-007", 
    title: "Money Heist", 
    description: "To carry out the biggest heist in history, a mysterious man called The Professor recruits a band of eight robbers who have a single characteristic: none of them has anything to lose. Five months of seclusion memorizing every step, every detail, every probability culminate in eleven days locked up in the National Coinage and Stamp Factory of Spain, surrounded by police forces and with dozens of hostages in their power, to find out whether their suicide wager will lead to everything or nothing.", 
    genre: "Action, Crime, Drama",
    rating: 8.2,
    isFavorite: false,
    featured: true, 
    year: 2017,
    imagePath: "images/moneyheist.png" 
  ),
  Movie(
    id: "mv-008", 
    title: "The Walking Dead", 
    description: "Sheriff Deputy Rick Grimes gets shot and falls into a coma. When awoken he finds himself in a Zombie Apocalypse. Not knowing what to do he sets out to find his family, after he's done that, he gets connected to a group to become the leader. He takes charge and tries to help this group of people survive, find a place to live and get them food. This show is all about survival, the risks and the things you'll have to do to survive.", 
    genre: "Drama, Horror, Thriller",
    rating: 8.1,
    isFavorite: false,
    featured: false, 
    year: 2010,
    imagePath: "images/twd.png" 
  ),
  Movie(
    id: "mv-009", 
    title: "The Walking Dead: Daryl Dixon", 
    description: "Daryl's journey across a broken but resilient France as he hopes to find a way back home.", 
    genre: "Drama, Horror, Sci-Fi",
    rating: 7.8,
    isFavorite: true,
    featured: false, 
    year: 2023,
    imagePath: "images/daryl.png" 
  ),
  Movie(
    id: "mv-010", 
    title: "Alice in Borderland", 
    description: "Arisu is a man without much money or luck. He is unemployed currently as well. Out of the blue a blinding light engulfs him one day in whose aftermath the city of Tokyo has lost all its inhabitants save Arisu and two friends. This is a dangerous and potentially fatal game of survival now in which they are forced to take part.", 
    genre: "Action, Drama, Mystery",
    rating: 7.7,
    isFavorite: false,
    featured: false, 
    year: 2020,
    imagePath: "images/aib.png" 
  ),
  Movie(
    id: "mv-001", 
    title: "Ahsoka", 
    description: "After the fall of the Galactic Empire, former Jedi Knight Ahsoka Tano investigates an emerging threat to a vulnerable galaxy.", 
    genre: "Action, Adventure, Drama",
    rating: 7.7,
    isFavorite: false, 
    featured: true, 
    year: 2023,
    imagePath: "images/ahsoka.png" 
  ),
  Movie(
    id: "mv-002", 
    title: "The Mandalorian", 
    description: "After the stories of Jango and Boba Fett, another warrior emerges in the Star Wars universe. The Mandalorian is set after the fall of the Empire and before the emergence of the First Order. We follow the travails of a lone gunfighter in the outer reaches of the galaxy far from the authority of the New Republic.", 
    genre: "Action, Adventure, Fantasy",
    rating: 8.7,
    isFavorite: true, 
    featured: false, 
    year: 2019,
    imagePath: "images/mandalorian.png" 
  ),
  Movie(
    id: "mv-003", 
    title: "Barbie", 
    description: "The film begins with The Narrator (Helen Mirren) explaining the societal impact of the Barbie doll on history, accompanied by a clip of the original 1959 Barbie towering over a desert landscape, while little girls playing with baby dolls begin to destroy them.", 
    genre: "Adventure, Comedy, Fantasy",
    rating: 7.0,
    isFavorite: false,
    featured: false, 
    year: 2023,
    imagePath: "images/barbie.png" 
  ),
  Movie(
    id: "mv-004", 
    title: "Oppenheimer", 
    description: "A dramatization of the life story of J. Robert Oppenheimer, the physicist who had a large hand in the development of the atomic bomb, thus helping end World War 2. We see his life from university days all the way to post-WW2, where his fame saw him embroiled in political machinations.", 
    genre: "Biography, Drama, History",
    rating: 8.5,
    isFavorite: false,
    featured: false, 
    year: 2023,
    imagePath: "images/oppenheimer.png" 
  ),
  Movie(
    id: "mv-005", 
    title: "Spider-Man: Across the Spider-Verse", 
    description: "Miles Morales catapults across the Multiverse, where he encounters a team of Spider-People charged with protecting its very existence. When the heroes clash on how to handle a new threat, Miles must redefine what it means to be a hero.", 
    genre: "Animation, Action, Adventure",
    rating: 8.7,
    isFavorite: false,
    featured: true, 
    year: 2023,
    imagePath: "images/spiderverse.png" 
  ),
  Movie(
    id: "mv-006", 
    title: "The Lord of the Rings: The Return of the King", 
    description: "The final confrontation between the forces of good and evil fighting for control of the future of Middle-earth. Frodo and Sam reach Mordor in their quest to destroy the One Ring, while Aragorn leads the forces of good against Sauron's evil army at the stone city of Minas Tirith.", 
    genre: "Action, Adventure, Drama",
    rating: 9.0,
    isFavorite: true,
    featured: false, 
    year: 2003,
    imagePath: "images/lotrrotk.png" 
  ),
  Movie(
    id: "mv-007", 
    title: "Money Heist", 
    description: "To carry out the biggest heist in history, a mysterious man called The Professor recruits a band of eight robbers who have a single characteristic: none of them has anything to lose. Five months of seclusion memorizing every step, every detail, every probability culminate in eleven days locked up in the National Coinage and Stamp Factory of Spain, surrounded by police forces and with dozens of hostages in their power, to find out whether their suicide wager will lead to everything or nothing.", 
    genre: "Action, Crime, Drama",
    rating: 8.2,
    isFavorite: false,
    featured: true, 
    year: 2017,
    imagePath: "images/moneyheist.png" 
  ),
  Movie(
    id: "mv-008", 
    title: "The Walking Dead", 
    description: "Sheriff Deputy Rick Grimes gets shot and falls into a coma. When awoken he finds himself in a Zombie Apocalypse. Not knowing what to do he sets out to find his family, after he's done that, he gets connected to a group to become the leader. He takes charge and tries to help this group of people survive, find a place to live and get them food. This show is all about survival, the risks and the things you'll have to do to survive.", 
    genre: "Drama, Horror, Thriller",
    rating: 8.1,
    isFavorite: false,
    featured: false, 
    year: 2010,
    imagePath: "images/twd.png" 
  ),
  Movie(
    id: "mv-009", 
    title: "The Walking Dead: Daryl Dixon", 
    description: "Daryl's journey across a broken but resilient France as he hopes to find a way back home.", 
    genre: "Drama, Horror, Sci-Fi",
    rating: 7.8,
    isFavorite: true,
    featured: false, 
    year: 2023,
    imagePath: "images/daryl.png" 
  ),
  Movie(
    id: "mv-010", 
    title: "Alice in Borderland", 
    description: "Arisu is a man without much money or luck. He is unemployed currently as well. Out of the blue a blinding light engulfs him one day in whose aftermath the city of Tokyo has lost all its inhabitants save Arisu and two friends. This is a dangerous and potentially fatal game of survival now in which they are forced to take part.", 
    genre: "Action, Drama, Mystery",
    rating: 7.7,
    isFavorite: false,
    featured: false, 
    year: 2020,
    imagePath: "images/aib.png" 
  ),
  Movie(
    id: "mv-001", 
    title: "Ahsoka", 
    description: "After the fall of the Galactic Empire, former Jedi Knight Ahsoka Tano investigates an emerging threat to a vulnerable galaxy.", 
    genre: "Action, Adventure, Drama",
    rating: 7.7,
    isFavorite: false, 
    featured: true, 
    year: 2023,
    imagePath: "images/ahsoka.png" 
  ),
  Movie(
    id: "mv-002", 
    title: "The Mandalorian", 
    description: "After the stories of Jango and Boba Fett, another warrior emerges in the Star Wars universe. The Mandalorian is set after the fall of the Empire and before the emergence of the First Order. We follow the travails of a lone gunfighter in the outer reaches of the galaxy far from the authority of the New Republic.", 
    genre: "Action, Adventure, Fantasy",
    rating: 8.7,
    isFavorite: true, 
    featured: false, 
    year: 2019,
    imagePath: "images/mandalorian.png" 
  ),
  Movie(
    id: "mv-003", 
    title: "Barbie", 
    description: "The film begins with The Narrator (Helen Mirren) explaining the societal impact of the Barbie doll on history, accompanied by a clip of the original 1959 Barbie towering over a desert landscape, while little girls playing with baby dolls begin to destroy them.", 
    genre: "Adventure, Comedy, Fantasy",
    rating: 7.0,
    isFavorite: false,
    featured: false, 
    year: 2023,
    imagePath: "images/barbie.png" 
  ),
  Movie(
    id: "mv-004", 
    title: "Oppenheimer", 
    description: "A dramatization of the life story of J. Robert Oppenheimer, the physicist who had a large hand in the development of the atomic bomb, thus helping end World War 2. We see his life from university days all the way to post-WW2, where his fame saw him embroiled in political machinations.", 
    genre: "Biography, Drama, History",
    rating: 8.5,
    isFavorite: false,
    featured: false, 
    year: 2023,
    imagePath: "images/oppenheimer.png" 
  ),
  Movie(
    id: "mv-005", 
    title: "Spider-Man: Across the Spider-Verse", 
    description: "Miles Morales catapults across the Multiverse, where he encounters a team of Spider-People charged with protecting its very existence. When the heroes clash on how to handle a new threat, Miles must redefine what it means to be a hero.", 
    genre: "Animation, Action, Adventure",
    rating: 8.7,
    isFavorite: false,
    featured: true, 
    year: 2023,
    imagePath: "images/spiderverse.png" 
  ),
  Movie(
    id: "mv-006", 
    title: "The Lord of the Rings: The Return of the King", 
    description: "The final confrontation between the forces of good and evil fighting for control of the future of Middle-earth. Frodo and Sam reach Mordor in their quest to destroy the One Ring, while Aragorn leads the forces of good against Sauron's evil army at the stone city of Minas Tirith.", 
    genre: "Action, Adventure, Drama",
    rating: 9.0,
    isFavorite: true,
    featured: false, 
    year: 2003,
    imagePath: "images/lotrrotk.png" 
  ),
  Movie(
    id: "mv-007", 
    title: "Money Heist", 
    description: "To carry out the biggest heist in history, a mysterious man called The Professor recruits a band of eight robbers who have a single characteristic: none of them has anything to lose. Five months of seclusion memorizing every step, every detail, every probability culminate in eleven days locked up in the National Coinage and Stamp Factory of Spain, surrounded by police forces and with dozens of hostages in their power, to find out whether their suicide wager will lead to everything or nothing.", 
    genre: "Action, Crime, Drama",
    rating: 8.2,
    isFavorite: false,
    featured: true, 
    year: 2017,
    imagePath: "images/moneyheist.png" 
  ),
  Movie(
    id: "mv-008", 
    title: "The Walking Dead", 
    description: "Sheriff Deputy Rick Grimes gets shot and falls into a coma. When awoken he finds himself in a Zombie Apocalypse. Not knowing what to do he sets out to find his family, after he's done that, he gets connected to a group to become the leader. He takes charge and tries to help this group of people survive, find a place to live and get them food. This show is all about survival, the risks and the things you'll have to do to survive.", 
    genre: "Drama, Horror, Thriller",
    rating: 8.1,
    isFavorite: false,
    featured: false, 
    year: 2010,
    imagePath: "images/twd.png" 
  ),
  Movie(
    id: "mv-009", 
    title: "The Walking Dead: Daryl Dixon", 
    description: "Daryl's journey across a broken but resilient France as he hopes to find a way back home.", 
    genre: "Drama, Horror, Sci-Fi",
    rating: 7.8,
    isFavorite: true,
    featured: false, 
    year: 2023,
    imagePath: "images/daryl.png" 
  ),
  Movie(
    id: "mv-010", 
    title: "Alice in Borderland", 
    description: "Arisu is a man without much money or luck. He is unemployed currently as well. Out of the blue a blinding light engulfs him one day in whose aftermath the city of Tokyo has lost all its inhabitants save Arisu and two friends. This is a dangerous and potentially fatal game of survival now in which they are forced to take part.", 
    genre: "Action, Drama, Mystery",
    rating: 7.7,
    isFavorite: false,
    featured: false, 
    year: 2020,
    imagePath: "images/aib.png" 
  ),
  Movie(
    id: "mv-001", 
    title: "Ahsoka", 
    description: "After the fall of the Galactic Empire, former Jedi Knight Ahsoka Tano investigates an emerging threat to a vulnerable galaxy.", 
    genre: "Action, Adventure, Drama",
    rating: 7.7,
    isFavorite: false, 
    featured: true, 
    year: 2023,
    imagePath: "images/ahsoka.png" 
  ),
  Movie(
    id: "mv-002", 
    title: "The Mandalorian", 
    description: "After the stories of Jango and Boba Fett, another warrior emerges in the Star Wars universe. The Mandalorian is set after the fall of the Empire and before the emergence of the First Order. We follow the travails of a lone gunfighter in the outer reaches of the galaxy far from the authority of the New Republic.", 
    genre: "Action, Adventure, Fantasy",
    rating: 8.7,
    isFavorite: true, 
    featured: false, 
    year: 2019,
    imagePath: "images/mandalorian.png" 
  ),
  Movie(
    id: "mv-003", 
    title: "Barbie", 
    description: "The film begins with The Narrator (Helen Mirren) explaining the societal impact of the Barbie doll on history, accompanied by a clip of the original 1959 Barbie towering over a desert landscape, while little girls playing with baby dolls begin to destroy them.", 
    genre: "Adventure, Comedy, Fantasy",
    rating: 7.0,
    isFavorite: false,
    featured: false, 
    year: 2023,
    imagePath: "images/barbie.png" 
  ),
  Movie(
    id: "mv-004", 
    title: "Oppenheimer", 
    description: "A dramatization of the life story of J. Robert Oppenheimer, the physicist who had a large hand in the development of the atomic bomb, thus helping end World War 2. We see his life from university days all the way to post-WW2, where his fame saw him embroiled in political machinations.", 
    genre: "Biography, Drama, History",
    rating: 8.5,
    isFavorite: false,
    featured: false, 
    year: 2023,
    imagePath: "images/oppenheimer.png" 
  ),
  Movie(
    id: "mv-005", 
    title: "Spider-Man: Across the Spider-Verse", 
    description: "Miles Morales catapults across the Multiverse, where he encounters a team of Spider-People charged with protecting its very existence. When the heroes clash on how to handle a new threat, Miles must redefine what it means to be a hero.", 
    genre: "Animation, Action, Adventure",
    rating: 8.7,
    isFavorite: false,
    featured: true, 
    year: 2023,
    imagePath: "images/spiderverse.png" 
  ),
  Movie(
    id: "mv-006", 
    title: "The Lord of the Rings: The Return of the King", 
    description: "The final confrontation between the forces of good and evil fighting for control of the future of Middle-earth. Frodo and Sam reach Mordor in their quest to destroy the One Ring, while Aragorn leads the forces of good against Sauron's evil army at the stone city of Minas Tirith.", 
    genre: "Action, Adventure, Drama",
    rating: 9.0,
    isFavorite: true,
    featured: false, 
    year: 2003,
    imagePath: "images/lotrrotk.png" 
  ),
  Movie(
    id: "mv-007", 
    title: "Money Heist", 
    description: "To carry out the biggest heist in history, a mysterious man called The Professor recruits a band of eight robbers who have a single characteristic: none of them has anything to lose. Five months of seclusion memorizing every step, every detail, every probability culminate in eleven days locked up in the National Coinage and Stamp Factory of Spain, surrounded by police forces and with dozens of hostages in their power, to find out whether their suicide wager will lead to everything or nothing.", 
    genre: "Action, Crime, Drama",
    rating: 8.2,
    isFavorite: false,
    featured: true, 
    year: 2017,
    imagePath: "images/moneyheist.png" 
  ),
  Movie(
    id: "mv-008", 
    title: "The Walking Dead", 
    description: "Sheriff Deputy Rick Grimes gets shot and falls into a coma. When awoken he finds himself in a Zombie Apocalypse. Not knowing what to do he sets out to find his family, after he's done that, he gets connected to a group to become the leader. He takes charge and tries to help this group of people survive, find a place to live and get them food. This show is all about survival, the risks and the things you'll have to do to survive.", 
    genre: "Drama, Horror, Thriller",
    rating: 8.1,
    isFavorite: false,
    featured: false, 
    year: 2010,
    imagePath: "images/twd.png" 
  ),
  Movie(
    id: "mv-009", 
    title: "The Walking Dead: Daryl Dixon", 
    description: "Daryl's journey across a broken but resilient France as he hopes to find a way back home.", 
    genre: "Drama, Horror, Sci-Fi",
    rating: 7.8,
    isFavorite: true,
    featured: false, 
    year: 2023,
    imagePath: "images/daryl.png" 
  ),
  Movie(
    id: "mv-010", 
    title: "Alice in Borderland", 
    description: "Arisu is a man without much money or luck. He is unemployed currently as well. Out of the blue a blinding light engulfs him one day in whose aftermath the city of Tokyo has lost all its inhabitants save Arisu and two friends. This is a dangerous and potentially fatal game of survival now in which they are forced to take part.", 
    genre: "Action, Drama, Mystery",
    rating: 7.7,
    isFavorite: false,
    featured: false, 
    year: 2020,
    imagePath: "images/aib.png" 
  ),
  Movie(
    id: "mv-001", 
    title: "Ahsoka", 
    description: "After the fall of the Galactic Empire, former Jedi Knight Ahsoka Tano investigates an emerging threat to a vulnerable galaxy.", 
    genre: "Action, Adventure, Drama",
    rating: 7.7,
    isFavorite: false, 
    featured: true, 
    year: 2023,
    imagePath: "images/ahsoka.png" 
  ),
  Movie(
    id: "mv-002", 
    title: "The Mandalorian", 
    description: "After the stories of Jango and Boba Fett, another warrior emerges in the Star Wars universe. The Mandalorian is set after the fall of the Empire and before the emergence of the First Order. We follow the travails of a lone gunfighter in the outer reaches of the galaxy far from the authority of the New Republic.", 
    genre: "Action, Adventure, Fantasy",
    rating: 8.7,
    isFavorite: true, 
    featured: false, 
    year: 2019,
    imagePath: "images/mandalorian.png" 
  ),
  Movie(
    id: "mv-003", 
    title: "Barbie", 
    description: "The film begins with The Narrator (Helen Mirren) explaining the societal impact of the Barbie doll on history, accompanied by a clip of the original 1959 Barbie towering over a desert landscape, while little girls playing with baby dolls begin to destroy them.", 
    genre: "Adventure, Comedy, Fantasy",
    rating: 7.0,
    isFavorite: false,
    featured: false, 
    year: 2023,
    imagePath: "images/barbie.png" 
  ),
  Movie(
    id: "mv-004", 
    title: "Oppenheimer", 
    description: "A dramatization of the life story of J. Robert Oppenheimer, the physicist who had a large hand in the development of the atomic bomb, thus helping end World War 2. We see his life from university days all the way to post-WW2, where his fame saw him embroiled in political machinations.", 
    genre: "Biography, Drama, History",
    rating: 8.5,
    isFavorite: false,
    featured: false, 
    year: 2023,
    imagePath: "images/oppenheimer.png" 
  ),
  Movie(
    id: "mv-005", 
    title: "Spider-Man: Across the Spider-Verse", 
    description: "Miles Morales catapults across the Multiverse, where he encounters a team of Spider-People charged with protecting its very existence. When the heroes clash on how to handle a new threat, Miles must redefine what it means to be a hero.", 
    genre: "Animation, Action, Adventure",
    rating: 8.7,
    isFavorite: false,
    featured: true, 
    year: 2023,
    imagePath: "images/spiderverse.png" 
  ),
  Movie(
    id: "mv-006", 
    title: "The Lord of the Rings: The Return of the King", 
    description: "The final confrontation between the forces of good and evil fighting for control of the future of Middle-earth. Frodo and Sam reach Mordor in their quest to destroy the One Ring, while Aragorn leads the forces of good against Sauron's evil army at the stone city of Minas Tirith.", 
    genre: "Action, Adventure, Drama",
    rating: 9.0,
    isFavorite: true,
    featured: false, 
    year: 2003,
    imagePath: "images/lotrrotk.png" 
  ),
  Movie(
    id: "mv-007", 
    title: "Money Heist", 
    description: "To carry out the biggest heist in history, a mysterious man called The Professor recruits a band of eight robbers who have a single characteristic: none of them has anything to lose. Five months of seclusion memorizing every step, every detail, every probability culminate in eleven days locked up in the National Coinage and Stamp Factory of Spain, surrounded by police forces and with dozens of hostages in their power, to find out whether their suicide wager will lead to everything or nothing.", 
    genre: "Action, Crime, Drama",
    rating: 8.2,
    isFavorite: false,
    featured: true, 
    year: 2017,
    imagePath: "images/moneyheist.png" 
  ),
  Movie(
    id: "mv-008", 
    title: "The Walking Dead", 
    description: "Sheriff Deputy Rick Grimes gets shot and falls into a coma. When awoken he finds himself in a Zombie Apocalypse. Not knowing what to do he sets out to find his family, after he's done that, he gets connected to a group to become the leader. He takes charge and tries to help this group of people survive, find a place to live and get them food. This show is all about survival, the risks and the things you'll have to do to survive.", 
    genre: "Drama, Horror, Thriller",
    rating: 8.1,
    isFavorite: false,
    featured: false, 
    year: 2010,
    imagePath: "images/twd.png" 
  ),
  Movie(
    id: "mv-009", 
    title: "The Walking Dead: Daryl Dixon", 
    description: "Daryl's journey across a broken but resilient France as he hopes to find a way back home.", 
    genre: "Drama, Horror, Sci-Fi",
    rating: 7.8,
    isFavorite: true,
    featured: false, 
    year: 2023,
    imagePath: "images/daryl.png" 
  ),
  Movie(
    id: "mv-010", 
    title: "Alice in Borderland", 
    description: "Arisu is a man without much money or luck. He is unemployed currently as well. Out of the blue a blinding light engulfs him one day in whose aftermath the city of Tokyo has lost all its inhabitants save Arisu and two friends. This is a dangerous and potentially fatal game of survival now in which they are forced to take part.", 
    genre: "Action, Drama, Mystery",
    rating: 7.7,
    isFavorite: false,
    featured: false, 
    year: 2020,
    imagePath: "images/aib.png" 
  ),
];