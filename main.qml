import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 360
    height: 616
    title: "calculator"
    color: "#024873"

    property var calc_value: qsTr("0");
    property var operation_type: qsTr("NONE");
    property var is_second: false;
    property var first_value: 0;
    
    function press_num_btn(num_value) {
        if(calc_value.length < 9){
            if (calc_value == "0"){
                calc_value = num_value;
            }
            else{
                calc_value += num_value;
            }
        }
    }
    
    function press_point_btn() {
        if(!(calc_value.indexOf('.') > -1)){
            calc_value += '.';
        }
    }
    
    function operation_btn_click(operation) {
        if (operation_type !== "NONE" && is_second) {
            equal_btn_click()
        }
        is_second = true
        operation_type = operation
        history_operation.text = calc_value
        first_value = calc_value
        calc_value = "0"
    }
    
    function plus_minus_btn_click() {
        if (calc_value.startsWith("-")) {
            calc_value = calc_value.substring(1)
        } else {
            calc_value = "-" + calc_value
        }
    }

    function percent_btn_click() {
        calc_value = (parseFloat(calc_value) / 100).toString()
    }

    
    function btn_del_last_symb_click() {
        calc_value = calc_value.substring(0,calc_value.length - 1)
        if(calc_value.length == 0) calc_value = "0"
    }

    function equal_btn_click() {
        if (!is_second) {
            return
        }
        var second_value = parseFloat(calc_value);
        var result = 0;

        switch(operation_type){
            case '+':
                result = parseFloat(history_operation.text) + second_value;
                break;
            case '-':
                result = parseFloat(history_operation.text) - second_value;
                break;
            case '*':
                result = parseFloat(history_operation.text) * second_value;
                break;
            case '/':
                result = parseFloat(history_operation.text) / second_value;
                break;
        };

        history_operation.text = first_value + " " + operation_type + " " + calc_value + " = " + result.toString();
        calc_value = result.toString();
    }

    minimumWidth: 360
    maximumWidth: 360
    minimumHeight: 616
    maximumHeight: 616

    // values container
    Rectangle{
        id: main_rectanglee
        color: "#04BFAD"
        height: 156
        radius: 15

        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right

        anchors.leftMargin: 13
        anchors.rightMargin: 13
        anchors.topMargin: 13
        // curent value
        Text{
            id: curent_value
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            
            anchors.rightMargin: 13
            anchors.bottomMargin: 13
            
            text: calc_value
            
            color: "#FFFFFF"
            font.pixelSize: 60
        }

        Text{
            id: history_operation
            anchors.top: parent.top
            anchors.right: parent.right
            
            anchors.rightMargin: 13
            anchors.topMargin: 44
            
            
            text: ""
            color: "#FFFFFF"
            font.pixelSize: 20
        }
    }

    Grid{
        id: grid
        columns: 4
        rows: 5
        columnSpacing: 24
        rowSpacing: 24

        anchors.top: main_rectanglee.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 24
        
        // btn del_last_symb
        Rectangle{
            id: btn_del_last_symb
            color: "#0889A6"
            height: 60
            width: 60
            radius: 45
            Text{
                text: "del"
                color: "#FFFFFF"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    btn_del_last_symb_click()
                }
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#F7E425"
                    else
                        parent.color = "#0889A6"
                }
            }
        }

    // btn + -
        Rectangle{
            id: btn_plus_minus
            color: "#0889A6"
            height: 60
            width: 60
            radius: 45
            Text{
                text: "+/-"
                color: "#FFFFFF"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    plus_minus_btn_click();
                }
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#F7E425"
                    else
                        parent.color = "#0889A6"
                }
            }
        }

    // btn % 
        Rectangle{
            id: btn_percent
            color: "#0889A6"
            height: 60
            width: 60
            radius: 45
            Text{
                text: "%"
                color: "#FFFFFF"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    percent_btn_click()
                }
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#F7E425"
                    else
                        parent.color = "#0889A6"
                }
            }
        }

    // btn devision
        Rectangle{
            id: btn_devision
            color: "#0889A6"
            height: 60
            width: 60
            radius: 45
            Text{
                text: "/"
                color: "#FFFFFF"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    operation_btn_click('/')
                }
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#F7E425"
                    else
                        parent.color = "#0889A6"
                }
            }
        }

        // btn 7
        Rectangle{
            id: btn_seven
            color: "#B0D1D8"
            height: 60
            width: 60
            radius: 45
            Text{
                id: btn_seven_text
                text: "7"
                color: "#024873"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    press_num_btn(qsTr(btn_seven_text.text))
                    
                }
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#04BFAD"
                    else
                        parent.color = "#B0D1D8"
                }
            }
        }

        // btn 8
        Rectangle{
            id: btn_eight
            color: "#B0D1D8"
            height: 60
            width: 60
            radius: 45
            Text{
                id: btn_eight_text
                text: "8"
                color: "#024873"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    press_num_btn(qsTr(btn_eight_text.text))
                }
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#04BFAD"
                    else
                        parent.color = "#B0D1D8"
                }
            }
        }

        // btn 9
        Rectangle{
            id: btn_nine
            color: "#B0D1D8"
            height: 60
            width: 60
            radius: 45
            Text{
                id: btn_nine_text
                text: "9"
                color: "#024873"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    press_num_btn(qsTr(btn_nine_text.text))
                }
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#04BFAD"
                    else
                        parent.color = "#B0D1D8"
                }
            }
        }

        // btn multiply
        Rectangle{
            id: btn_multiply
            color: "#0889A6"
            height: 60
            width: 60
            radius: 45
            Text{
                text: "x"
                color: "#FFFFFF"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    operation_btn_click('*')
                }
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#F7E425"
                    else
                        parent.color = "#0889A6"
                }
            }
        }

        // btn 4
        Rectangle{
            id: btn_four
            color: "#B0D1D8"
            height: 60
            width: 60
            radius: 45
            Text{
                id: btn_four_text
                text: "4"
                color: "#024873"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    press_num_btn(qsTr(btn_four_text.text))
                }
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#04BFAD"
                    else
                        parent.color = "#B0D1D8"
                }
            }
        }

        // btn 5
        Rectangle{
            id: btn_five
            color: "#B0D1D8"
            height: 60
            width: 60
            radius: 45
            Text{
                id: btn_five_text
                text: "5"
                color: "#024873"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    press_num_btn(qsTr(btn_five_text.text))
                }
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#04BFAD"
                    else
                        parent.color = "#B0D1D8"
                }
            }
        }

        // btn 6
        Rectangle{
            id: btn_six
            color: "#B0D1D8"
            height: 60
            width: 60
            radius: 45
            Text{
                id: btn_six_text
                text: "6"
                color: "#024873"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    press_num_btn(qsTr(btn_six_text.text))
                }
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#04BFAD"
                    else
                        parent.color = "#B0D1D8"
                }
            }
        }

        // btn minus
        Rectangle{
            id: btn_minus
            color: "#0889A6"
            height: 60
            width: 60
            radius: 45
            Text{
                text: "-"
                color: "#FFFFFF"
                font.pixelSize: 20

                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    operation_btn_click('-')
                }
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#F7E425"
                    else
                        parent.color = "#0889A6"
                }
            }
        }

        // btn 1
        Rectangle{
            id: btn_one
            color: "#B0D1D8"
            height: 60
            width: 60
            radius: 45
            Text{
                id: btn_one_text
                text: "1"
                color: "#024873"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    press_num_btn(qsTr(btn_one_text.text))
                }
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#04BFAD"
                    else
                        parent.color = "#B0D1D8"
                }
            }
        }

        // btn 2
        Rectangle{
            id: btn_two
            color: "#B0D1D8"
            height: 60
            width: 60
            radius: 45
            Text{
                id: btn_two_text
                text: "2"
                color: "#024873"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent

                onClicked: {
                    press_num_btn(qsTr(btn_two_text.text))
                }
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#04BFAD"
                    else
                        parent.color = "#B0D1D8"
                }
            }
        }

        // btn 3
        Rectangle{
            id: btn_three
            color: "#B0D1D8"
            height: 60
            width: 60
            radius: 45
            Text{
                id: btn_three_text
                text: "3"
                color: "#024873"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    press_num_btn(qsTr(btn_three_text.text))
                }
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#04BFAD"
                    else
                        parent.color = "#B0D1D8"
                }
            }
        }

        // btn plus
        Rectangle{
            id: btn_plus
            color: "#0889A6"
            height: 60
            width: 60
            radius: 45
            Text{
                id: btn_plus_text
                text: "+"
                color: "#FFFFFF"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    operation_btn_click('+')
                }
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#F7E425"
                    else
                        parent.color = "#0889A6"
                }
            }
        }

        // btn clear
        Rectangle{
            id: btn_clear
            color: "#F25E5E"
            height: 60
            width: 60
            radius: 45
            Text{
                text: "C"
                color: "#FFFFFF"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent

                onClicked: {
                    calc_value = "0";
                    history_operation.text = "";
                    operation_type = "NONE";
                    first_value = 0;
                    is_second = false;
                }

                onPressedChanged: {
                    if(pressed)
                        parent.color = "#f8afae"
                    else
                        parent.color = "#F25E5E"
                }
            }
        }

        // btn 0 
        Rectangle{
            id: btn_zero
            color: "#B0D1D8"
            height: 60
            width: 60
            radius: 45
            Text{
                id: btn_zero_text
                text: "0"
                color: "#024873"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent

                onClicked: {
                    press_num_btn(qsTr(btn_zero_text.text))
                }
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#04BFAD"
                    else
                        parent.color = "#B0D1D8"
                }
            }
        }

        // btn point
        Rectangle{
            id: btn_point
            color: "#B0D1D8"
            height: 60
            width: 60
            radius: 45
            Text{
                id: btn_point_text
                text: "."
                color: "#024873"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    press_point_btn()
                }
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#04BFAD"
                    else
                        parent.color = "#B0D1D8"
                }
            }
        }

        // btn equal
        Rectangle{
            id: btn_equal
            color: "#0889A6"
            height: 60
            width: 60
            radius: 45
            Text{
                text: "="
                color: "#FFFFFF"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent

                onClicked: {
                    equal_btn_click()
                }
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#F7E425"
                    else
                        parent.color = "#0889A6"
                }
            }
        }
    }
}
