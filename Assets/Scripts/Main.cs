using System.Diagnostics;
using System.IO;
using UnityEngine;
using UnityEngine.Video;
using System.Collections;
using Unity.Mathematics;

public class Main : MonoBehaviour
{
	public Material mat;
	public UnityEngine.Video.VideoPlayer videoPlayer;
    void Start()
    {
		mat = GetComponent<Renderer>().material;
		videoPlayer = gameObject.AddComponent<UnityEngine.Video.VideoPlayer>();
		videoPlayer.renderMode = UnityEngine.Video.VideoRenderMode.RenderTexture;
		RenderTexture videoRT = new RenderTexture(3840, 2160, 8);
		Camera.main.targetTexture = videoRT;
		Camera.main.Render();
		Camera.main.targetTexture = null;
    }
	
	void Update()
	{
		//mat.SetVector("_Wave", new Vector4(Time.time*1f, Time.time*100f, 10.0f, 0.0f) );
		//mat.SetVector("_Wave2", new Vector4(Time.time*1f, Time.time*100f, 10.0f, 0.0f) );
		//mat.SetFloat("_SwirlRadius", 5.0f );
		//mat.SetFloat("_SwirlStrength", Time.time*25.0f - 20.0f );
	}

}