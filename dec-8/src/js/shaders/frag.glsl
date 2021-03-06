// #pragma glslify: pnoise = require('glsl-noise/classic/3d');
varying vec2 vUv;
varying float noise;
uniform float time;

void main() {

  // compose the colour using the UV coordinate
  // and modulate it with the noise like ambient occlusion
  // vec3 color = vec3( vUv * ( 1. - 1.5 * noise ), 1.0 );
  // gl_FragColor = vec4( color.rgb, 1.0 );

  // black and white
  vec3 blackAndWhite = vec3(1. - 2.0 * noise);
  
  //
  float r = 1. - 2.0 * noise;
  float g = 0.0;
  float b = 1. - 1.0 * noise;
  vec3 foo = vec3(r, g, b);

  gl_FragColor = vec4( foo, 1.0 );

}