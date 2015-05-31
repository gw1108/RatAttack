// ---------------------------------------------------------------------------------------------------------------------
// - Confidential Information                                                                                          -
// - Copyright © 2012-2015, Obsidian Entertainment, Inc.                                                               -
// - All rights reserved.                                                                                              -
// - Created by gwang at 5/31/2015 2:01:08 AM																			-
// ---------------------------------------------------------------------------------------------------------------------

using UnityEngine;

public class LookAt : MonoBehaviour
{
	public Transform target;
	public float damping = 0.5f;

	public float maxAngle = 30.0f;

	private Vector3 origFor;

	void Start()
	{
		origFor = transform.forward;
	}

	// Update is called once per frame
	void Update()
	{
		if (target != null)
		{
			if (maxAngle > Vector3.Angle(origFor, target.position - transform.position))
			{
				var lookPos = target.position - transform.position;
				lookPos.y = 0;
				var rotation = Quaternion.LookRotation(lookPos);
				transform.rotation = Quaternion.Slerp(transform.rotation, rotation, Time.deltaTime * damping);
			}
		}
	}
}
