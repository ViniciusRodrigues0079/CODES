import { StyleSheet, TouchableOpacity, Text } from "react-native"

export const InputSignInButton = () => {
    return (
        <>
            <TouchableOpacity style={stylebutton.signin} activeOpacity={0.8}>
                <Text style={stylebutton.signintext}>Entrar</Text>
            </TouchableOpacity>
        </>
    );
}

const stylebutton = StyleSheet.create({
    signin: {
        width: 282,
        height: 49,
        backgroundColor: '#0075C4',
        borderRadius: 12,
        marginLeft: 65,
        marginTop: 66
    },
    signintext: {
        color: '#FFFFFF',
        textTransform: 'uppercase',
        fontWeight: 'bold',
        textAlign: 'center',
        fontSize: 32,
        fontFamily:'Khula',
        letterSpacing: 5,
        lineHeight: 47
    }
})