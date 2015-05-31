// ---------------------------------------------------------------------------------------------------------------------
// - Confidential Information                                                                                          -
// - Copyright © 2012-2015, Obsidian Entertainment, Inc.                                                               -
// - All rights reserved.                                                                                              -
// - Created by gwang at 5/31/2015 12:43:08 PM																			-
// ---------------------------------------------------------------------------------------------------------------------

using UnityEngine;

public class MoveDirAtSpeed : MonoBehaviour
{

	public Vector3 direction = Vector3.up;
	public float speed = 1.0f;
	public float delay = 0.0f;
	public bool ignoreTimeScale = false;

	private void Start()
	{
		iTween.MoveTo(gameObject, iTween.Hash("position", transform.position + direction, "speed", speed, "delay", delay, "ignoretimescale", ignoreTimeScale));
	}
}
