Shader "Custom/Distort"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
        _Wave1 ("Wave X (Amp, Freq, Speed, Offset)", Vector) = (0.02, 10, 1, 0)
        _Wave2 ("Wave Y (Amp, Freq, Speed, Offset)", Vector) = (0.02, 10, 1, 0)
        _SwirlStrength ("Swirl Strength", Float) = 5
        _SwirlRadius ("Swirl Radius", Float) = 0.4
        _SwirlCenter ("Swirl Center", Vector) = (0.5, 0.5, 0, 0)
        _Wave1Angle ("Wave1 Direction Angle", Float) = 0
        _Wave1DispAngle ("Wave1 Displacement Angle", Float) = 0
        _Wave1Disp ("Wave1 Displacement Strength", Float) = 1
        _Wave2Angle ("Wave2 Direction Angle", Float) = 90
        _Wave2DispAngle ("Wave2 Displacement Angle", Float) = 0
        _Wave2Disp ("Wave2 Displacement Strength", Float) = 1
        _RippleCenter ("Ripple Center (UV)", Vector) = (0.5, 0.5, 0, 0)
        _RippleStrength ("Ripple Strength", Float) = 0.02
        _RippleFrequency ("Ripple Frequency", Float) = 20
        _RippleSpeed ("Ripple Speed", Float) = 2
        _RippleFalloff ("Ripple Falloff", Float) = 5
        _FisheyeStrength ("Fisheye Strength", Float) = 0.3
        _FisheyeCenter ("Fisheye Center (UV)", Vector) = (0.5, 0.5, 0, 0)
        _FisheyeRadius ("Fisheye Radius", Float) = 0.75
        _MagnifyCenter ("Magnify Center (UV)", Vector) = (0.5, 0.5, 0, 0)
        _MagnifyRadius ("Magnify Radius", Float) = 0.25
        _MagnifyAmount ("Magnify Amount", Float) = 1.5
        _MagnifySoftness ("Magnify Edge Softness", Float) = 0.05
        _PolarCenter ("Polar Center (UV)", Vector) = (0.5, 0.5, 0, 0)
        _PolarRadius ("Polar Radius Scale", Float) = 1
        _PolarAngleScale ("Polar Angle Scale", Float) = 1
        _PolarAngleOffset ("Polar Angle Offset", Float) = 0
        _PolarBlend ("Polar Blend", Range(0,1)) = 1
        _FlyEyeDensity ("Fly Eye Density", Float) = 40
        _FlyEyeStrength ("Fly Eye Strength", Float) = 1
        _FlyEyeRadius ("Fly Eye Lens Radius", Float) = 0.45
        _GlitchStrength ("Glitch Strength", Float) = 0.5
        _GlitchSpeed ("Glitch Speed", Float) = 10
        _GlitchBlockSize ("Glitch Block Size", Float) = 40
        _GlitchRGB ("Glitch RGB Split", Float) = 0.005
        _GlitchRGBRotation ("Glitch RGB Split Rotation", Float) = 90
        
        _TrailStrength ("Trail Strength", Float) = 0.7
        _TrailLength ("Trail Length", Float) = 0.15
        _TrailSteps ("Trail Samples", Float) = 8
        
        _TrailStartSize ("Trail Start Size", Float) = 1
        _TrailEndSize ("Trail End Size", Float) = 0.2
        
        _TrailStartRot ("Trail Start Rotation", Float) = 0
        _TrailEndRot ("Trail End Rotation", Float) = 90
        
        _TrailHueShift ("Trail Hue Shift", Float) = 0.3
        _TrailDirection ("Trail Direction (UV)", Vector) = (1, 0, 0, 0)
        _TrailStartAlpha ("Trail Start Alpha", Range(0,1)) = 1
        _TrailEndAlpha ("Trail End Alpha", Range(0,1)) = 0
        _TrailTransformRot ("Trail Transform Rotation", Float) = 0
        _TrailTransformScale ("Trail Transform Scale", Float) = 1
        _TileModeX ("Tile Mode X (0 Off, 1 Tile, 2 Reflect)", Int) = 1
        _TileModeY ("Tile Mode Y (0 Off, 1 Tile, 2 Reflect)", Int) = 1
        _PerspPitch ("Perspective Pitch (X rot)", Float) = 0.6
        _PerspYaw   ("Perspective Yaw (Y rot)", Float) = 0
        _PerspRoll  ("Perspective Roll (Z rot)", Float) = 0
        
        _PerspDepth ("Perspective Depth", Float) = 1
        _PerspFOV   ("Perspective FOV", Float) = 1
        
        _PerspCenter ("Perspective Center (UV)", Vector) = (0.5, 0.5, 0, 0)
        _PerspPosX ("Perspective Position X", Float) = 0
        _PerspPosY ("Perspective Position Y", Float) = 0
        _PerspPosZ ("Perspective Position Z", Float) = 0
        
        _ShakeStrength ("Shake Strength", Float) = 0.5
        _ShakeSpeed ("Shake Speed", Float) = 20
        
        _ShakePos ("Shake Position Amount (UV)", Float) = 0.02
        _ShakeRot ("Shake Rotation Amount (Rad)", Float) = 0.1
        _ShakeScale ("Shake Scale Amount", Float) = 0.05
        
        _ShakeCenter ("Shake Center (UV)", Vector) = (0.5, 0.5, 0, 0)
        
        _ShakeType ("Shake Type (0 Noise, 1 Sine, 2 Square, 3 Linear)", Int) = 0
        _ShakeSeed ("Shake Random Seed", Float) = 0
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        Pass
        {
            HLSLPROGRAM
            #pragma vertex vert
            #pragma fragment frag

            #include "UnityCG.cginc"
            
            float _CustomTime;

            sampler2D _MainTex;
            float4 _MainTex_ST;
            float4 _Wave1; // x amp, y freq, z speed, w offset
            float4 _Wave2; // x amp, y freq, z speed, w offset
            float _SwirlStrength;
            float _SwirlRadius;
            float4 _SwirlCenter;
            float _Wave1Angle;
            float _Wave1Disp;
            float _Wave1DispAngle;
            float _Wave2Angle;
            float _Wave2Disp;
            float _Wave2DispAngle;
            float4 _RippleCenter;
            float _RippleStrength;
            float _RippleFrequency;
            float _RippleSpeed;
            float _RippleFalloff;
            float _FisheyeStrength;
            float4 _FisheyeCenter;
            float _FisheyeRadius;
            float4 _MagnifyCenter;
            float _MagnifyRadius;
            float _MagnifyAmount;
            float _MagnifySoftness;
            float4 _PolarCenter;
            float _PolarRadius;
            float _PolarAngleScale;
            float _PolarAngleOffset;
            float _PolarBlend;
            float _FlyEyeDensity;
            float _FlyEyeStrength;
            float _FlyEyeRadius;
            float _GlitchStrength;
            float _GlitchSpeed;
            float _GlitchBlockSize;
            float _GlitchRGB;
            float _GlitchRGBRotation;
            
            float _TrailStrength;
            float _TrailLength;
            float _TrailSteps;
            float _TrailStartSize;
            float _TrailEndSize;
            float _TrailStartRot;
            float _TrailEndRot;
            float _TrailHueShift;
            float4 _TrailDirection;
            float _TrailStartAlpha;
            float _TrailEndAlpha;
            float _TrailTransformRot;
            float _TrailTransformScale;
            int _TileModeX;
            int _TileModeY;
            float _PerspPitch;
            float _PerspYaw;
            float _PerspRoll;
            
            float _PerspDepth;
            float _PerspFOV;
            
            float4 _PerspCenter;
            
            float _PerspPosX;
            float _PerspPosY;
            float _PerspPosZ;
            
            float _ShakeStrength;
            float _ShakeSpeed;
            float _ShakePos;
            float _ShakeRot;
            float _ShakeScale;
            float4 _ShakeCenter;
            int _ShakeType;
            float _ShakeSeed;
            
            struct appdata
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
            };

            struct v2f
            {
                float2 uv : TEXCOORD0;
                float4 vertex : SV_POSITION;
            };

            v2f vert (appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.uv = TRANSFORM_TEX(v.uv, _MainTex);
                return o;
            }
            float hash(float n)
            {
                return frac(sin(n) * 43758.5453);
            }
            float3 RotateX(float3 p, float xy)
            {
                float a = radians(xy);
                float s = sin(a), c = cos(a);
                return float3(p.x, p.y * c - p.z * s, p.y * s + p.z * c);
            }
            
            float3 RotateY(float3 p, float xy)
            {
                float a = radians(xy);
                float s = sin(a), c = cos(a);
                return float3(p.x * c + p.z * s, p.y, -p.x * s + p.z * c);
            }
            
            float3 RotateZ(float3 p, float xy)
            {
                float a = radians(xy);
                float s = sin(a), c = cos(a);
                return float3(p.x * c - p.y * s, p.x * s + p.y * c, p.z);
            }
            
            float3 HueShift(float3 col, float shift)
            {
                float angle = shift * radians(180) * 2.0;
                float s = sin(angle);
                float c = cos(angle);
            
                float3x3 m = float3x3(
                    0.299 + 0.701*c + 0.168*s, 0.587 - 0.587*c + 0.330*s, 0.114 - 0.114*c - 0.497*s,
                    0.299 - 0.299*c - 0.328*s, 0.587 + 0.413*c + 0.035*s, 0.114 - 0.114*c + 0.292*s,
                    0.299 - 0.300*c + 1.250*s, 0.587 - 0.588*c - 1.050*s, 0.114 + 0.886*c - 0.203*s
                );
            
                return mul(m, col);
            }
            float TileCoord(float v, int mode)
            {
                if (mode == 0)       // No tiles
                    return (v+1 % 2)-1;
            
                if (mode == 1)       // Tile
                    return ((v-1) % 2)+1;
            
                // Reflect tile
                float f = ((v-1) % 2)+1;
                float d = 0;
                if (f < 0)
                    d = f * 2 + 1;
                if (f > 0.0)
                    d = (1 - f*2);
                return d;
            }
            
            // ---------- Noise Helpers ----------
            float Noise1D(float t)
            {
                return frac(sin(t * 127.1) * 43758.5453);
            }
            
            float SmoothNoise(float t)
            {
                float i = floor(t);
                float f = frac(t);
            
                float a = Noise1D(i);
                float b = Noise1D(i + 1.0);
            
                // Smoothstep interpolation
                float u = f * f * (3.0 - 2.0 * f);
                return lerp(a, b, u);
            }
            
            float ShakeSignal(float t, int type, float seed)
            {
                float v = 0;
            
                // Randomized phase & polarity
                float phase = hash(seed * 17.23) * 10.0;
                float flip  = lerp(-1.0, 1.0, hash(seed * 31.91));
            
                t += phase;
            
                if (type == 0)
                {
                    // Smooth Noise (unchanged randomness)
                    float i = floor(t);
                    float f = frac(t);
                    float a = hash(i * 127.1 + seed);
                    float b = hash((i + 1.0) * 127.1 + seed);
                    float u = f * f * (3.0 - 2.0 * f);
                    v = lerp(a, b, u);
                }
                else if (type == 1)
                {
                    // Sine (seeded phase)
                    v = sin(t * radians(180) * 2.0);
                }
                else if (type == 2)
                {
                    // Square (seeded phase)
                    v = step(0.0, sin(t * radians(180) * 2.0));
                }
                else
                {
                    // Linear (seeded saw)
                    v = frac(t);
                }
            
                // Normalize to -1 → 1
                return (v * 2.0 - 1.0) * flip;
            }

            fixed4 frag (v2f i) : SV_Target
            {
                float2 uv = i.uv;
                
                // ---------- Shake ----------
                float time = _Time.y * _ShakeSpeed;
                
                float shakeX = ShakeSignal(time + 10.0, _ShakeType, _ShakeSeed + 1.0);
                float shakeY = ShakeSignal(time + 20.0, _ShakeType, _ShakeSeed + 2.0);
                float shakeR = ShakeSignal(time + 30.0, _ShakeType, _ShakeSeed + 3.0);
                float shakeS = ShakeSignal(time + 40.0, _ShakeType, _ShakeSeed + 4.0);
                
                // Master strength
                shakeX *= _ShakeStrength;
                shakeY *= _ShakeStrength;
                shakeR *= _ShakeStrength;
                shakeS *= _ShakeStrength;
                
                // Centered UV
                float2 sCenter = _ShakeCenter.xy;
                float2 sUV = uv - sCenter;
                
                // ---- Scale Shake ----
                float scale = 1.0 + shakeS * _ShakeScale;
                sUV *= scale;
                
                // ---- Rotation Shake ----
                float rot = shakeR * _ShakeRot;
                float sr = sin(rot);
                float cr = cos(rot);
                
                sUV = float2(
                    sUV.x * cr - sUV.y * sr,
                    sUV.x * sr + sUV.y * cr
                );
                
                // ---- Position Shake ----
                sUV += float2(shakeX, shakeY) * _ShakePos;
                
                // Reassemble UV
                uv = sUV + sCenter;

                // ---------- True 3D Perspective Warp (Tile Aware) ----------
                
                // Screen space centered (-1 → 1)
                float2 suv = (uv - _PerspCenter.xy) * 2.0;
                
                // Camera ray
                float3 ray = normalize(float3(
                    suv.x * _PerspFOV,
                    suv.y * _PerspFOV,
                    1.0
                ));
                
                // Camera rotation
                ray = RotateX(ray, _PerspPitch);
                ray = RotateY(ray, _PerspYaw);
                ray = RotateZ(ray, _PerspRoll);
                
                // Plane definition
                float3 planeNormal = float3(0, 0, 1);
                float3 planePoint  = float3(
                    _PerspPosX,
                    _PerspPosY,
                    _PerspDepth + _PerspPosZ
                );
                
                // Ray–plane intersection
                float denom = dot(ray, planeNormal);
                denom = abs(denom);
                
                float PERt = dot(planePoint, planeNormal) / denom;
                float3 hit = ray * PERt;
                hit -= planePoint;

                // ---------- APPLY TILE MODES IN PLANE SPACE ----------
                hit.x = TileCoord(hit.x, _TileModeX);
                hit.y = TileCoord(hit.y, _TileModeY);
                
                // Convert plane space → UV
                uv = (hit.xy+31415)%2 * 0.5;
                
                // ---- Wave 1 ----
                float2 waveDir1 = float2(cos( radians(_Wave1Angle) ), sin(radians(_Wave1Angle)));
                float2 dispDir1 = float2(cos( radians(_Wave1DispAngle) ), sin(radians(_Wave1DispAngle)));
                
                float wave1Phase = dot(uv, waveDir1) * _Wave1.y + _CustomTime * _Wave1.z + _Wave1.w;
                
                float wave1 = sin(wave1Phase) * _Wave1.x * _Wave1Disp;

                // ---- Wave 2 ----
                float2 waveDir2 = float2(cos(radians(_Wave2Angle)), sin(radians(_Wave2Angle)));
                float2 dispDir2 = float2(cos(radians(_Wave2DispAngle)), sin(radians(_Wave2DispAngle)));
                
                float wave2Phase = dot(uv, waveDir2) * _Wave2.y + _CustomTime * _Wave2.z + _Wave2.w;
                
                float wave2 = sin(wave2Phase) * _Wave2.x * _Wave2Disp;
                
                // Apply displacement
                uv += dispDir1 * wave1;
                uv += dispDir2 * wave2;
                
                float2 Swirlcenter = _SwirlCenter.xy;
                
                float2 Swirloffset = uv - Swirlcenter;
                float Swirldist = length(Swirloffset);
                
                // 0 outside radius, 1 at center
                float Swirlt = saturate(1.0 - Swirldist / _SwirlRadius);
                
                // Smooth falloff (optional but looks better)
                Swirlt = smoothstep(0.0, 1.0, Swirlt);
                
                float Swirlangle = _SwirlStrength * Swirldist * Swirlt;
                
                float Swirls = sin(Swirlangle);
                float Swirlc = cos(Swirlangle);
                
                float2 Swirlrotated;
                Swirlrotated.x = Swirloffset.x * Swirlc - Swirloffset.y * Swirls;
                Swirlrotated.y = Swirloffset.x * Swirls + Swirloffset.y * Swirlc;
                
                uv = Swirlrotated + Swirlcenter;
                
                // ---------- Ripple ----------
                float2 rippleOffset = uv - _RippleCenter.xy;
                float rippleDist = length(rippleOffset);
                
                // Wave moving outward
                float ripplePhase =  rippleDist * _RippleFrequency - _CustomTime * _RippleSpeed;
                
                // Fade with distance
                float rippleFade = exp(-rippleDist * _RippleFalloff);
                
                // Final ripple
                float ripple = sin(ripplePhase) * _RippleStrength * rippleFade;
                
                // Push outward
                uv += normalize(rippleOffset) * ripple;
                
                // ---------- Fisheye ----------
                float2 center = _FisheyeCenter.xy;
                float2 delta = uv - center;
                
                float dist = length(delta);
                float radius = max(_FisheyeRadius, 0.0001);
                
                // Normalized distance
                float nd = saturate(dist / radius);
                
                // Fisheye curve
                float fish = nd * nd;
                
                // Apply distortion
                uv += delta * fish * _FisheyeStrength;
                
                // ---------- Magnify ----------
                float2 mCenter = _MagnifyCenter.xy;
                float2 mDelta = uv - mCenter;
                
                float mDist = length(mDelta);
                
                // Soft circular mask
                float mask = 1.0 - smoothstep(_MagnifyRadius - _MagnifySoftness, _MagnifyRadius, mDist);
                
                // Scale UVs toward center
                float zoom = lerp(1.0, 1.0 / _MagnifyAmount, mask);
                
                uv = mCenter + mDelta * zoom;
                
                // ---------- Polar Map ----------
                float2 p = uv - _PolarCenter.xy;
                
                float r = length(p) * _PolarRadius;
                float a = atan2(p.y, p.x) / (2 * UNITY_PI);
                
                // Normalize angle to 0–1
                a = frac(a + 0.5 + _PolarAngleOffset);
                
                // Polar UV
                float2 polarUV = float2(a * _PolarAngleScale, r);
                
                // Blend with original UV
                uv = lerp(uv, polarUV, _PolarBlend);
                
                // ---------- Fly's Eye ----------
                float2 flyUV = uv * _FlyEyeDensity;
                
                // Cell ID and local UV
                float2 cell = floor(flyUV);
                float2 cellUV = frac(flyUV) - 0.5;
                
                // Distance from lens center
                float d = length(cellUV);
                
                // Circular lens mask
                float lensMask = smoothstep( _FlyEyeRadius, _FlyEyeRadius - 0.05, d);
                
                // Sample from lens center
                float2 lensUV = (cell + 0.5) / _FlyEyeDensity;
                
                // Blend distorted UV
                uv = lerp(uv, lensUV, lensMask * _FlyEyeStrength);
                
                // ---------- Glitch ----------
                float t = floor(_CustomTime * _GlitchSpeed);
                
                // Block-based Y slicing
                float blockY = floor(uv.y * _GlitchBlockSize);
                
                // Random per block
                float rnd = hash(blockY + t);
                
                // Horizontal jump
                float glitchMask = step(0.5, rnd) * _GlitchStrength;
                
                float glitchOffset = (hash(blockY * 13.1 + t) - 0.5) * glitchMask * 0.1;
                
                // Apply horizontal tear
                float2 glitchUV = uv;
                glitchUV.x += glitchOffset;
                float glitchr = tex2D(_MainTex, glitchUV + float2(_GlitchRGB * sin(radians(_GlitchRGBRotation)), _GlitchRGB * cos(radians(_GlitchRGBRotation)) )).r;
                float glitchg = tex2D(_MainTex, glitchUV).g;
                float glitchb = tex2D(_MainTex, glitchUV - float2(_GlitchRGB * sin(radians(_GlitchRGBRotation)), _GlitchRGB * cos(radians(_GlitchRGBRotation)) )).b;
                
                fixed4 col = fixed4(glitchr, glitchg, glitchb, 1);
                uv = glitchUV;
                // ---------- Trail ----------
                float2 dir = normalize(_TrailDirection.xy);
                
                // Global transform rotation
                float ts = sin(radians(_TrailTransformRot));
                float tc = cos(radians(_TrailTransformRot));
                
                dir = float2(
                    dir.x * tc - dir.y * ts,
                    dir.x * ts + dir.y * tc
                );
                fixed4 trailCol = 0;
                float totalWeight = 0;
                
                for (int i = 0; i < _TrailSteps; i++)
                {
                    float TRAILt = i / max((_TrailSteps - 1), 1);
                
                    // Interpolated controls
                    float size = lerp(_TrailStartSize, _TrailEndSize, TRAILt) * _TrailTransformScale;
                    float rot = _TrailTransformRot + lerp(_TrailStartRot, _TrailEndRot, TRAILt);
                    float hue  = _TrailHueShift * TRAILt;
                
                    // Rotation
                    float s = sin(radians(rot));
                    float c = cos(radians(rot));
                    float2 rDir = float2(
                        dir.x * c - dir.y * s,
                        dir.x * s + dir.y * c
                    );
                
                    // Trail offset
                    float2 offset = -rDir * TRAILt * _TrailLength * size;
                
                    fixed4 sampleCol = tex2D(_MainTex, uv + offset);
                    
                    // Hue shift
                    sampleCol.rgb = HueShift(sampleCol.rgb, hue);
                    
                    // Alpha ramp
                    float trailAlpha = lerp(_TrailStartAlpha, _TrailEndAlpha, TRAILt);
                    sampleCol.a *= trailAlpha;
                    
                    // Weight (still controls brightness falloff)
                    float weight = (1.0 - TRAILt);
                    
                    trailCol.rgb += sampleCol.rgb * sampleCol.a * weight;
                    trailCol.a   += sampleCol.a * weight;
                    
                    totalWeight += weight;
                }
                
                trailCol.rgb /= max(trailCol.a, 0.0001);
                trailCol.a   /= max(totalWeight, 0.0001);
                
                // Blend respecting alpha
                col = lerp(col, trailCol, trailCol.a * _TrailStrength);
                return col;
            }
            ENDHLSL
        }
    }
}
