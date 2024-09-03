import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yousef Sabry Elhelaly - Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: TextTheme(
          bodyText1: TextStyle(fontSize: 16, color: Colors.white),
          bodyText2: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0d0d0d),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            AboutSection(),
            ResearchSection(),
            Footer(),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF1a1a1d), Color(0xFF4e4e50)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            image: DecorationImage(
              image: AssetImage('assets/space-bg.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.dstATop),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/profile-pic.png'),
                ),
                SizedBox(height: 20),
                Text(
                  'Yousef Sabry Elhelaly',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Mechatronics Engineer student & AI Researcher',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(height: 20),
                SocialMediaButtons(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class SocialMediaButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      children: [
        SocialButton(icon: Icons.facebook, url: 'https://www.facebook.com/jo.elhefaly?mibextid=ZbWKwL'),
        SocialButton(icon: Icons.instagram, url: 'https://www.instagram.com/yousefelhelalyy?igsh=cGNpb2RjcjU5OTN2'),
        SocialButton(icon: Icons.twitter, url: 'https://x.com/YElhelalyy5324'),
        SocialButton(icon: Icons.school, url: 'https://papers.ssrn.com/sol3/cf_dev/AbsByAuth.cfm?per_id=6976542'),
        SocialButton(icon: Icons.storage, url: 'https://figshare.com/authors/Yousef_Elhelaly/19325674'),
        SocialButton(icon: Icons.brush, url: 'https://www.behance.net/YoUsefElhelaly'),
        SocialButton(icon: Icons.book, url: 'https://independent.academia.edu/YousefElhelalyy'),
      ],
    );
  }
}

class SocialButton extends StatelessWidget {
  final IconData icon;
  final String url;

  SocialButton({required this.icon, required this.url});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon, color: Colors.white),
      onPressed: () {
        launchURL(url);
      },
    );
  }
}

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF1a1a1d),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SectionTitle(title: 'About Me'),
          Text(
            'My name is Yousef Elhelaly, and I am a dedicated student of Mechatronics Engineering at Zagazig National University. '
            'With a passion for both technology and creativity, I have developed a diverse skill set that spans across various disciplines including '
            'artificial intelligence, programming, digital marketing, and graphic design.\n\n'
            'I have worked on several innovative projects, such as developing applications to assist the deaf and blind using artificial intelligence, '
            'and designing a prosthetic hand equipped with an IR sensor. My journey in technology began with learning languages like Python, C++, and Flutter, '
            'which I used to create various applications and projects.\n\n'
            'Beyond my academic pursuits, I am a body language coach certified by Microsoft, and I have experience in social media management, where I have successfully '
            'managed and grown pages with millions of followers. My interest in design is reflected in my work as a graphic designer, where I create compelling visual '
            'content for a range of platforms.\n\n'
            'I am passionate about pushing the boundaries of what technology can achieve, and I aim to continue contributing to innovative projects that make a difference '
            'in people\'s lives.',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Add functionality to open your CV
            },
            child: Text('Download My CV'),
          ),
        ],
      ),
    );
  }
}

class ResearchSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF1a1a1d),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SectionTitle(title: 'My Research'),
          ResearchItem(
            title: 'Application of Machine Learning Techniques for Quantum Mechanics Data Analysis: Predicting Particle Positions and Types',
            description: 'In this research, we explore the intersection of quantum mechanics and machine learning, focusing on the application of advanced machine learning algorithms to analyze quantum mechanics data.',
            videoUrl: 'Example.mp4',
            paperUrl: 'https://figshare.com/articles/journal_contribution/_i_Application_of_Machine_Learning_Techniques_for_Quantum_i_i_Mechanics_Data_Analysis_Predicting_Particle_Positions_and_Types_i_/26891536?file=48928864',
          ),
          ResearchItem(
            title: 'Developing a Machine Learning Model to Predict the currence of Cardiovascular Diseases Based on Health Data',
            description: 'Cardiovascular diseases (CVDs) remain one of the leading causes of mortality worldwide. Early prediction and intervention are crucial for reducing the associated risks and improving patient outcomes.',
            videoUrl: 'Example.mp4',
            paperUrl: 'https://figshare.com/articles/journal_contribution/Developing_a_Machine_Learning_Model_to_Predict_the_currence_of_b_Cardiovascular_Diseases_b_Based_on_Health_Data/26490967?file=48164725',
          ),
        ],
      ),
    );
  }
}

class ResearchItem extends StatelessWidget {
  final String title;
  final String description;
  final String videoUrl;
  final String paperUrl;

  ResearchItem({
    required this.title,
    required this.description,
    required this.videoUrl,
    required this.paperUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Add functionality to open research paper
            },
            child: Text('Read Full Research'),
          ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: Colors.teal,
        ),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF1a1a1d),
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Text(
          '© 2024 Yousef Sabry Elhelaly. All Rights Reserved.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

void launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

