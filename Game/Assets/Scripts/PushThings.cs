using UnityEngine;
using System.Collections;

public class PushThings : MonoBehaviour
{
	public float pushPower = 5.0f;

	void OnControllerColliderHit(ControllerColliderHit hit)
	{
		if (hit.collider.attachedRigidbody == null || hit.collider.attachedRigidbody.isKinematic)
			return;

		// We dont want to push objects below us
		if (hit.moveDirection.y < -0.3f)
			return;

		// Calculate push direction from move direction,
		// we only push objects to the sides never up and down
		var pushDir = new Vector3(hit.moveDirection.x, 0, hit.moveDirection.z);

		// If you know how fast your character is trying to move,
		// then you can also multiply the push velocity by that.

		// Apply the push
		hit.collider.attachedRigidbody.velocity = pushDir * pushPower;
	}
}
