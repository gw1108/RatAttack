using UnityEngine;
using System.Collections;
using System.Timers;
using System.Diagnostics;
using UnityEngine.UI;

public class PushThings : MonoBehaviour
{
	public static PushThings PlayerInstance
	{
		get;
		private set;
	}

	public float pushPower = 5.0f;
	public AudioClip SFX;
	public AudioClip FailSFX;
	public float timeBetweenSFX = 2.0f;
	public float volume = 0.5f;

	public Text uiWin;

	private Stopwatch timer;
	private AudioSource m_source;

	void Start()
	{
		m_source = GetComponent<AudioSource>();
		timer = new Stopwatch();
		timer.Start();

		PlayerInstance = this;
	}

	void Update()
	{
		
		if (Input.GetKey(KeyCode.Minus))
		{
			Time.timeScale = Mathf.Clamp01(Time.timeScale - 0.01f);
		}
		else if(Input.GetKey(KeyCode.Plus))
		{
			Time.timeScale = Mathf.Clamp01(Time.timeScale + 0.01f);
		}
	}

	void OnControllerColliderHit(ControllerColliderHit hit)
	{
		var killPlayer = hit.gameObject.GetComponent<KillTargetOnCollision>();
		if (killPlayer != null)
		{
			var health = GetComponent<PlayerHealth>();
			if (!PlayerHealth.dead)
			{
				health.ApplyFallDamage(100.0f);
				if (killPlayer.DeathSFX)
				{
					m_source.volume = killPlayer.vol;
					m_source.PlayOneShot(killPlayer.DeathSFX);
				}
			}
		}

		var win = hit.gameObject.GetComponent<YouWin>();
		if (win)
		{
			//you win display you win text!
			uiWin.gameObject.SetActive(true);
			PlayerHealth.singleton.takesDamage = false;
		}

		if (hit.collider.attachedRigidbody == null)
			return;

		// We dont want to push objects below us
		if (hit.moveDirection.y < -0.3f)
			return;

		if (hit.gameObject.transform.IsChildOf(transform))
			return;

		if (hit.collider.attachedRigidbody.isKinematic)
		{
			//UnityEngine.Debug.Log("PLAY FAIL SOUND");
			PlayAudioClipNonRepeat(FailSFX);
		}
		else
		{
			//UnityEngine.Debug.Log("Play scrape sounds");
			// Calculate push direction from move direction,
			// we only push objects to the sides never up and down
			var pushDir = new Vector3(hit.moveDirection.x, 0, hit.moveDirection.z);

			// If you know how fast your character is trying to move,
			// then you can also multiply the push velocity by that.

			// Apply the push
			hit.collider.attachedRigidbody.velocity = pushDir * pushPower;
			PlayAudioClipNonRepeat(SFX);
		}
	}

	private void PlayAudioClipNonRepeat(AudioClip sfx)
	{
		if (timer.ElapsedMilliseconds / 1000.0f > timeBetweenSFX)
		{
			timer.Reset();
			timer.Start();
			m_source.volume = volume;
			m_source.PlayOneShot(sfx);
		}
	}
}
