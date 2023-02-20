import 'package:dice_good/banner_inline_page.dart';
import 'package:dice_good/bloc/dice_bloc.dart';
import 'package:dice_good/theme/change_theme_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DiceScreen extends StatefulWidget {
  @override
  _DiceScreenState createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          ChangeThemeButtonWidget(),
        ],
        centerTitle: true,
        title: Text('Dice Good'),
        leading: BlocBuilder<DiceBloc, List<int>>(
          builder: (context, state) {
            if (state.length == 1) {
              return Center(
                child: InkWell(
                    onTap: () {
                      context.read<DiceBloc>().twoDice();
                    },
                    child: Container(
                      height: 30,
                      width: 35,
                      child: Image.asset(
                        'assets/images/dice2.png',
                      ),
                    )),
              );
            } else {
              return Center(
                child: InkWell(
                    onTap: () {
                      context.read<DiceBloc>().oneDice();
                    },
                    child: Container(
                      height: 30,
                      width: 35,
                      child: Image.asset(
                        'assets/images/dice1.png',
                      ),
                    )),
              );
            }
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          BlocBuilder<DiceBloc, List<int>>(
            builder: (context, state) {
              if (state.length == 1) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    GestureDetector(
                      onTap: () => context.read<DiceBloc>().oneDice(),
                      child: Container(
                        width: MediaQuery.of(context).size.width - 16,
                        child: Padding(
                          padding: const EdgeInsets.all(70.0),
                          child: Image.asset(
                            'assets/images/dice${state[0]}.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              } else {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    GestureDetector(
                      onTap: () => context.read<DiceBloc>().twoDice(),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Sum of dice = ${state[0] + state[1]}',
                                  style:
                                      Theme.of(context).textTheme.displayLarge),
                              const SizedBox(height: 20),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Image.asset(
                                        'assets/images/dice${state[0]}.png'),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                      child: Image.asset(
                                          'assets/images/dice${state[1]}.png')),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }
            },
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            child: BannerInlinePage(
              id: 'ca-app-pub-5218177686730446/6173558898',
            ),
          ),
        ],
      ),
    );
  }
}
