if (oCar.hp < 100) {
    oCar.hp += 30;
	
    if (oCar.hp > 100) {
        oCar.hp = 100;
    }
	instance_destroy();
} 
