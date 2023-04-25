varying vec2 vUv;
 float random (vec2 st) {
    return fract(sin(dot(st.xy,
                         vec2(12.9898,78.233)))*
        43758.5453123);
}
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
    //  float barX = step(0.4,mod(vUv.x*10.0,1.0));
    // barX *= step(0.8,mod(vUv.y*10.0,1.0));

    // float barY = step(0.8,mod(vUv.x*10.0 + 0.2,1.0));
    // barY *= step(0.4,mod(vUv.y*10.0-0.2,1.0));

    // float strength = barX + barY;

    //16
    // float strength = abs(vUv.x - 0.5);
    
    //17
    // float strength = min(abs(vUv.x - 0.5), abs(vUv.y - 0.5));
    
    //18
    // float strength = max(abs(vUv.x - 0.5), abs(vUv.y - 0.5));
    
    //19
    // float strength = step(0.2,max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));
    
    //20
    // float strength1 = step(0.2,max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));
    // float strength2 = 1.0-step(0.25,max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));
    
    // float strength = strength1*strength2;

    //21
    // float strength1 =    floor(vUv.x*10.0)/10.0;
    // float strength2 =    floor(vUv.y*10.0)/10.0;
    // float strength = strength1*strength2;

    //22
    // float strength = random(vUv);

    //23
    // vec2 gridUv = vec2(
    //      floor(vUv.x*10.0)/10.0,
    //       floor(vUv.y*10.0)/10.0
    // );
    // float strength = random(gridUv);

    //24
    // vec2 gridUv = vec2(
    //      floor(vUv.x*10.0)/10.0,
    //       floor(vUv.y*10.0+vUv.x*5.0)/10.0
    // );
    // float strength = random(gridUv);

    //25
    // float strength = length(vUv);
   
    //26
    // float strength = (length(vUv-0.5));
    // float strength = distance(vUv,vec2(0.5));
    
    //27
    float strength = 1.0-distance(vUv,vec2(0.5));


    gl_FragColor = vec4(strength, strength, strength, 1.0);

} 