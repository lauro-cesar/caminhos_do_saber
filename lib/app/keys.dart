/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */

import 'package:flutter/widgets.dart';

class AppKeys {

  static const myApp = Key('__myApp__');
  static const homePage = Key('__homeScreen__');
  static const contentCreatorPage = Key('__content__Creator__Screen__');

  static const accountSettingsPage = Key('__account__Settings__Screen__');

  static const accountManager = Key('__account__manager__screen__');
  static const accountSignInManager = Key('__account__signin__screen__');
  static const accountLogInManager = Key('__account__login__creen__');


  static const loginPage = Key('__loginScreen__');
  static const signInPage = Key('__signinScreen__');

  static const userNameLabel = Key('__userNameLabel__');
  static const userNameInput = Key('__usernameInput__');

  static const userEmailLabel = Key('__userEmailLabel__');
  static const userEmailInput = Key('__userEmailInput__');

  static const firstNameLabel = Key('firstNameLabel');
  static const firstNameInput = Key('firstNameLabel');

  static const middleNameLabel = Key('middleNameLabel');
  static const middleNameInput = Key('middleNameInput');

  static const lastNameLabel = Key('lastNameLabel');
  static const lastNameInput = Key('lastNameInput');





  static const addTodoFab = Key('__addTodoFab__');
  static const snackbar = Key('__snackbar__');
  static Key snackbarAction(String id) => Key('__snackbar_action_${id}__');
  // Filters
  static const filterButton = Key('__filterButton__');
  static const allFilter = Key('__allFilter__');
  static const activeFilter = Key('__activeFilter__');
  static const completedFilter = Key('__completedFilter__');
  // Add Screen
  static const addTodoScreen = Key('__addTodoScreen__');
  static const saveNewTodo = Key('__saveNewTodo__');
  static const taskField = Key('__taskField__');
  static const noteField = Key('__noteField__');
  // Edit Screen
  static const editTodoScreen = Key('__editTodoScreen__');
  static const saveTodoFab = Key('__saveTodoFab__');



}