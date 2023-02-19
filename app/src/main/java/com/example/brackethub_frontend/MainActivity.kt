package com.example.brackethub_frontend

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.tooling.preview.Preview
import com.example.brackethub_frontend.ui.screens.home.HomeScreen
import com.example.brackethub_frontend.ui.screens.login.LoginScreen
import com.example.brackethub_frontend.ui.screens.register.RegisterScreen
import com.example.brackethub_frontend.ui.screens.register.RegisterScreen2
import com.example.brackethub_frontend.ui.screens.splash.SplashScreen
import com.example.brackethub_frontend.ui.theme.BrackethubfrontendTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            BrackethubfrontendTheme {
                // A surface container using the 'background' color from the theme
                Surface(
                    modifier = Modifier.fillMaxSize(),
                ) {
//                    SplashScreen()
//                    RegisterScreen()
//                    RegisterScreen2()
//                    LoginScreen()
                    HomeScreen()
                }
            }
        }
    }
}

@Preview(showBackground = true, showSystemUi = true)
@Composable
fun DefaultPreview() {
    BrackethubfrontendTheme {
        HomeScreen()
    }
}