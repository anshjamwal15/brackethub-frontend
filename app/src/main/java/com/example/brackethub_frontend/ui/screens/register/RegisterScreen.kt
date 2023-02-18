package com.example.brackethub_frontend.ui.screens.register

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.Text
import androidx.compose.material.TextField
import androidx.compose.material.TextFieldDefaults
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
import com.example.brackethub_frontend.utils.MyCircle
import com.example.brackethub_frontend.utils.MySquare
import com.example.brackethub_frontend.utils.MyTriangle
import com.google.accompanist.systemuicontroller.rememberSystemUiController

@Composable
fun RegisterScreen() {
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

        Column {
            Text(
                modifier = Modifier.offset(130.dp, 163.dp),
                style = TextStyle(
                    color = Color.White,
                    fontWeight = FontWeight(500),
                    fontFamily = FontFamily(Font(R.font.poppins_bold)),
                    fontSize = 25.sp
                ),
                text = "Enter email"
            )

        }

        MySquare(
            Modifier
                .size(100.dp)
                .offset(300.dp, 120.dp)
                .rotate(45f)
        )

        MyTriangle(
            Modifier
                .size(100.dp)
                .offset((-10).dp, 410.dp)
                .rotate(50f)
        )

        MyCircle(
            Modifier
                .size(100.dp)
                .offset((-20).dp, 200.dp)
                .rotate(50f)
        )

        Column {
            val userEmail by remember { mutableStateOf("Enter email") }

            Column {

                Spacer(modifier = Modifier.padding(20.dp))
                TextField(
                    modifier = Modifier
                        .offset(50.dp, 183.dp)
                        .height(50.dp)
                        .width(300.dp),
                    colors = TextFieldDefaults.textFieldColors(
                        textColor = Color.Black,
                        backgroundColor = Color.White
                    ),
                    value = userEmail,
                    onValueChange = { "" },
                    shape = RoundedCornerShape(5.dp),
                )
            }
        }


    }
}

