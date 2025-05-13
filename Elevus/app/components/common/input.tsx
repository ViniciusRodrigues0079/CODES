import { StyleSheet, TextInput } from "react-native";

export const InputRectangle1 = () => {
    return (
        <>
        <TextInput style={box.rectangle}/>
        </>
    );
}

const box = StyleSheet.create({
    rectangle: {
        width: 340,
        height: 50,
        borderColor: '#0075C4',
        borderRadius: 15,
        borderLeftWidth: 2,
        borderRightWidth: 2,
        borderTopWidth: 2,
        borderBottomWidth: 2,
        marginLeft: 36
    }

})