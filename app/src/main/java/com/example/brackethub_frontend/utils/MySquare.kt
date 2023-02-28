package com.example.brackethub_frontend.utils

import androidx.compose.foundation.Canvas
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color

@Composable
fun MySquare(
    modifier: Modifier
) {
    Canvas(
        modifier = modifier,
        onDraw = {
            drawRect(Color(0xFF737AAE).copy(0.2f))
        }
    )
}