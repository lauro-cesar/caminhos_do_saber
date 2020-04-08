/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:caminhos_do_saber/app/blocs.dart';
import 'package:caminhos_do_saber/app/pages.dart';




class HomePageManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageManagerBloc, PageManagerState>(
        condition: (previousState, state) {
      return (previousState != state);
    }, builder: (context, state) {
      final pageManagerBloc = BlocProvider.of<PageManagerBloc>(context);
      return Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: AnimatedSwitcher(
              transitionBuilder: (Widget child, Animation<double> animation) {
                var begin = Offset(1.1, 0.0);
                var end = Offset.zero;
                var curve = Curves.ease;
                var curveTween = CurveTween(curve: curve);
                var tween = Tween(begin: begin, end: end)
                    .chain(CurveTween(curve: curve));
                var offsetAnimation = animation.drive(tween);
                return SlideTransition(
                  textDirection: TextDirection.rtl,
                  position: offsetAnimation,
                  child: child,
                );
              },
              duration: const Duration(milliseconds:700),
              child: IndexedStack(
                  key: ValueKey<int>(state.pageManager.activePageIndex),
                  index: state.pageManager.activePageIndex,
                  children: List<Widget>.generate(10, (int index) {
                    return Container(
                      color: Colors.accents[index],
                      alignment: Alignment.center,
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          UserNameLabel(),
                          Text("Page : $index",
                              style: Theme.of(context).textTheme.headline),
                          RaisedButton(
                            child: Text(
                                'Editor Page ${state.pageManager.activePageIndex + 1}'),
                            onPressed: () {
                              int nextPage;
                              if (index == 9) {
                                nextPage = 0;
                              } else {
                                nextPage = index + 1;
                              }
                              print("Next Page: $nextPage");
                              pageManagerBloc.add(
                                  PageManagerNextPageEvent(nextPage: nextPage));
                            },
                          )
                        ],
                      )),
                    );
                  }))));
    });
  }
}
