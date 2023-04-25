varying vec2 vUv;
void main()
{
    //7
    // float strength = mod(vUv.y*10.0,1.0);
 

    //8
    // float strength = mod(vUv.y*10.0,1.0);
    // strength = step(0.5,strength);


    // //9
    // float strength = mod(vUv.y*10.0,1.0);
    // strength = step(0.8,strength);
    
    
    // 10
    // float strength = mod(vUv.x*10.0,1.0);
    // strength = step(0.8,strength);
    

    // 11
    // float strength = step(0.8,mod(vUv.x*10.0,1.0));
    // strength += step(0.8,mod(vUv.y*10.0,1.0));

    //12
    // float strength = step(0.8,mod(vUv.x*10.0,1.0));
    // strength *= step(0.8,mod(vUv.y*10.0,1.0));

    //13
    // float strength = step(0.4,mod(vUv.x*10.0,1.0));
    // strength *= step(0.8,mod(vUv.y*10.0,1.0));

    //14
    // float barX = step(0.4,mod(vUv.x*10.0,1.0));
    // barX *= step(0.8,mod(vUv.y*10.0,1.0));

    // float barY = step(0.8,mod(vUv.x*10.0,1.0));
    // barY *= step(0.4,mod(vUv.y*10.0,1.0));

    // float strength = barY + barX;
    
    //15
     float barX = step(0.4,mod(vUv.x*10.0,1.0));
    barX *= step(0.8,mod(vUv.y*10.0,1.0));

    float barY = step(0.8,mod(vUv.x*10.0 + 0.2,1.0));
    barY *= step(0.4,mod(vUv.y*10.0-0.2,1.0));

    float strength = barX + barY;
    

    gl_FragColor = vec4(strength, strength, strength, 1.0);

} 