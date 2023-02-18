package com.example.brackethub_frontend.ui.screens.register

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.rotate
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.example.brackethub_frontend.R
import com.example.brackethub_frontend.utils.BackArrow
import com.example.brackethub_frontend.utils.MyCircle
import com.example.brackethub_frontend.utils.MySquare
import com.example.brackethub_frontend.utils.MyTriangle
import com.google.accompanist.systemuicontroller.rememberSystemUiController

@Composable
fun RegisterScreen2() {
    val systemUiController = rememberSystemUiController()
    SideEffect {
        systemUiController.setNavigationBarColor(
            color = Color(0xFF2E325C),
            darkIcons = false
        )
        systemUiController.setStatusBarColor(
            color = Color(0xFF2E325C),
            darkIcons = false
        )
    }


    Box(
        modifier = Modifier
            .background(Color(0xFF2E325C)),
    ) {

        BackArrow(
            Modifier
                .width(35.dp)
                .height(100.dp)
                .offset(22.dp, 5.dp)
        )

        Column {
            Text(
                modifier = Modifier.offset(130.dp, 163.dp),
                style = TextStyle(
                    color = Color.White,
                    fontWeight = FontWeight(500),
                    fontFamily = FontFamily(Font(R.font.poppins_bold)),
                    fontSize = 25.sp
                ),
                text = "Register"
            )
        }

        MySquare(
            Modifier
                .size(100.dp)
                .offset(300.dp, 150.dp)
                .rotate(45f)
        )

        MyTriangle(
            Modifier
                .size(100.dp)
                .offset((-10).dp, 380.dp)
                .rotate(50f)
        )

        MyCircle(
            Modifier
                .size(100.dp)
                .offset((-5).dp, 180.dp)
                .rotate(50f)
        )

        Column {
            val userName by remember { mutableStateOf("What should everyone call you?") }

            val password by remember { mutableStateOf("Password") }

            Column {
                Text(
                    modifier = Modifier.offset(50.dp, 230.dp),
                    style = TextStyle(
                        color = Color.White,
                        fontWeight = FontWeight(200),
                        fontFamily = FontFamily(Font(R.font.poppins_bold)),
                        fontSize = 15.sp
                    ),
                    text = "PICK A USERNAME"
                )

                Text(
                    modifier = Modifier.offset(50.dp, 290.dp),
                    style = TextStyle(
                        color = Color.White,
                        fontFamily = FontFamily(Font(R.font.poppins_regular)),
                        fontSize = 12.sp
                    ),
                    text = "You can always change this later!"
                )

                Spacer(modifier = Modifier.padding(15.dp))
                TextField(
                    modifier = Modifier
                        .offset(50.dp, 183.dp)
                        .height(50.dp)
                        .width(300.dp),
                    colors = TextFieldDefaults.textFieldColors(
                        textColor = Color.Black,
                        backgroundColor = Color.White
                    ),
                    value = userName,
                    onValueChange = { "" },
                    shape = RoundedCornerShape(5.dp),
                )

                Spacer(modifier = Modifier.padding(5.dp))
                TextField(
                    modifier = Modifier
                        .offset(50.dp, 205.dp)
                        .height(50.dp)
                        .width(300.dp),
                    colors = TextFieldDefaults.textFieldColors(
                        textColor = Color.Black,
                        backgroundColor = Color.White
                    ),
                    value = password,
                    onValueChange = { "" },
                    shape = RoundedCornerShape(5.dp),
                )

                Spacer(modifier = Modifier.padding(5.dp))
                Text(
                    modifier = Modifier.offset(50.dp, 205.dp),
                    style = TextStyle(
                        color = Color.White,
                        fontFamily = FontFamily(Font(R.font.poppins_regular)),
                        fontSize = 12.sp
                    ),
                    text = "Password must be 6-72 characters"
                )

                Spacer(modifier = Modifier.padding(5.dp))
                Button(
                    modifier = Modifier
                        .width(300.dp)
                        .height(48.dp)
                        .offset(50.dp, 220.dp),
                    colors = ButtonDefaults.buttonColors(backgroundColor = Color(0xFF6C63FF)),
                    onClick = { /*TODO*/ }
                ) {
                    Text(
                        style = TextStyle(
                            fontFamily = FontFamily(Font(R.font.poppins_medium)),
                            color = Color.White
                        ),
                        text = "Create an account"
                    )
                }
            }
        }
    }
}