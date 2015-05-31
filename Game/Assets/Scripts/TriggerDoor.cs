// ---------------------------------------------------------------------------------------------------------------------
// - Confidential Information                                                                                          -
// - Copyright © 2012-2015, Obsidian Entertainment, Inc.                                                               -
// - All rights reserved.                                                                                              -
// - Created by gwang at 5/30/2015 5:50:32 PM																			-
// ---------------------------------------------------------------------------------------------------------------------

using UnityEngine;

public class TriggerDoor : MonoBehaviour
{
	public void OnTriggerEnter(Collider hit)
	{
		animation.Play("Open");
	}

	public void OnTriggerExit(Collider hit)
	{
		animation.Play("Close");
	}
}
