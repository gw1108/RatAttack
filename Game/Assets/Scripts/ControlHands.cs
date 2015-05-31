// ---------------------------------------------------------------------------------------------------------------------
// - Confidential Information                                                                                          -
// - Copyright © 2012-2015, Obsidian Entertainment, Inc.                                                               -
// - All rights reserved.                                                                                              -
// - Created by gwang at 5/30/2015 6:17:19 PM																			-
// ---------------------------------------------------------------------------------------------------------------------

using UnityEngine;
using System.Diagnostics;

public class ControlHands : MonoBehaviour
{
	public LayerMask layerMask;
	private float dist = 2;
	private bool m_wasHolding = false;

	public void Update()
	{
		RaycastHit hit;
		var ray = Camera.main.ScreenPointToRay(new Vector3(Screen.width/2, Screen.height/2,0));

		if (Physics.Raycast(ray, out hit, dist, (int)layerMask))
		{
			var sel = hit.collider.GetComponent<SelectableWeapon>();
			//animate
			if (!m_wasHolding && sel == null && !hit.collider.isTrigger)
			{
				animation.Play("HoldUp");
				m_wasHolding = true;
			}
		}
		else
		{
			if (m_wasHolding)
			{
				m_wasHolding = false;
				animation.Play("HoldUpEnd");
			}
		}
	}
}
