/// @description MenuInitCredits();
function MenuInitCredits() {

	creditsColourTitle = c_purple;
	creditsColourSubtitle = c_fuchsia;
	creditsArray[0, 0] = "A Game By MD Wade";
	creditsArray[0, 1] = "(Jackson Drummond)";
	creditsArray[1, 0] = "Programming";
	creditsArray[1, 1] = "MD Wade";
	creditsArray[2, 0] = "Music";
	creditsArray[2, 1] = "MD Wade";
	creditsArray[3, 0] = "Art";
	creditsArray[3, 1] = "Dennaton Games#Colton Drummond#MD Wade";
	creditsArray[4, 0] = "Playtesting";
	creditsArray[4, 1] = "Linsey Smith#Colton Drummond#Rob Salmon#Gabe Bellew#Jackson Gomez#Axel Trippe#Alex Ward#Ryley Gregory#Colin Morris#Austin McClain#Wow!#Dawson Kilgore#Mango.#Will Kelley#Drue Walker#Justin Smith#Jonathan Delapaz#Coach Daniel Cook#Mr. Jason St. John";

	draw_set_font(fontCredits);
	creditsScaleSubtitle = 1.35;
	creditsScaleTitle = 1.8;
	creditsBorder = 48;
	creditsOffsetYMax = room_height;
	creditsOffsetY = creditsOffsetYMax;
	creditsSpeed = 0.8;
	creditsFinished = false;



}
