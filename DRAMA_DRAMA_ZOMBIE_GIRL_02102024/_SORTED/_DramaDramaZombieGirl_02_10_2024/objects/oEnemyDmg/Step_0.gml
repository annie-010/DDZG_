if _used==true {
instance_destroy();
}

var _dark = instance_place(x,y,odarksectionroom) 


	if _dark!=noone {
		if _dark.visible==true { 
			visible=false;
			} else if _dark.visible==false {
			visible=true;
			}
	}