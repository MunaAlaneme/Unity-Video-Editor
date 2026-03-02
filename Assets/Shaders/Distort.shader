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
        
        _DistortedBlobMag ("DistortedBlob Magnitude", Float) = 50
        _DistortedBlobSpeed ("DistortedBlob Speed", Float) = 1
        _DistortedBlobEvolution ("DistortedBlob Evolution", Float) = 0
        _DistortedBlobSeed ("DistortedBlob Seed", Float) = 0
        _DistortedBlobAngle ("DistortedBlob Angle (Degrees)", Float) = 45
        _DistortedBlobSlack ("DistortedBlob Slack", Range(0,1)) = 0.25
        
        _TunnelPhase ("Tunnel Phase", Float) = 0
        _TunnelDepth ("Tunnel Depth", Range(0.01,10)) = 0.3
        _TunnelTwirl ("Tunnel Twirl (Degrees)", Float) = 0
        _TunnelWrap ("Tunnel Wrap", Range(1,8)) = 2
        _TunnelBoolean ("Tunnel?", Range(0,1)) = 1
        
        _TunnelMirror ("Tunnel Mirror (0 Off, 1 On)", Float) = 1
        
        _TinyPlanetStrength ("Tiny Planet Strength", Float) = 1
        _TinyPlanetRotation ("Tiny Planet Rotation", Float) = 0
        _TinyPlanetZoom ("Tiny Planet Zoom", Float) = 1
        _TinyPlanetCenter ("Tiny Planet Center (UV)", Vector) = (0.5,0.5,0,0)
        
        _TinyPlanet2_Radius ("Tiny Planet 2 Radius", Float) = 1.0
        _TinyPlanet2_Height ("Tiny Planet 2 Camera Height", Float) = 2.5
        _TinyPlanet2_Rotation ("Tiny Planet 2 Longitude Rotation", Float) = 0
        _TinyPlanet2_Tilt ("Tiny Planet 2 Latitude Tilt", Float) = 0
        _TinyPlanet2_Zoom ("Tiny Planet 2 Zoom", Float) = 1.0
        _TinyPlanet2_Center ("Tiny Planet 2 Center", Vector) = (0.5,0.5,0,0)
        
        _SceneRotX ("Scene Rotation X (Pitch)", Float) = 0
        _SceneRotY ("Scene Rotation Y (Yaw)", Float) = 0
        _SceneRotZ ("Scene Rotation Z (Roll)", Float) = 0
        
        _JitterAngle ("Jitter Angle (Degrees)", Float) = 45
        _JitterFreq ("Jitter Frequency", Float) = 30
        _JitterMag ("Jitter Magnitude (Pixels)", Float) = 25
        _JitterSeed ("Jitter Seed", Float) = 0
        _JitterSlack ("Jitter Slack", Range(0,1)) = 0
        _JitterZ ("Jitter Z", Float) = 0
        
        _DistortedBlob2Mag ("Distorted Blob 2 Magnitude (Pixels)", Float) = 50
        _DistortedBlob2Evolution ("Distorted Blob 2 Evolution", Float) = 0
        _DistortedBlob2Seed ("Distorted Blob 2 Seed", Float) = 0
        _DistortedBlob2Scatter ("Distorted Blob 2 Scatter", Range(0,2)) = 0.5
        
        _OscAngle ("Oscillate Angle (Degrees)", Float) = 45
        _OscFreq ("Oscillate Frequency", Float) = 2.0
        _OscMag ("Oscillate Magnitude (Pixels)", Float) = 25
        _OscType ("Oscillate Wave Type (0=Sine, 1=Triangle)", Float) = 0
        
        _Shake2Mag ("Shake 2 Magnitude (Pixels)", Float) = 50
        _Shake2Freq ("Shake 2 Frequency", Float) = 2.0
        _Shake2Evolution ("Shake 2 Evolution", Float) = 0
        _Shake2Seed ("Shake 2 Seed", Float) = 0
        _Shake2Angle ("Shake 2 Angle (Degrees)", Float) = 45
        _Shake2Slack ("Shake 2 Slack", Range(0,1)) = 0.25
        _Shake2Z ("Shake 2 Z Shake", Float) = 0
        _Shake2Speed ("Shake 2 Speed", Float) = 2
        _Shake2RotMag ("Shake 2 Rotation Magnitude (Degrees)", Float) = 0
        _Shake2RotSeed ("Shake 2 Rotation Seed Offset", Float) = 12.37
        
        _MirrorEnable ("Mirror Enable", Float) = 1
        _MirrorAngle ("Mirror Angle (Degrees)", Float) = 0
        _MirrorInvert ("Mirror Invert Side (0/1)", Float) = 0
        _Mirror2Enable ("Mirror2 Enable", Float) = 1
        _Mirror2Angle ("Mirror2 Angle (Degrees)", Float) = 0
        _Mirror2Invert ("Mirror2 Invert Side (0/1)", Float) = 0
        _Mirror3Enable ("Mirror3 Enable", Float) = 1
        _Mirror3Angle ("Mirror3 Angle (Degrees)", Float) = 0
        _Mirror3Invert ("Mirror3 Invert Side (0/1)", Float) = 0
        _Mirror4Enable ("Mirror4 Enable", Float) = 1
        _Mirror4Angle ("Mirror4 Angle (Degrees)", Float) = 0
        _Mirror4Invert ("Mirror4 Invert Side (0/1)", Float) = 0
        
        _KaleidoEnable ("Kaleidoscope Enable", Float) = 1
        _KaleidoMode ("Kaleidoscope Mode (0=Polar,1=Octagon,2=Square,3=Triangle)", Float) = 0
        _KaleidoCount ("Kaleidoscope Mirror Count", Float) = 10   // keep 10, but flexible
        _KaleidoRotation ("Kaleidoscope Rotation (Degrees)", Float) = 0
        _KaleidoScale ("Kaleidoscope Scale", Float) = 1
        _KaleidoInvert ("Kaleidoscope Invert", Float) = 0
    }
    SubShader
    {
        Tags
        {
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        
        Blend SrcAlpha OneMinusSrcAlpha
        ZWrite Off
        Cull Off
        
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
            
            float _TunnelPhase;
            float _TunnelDepth;
            float _TunnelTwirl;
            float _TunnelWrap;
            
            float _TunnelMirror;
            int _TunnelBoolean;
            
            float _TinyPlanetStrength;
            float _TinyPlanetRotation;
            float _TinyPlanetZoom;
            float4 _TinyPlanetCenter;
            float _TinyPlanet2_Radius;
            float _TinyPlanet2_Height;
            float _TinyPlanet2_Rotation;
            float _TinyPlanet2_Tilt;
            float _TinyPlanet2_Zoom;
            float4 _TinyPlanet2_Center;
            
            float _SceneRotX;
            float _SceneRotY;
            float _SceneRotZ;
            
            float _DistortedBlobMag;
            float _DistortedBlobSpeed;
            float _DistortedBlobEvolution;
            float _DistortedBlobSeed;
            float _DistortedBlobAngle;
            float _DistortedBlobSlack;
            
            float _JitterAngle;
            float _JitterFreq;
            float _JitterMag;
            float _JitterSeed;
            float _JitterSlack;
            float _JitterZ;
            
            float _DistortedBlob2Mag;
            float _DistortedBlob2Evolution;
            float _DistortedBlob2Seed;
            float _DistortedBlob2Scatter;
            
            float _OscAngle;
            float _OscFreq;
            float _OscMag;
            float _OscType;
            
            float _Shake2Mag;
            float _Shake2Freq;
            float _Shake2Evolution;
            float _Shake2Seed;
            float _Shake2Angle;
            float _Shake2Slack;
            float _Shake2Z;
            float _Shake2Speed;
            float _Shake2RotMag;
            float _Shake2RotSeed;
            
            float _MirrorEnable;
            float _MirrorAngle;
            float _MirrorInvert;
            float _Mirror2Enable;
            float _Mirror2Angle;
            float _Mirror2Invert;
            float _Mirror3Enable;
            float _Mirror3Angle;
            float _Mirror3Invert;
            float _Mirror4Enable;
            float _Mirror4Angle;
            float _Mirror4Invert;
            
            float _KaleidoEnable;
            float _KaleidoCount;
            float _KaleidoRotation;
            float _KaleidoInvert;
            float _KaleidoMode;
            float _KaleidoScale;
            
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
            
            float2 RotateCoord(float2 st, float angle)
            {
                float s = sin(angle);
                float c = cos(angle);
                return float2(
                    st.x * c - st.y * s,
                    st.x * s + st.y * c
                );
            }

            float hash(float n)
            {
                return frac(sin(n) * 43758.5453);
            }
            float RandomSigned(float n)
            {
                return hash(n) * 2.0 - 1.0;
            }
            
            float3 UVToDir(float2 uv)
            {
                float longitude = (uv.x - 0.5) * 2.0 * UNITY_PI;
                float latitude  = (uv.y - 0.5) * UNITY_PI;
            
                float3 dir;
                dir.x = cos(latitude) * sin(longitude);
                dir.y = sin(latitude);
                dir.z = cos(latitude) * cos(longitude);
            
                return dir;
            }
            float3 RotateXYZ(float3 v, float3 r)
            {
                // X (Pitch)
                float cx = cos(r.x);
                float sx = sin(r.x);
                v = float3(
                    v.x,
                    v.y * cx - v.z * sx,
                    v.y * sx + v.z * cx
                );
            
                // Y (Yaw)
                float cy = cos(r.y);
                float sy = sin(r.y);
                v = float3(
                    v.x * cy + v.z * sy,
                    v.y,
                   -v.x * sy + v.z * cy
                );
            
                // Z (Roll)
                float cz = cos(r.z);
                float sz = sin(r.z);
                v = float3(
                    v.x * cz - v.y * sz,
                    v.x * sz + v.y * cz,
                    v.z
                );
            
                return v;
            }
            float2 DirToUV(float3 dir)
            {
                float longitude = atan2(dir.x, dir.z);
                float latitude  = asin(dir.y);
            
                float2 uv;
                uv.x = longitude / (2.0 * UNITY_PI) + 0.5;
                uv.y = latitude / UNITY_PI + 0.5;
            
                return uv;
            }
            float2 VR360RotateUV(float2 uv)
            {
                float3 dir = UVToDir(uv);
            
                float3 rot = radians(float3(_SceneRotX, _SceneRotY, _SceneRotZ));
                dir = RotateXYZ(dir, rot);
            
                return DirToUV(normalize(dir));
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
                float segment = floor(t);
                float f = frac(t);
            
                // Random seeds per segment
                float seedA = seed + segment * 17.3;
                float seedB = seed + (segment + 1.0) * 17.3;
            
                // Base sine phases
                float phaseA = hash(seedA) * 6.28318;
                float phaseB = hash(seedB) * 6.28318;
            
                float sineA = sin(t * 6.28318 + phaseA);
                float sineB = sin(t * 6.28318 + phaseB);
            
                if (type == 1)
                {
                    // 🔥 Sine → Sine random lerp
                    float u = f * f * (3.0 - 2.0 * f); // smoothstep
                    return lerp(sineA, sineB, u);
                }
            
                // ---------- Other Types ----------
                float a = hash(segment * 13.7 + seed) * 2.0 - 1.0;
                float b = hash((segment + 1.0) * 13.7 + seed) * 2.0 - 1.0;
            
                if (type == 0)
                {
                    float u = f * f * (3.0 - 2.0 * f);
                    return lerp(a, b, u);
                }
                else if (type == 2)
                {
                    return (f < 0.5) ? a : b;
                }
                else
                {
                    return lerp(a, b, f);
                }
            }
            
            float2 TinyPlanetUV(float2 uv)
            {
                // Normalize around center
                float2 p = uv - _TinyPlanetCenter.xy;
            
                // Convert to polar
                float angle = atan2(p.y, p.x) + _TinyPlanetRotation;
                float radius = length(p);
            
                // Polar UV
                float2 polarUV;
                polarUV.x = angle / (radians(180)*2) + 0.5;
                polarUV.y = radius * _TinyPlanetZoom;
            
                // Wrap horizontally
                polarUV.x = frac(polarUV.x);
            
                // Invert radius (planet effect)
                polarUV.y = 1.0 - polarUV.y;
            
                // Blend with original UV
                return lerp(uv, polarUV, _TinyPlanetStrength);
            }
            
            bool RaySphereIntersect(
                float3 ro, float3 rd,
                float radius,
                out float t
            ){
                float b = dot(ro, rd);
                float c = dot(ro, ro) - radius * radius;
                float h = b * b - c;
                if (h < 0.0) return false;
                h = sqrt(h);
                t = -b - h;
                return t > 0.0;
            }
            
            float2 SphereUV(float3 p)
            {
                float longitude = atan2(p.z, p.x);
                float latitude  = asin(p.y);
            
                float2 uv;
                uv.x = longitude / (2.0 * UNITY_PI) + 0.5;
                uv.y = latitude / UNITY_PI + 0.5;
            
                return uv;
            }
            
            float2 TinyPlanet2UV(float2 uv)
            {
                // Screen → NDC
                float2 p = (uv - _TinyPlanet2_Center.xy) * 2.0;
                p *= _TinyPlanet2_Zoom;
                
                // Camera
                float3 ro = float3(0, _TinyPlanet2_Height, 0);
                float3 rd = normalize(float3(p.x, -1.0, p.y));
            
                // Tilt (latitude rotation)
                float ct = cos(_TinyPlanet2_Tilt);
                float st = sin(_TinyPlanet2_Tilt);
                rd = float3(
                    rd.x,
                    rd.y * ct - rd.z * st,
                    rd.y * st + rd.z * ct
                );
            
                // Sphere intersection
                float t;
                if (!RaySphereIntersect(ro, rd, _TinyPlanet2_Radius, t))
                    return uv; // outside planet
            
                float3 hit = ro + rd * t;
            
                // Longitude rotation
                float cl = cos(_TinyPlanet2_Rotation);
                float sl = sin(_TinyPlanet2_Rotation);
                hit.xz = float2(
                    hit.x * cl - hit.z * sl,
                    hit.x * sl + hit.z * cl
                );
            
                return SphereUV(normalize(hit));
            }
            
            float3 mod289(float3 x) { return x - floor(x / 289.0) * 289.0; }
            float4 mod289(float4 x) { return x - floor(x / 289.0) * 289.0; }
            
            float4 permute(float4 x) { return mod289((x * 34.0 + 1.0) * x); }
            
            float snoise(float3 v)
            {
                const float2 C = float2(1.0 / 6.0, 1.0 / 3.0);
                const float4 D = float4(0.0, 0.5, 1.0, 2.0);
            
                float3 i = floor(v + dot(v, C.yyy));
                float3 x0 = v - i + dot(i, C.xxx);
            
                float3 g = step(x0.yzx, x0.xyz);
                float3 l = 1.0 - g;
                float3 i1 = min(g.xyz, l.zxy);
                float3 i2 = max(g.xyz, l.zxy);
            
                float3 x1 = x0 - i1 + C.xxx;
                float3 x2 = x0 - i2 + C.yyy;
                float3 x3 = x0 - D.yyy;
            
                i = mod289(i);
                float4 p = permute(
                    permute(permute(i.z + float4(0.0, i1.z, i2.z, 1.0))
                    + i.y + float4(0.0, i1.y, i2.y, 1.0))
                    + i.x + float4(0.0, i1.x, i2.x, 1.0)
                );
            
                float4 j = p - 49.0 * floor(p / 49.0);
                float4 x_ = floor(j / 7.0);
                float4 y_ = floor(j - 7.0 * x_);
            
                float4 x = (x_ * 2.0 + 1.0) / 7.0 - 1.0;
                float4 y = (y_ * 2.0 + 1.0) / 7.0 - 1.0;
            
                float4 h = 1.0 - abs(x) - abs(y);
                float4 b0 = float4(x.xy, y.xy);
                float4 b1 = float4(x.zw, y.zw);
            
                float4 s0 = floor(b0) * 2.0 + 1.0;
                float4 s1 = floor(b1) * 2.0 + 1.0;
                float4 sh = -step(h, 0.0);
            
                float4 a0 = b0.xzyw + s0.xzyw * sh.xxyy;
                float4 a1 = b1.xzyw + s1.xzyw * sh.zzww;
            
                float3 g0 = float3(a0.xy, h.x);
                float3 g1 = float3(a0.zw, h.y);
                float3 g2 = float3(a1.xy, h.z);
                float3 g3 = float3(a1.zw, h.w);
            
                float4 norm = rsqrt(float4(
                    dot(g0, g0), dot(g1, g1),
                    dot(g2, g2), dot(g3, g3)
                ));
                g0 *= norm.x;
                g1 *= norm.y;
                g2 *= norm.z;
                g3 *= norm.w;
            
                float4 m = max(0.6 - float4(
                    dot(x0, x0), dot(x1, x1),
                    dot(x2, x2), dot(x3, x3)
                ), 0.0);
                m = m * m;
            
                return 42.0 * dot(m * m, float4(
                    dot(g0, x0), dot(g1, x1),
                    dot(g2, x2), dot(g3, x3)
                ));
            }
            
            float2 DistortedBlobUV(float2 uv)
            {
                float time = _DistortedBlobEvolution + (_Time.y * _DistortedBlobSpeed) - _DistortedBlobSpeed;
            
                float angle = radians(_DistortedBlobAngle);
                float s = sin(angle);
                float c = cos(angle);
            
                float dx = snoise(float3(
                    uv.x + _DistortedBlobSeed * 54623.245,
                    uv.y,
                    time + _DistortedBlobSeed * 49235.3198
                ));
            
                float dy = snoise(float3(
                    uv.x,
                    uv.y + _DistortedBlobSeed * 8723.5647,
                    time + 7468.329 + _DistortedBlobSeed * 19337.9404
                ));
            
                dx *= _DistortedBlobMag;
                dy *= _DistortedBlobMag * _DistortedBlobSlack;
            
                float rx = dx * c - dy * s;
                float ry = dx * s + dy * c;
            
                // Convert pixel shake → UV space
                return uv + float2(rx, ry) / _ScreenParams.xy;
            }
            
            float JitterTime()
            {
                float t = _Time.y;
                float step = 1.0 / max(_JitterFreq, 0.0001);
                return t - fmod(t, step);
            }
            
            float2 JitterUV(float2 uv)
            {
                float t = JitterTime();
            
                float angle = radians(_JitterAngle);
                float s = sin(angle);
                float c = cos(angle);
            
                // Primary jitter
                float m = snoise(float3(
                    t * 637.729,
                    0,
                    _JitterSeed * 394.417
                ));
            
                float2 offset;
                offset.x = s * _JitterMag * m;
                offset.y = c * _JitterMag * m;
            
                // Slack (perpendicular jitter)
                if (_JitterSlack > 0.001)
                {
                    float a2 = angle + UNITY_PI * 0.5;
                    float m2 = snoise(float3(
                        t * 951.217 + 149.231,
                        0,
                        _JitterSeed * 894.417 + 2773.908
                    ));
            
                    offset.x += sin(a2) * _JitterMag * m2 * _JitterSlack;
                    offset.y += cos(a2) * _JitterMag * m2 * _JitterSlack;
                }
            
                // Convert pixels → UV
                return uv + offset / _ScreenParams.xy;
            }
            
            float JitterZScale()
            {
                if (_JitterZ <= 0) return 1.0;
            
                float t = JitterTime();
                float zm = snoise(float3(
                    t * 637.729 + 241.386,
                    0,
                    _JitterSeed * 394.417 + 1729.361
                ));
            
                return 1.0 + zm * (_JitterZ * 0.001);
            }
            
            float2 RandomDisplaceUV(float2 uv)
            {
                // Convert UV → pixel space for spatial coherence
                float2 px = uv * _ScreenParams.xy;
            
                float dx = snoise(float3(
                    px.x * _DistortedBlob2Scatter / 50.0 + _DistortedBlob2Seed * 54623.245,
                    px.y * _DistortedBlob2Scatter / 500.0,
                    _DistortedBlob2Evolution + _DistortedBlob2Seed * 49235.3198
                ));
            
                float dy = snoise(float3(
                    px.x * _DistortedBlob2Scatter / 50.0,
                    px.y * _DistortedBlob2Scatter / 500.0 + _DistortedBlob2Seed * 8723.5647,
                    _DistortedBlob2Evolution + 7468.329 + _DistortedBlob2Seed * 19337.9404
                ));
            
                float2 offset = float2(dx, dy) * _DistortedBlob2Mag;
            
                // Convert pixels → UV
                return uv + offset / _ScreenParams.xy;
            }
            
            float TriangleWave(float x)
            {
                return abs(frac(x) * 2.0 - 1.0) * 2.0 - 1.0;
            }
            
            float2 OscillateUV(float2 uv)
            {
                float angle = radians(_OscAngle);
            
                float2 dir = float2(
                    sin(angle),
                    cos(angle)
                );
            
                float t = _Time.y;
            
                float phase;
                if (_OscType < 0.5)
                {
                    // Sine
                    phase = sin(t * _OscFreq * UNITY_PI);
                }
                else
                {
                    // Triangle
                    phase = TriangleWave(t * _OscFreq * 0.5);
                }
            
                float2 offset = dir * _OscMag * phase;
            
                // Convert pixels → UV
                return uv + offset / _ScreenParams.xy;
            }
            
            // ------------------------------------------------------------
            // 2D Simplex Noise
            // ------------------------------------------------------------
            
            float2 mod289X2(float2 x)
            {
                return x - floor(x / 289.0) * 289.0;
            }
            
            float3 mod289X3(float3 x)
            {
                return x - floor(x / 289.0) * 289.0;
            }
            
            float3 permute(float3 x)
            {
                return mod289X3((x * 34.0 + 1.0) * x);
            }
            
            float snoise2(float2 v)
            {
                const float4 C = float4(
                    0.211324865405187,   // (3.0 - sqrt(3.0)) / 6.0
                    0.366025403784439,   // 0.5 * (sqrt(3.0) - 1.0)
                   -0.577350269189626,   // -1.0 + 2.0 * C.x
                    0.024390243902439    // 1.0 / 41.0
                );
            
                // First corner
                float2 i = floor(v + dot(v, C.yy));
                float2 x0 = v - i + dot(i, C.xx);
            
                // Other corners
                float2 i1 = (x0.x > x0.y) ? float2(1.0, 0.0) : float2(0.0, 1.0);
            
                float4 x12 = float4(
                    x0.xy - i1 + C.xx,
                    x0.xy + C.zz
                );
            
                // Permutations
                i = mod289X2(i);
                float3 p = permute(
                    permute(i.y + float3(0.0, i1.y, 1.0)) +
                    i.x + float3(0.0, i1.x, 1.0)
                );
            
                // Gradients
                float3 m = max(
                    0.5 - float3(
                        dot(x0, x0),
                        dot(x12.xy, x12.xy),
                        dot(x12.zw, x12.zw)
                    ),
                    0.0
                );
            
                m = m * m;
                m = m * m;
            
                float3 x = 2.0 * frac(p * C.www) - 1.0;
                float3 h = abs(x) - 0.5;
                float3 ox = floor(x + 0.5);
                float3 a0 = x - ox;
            
                m *= 1.79284291400159 - 0.85373472095314 * (a0 * a0 + h * h);
            
                float3 g;
                g.x = a0.x * x0.x + h.x * x0.y;
                g.y = a0.y * x12.x + h.y * x12.y;
                g.z = a0.z * x12.z + h.z * x12.w;
            
                return 130.0 * dot(m, g);
            }
            
            float Shake2Phase()
            {
                return _Shake2Evolution + _Shake2Freq + (_Shake2Speed*_Time.y);
            }
            
            float2 Shake2UV(float2 uv)
            {
                float phase = Shake2Phase();
            
                float angle = radians(_Shake2Angle);
                float s = sin(angle);
                float c = cos(angle);
            
                float dx = snoise2(float2(
                    phase,
                    _Shake2Seed * 49235.3198
                ));
            
                float dy = snoise2(float2(
                    phase + 7468.329,
                    _Shake2Seed * 19337.9404
                ));
            
                dx *= _Shake2Mag;
                dy *= _Shake2Mag * _Shake2Slack;
            
                float rx = dx * c - dy * s;
                float ry = dx * s + dy * c;
            
                return uv + float2(rx, ry) / _ScreenParams.xy;
            }
            
            float Shake2ZScale()
            {
                if (_Shake2Z <= 0) return 1.0;
            
                float phase = Shake2Phase();
            
                float dz = snoise2(float2(
                    phase + 14192.277,
                    _Shake2Seed * 71401.1685
                ));
            
                return 1.0 + dz * (_Shake2Z * 0.001);
            }
            float2 RotateUV(float2 uv, float angle)
            {
                float s = sin(angle);
                float c = cos(angle);
            
                uv -= 0.5;
                uv = float2(
                    uv.x * c - uv.y * s,
                    uv.x * s + uv.y * c
                );
                uv += 0.5;
            
                return uv;
            }
            
            float Shake2Rotation()
            {
                if (_Shake2RotMag == 0) return 0;
            
                float phase = _Shake2Evolution + _Shake2Freq + (_Shake2Speed*_Time.y);
            
                float r = snoise2(float2(
                    phase + 9821.441,
                    _Shake2Seed * 91327.553 + _Shake2RotSeed
                ));
            
                return radians(r * _Shake2RotMag);
            }
            
            float2 MirrorUV(float2 uv, float angle, float enable, float invert)
            {
                if (enable < 0.5)
                    return uv;
            
                float angle1 = radians(angle);
            
                // Rotate into mirror space
                float2 p = RotateUV(uv, -angle1);
            
                // Centered coordinates
                float2 c = p - 0.5;
            
                // Choose side
                float side = (c.x >= 0.0) ? 1.0 : 0.0;
                if (invert > 0.5)
                    side = 1.0 - side;
            
                // Reflect chosen side
                if (side > 0.5)
                    c.x = -c.x;
            
                // Back to UV
                p = c + 0.5;
            
                // Rotate back
                return RotateUV(p, angle1);
            }
            
            float2 Rotate2D(float2 p, float a)
            {
                float s = sin(a);
                float c = cos(a);
                return float2(p.x * c - p.y * s, p.x * s + p.y * c);
            }
            
            float2 Fold(float2 p)
            {
                return abs(p);
            }
            
            float2 KaleidoPolar(float2 uv)
            {
                float2 p = (uv - 0.5) * _KaleidoScale;
                float r = length(p);
                float a = atan2(p.y, p.x) + radians(_KaleidoRotation);
            
                float slices = max(1.0, _KaleidoCount);
                float slice = 2.0 * UNITY_PI / slices;
            
                a = fmod(a, slice);
                a = abs(a - slice * 0.5);
            
                if (_KaleidoInvert > 0.5)
                    a = slice * 0.5 - a;
            
                return float2(cos(a), sin(a)) * r + 0.5;
            }
            
            float2 KaleidoOctagon(float2 uv)
            {
                float2 p = (uv - 0.5) * _KaleidoScale;
                p = Rotate2D(p, radians(_KaleidoRotation));
            
                p = abs(p);
            
                float k = 0.70710678; // sqrt(2)/2
                if (p.x + p.y > k)
                    p = float2(p.y, p.x);
            
                if (_KaleidoInvert > 0.5)
                    p = -p;
            
                return p + 0.5;
            }
            
            float2 KaleidoSquare(float2 uv)
            {
                float2 p = (uv - 0.5) * _KaleidoScale;
                p = Rotate2D(p, radians(_KaleidoRotation));
            
                p = abs(frac(p + 0.5) - 0.5);
            
                if (_KaleidoInvert > 0.5)
                    p = -p;
            
                return p + 0.5;
            }
            
            float2 KaleidoTriangle(float2 uv)
            {
                float2 p = (uv - 0.5) * _KaleidoScale;
                p = Rotate2D(p, radians(_KaleidoRotation));
            
                const float2 n = normalize(float2(1.0, 1.73205)); // 60°
                p = abs(p);
            
                float d = dot(p, n);
                if (d > 0.5)
                    p -= n * (d - 0.5) * 2.0;
            
                if (_KaleidoInvert > 0.5)
                    p = -p;
            
                return p + 0.5;
            }
            
            float2 KaleidoscopeUV(float2 uv)
            {
                if (_KaleidoEnable < 0.5)
                    return uv;
            
                if (_KaleidoMode < 0.5)
                    return KaleidoPolar(uv);
                else if (_KaleidoMode < 1.5)
                    return KaleidoOctagon(uv);
                else if (_KaleidoMode < 2.5)
                    return KaleidoSquare(uv);
                else
                    return KaleidoTriangle(uv);
            }

            fixed4 frag (v2f i) : SV_Target
            {
                float2 uv = i.uv;
                float2 uv1 = uv*2 - 1;                
                // Twirl logic
                float Tunnelangle = atan2(uv1.y, uv1.x);
                float Tunnelradius = length(uv1);
                Tunnelangle += _TunnelTwirl * radians(1) * Tunnelradius;
                
                // Apply distortion based on parameters
                uv1 = float2(_TunnelDepth / Tunnelradius + _TunnelPhase, Tunnelangle / (radians(180) * 2.0 / _TunnelWrap));
                
                // Mirror effect if applicable
                if (_TunnelMirror >= 0.5)
                {
                    uv1 = abs(frac(uv1) * 2.0 - 1.0);
                }
                else
                {
                    uv1 = frac(uv1);
                }
                if (_TunnelBoolean >= 0.5)
                {
                    uv = uv1;
                }
                
                uv = TinyPlanetUV(uv);
                uv = TinyPlanet2UV(uv);
                uv = VR360RotateUV(uv);
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
                uv = DistortedBlobUV(uv);
                
                // Z jitter (scale)
                uv = (uv - 0.5) * JitterZScale() + 0.5;
                
                // XY jitter
                uv = JitterUV(uv);
                
                uv = RandomDisplaceUV(uv);
                uv = OscillateUV(uv);
                
                // Z shake first (scale)
                uv = (uv - 0.5) * Shake2ZScale() + 0.5;
                // Rotation shake
                uv = RotateUV(uv, Shake2Rotation());
                // XY shake
                uv = Shake2UV(uv);
                uv = MirrorUV(uv, _MirrorAngle, _MirrorEnable, _MirrorInvert);
                uv = MirrorUV(uv, _Mirror2Angle, _Mirror2Enable, _Mirror2Invert);
                uv = MirrorUV(uv, _Mirror3Angle, _Mirror3Enable, _Mirror3Invert);
                uv = MirrorUV(uv, _Mirror4Angle, _Mirror4Enable, _Mirror4Invert);
                uv = KaleidoscopeUV(uv);

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
