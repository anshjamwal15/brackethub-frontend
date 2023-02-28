package com.example.brackethub_frontend.ui.screens.splash

import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.material.Button
import androidx.compose.material.ButtonDefaults
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.SideEffect
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.Font
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.example.brackethub_frontend.R
import com.google.accompanist.systemuicontroller.rememberSystemUiController

@Composable
fun SplashScreen() {
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
        Image(
            modifier = Modifier
                .width(320.dp)
                .height(340.dp)
                .offset(35.dp, 190.dp),
            painter = painterResource(id = R.drawable.splash_illus),
            contentDescription = stringResource(id = R.string.app_name),
        )
    }

    Column(
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier
            .padding(27.dp)
            .offset(0.dp, 520.dp)
    ) {
        Text(
            style = TextStyle(
                color = Color.White,
                fontWeight = FontWeight(500),
                fontFamily = FontFamily(Font(R.font.poppins_bold))
            ),
            text = "WELCOME TO BRACKET HUB"
        )
        Spacer(modifier = Modifier.padding(5.dp))
        Column(horizontalAlignment = Alignment.CenterHorizontally) {
            Text(
                style = TextStyle(
                    color = Color.White,
                    fontFamily = FontFamily(Font(R.font.poppins_medium)),
                    fontWeight = FontWeight(200),
                    letterSpacing = 1.sp,
                ),
                textAlign = TextAlign.Center,
                text = "Communicate with teams, friends and " +
                        "individual like never before"
            )
        }
        Spacer(modifier = Modifier.padding(5.dp))
        Button(
            modifier = Modifier
                .fillMaxWidth()
                .height(45.dp),
            colors = ButtonDefaults.buttonColors(backgroundColor = Color(0xFF6C63FF)),
            onClick = { /*TODO*/ }
        ) {
            Text(
                style = TextStyle(
                    fontFamily = FontFamily(Font(R.font.poppins_medium)),
                    color = Color.White
                ),
                text = "Register"
            )
        }
        Spacer(modifier = Modifier.padding(10.dp))
        Button(
            modifier = Modifier
                .fillMaxWidth()
                .height(45.dp),
            colors = ButtonDefaults.buttonColors(backgroundColor = Color(0xFF737AAE)),
            onClick = { /*TODO*/ }
        ) {
            Text(
                style = TextStyle(
                    fontFamily = FontFamily(Font(R.font.poppins_medium)),
                    color = Color.White
                ),
                text = "Log In"
            )
        }
    }
}