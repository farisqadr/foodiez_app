part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function onBackButtonPressed;
  final Widget child;
  final Color backColor;

  GeneralPage(
      {this.title = "Title",
      this.subtitle = "Subtitle",
      this.onBackButtonPressed,
      this.child,
      this.backColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
              child: Container(
            color: backColor ?? Colors.white,
          )),
          SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: defaultMargin),
                      width: double.infinity,
                      height: 100,
                      color: Colors.white,
                      child: Row(children: [
                        onBackButtonPressed != null
                            ? Container(
                                width: 24,
                                height: 24,
                                margin: EdgeInsets.only(right: 20),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/back_arrow.png'))),
                              )
                            : SizedBox(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              title,
                              style: GoogleFonts.poppins(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              subtitle,
                              style: GoogleFonts.poppins(
                                  color: Color(0xff8D92A3),
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        )
                      ]),
                    ),
                    Container(
                      height: defaultMargin,
                      width: double.infinity,
                      color: Color(0xffFAFAFC),
                    ),
                    child ?? SizedBox()
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}