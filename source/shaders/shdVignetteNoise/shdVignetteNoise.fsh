varying vec2 var_texcoord;
varying vec4 v_vColour;

uniform vec4 u_settings; //vignette inner circle size, vignette outter circle size, noise strength
uniform vec3 u_vignette_colour; //R,G,B
uniform float grayscale;
uniform float u_seed;

float random(vec3 _scale, float _seed)
{
    return fract(sin(dot(vec3(var_texcoord * u_seed, 1.0)+_seed, _scale))*43758.5453+_seed);
}

void main()
{
    vec4 base = texture2D( gm_BaseTexture, var_texcoord );
    float Avg = (base.r + base.g + base.b) / 3.0;
    vec4 Grayscale = vec4(Avg, Avg, Avg, base.a);
    base = mix(base, Grayscale, grayscale);

    float vignette = distance( vec2(0.5, 0.5), var_texcoord );
    vignette = u_settings.x - vignette * u_settings.y;
    vec3 vignette_colour = (u_vignette_colour/255.0) * vignette;

    gl_FragColor =  (v_vColour) * vec4(base.rgb * vignette_colour, base.a);
}

