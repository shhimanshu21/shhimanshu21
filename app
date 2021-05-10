import * as React from 'react';


//import React, {Component} from 'react';
import { View ,Text} from 'react-native';


import Login from './components/login';
 import Sign from './components/signPage';
import About from './components/about';
import Password from './components/resetPassword';
import Categories from './components/categoriesPage';
import Contact from './components/contactPage';
import Edit from './components/editPage';
import Forgot from './components/forgotPage';
import Purchase from './components/purchasePage';
import Favorites from './components/favoritesPage';
import Question from './components/questions';
import Sig from './components/task2'
//import NetInfos from './components/netInfo';
//import Demo from './components/random;
import Navi from './components/navi'
import { NavigationContainer } from '@react-navigation/native';
import Navi1 from './components/task3';
import Log from './components/task1'
import Hom from './components/task4'


const UiInput = () => {
  return (
   // <Login />
    // <NavigationContainer>
    //   <Navi />
    // </NavigationContainer>
   // <Log />
    //<Sig />
   // <SignUpScreen />
    //<Sign />
    //<About />
    //<Password />
    //<Categories />
    //<Contact />
    //<Edit />
    //<Forgot />
    //<Purchase />
    //<Favorites />
    //<Question />
    // <NetInfos />
   // <Demo />
    


   <NavigationContainer>
       <Navi1 />
     </NavigationContainer>

  );
};

export default UiInput;
