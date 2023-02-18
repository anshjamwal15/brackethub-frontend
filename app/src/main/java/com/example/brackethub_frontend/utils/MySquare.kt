package com.example.brackethub_frontend.utils

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.size
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.rotate
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp

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