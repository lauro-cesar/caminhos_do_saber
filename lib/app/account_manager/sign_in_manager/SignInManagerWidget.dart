/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */
import 'package:flutter/material.dart';
import 'package:caminhos_do_saber/app/custom_widgets.dart';
import 'package:caminhos_do_saber/app/keys.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:caminhos_do_saber/app/pages.dart';
import 'package:caminhos_do_saber/app/blocs.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInManagerWidget extends StatelessWidget {
  SignInManagerWidget({Key key}): super(key: key ?? AppKeys.signInPage);

  final GlobalKey<ScaffoldState> _signInFormKey = GlobalKey<ScaffoldState>();

  _onNextPage(context,state,blocManager) {
    blocManager.add(
        StackManagerNextPageEvent(nextPage: state.stackManagerModel.activePageIndex + 1));
  }

   Widget get _stacked => _stackManager();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        key: _signInFormKey,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
    child:_stacked
      )
    );
  }


  Widget _body(context,state,blocManager){
    return CustomIndexedStack(
      index: state.stackManagerModel.activePageIndex,
      children: <Widget>[
        _getUserEmail(context,state,blocManager,"0"),
        _getUserEmail(context,state,blocManager,"1"),
        _getUserEmail(context,state,blocManager,"2"),
        _getUserEmail(context,state,blocManager,"3"),
        _getUserEmail(context,state,blocManager,"4")
      ],
    );
  }

  Widget _formControls(context,state,blocManager){

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("${state.stackManagerModel.activePageIndex}",
            style: Theme.of(context).textTheme.headline
          ),
          const Icon(FontAwesomeIcons.arrowAltCircleRight),
        ],
    ),

          onPressed: () {
            blocManager.add(
                StackManagerNextPageEvent(nextPage: state.stackManagerModel.activePageIndex + 1));
          },
        )

      ],

    );




  }


  Widget _stackManager() {

    return  BlocBuilder<StackManagerBloc, StackManagerState>(
        condition: (previousState, state) {
          return (previousState != state);
        },
        builder: (context, state) {
          final blocManager = BlocProvider.of<StackManagerBloc>(context);
          final List<Widget> widgets = <Widget>[];
          widgets.add(_body(context, state, blocManager));
          return Center(child: Container(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: widgets)));
        }
    );
  }

  Widget _getUserEmail(context,state,blocManager,labelText) {
    return Center(
      child: UserNameInput(labelText:labelText,onButtonPressCallback: () {
        _onNextPage(context,state,blocManager);
      })
    );
  }




}