import 'package:flutter/material.dart';
enum Languages {British_English, American_English}

class LanguageComponent extends StatefulWidget {
  const LanguageComponent({super.key});
  @override
  State<LanguageComponent> createState() => _LanguageState();
}

class _LanguageState extends State<LanguageComponent> {
  Languages? _selectedLanguage = Languages.British_English;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Please choose your desired language',
            textAlign: TextAlign.center,
           style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'GothomProBlack',
                    fontSize: 20,
                    color: Color.fromRGBO(27, 27, 27, 1.0)),
              ),
        ListTile(
          title:  ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(255, 240, 240, 240)),
          ),
          child: const Text('United Kingdom (UK)',
          style: TextStyle(color: Colors.black),),
          onPressed: () {
            setState(() {
              _selectedLanguage = Languages.British_English;
            });
          },
          ),
          leading: Image.asset('assets/images/united-kingdom.png'),
          focusColor: Color.fromARGB(255, 240, 240, 240),
          selectedColor: Color.fromARGB(255, 240, 240, 240),
            ),
        ListTile(
          title:  ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(255, 240, 240, 240)),
          ),
          child: const Text('United States (US)',
          style: TextStyle(color: Colors.black),),
          onPressed: () {
            setState(() {
              _selectedLanguage = Languages.British_English;
            });
          },
          ),
          leading: Image.asset('assets/images/united-states.png'),
          focusColor: Color.fromARGB(255, 240, 240, 240),
          selectedColor: Color.fromARGB(255, 240, 240, 240),
          onTap: () => {
            setState(() {
              _selectedLanguage = Languages.British_English;
            }),
          },
        )
      ],
    ),)

    );
  }

}