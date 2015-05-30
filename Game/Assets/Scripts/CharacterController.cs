using UnityEngine;
using System.Collections;

public class CharacterController : MonoBehaviour {

	public float Speed = 5.0f;

	// Use this for initialization
	private void Start () {
	
	}
	
	// Update is called once per frame
	private void Update () {
		//wasd controls
		float horizontal = Input.GetAxis("Horizontal");
		float vertical = Input.GetAxis("Vertical");

		float jump = Input.GetAxis("Jump");
	}
}
