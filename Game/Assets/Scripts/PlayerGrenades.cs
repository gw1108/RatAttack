// ---------------------------------------------------------------------------------------------------------------------
// - Confidential Information                                                                                          -
// - Copyright © 2012-2015, Obsidian Entertainment, Inc.                                                               -
// - All rights reserved.                                                                                              -
// - Created by gwang at 5/30/2015 8:43:04 PM																			-
// ---------------------------------------------------------------------------------------------------------------------

using UnityEngine;
using UnityEngine.UI;

public class PlayerGrenades : MonoBehaviour
{
	public float throwStrength = 5.0f;
	public float upStr = 1.0f;
	public GameObject grenadePrefab;
	public int grenades = 0;
	public AudioClip GetGrenadeSFX;
	public float volumeScale = 0.85f;

	public Text grenadeNotific;
	public Text TutorialGrenade;
	public static bool seenGrenadesBefore = false;

	void Update()
	{
		if (Input.GetMouseButtonDown(1))
		{
			ThrowNade();
		}
	}

	private void ThrowNade()
	{
		if (grenades > 0)
		{
			grenades--;
			//throw
			GameObject go = (GameObject)Instantiate(grenadePrefab);
			go.SetActive(true);
			go.transform.position = transform.position + transform.forward * 3.0f;
			go.rigidbody.AddForce(Camera.main.transform.forward * throwStrength + transform.up * upStr);
		}
	}

	public void GetGrenades()
	{
		grenades++;
		GetComponent<AudioSource>().PlayOneShot(GetGrenadeSFX, volumeScale);
		GameObject gn = (GameObject)Instantiate(grenadeNotific.gameObject, grenadeNotific.transform.position, Quaternion.identity);
		gn.transform.parent = grenadeNotific.transform.parent;
		gn.SetActive(true);
		iTween.MoveTo(gn, iTween.Hash("position", gn.transform.position + Vector3.up * 100, "speed", 1.0f, "time", 3.0f));
		iTween.Destroy(gn, 3.5f);


		if (!seenGrenadesBefore)
		{
			seenGrenadesBefore = true;
			TutorialGrenade.gameObject.SetActive(true);
			Destroy(TutorialGrenade, 3.5f);
		}
	}

	void OnGUI()
	{
		GUI.Box(new Rect(120, Screen.height - 30, 100, 20), "Grenades: " + grenades);
	}
}
