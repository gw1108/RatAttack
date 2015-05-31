using UnityEngine;
using System.Collections;

[RequireComponent(typeof(BoxCollider))]
public class KillTargetOnTrigger : MonoBehaviour {

	public EnemyDamageReceiver DamageReceiver;
	public PlayerHealth OtherDamageReceiver;
	public GameObject RequiredCollision;
	public float Damage = 100.0f;

	private AudioSource m_source;

	void Start()
	{
		m_source = GetComponent<AudioSource>();
	}

	public void OnTriggerEnter(Collider other)
	{
		//Debug.Log("Trigger enter " + other.gameObject);
		if (RequiredCollision == null || other.gameObject == RequiredCollision)
		{
			if (DamageReceiver)
			{
				DamageReceiver.ApplyDamage(Damage);
			}
			if (OtherDamageReceiver)
			{
				OtherDamageReceiver.ApplyDamage(Damage);
			}
			if (m_source)
			{
				m_source.Play();
			}
		}
	}
}
