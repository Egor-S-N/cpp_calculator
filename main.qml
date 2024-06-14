import QtQuick 2.15
import QtQuick.Controls 2.15
import com.example 1.0

ApplicationWindow {
    visible: true
    width: 360
    height: 616
    title: "calculator"
    color: "#024873"

    Calculator{
        id:calculator
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
            
            
            text: "0"
            color: "#FFFFFF"
            font.pixelSize: 60
        }

        Text{
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
        
        // btn brackets ()
        Rectangle{
            id: btn_brackets
            color: "#0889A6"
            height: 60
            width: 60
            radius: 45
            Text{
                text: "()"
                color: "#FFFFFF"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#F7E425"
                    else
                        parent.color = "#0889A6"
                }
            }
        }

    // btn + - ()
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
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#F7E425"
                    else
                        parent.color = "#0889A6"
                }
            }
        }

    // btn % ()
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
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#F7E425"
                    else
                        parent.color = "#0889A6"
                }
            }
        }

    // btn delenit ()
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
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#F7E425"
                    else
                        parent.color = "#0889A6"
                }
            }
        }

        // btn 7 ()
        Rectangle{
            id: btn_seven
            color: "#B0D1D8"
            height: 60
            width: 60
            radius: 45
            Text{
                text: "7"
                color: "#024873"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#04BFAD"
                    else
                        parent.color = "#B0D1D8"
                }
            }
        }

        // btn 8 ()
        Rectangle{
            id: btn_eight
            color: "#B0D1D8"
            height: 60
            width: 60
            radius: 45
            Text{
                text: "8"
                color: "#024873"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#04BFAD"
                    else
                        parent.color = "#B0D1D8"
                }
            }
        }

        // btn 9 ()
        Rectangle{
            id: btn_nine
            color: "#B0D1D8"
            height: 60
            width: 60
            radius: 45
            Text{
                text: "9"
                color: "#024873"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#04BFAD"
                    else
                        parent.color = "#B0D1D8"
                }
            }
        }

        // btn multiply ()
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
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#F7E425"
                    else
                        parent.color = "#0889A6"
                }
            }
        }

        // btn 4 ()
        Rectangle{
            id: btn_four
            color: "#B0D1D8"
            height: 60
            width: 60
            radius: 45
            Text{
                text: "4"
                color: "#024873"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#04BFAD"
                    else
                        parent.color = "#B0D1D8"
                }
            }
        }

        // btn 5 ()
        Rectangle{
            id: btn_five
            color: "#B0D1D8"
            height: 60
            width: 60
            radius: 45
            Text{
                text: "5"
                color: "#024873"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#04BFAD"
                    else
                        parent.color = "#B0D1D8"
                }
            }
        }

        // btn 6 ()
        Rectangle{
            id: btn_six
            color: "#B0D1D8"
            height: 60
            width: 60
            radius: 45
            Text{
                text: "6"
                color: "#024873"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#04BFAD"
                    else
                        parent.color = "#B0D1D8"
                }
            }
        }

        // btn minus ()
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
                    curent_value.text = curent_value.text + btn_zero_text.text
                }
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#F7E425"
                    else
                        parent.color = "#0889A6"
                }
            }
        }

        // btn 1 ()
        Rectangle{
            id: btn_one
            color: "#B0D1D8"
            height: 60
            width: 60
            radius: 45
            Text{
                id: btn_onee_text
                text: "1"
                color: "#024873"
                font.pixelSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    curent_value.text = curent_value.text + btn_onee_text.text
                }
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#04BFAD"
                    else
                        parent.color = "#B0D1D8"
                }
            }
        }

        // btn 2 ()
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
                    curent_value.text = curent_value.text + btn_two_text.text
                }
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#04BFAD"
                    else
                        parent.color = "#B0D1D8"
                }
            }
        }

        // btn 3 ()
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
                    curent_value.text = curent_value.text + btn_three_text.text
                }
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#04BFAD"
                    else
                        parent.color = "#B0D1D8"
                }
            }
        }

        // btn plus ()
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
                    // curent_value.text = curent_value.text + btn_plus_text.text
                    curent_value.text = String(calculator.add(Number(curent_value.text)  , 2))
                }
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#F7E425"
                    else
                        parent.color = "#0889A6"
                }
            }
        }

        // btn clear ()
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
                    curent_value.text = ""
                }

                onPressedChanged: {
                    if(pressed)
                        parent.color = "#f8afae"
                    else
                        parent.color = "#F25E5E"
                }
            }
        }

        // btn 0 ()
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
                    curent_value.text = curent_value.text + btn_zero_text.text
                }
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#04BFAD"
                    else
                        parent.color = "#B0D1D8"
                }
            }
        }

        // btn point ()
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
                    curent_value.text = curent_value.text + btn_point_text.text
                }
                onPressedChanged: {
                    if(pressed)
                        parent.color = "#04BFAD"
                    else
                        parent.color = "#B0D1D8"
                }
            }
        }

        // btn equal ()
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
