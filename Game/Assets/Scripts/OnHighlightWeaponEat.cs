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

	private HighlightWeapon highlightWeapon;

	private void Start()
	{
		highlightWeapon = GetComponent<HighlightWeapon>();
	}

	void Update()
	{
		if (Input.GetKeyDown(KeyCode.E))
		{
			if (highlightWeapon.selected)
			{
				var sfx = SFX[Random.Range(0,SFX.Length - 1)];
				PushThings.PlayerInstance.GetComponent<AudioSource>().volume = vol;
				PushThings.PlayerInstance.GetComponent<AudioSource>().PlayOneShot(sfx);
			}
		}
	}
}
