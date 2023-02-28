package com.example.brackethub_frontend.ui.screens.home

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.SideEffect
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import com.google.accompanist.systemuicontroller.rememberSystemUiController

@Composable
fun HomeScreen() {
    val systemUiController = rememberSystemUiController()
    SideEffect {
        systemUiController.setNavigationBarColor(
            color = Color(0xFF2E325C).copy(10f),
            darkIcons = false,

        )
        systemUiController.setStatusBarColor(
            color = Color(0xFF2E325C),
            darkIcons = false
        )
    }

    Box(
        modifier = Modifier.background(Color(0xFF2E325C))
    ) {
        Column(
        ) {
            Canvas(
                modifier = Modifier
                    .width(83.dp)
                    .height(740.dp),
                onDraw = {
                    drawRect(Color(0xFF0B0B0C).copy(0.3f))
                }
            )
        }

        Row {
            Canvas(
                modifier = Modifier.width(400.dp).height(57.dp).offset(0.dp,740.dp),
                onDraw = {
                    drawRect(Color(0xFF0B0B0C).copy(0.5f))
                }
            )
        }
    }
    
    Text(text = "Hello world", color = Color.White)
}