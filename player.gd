extends CharacterBody2D

const JUMP_VELOCITY = -400.0
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
    velocity.y += gravity * delta
    move_and_slide()

func _input(event):
    if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
        velocity.y = JUMP_VELOCITY