// ---------------------------------------------------------------------------------------------------------------------
// - Confidential Information                                                                                          -
// - Copyright © 2012-2015, Obsidian Entertainment, Inc.                                                               -
// - All rights reserved.                                                                                              -
// - Created by gwang at 5/30/2015 5:50:32 PM																			-
// ---------------------------------------------------------------------------------------------------------------------

using UnityEngine;

public class TriggerDoor : MonoBehaviour
{
	public Animation anim;
	bool open = true;
	bool first = true;

	public void OnTriggerEnter(Collider hit)
	{
		if (!open)
		{
			open = true;
			anim.Play("Open");
			if (first)
			{
				transform.parent = transform.parent.parent;
				first = false;
			}
		}
	}

	public void OnTriggerExit(Collider hit)
	{
		if (open)
		{
			open = false;
			if (first)
			{
				transform.parent = transform.parent.parent;
				first = false;
			}
		}
	}
}
