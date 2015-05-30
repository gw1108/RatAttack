// ---------------------------------------------------------------------------------------------------------------------
// - Confidential Information                                                                                          -
// - Copyright © 2012-2015, Obsidian Entertainment, Inc.                                                               -
// - All rights reserved.                                                                                              -
// - Created by gwang at 5/30/2015 3:20:04 PM																			-
// ---------------------------------------------------------------------------------------------------------------------

using UnityEngine;

public class Objective : MonoBehaviour
{

	public float delayDestro = 2.0f;

	public void Start()
	{
		Destroy(this.gameObject, delayDestro);
	}
}
