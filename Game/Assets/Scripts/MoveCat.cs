// ---------------------------------------------------------------------------------------------------------------------
// - Confidential Information                                                                                          -
// - Copyright © 2012-2015, Obsidian Entertainment, Inc.                                                               -
// - All rights reserved.                                                                                              -
// - Created by gwang at 5/31/2015 1:23:20 PM																			-
// ---------------------------------------------------------------------------------------------------------------------

using UnityEngine;

public class MoveCat : MonoBehaviour
{
	public Transform moveObj;
	public Transform target;
	public float xweight = 1.0f;
	public float yweight = 1.0f;
	public float zweight = 1.0f;

	public void Update()
	{
		//move the cat according to target
		//only move along z axis
		//move along local
		//
		var vec = target.position - moveObj.position;
		vec = new Vector3(vec.x * xweight, vec.y * yweight, vec.z * zweight);
	}
}
