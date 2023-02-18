package com.example.brackethub_frontend.utils

import androidx.compose.foundation.Canvas
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Path
import androidx.compose.ui.platform.LocalDensity

@Composable
fun MyTriangle(
    modifier: Modifier
) {

    val density = LocalDensity.current.density

    val path = Path().apply {
        moveTo(50f * density, 0f)
        lineTo(100f * density, 100f * density)
        lineTo(0f, 100f * density)
        close()
    }

    Canvas(modifier = modifier, onDraw = {
        drawPath(path, Color(0xFF737AAE).copy(0.2f))
    })
}