// ---------------------------------------------------------------------------------------------------------------------
// - Confidential Information                                                                                          -
// - Copyright © 2012-2015, Obsidian Entertainment, Inc.                                                               -
// - All rights reserved.                                                                                              -
// - Created by gwang at 5/30/2015 1:52:16 PM																			-
// ---------------------------------------------------------------------------------------------------------------------

using UnityEngine;

public class KillTargetOnCollision : MonoBehaviour
{
	public AudioClip DeathSFX;
	public float vol = 0.9f;
	public float delay = 0.0f;
	public float damage = 100.0f;
	public bool repeats = true;
}