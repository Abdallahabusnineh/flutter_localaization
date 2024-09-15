import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/localization_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.2,
        left: 30,
        right: 30,
        bottom: 20,
      ),
      children: [
        Align(
          alignment: Alignment.center,
          child: Text(
            AppLocalizations.of(context)!.login,
            style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
            AppLocalizations.of(context)!.userName,
          style: TextStyle(fontSize: 20, color: Colors.grey.shade700),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
              color: Colors.grey.shade700,
            )),
            hintText: AppLocalizations.of(context)!.enterUserName,
            hintStyle: TextStyle(color: Colors.grey.shade700),
            prefixIcon: const Icon(Icons.person),
            border: const OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
            AppLocalizations.of(context)!.password,
          style: TextStyle(fontSize: 20, color: Colors.grey.shade700),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
              color: Colors.grey.shade700,
            )),
            hintText:             AppLocalizations.of(context)!.enterPassword,
            hintStyle: TextStyle(color: Colors.grey.shade700),
            prefixIcon: const Icon(
              Icons.lock_open_outlined,
            ),
            border: const OutlineInputBorder(),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Align(
            alignment: Alignment.centerRight,
            child: Text(
              AppLocalizations.of(context)!.forgotPassword,
              style: TextStyle(color: Colors.grey.shade700),
            )),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.blue, Colors.purple, Colors.red],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextButton(
            style: ButtonStyle(
              foregroundColor:
                  MaterialStateProperty.all(const Color(0xFFFFFFFF)),
            ),
            onPressed: () {},
            child: Container(
              child: Text(AppLocalizations.of(context)!.login),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
         Align(
          alignment: Alignment.center,
          child: Text(
            AppLocalizations.of(context)!.anotherLogin,
            style: const TextStyle(color: Colors.black),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset('assets/images/search.png')),
            const SizedBox(
              width: 10,
            ),
            CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset('assets/images/github-sign.png')),
            const SizedBox(
              width: 10,
            ),
            CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset('assets/images/facebook.png')),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.dontHaveAnAccount,
              style: TextStyle(color: Colors.grey.shade700),
            ),
            TextButton(
              onPressed: () {},
              child:  Text(
                AppLocalizations.of(context)!.registerAnAccount,
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,

        ),
        GestureDetector(
          onTap: (){
            context
                .read<LocalizationBloc>()
                .add(LocalizationStartProcessEvent());
          },
          child: Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.25,),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient:  LinearGradient(
                  colors: [Colors.blueAccent, Colors.blue, Colors.blue.shade900],
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.language,
                  color: Colors.white,
                ),
                const SizedBox(width: 10,),
                Text( AppLocalizations.of(context)!.localizationButton,
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
