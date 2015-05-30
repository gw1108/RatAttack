using UnityEngine;
using System.Collections;

public class KillTargetOnTrigger : MonoBehaviour {

	public EnemyDamageReceiver DamageReceiver;
	public GameObject RequiredCollision;

	public void OnTriggerEnter(Collider other)
	{
		Debug.Log("Trigger enter");
	}
}
