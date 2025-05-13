import { Text, View, Image, ScrollView, TouchableOpacity } from "react-native";
import { InputRectangle1 } from "./components/common/input";
import { InputSignInButton } from "./components/common/button";
const LogoImage = require ('./assets/images/logo.png')
const BemVindoImage = require ('./assets/images/bemvindo.png')
const GoogleIcon = require ('./assets/images/googleicon.png')
const Ellipse1 = require ('./assets/images/Ellipse 1.png')
const Ellipse2 = require ('./assets/images/Ellipse 2.png')
const Ellipse3 = require ('./assets/images/Ellipse 3.png')

export default function Index() {
  return (
    <View
      style={{
        flex: 1,
        display: 'flex',
        backgroundColor: '#040404',
        width: 412,
        height: 917
      }}
    >
      <ScrollView>
        <Text style={{flexDirection: 'row', height: 1}}>
          <Image source={Ellipse1} style={{}}/>
        </Text>

      <Image source={LogoImage} style={{width: 100, height: 100, marginLeft: 156, marginTop: 86}} />
      <Image source={BemVindoImage}
        style={{
          width: 264.12,
          height: 30.4,
          marginLeft: 74,
          marginTop: 34
        }}/>
      <Text style={{marginTop: 33}}>
        <View style={{flexDirection: "row"}}>
          <Image source={GoogleIcon} style={{marginLeft: 109}}/>
          <Text style={{color:'#FFFFFF', marginLeft: 8}}>Entre com o google</Text>
        </View>
      </Text>
      <Text style={{flexDirection: 'row', marginTop: 42}}>
        <View style={{width: 29, height: 1, backgroundColor: '#0075C4', marginLeft: 93, marginBottom: 4}}></View>
        <Text style={{color:'#FFFFFF', marginLeft: 8}}>Ou faça login com</Text>
        <View style={{width: 29, height: 1, backgroundColor: '#0075C4', marginLeft: 8, marginBottom: 4}}></View>
      </Text>
      <Text style={{color:'#FFFFFF', fontFamily: 'Khula', fontSize: 16, marginLeft: 41, height: 26, width: 138, marginBottom: 3, marginTop: 57}}>Endereço de Email</Text>
      <InputRectangle1/>
      <Text style={{color:'#FFFFFF', fontFamily: 'Khula', fontSize: 16, marginLeft: 41, height: 26, width: 138, marginBottom: 3, marginTop: 49}}>Senha</Text>
      <InputRectangle1/>
      <Text style={{color:'#0075C4', fontSize: 8, height: 9, width: 93, marginLeft: 281, textAlign: 'right', marginTop: 10}}>Esqueci a senha</Text>
      <Text>
        <View style={{flexDirection:'row', marginTop: 18}}>
          <TouchableOpacity style={{height: 15, width: 15, borderColor: '#0075C4', marginLeft: 36, borderWidth: 1}}></TouchableOpacity>
          <Text style={{color:'#FFFFFF', marginLeft: 9, fontSize: 12, fontWeight: 'semibold', fontFamily: 'Khula', height: 14, width: 136}}>Mantenha-me conectado</Text>
        </View>
      </Text>
      <InputSignInButton/>
        <Text style={{flexDirection: 'row', height: 50, width: 360, marginLeft: 26, marginTop: 37, textAlign: 'center'}}>
          <Text style={{color: '#FFFFFF', fontFamily: 'Khula', fontSize: 12, letterSpacing: 5, lineHeight: 47}}>Não possui uma conta?</Text>
          <TouchableOpacity>
            <Text style={{color: '#0075C4', fontFamily: 'Khula', fontSize: 12, letterSpacing: 5, lineHeight: 47}}>Crie uma</Text>  
          </TouchableOpacity>
        </Text>
        <Text style={{flexDirection: 'row', height: 1, width: 173, marginLeft: 100}}>
        </Text>
      </ScrollView>
    </View>
  );
}
