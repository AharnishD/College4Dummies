boolean pixelShaderOn = false;
int pixelShaderDetail = 1; 

void pixelShader(){

    if(!pixelShaderOn) return;

    for (int y = 0; y < height; y+=pixelShaderDetail) {
        for (int x = 0; x < width; x+=pixelShaderDetail) {
            color c = get(x, y); 
            fill(c);
            println(red(c), green(c), blue(c));
            rect(x-pixelShaderDetail/2, y-pixelShaderDetail/2, pixelShaderDetail,pixelShaderDetail); 

        }
    }
}
