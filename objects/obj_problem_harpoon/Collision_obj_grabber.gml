if (other.grabbed) {
	other.immobilized = true;
	if (other.moving) {
		if (isnt_moving) {
			audio_play_sound(snd_strain, 1, false);
			isnt_moving = false;
		}
		progress++;	
		grabber = other;
	} else {
		isnt_moving = true;
	}
}