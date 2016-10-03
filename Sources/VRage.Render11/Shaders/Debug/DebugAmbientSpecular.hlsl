#include "Debug.hlsli"

void __pixel_shader(PostprocessVertex vertex, out float4 output : SV_Target0)
{
	SurfaceInterface input = read_gbuffer(vertex.position.xy);

	output = float4(ambient_specular(input.f0, input.gloss, input.N, input.V), 1);
}