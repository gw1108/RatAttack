using UnityEngine;
using System.Collections;

public class KillTargetOnTrigger : MonoBehaviour {

	public EnemyDamageReceiver DamageReceiver;
	public GameObject RequiredCollision;
	public float Damage;

	public void OnTriggerEnter(Collider other)
	{
		Debug.Log("Trigger enter " + other.gameObject);
		if (RequiredCollision == null || other.gameObject == RequiredCollision)
		{
			DamageReceiver.ApplyDamage(Damage);
		}
	}
}
