// ---------------------------------------------------------------------------------------------------------------------
// - Confidential Information                                                                                          -
// - Copyright © 2012-2015, Obsidian Entertainment, Inc.                                                               -
// - All rights reserved.                                                                                              -
// - Created by gwang at 5/30/2015 3:26:23 PM																			-
// ---------------------------------------------------------------------------------------------------------------------

using UnityEngine;

public class OnHighlightWeaponEat : MonoBehaviour
{
	public AudioClip[] SFX;
	public float vol = 0.8f;
	public float heal = 10.0f;

	private HighlightWeapon highlightWeapon;

	private void Start()
	{
		highlightWeapon = GetComponent<HighlightWeapon>();
	}

	void InteractingWithSelf()
	{
		//if (Input.GetKeyDown(KeyCode.E) || Input.GetMouseButtonDown(0))
		//{
			//if (highlightWeapon.selected)
			//{
				var sfx = SFX[Random.Range(0,SFX.Length - 1)];
				PushThings.PlayerInstance.GetComponent<AudioSource>().volume = vol;
				PushThings.PlayerInstance.GetComponent<AudioSource>().PlayOneShot(sfx);

				Debug.Log("HEALING : " + heal);
				PlayerHealth.singleton.health = heal + PlayerHealth.singleton.health;
			//}
		//}
	}
}