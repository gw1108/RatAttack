using UnityEngine;
using System.Collections;

public class KillTargetOnTrigger : MonoBehaviour {

	public EnemyDamageReceiver DamageReceiver;
	public GameObject RequiredCollision;
	public float Damage;

	private AudioSource m_source;

	void Start()
	{
		m_source = GetComponent<AudioSource>();
	}

	public void OnTriggerEnter(Collider other)
	{
		Debug.Log("Trigger enter " + other.gameObject);
		if (RequiredCollision == null || other.gameObject == RequiredCollision)
		{
			DamageReceiver.ApplyDamage(Damage);
			if (m_source)
			{
				m_source.Play();
			}
		}
	}
}
