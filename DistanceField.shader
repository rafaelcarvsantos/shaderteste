shader_type canvas_item;

vec3 criaDistanceField(vec2 center, float radius, vec2 uv){
	
	vec3 col = vec3(mod(distance(uv,center),radius)*10.0);
	return col;
	
}

 
void fragment() {
	vec3 col = criaDistanceField(vec2(0.5,0.5),0.02*abs(sin(TIME)),UV);
	col = col + criaDistanceField(vec2(0.1,0.1),0.02*abs(sin(TIME)),UV);
	col = col + criaDistanceField(vec2(0.9,0.9),0.02*abs(sin(TIME)),UV);
	col = col + criaDistanceField(vec2(0.1,0.9),0.02*abs(sin(TIME)),UV);
	
	
	COLOR = vec4(col,1.0);

}