// ---------------------------------------------------------------------------------------------------------------------
// - Confidential Information                                                                                          -
// - Copyright © 2012-2015, Obsidian Entertainment, Inc.                                                               -
// - All rights reserved.                                                                                              -
// - Created by gwang at 5/30/2015 4:20:24 PM																			-
// ---------------------------------------------------------------------------------------------------------------------

using UnityEngine;
using System.Collections;

public class StartingWeapon : MonoBehaviour
{
	public GameObject selectedWeapon;

	void Start()
	{
		StartCoroutine("pickupTheGun");
	}

	IEnumerator pickupTheGun()
	{
		yield return new WaitForSeconds(0.05f);
		PickupWeapon.Pickup(gameObject);
	}
}
