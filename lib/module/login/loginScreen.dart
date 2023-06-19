import 'package:flutter/material.dart';
import 'package:flutter_color/flutter_color.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 1);
  }

  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Image.asset('Asset/images/upimage.png'),
            ),
            Center(child: Image.asset('Asset/images/logo.png')),
            const SizedBox(
              height: 74,
            ),
            TabBar(
              controller: _tabController,
              physics: NeverScrollableScrollPhysics(),
              indicatorColor: HexColor('#1ABC00'),
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: HexColor('#1ABC00'),
              onTap: (index) {
                currentIndex = index;
                setState(() {});
              },
              unselectedLabelColor: Colors.grey,
              tabs: const <Widget>[
                Tab(
                  text: 'Sign Up',
                ),
                Tab(
                  text: 'Login',
                ),
              ],
            ),
            const SizedBox(
              height: 52,
            ),
            SizedBox(
              height: currentIndex == 1
                  ? MediaQuery.of(context).size.height * 47 / 100
                  : MediaQuery.of(context).size.height * 70 / 100,
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(

                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'First Name',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(color: HexColor('#6F6F6F')),
                                  ),
                                  const SizedBox(
                                    height: 3.8,
                                  ),
                                  TextFormField(
                                    style: const TextStyle(
                                      fontFamily: 'Roboto',
                                    ),
                                    decoration: InputDecoration(
                                      isDense: true, // important line
                                      contentPadding: EdgeInsets.fromLTRB(10, 28, 10, 0),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(
                                          style: BorderStyle.solid,
                                          color: Color(0xFF939393),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(
                                          color: Color(0xFF939393),
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 17,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Last Name',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(color: HexColor('#6F6F6F')),
                                  ),
                                  const SizedBox(
                                    height: 3.8,
                                  ),
                                  TextFormField(
                                    style: const TextStyle(
                                      fontFamily: 'Roboto',
                                    ),
                                    decoration: InputDecoration(
                                      isDense: true, // important line
                                      contentPadding: EdgeInsets.fromLTRB(10, 28, 10, 0),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(
                                          style: BorderStyle.solid,
                                          color: Color(0xFF939393),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(
                                          color: Color(0xFF939393),
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 26,),
                        Text(
                          'Email',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: HexColor('#6F6F6F')),
                        ),
                        const SizedBox(
                          height: 3.8,
                        ),
                        TextFormField(
                          style: const TextStyle(
                            fontFamily: 'Roboto',
                          ),
                          decoration: InputDecoration(
                            isDense: true, // important line
                            contentPadding: EdgeInsets.fromLTRB(10, 28, 10, 0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                style: BorderStyle.solid,
                                color: Color(0xFF939393),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: Color(0xFF939393),
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30.96,
                        ),
                        Text(
                          'Password',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: HexColor('#6F6F6F')),
                        ),
                        const SizedBox(
                          height: 3.8,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            isDense: true, // important line
                            contentPadding: EdgeInsets.fromLTRB(10, 28, 10, 0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                style: BorderStyle.solid,
                                color: Color(0xFF939393),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: Color(0xFF939393),
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 36.37,
                        ),
                        Text(
                          'Confirm password',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: HexColor('#6F6F6F')),
                        ),
                        const SizedBox(
                          height: 3.8,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            isDense: true, // important line
                            contentPadding: EdgeInsets.fromLTRB(10, 28, 10, 0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                style: BorderStyle.solid,
                                color: Color(0xFF939393),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: Color(0xFF939393),
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 26.37,
                        ),
                        Container(
                            width: double.infinity,
                            height: 46.24,
                            child: MaterialButton(
                              onPressed: () {},
                              color: HexColor('#1ABC00'),
                              child: Text(
                                'login',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(color: Colors.white),
                              ),
                            )),
                        const SizedBox(
                          height: 28.61,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 1,
                                color: HexColor('#979797'),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text('or continue with',
                                style: TextStyle(color: HexColor('#979797'))),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Container(
                                height: 1,
                                color: HexColor('#979797'),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 24.15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('Asset/images/Google.png'),
                            const SizedBox(
                              width: 31.55,
                            ),
                            Image.asset('Asset/images/Facebook.png'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [],
                        ),
                        Text(
                          'Email',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: HexColor('#6F6F6F')),
                        ),
                        const SizedBox(
                          height: 3.8,
                        ),
                        TextFormField(
                          autofocus: false,
                          // controller: ,
                          cursorColor: const Color(0xFF939393),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "please enter your email";
                            }
                            return null;
                          },
                          style: const TextStyle(
                            fontFamily: 'Roboto',
                          ),
                          decoration: InputDecoration(
                            isDense: true, // important line
                            contentPadding: EdgeInsets.fromLTRB(10, 28, 10, 0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                style: BorderStyle.solid,
                                color: Color(0xFF939393),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(
                                color: Color(0xFF1ABC00),
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(
                          height: 30.96,
                        ),
                        Text(
                          'Password',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: HexColor('#6F6F6F')),
                        ),
                        const SizedBox(
                          height: 3.8,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 36.37,
                        ),
                        Container(
                            width: double.infinity,
                            height: 46.24,
                            child: MaterialButton(
                              onPressed: () {},
                              color: HexColor('#1ABC00'),
                              child: Text(
                                'login',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(color: Colors.white),
                              ),
                            )),
                        const SizedBox(
                          height: 28.61,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 1,
                                color: HexColor('#979797'),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text('or continue with',
                                style: TextStyle(color: HexColor('#979797'))),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Container(
                                height: 1,
                                color: HexColor('#979797'),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 24.15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('Asset/images/Google.png'),
                            const SizedBox(
                              width: 31.55,
                            ),
                            Image.asset('Asset/images/Facebook.png'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),


            Align(
              alignment: AlignmentDirectional.bottomStart,
              child: Image.asset('Asset/images/downimage.png'),
            ),
          ],
        ),
      ),
    );
  }
}
