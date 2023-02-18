package com.example.brackethub_frontend.utils

import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.width
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.unit.dp
import com.example.brackethub_frontend.R

@Composable
fun BackArrow(
    modifier: Modifier
) {
    Image(
        modifier = modifier,
        painter = painterResource(id = R.drawable.back_arrow),
        contentDescription = stringResource(id = R.string.app_name),
    )
}