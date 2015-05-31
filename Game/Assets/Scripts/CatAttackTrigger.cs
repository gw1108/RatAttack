// ---------------------------------------------------------------------------------------------------------------------
// - Confidential Information                                                                                          -
// - Copyright © 2012-2015, Obsidian Entertainment, Inc.                                                               -
// - All rights reserved.                                                                                              -
// - Created by gwang at 5/30/2015 11:55:48 PM																			-
// ---------------------------------------------------------------------------------------------------------------------

using UnityEngine;
using System.Diagnostics;

public class CatAttackTrigger : MonoBehaviour
{
	public Animation catAnim;
	public string attack = "CatSitAttack";
	public float attackSpeed = 1.0f;
	public float attackDuration = 1.0f;
	public string idle = "SitIdle";

	private Stopwatch timer = new Stopwatch();

	public void OnTriggerEnter(Collider other)
	{
		if (other.gameObject.layer == LayerMask.NameToLayer("Player"))
		{
			CatAttack();
			timer.Reset();
			timer.Start();
		}
	}

	private void CatAttack()
	{
		catAnim[attack].speed = attackSpeed;
		catAnim.PlayQueued(attack, QueueMode.PlayNow);
		catAnim.PlayQueued(idle);
	}

	public void OnTriggerStay(Collider other)
	{
		if (timer.ElapsedMilliseconds / 1000.0f > attackDuration && other.gameObject.layer == LayerMask.NameToLayer("Player") && !PlayerHealth.dead)
		{
			timer.Reset();
			timer.Start();
			CatAttack();
		}
	}
}
