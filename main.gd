extends Sprite2D

var score := [0, 0]

const PADDLE_SPEED : int = 300
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_ball_timer_timeout() -> void:
	$Ball.new_ball()


func _on_score_left_body_entered(body: Node2D) -> void:
	score[1] += 1
	$Hud/CPUScore.text = str(score[1])
	$BallTimer.start()

func _on_score_right_body_entered(body: Node2D) -> void:
	score[0] += 1
	$Hud/PlayerScore.text = str(score[0])
	$BallTimer.start()
