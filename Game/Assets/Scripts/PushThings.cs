using UnityEngine;
using System.Collections;

public class PushThings : MonoBehaviour
{
	public float pushPower = 5.0f;
	public AudioClip SFX;
	public float volume = 0.5f;
	private AudioSource m_source;

	void Start()
	{
		m_source = GetComponent<AudioSource>();
	}

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
		if (!m_source.isPlaying)
		{
			m_source.clip = SFX;
			float oldVolume = m_source.volume;
			m_source.volume = volume;
			m_source.Play();
			m_source.volume = oldVolume;
			//m_source.PlayOneShot(SFX);
		}
	}
}
