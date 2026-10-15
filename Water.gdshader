shader_type canvas_item;

uniform float wave_speed = 5.0;
uniform float wave_amplitude = 10.0;

void vertex() {
    // Animate the X position of the vertices based on a sine wave over TIME
    VERTEX.x += sin(TIME * wave_speed + VERTEX.y) * wave_amplitude;
	VERTEX.y += sin(TIME * wave_speed + VERTEX.y) * wave_amplitude;
}
