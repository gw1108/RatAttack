// ---------------------------------------------------------------------------------------------------------------------
// - Confidential Information                                                                                          -
// - Copyright © 2012-2015, Obsidian Entertainment, Inc.                                                               -
// - All rights reserved.                                                                                              -
// - Created by gwang at 5/30/2015 8:17:50 PM																			-
// ---------------------------------------------------------------------------------------------------------------------

using UnityEngine;

public class StopEmitters : MonoBehaviour
{
	public void StopEmitter()
	{
		transform.parent = null;
		iTween.MoveTo(gameObject, iTween.Hash("speed", 1.0f, "position", Vector3.up * 100 + transform.position));
		iTween.Destroy(gameObject, 3.5f);
	}
}
