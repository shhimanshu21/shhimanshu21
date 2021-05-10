import AsyncStorage from '@react-native-community/async-storage';
import React,{useEffect} from 'react';


import {
  Text,
  View,
  StyleSheet,
  TextInput,
  ImageBackground,
  Image,
  Pressable,
  Alert,
} from 'react-native';
import { useState } from 'react/cjs/react.development';


export default function Login({navigation}) {

  const[email1,setEmail] = useState()
  const [pass1,setPass] = useState()

//   const help= async ()=>{
//     var a = {email,pass}
//     var data = JSON.stringify(a)
//     AsyncStorage.setItem("User",data)
// }


 const onlogin=()=>{
    AsyncStorage.getItem('User').then((data) => {
      // setData(JSON.parse(data))
      let data1 = JSON.parse(data)
      console.log((data1))
      if(email1==data1.email && pass1==data1.pass){
        navigation.navigate('categories')
      }
      else{
        Alert.alert('please enter the requierd fields')
      }
    })
    
//AsyncStorage.getItem('User').then((resp) => {
  //setData(resp)
  // console.warn(resp)
  //Alert.alert(resp)
//})

 }
  return (
    <View style={styles.container}>
      <View>
        <Image
          style={{ width: 400, height: 120,position:"relative" ,bottom:40}}
          resizeMode="contain"
          source={require('../assets/header-bg.png')}
        />
      </View>
      <View>
        <Image
          style={{ width: 250, height: 250,position:"relative",bottom:20,left:5 }}
          resizeMode="contain"
          source={require('../assets/logo.png')}
        />
      </View>
      <View style={styles.logo}>
        <Image
          style={{
            width: 20,
            height: 20,
            position: 'relative',
            top: 15,
            left: 15,
          }}
          resizeMode="contain"
          source={require('../assets/mail.png')}
        />
        <TextInput style={styles.input} placeholder="enter email adress"
         value={email1}
         onChangeText={value => setEmail(value)}
        />
      </View>
      <View style={styles.logo1}>
        <Image
          style={{
            width: 20,
            height: 20,
            position: 'relative',
            top: 15,
            left: 15,
          }}
          resizeMode="contain"
          source={require('../assets/password.png')}
        />
        <TextInput
          style={styles.input2}
          secureTextEntry={true}
          placeholder="enter Password"
           value={pass1}
           onChangeText={value => setPass(value)}
        />
      </View>
      <View style={{ position: 'relative', left: 120 }}>
        <Pressable style={{ padding: 1 }}
        onPress={() => navigation.navigate('forgot')}
        >
          <Text style={{ color: 'black' }}>Forgot Password ?</Text>
        </Pressable>
      </View>
      <View style={styles.button}>
        <Pressable
          style={{
            backgroundColor: '#87CEEB',
            alignItems: 'center',
            padding: 4,
            borderRadius: 20,
            height: 40,
            width:340,
            position:'relative',
            right:35 
          }}
          onPress={onlogin}
          >
          <Text style={{ color:'black', fontWeight: 'bold',fontSize:20, }}>Login</Text>
        </Pressable>
      </View>
      <View>
        <ImageBackground
          style={{ width: '100%', height: 120,top:55,position:'relative',right:18}}
          resizeMode="contain"
          source={require('../assets/footer-bg.png')}>
          <View>
          <Text
            style={{ position: 'relative', left: 90, top: 60, fontSize: 12 }}>
            Do You Have Any Account Yet ?
            </Text>
            </View>
            <View
            style={{paddingLeft:270,paddingTop:40}}
            >
              <Pressable
              
              
              onPress={() => navigation.navigate('sign')}
              >
                <Text
                style={{fontWeight:'bold',}}
                >
                  Rigester Here
                </Text>
              </Pressable>
            </View>
        </ImageBackground>
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,

     alignItems: 'center',
     justifyContent: 'center',
    backgroundColor: 'white',
    position:'relative',
    bottom:10
    //margin:60,
    //flexDirection: "column"
  },
  logo: {
    flexDirection: 'row',
  },
  logo1: {
    flexDirection: 'row',
  },

  input: {
    width: 350,
    height: 50,
    borderBottomColor: '#bec1c4',
    borderBottomWidth: 2,
    //padding:40,
   paddingLeft: 30,
   paddingRight:50,
   marginRight:10
    // marginBottom: 15,
    // marginTop:20
  },
  input2: {
    width: 350,
    height: 50,
    borderBottomColor: '#bec1c4',
    borderBottomWidth: 2,
    //padding: 10,
    marginRight:10,
    paddingLeft: 30,
    //marginBottom:,
  },
  button: {
    height: 100,
    width: 300,
    padding: 20,
  },
});
