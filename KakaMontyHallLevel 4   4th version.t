%Name: Hawaiz Kaka
%Date: Thursday, May 12th, 2016
%Course: ICS201-03
%Program Description: A simulation of the "Let's Make a Deal" game


%Variable Description
%mouse_x                holds the x values/coordinates of the mouse
%mouse_y                holds the y values/coordinates of the mouse
%button                 tells the computer if a button on the mouse is up or down
%left                   tells the computer if the left button on the mouse is up or down
%right                  tells the computer if the right button on the mouse is up or down
%middle                 tells the computer if the middle button/scroll wheel on the mouse is up or down
%doortriangle_x         holds the x values for a Draw.FillPolygon used to create the triangles on each of the three doors
%doortriangle_y         holds the y values for a Draw.FillPolygon used to create the triangles on each of the three doors
%door_one_x1            holds the x values for one of the two separating "doors" in door one
%door_one_x2            holds the x values for one of the two separating "doors" in door one
%door_two_x1            holds the x values for one of the two separating "doors" in door two
%door_one_x2            holds the x values for one of the two separating "doors" in door two
%door_three_x1          holds the x values for one of the two separating "doors" in door three
%door_three_x2          holds the x values for one of the two separating "doors" in door three
%door_one               boolean that is true when the first door is chosen
%door_two               boolean that is true when the second door is chosen
%door_three             boolean that is true when the third door is chosen
%doorsidetriangle1_x    holds the x values for the two triangles on either side of each of the three doors
%doorsidetriangle1_y    holds the y values for the two triangles on either side of each of the three doors
%doorsidetriangle2_x    holds the x values for the triangle on top of each of the three doors
%doorsidetriangle2_y    holds the y values for the triangle on top of each of the three doors
%hostshirt_x            holds the x values for the white shirt underneath the hosts suit
%hostshirt_y            holds the y values for the white shirt underneath the hosts suit
%hosttie_x              holds the x values for the tie that the host is wearing
%hosttie_y              holds the y values for the tie that the host is wearing
%stage_x                holds the x values for the "trapezoid" part of the stage
%stage_y                holds the y values for the "trapezoid" part of the stage
%speechbubble_x         holds the x values for the triangle part of the speech bubble
%speechbubble_y         holds the y values for the triangle part of the speech bubble
%spotlightrays1_x       holds the x values for the lightrays from one of the lights that shine to the stage
%spotlightrays1_y       holds the y values for the lightrays from one of the lights that shine to the stage
%spotlightrays2_x       holds the x values for the lightrays from the other light that shines to the stage
%spotlightrays2_y       holds the y values for the lightrays from the other light that shines to the stage
%font1                  font written in Arial with a size of 10
%font2                  font written in Arial with a varying size that depends on the font_size varibale
%font3                  font written in Arial with a size of 50
%font4                  font written in Arial with a size of 30
%font5                  font written in Arial with a size of 70
%font6                  font written in Arial with a size of 60
%font_size              changes the font size of the font in the variable font2
%pic_one                holds the imaage stage.jpg
%pic_two                holds the image Instructions.jpg
%pic_three              holds the image Instructions Header.jpg
%pic_four               holds the image GOAT.bmp
%pic_five               holds the sequences of images starting with Ferrari Sequence0001.jpg
%pic_six                holds the image Deer.jpg
%pic_seven              holds the sequences of images starting with Ferrari Squence2_0001.jpg
%pic_eight              holds the sequences of images starting with Ferrari Squence3_0001.jpg
%picnum                 holds what image in a sequence of photos that a loop is on
%pic_y                  holds the y value for a picture (used for the Instructions.jpg image)
%prize                  holds a random integer that chooses what door the car is behinf
%random_door            holds a random integer that chooses what door to open when the user chooses the same door as where the prize is
%spotlight_x            holds the x value for the where the rays of the first spotlight hit the stage
%spotlight_x            holds the x value for the where the rays of the other spotlight hit the stage

%Constant Description
%OVERLAP_ONE_X          holds the x value to overlap the side doors ontop and beside door one when a door moves
%OVERLAP_TWO_X          holds the x value to overlap the side doors ontop and beside door two when a door moves
%OVERLAP_THREE_X        holds the x value to overlap the side doors ontop and beside door three when a door moves
%PICNUM_RESET           resets the picnum variable back to zero so it can be used for other .jpg sequences
%HOST_X                 holds the x value for the host
%HOST_Y                 holds the y value for the host
%DOOR_ONE_CLOSED        resets door one to closed
%DOOR_TWO_CLOSED        resets door two to closed
%DOOR_THREE_CLOSED      resets door three to closed

%setting the screen to 800 by 600 pixels
View.Set ("graphics:800;600;offscreenonly")
%setting the code so that program will differentiate between buttons pressed
buttonchoose ("multibutton")


%Variable Declaration
var doortriangle_x, doortriangle_y : array 1 .. 3 of int
var mouse_x, mouse_y, button, left, middle, right : int
var door_one_x1 : int
var door_one_x2 : int
var door_two_x1 : int
var door_two_x2 : int
var door_three_x1 : int
var door_three_x2 : int
var door_one, door_two, door_three : boolean := false
var doorsidetriangle1_x, doorsidetriangle1_y : array 1 .. 3 of int
var doorsidetriangle2_x, doorsidetriangle2_y : array 1 .. 3 of int
var hostshirt_x, hostshirt_y : array 1 .. 3 of int
var hosttie_x : array 1 .. 3 of int
var hosttie_y : array 1 .. 3 of int
var stage_x, stage_y : array 1 .. 4 of int
var speechbubble_x : array 1 .. 3 of int := init (650, 610, 660)
var speechbubble_y : array 1 .. 3 of int := init (325, 285, 280)
var spotlightrays1_x, spotlightrays1_y : array 1 .. 3 of int
var spotlightrays2_x, spotlightrays2_y : array 1 .. 3 of int
var font1 : int
var font2 : int
var font3 : int
var font4 : int
var font5 : int
var font6 : int
var font_size : int
var font_x, font_y : int
var pic_one : int
var pic_two : int
var pic_three : int
var pic_four : int
var pic_five : int
var pic_six : int
var pic_seven : int
var pic_eight : int
var picnum : int
var pic_y : int
var random_door, prize : int
var spotlight_x, spotlight2_x : int

%Constant Declaration
const OVERLAP_ONE_X : int := 150
const OVERLAP_TWO_X : int := 400
const OVERLAP_THREE_X : int := 650
const PICNUM_RESET : int := 0
const HOST_X : int := 725
const HOST_Y : int := 225
const DOOR_ONE_CLOSED : int := 150
const DOOR_TWO_CLOSED : int := 400
const DOOR_THREE_CLOSED : int := 650



%Variable Assignment
door_one_x1 := 150
door_one_x2 := 150
door_two_x1 := 400
door_two_x2 := 400
door_three_x1 := 650
door_three_x2 := 650
font_size := 500
font1 := Font.New ("Arial:10")
font2 := Font.New ("Arial:" + intstr (font_size))
font3 := Font.New ("Arial:50")
font4 := Font.New ("Arial:30")
font5 := Font.New ("Arial:70")
font6 := Font.New ("Arial:60")
prize := Rand.Int (1, 3)
random_door := Rand.Int (1, 2)
pic_one := Pic.FileNew ("stage.jpg")
pic_two := Pic.FileNew ("Instructions.jpg")
pic_three := Pic.FileNew ("Instructions Header.jpg")
pic_four := Pic.FileNew ("GOAT.bmp")
pic_six := Pic.FileNew ("Deer.jpg")
picnum := PICNUM_RESET
font_x := maxx div 2
font_y := maxy div 2
pic_y := -960
spotlight_x := 500
spotlight2_x := 300



%procedure that draws the host
procedure draw_host (x, y : int)
    %assigning values to variables to draw polygons
    hostshirt_x (1) := x - 10
    hostshirt_x (2) := x + 10
    hostshirt_x (3) := x
    hostshirt_y (1) := y + 50
    hostshirt_y (2) := y + 50
    hostshirt_y (3) := y

    hosttie_x (1) := x - 5
    hosttie_x (2) := x + 5
    hosttie_x (3) := x
    hosttie_y (1) := y + 50
    hosttie_y (2) := y + 50
    hosttie_y (3) := y + 40

    %body/suit
    drawfillbox (x - 25, y - 40, x + 25, y + 50, blue)
    Draw.FillPolygon (hostshirt_x, hostshirt_y, 3, white)
    Draw.FillPolygon (hosttie_x, hosttie_y, 3, black)
    %draws lines to show creases on bottom of suit
    drawline (x, y, x, y - 30, black)
    drawline (x + 25, y - 30, x - 25, y - 30, black)
    drawline (x + 25, y - 30, x - 25, y - 30, black)
    %reasign values to make second part of tie
    hosttie_y (1) := y + 20
    hosttie_y (2) := y + 20
    hosttie_y (3) := y + 40
    Draw.FillPolygon (hosttie_x, hosttie_y, 3, black)
    %reasign values to make third part of tie
    hosttie_y (1) := y + 20
    hosttie_y (2) := y + 20
    hosttie_y (3) := y
    Draw.FillPolygon (hosttie_x, hosttie_y, 3, black)

    %arms
    Draw.ThickLine (x - 8, y, x - 38, y + 20, 17, black) % shows arm against suit
    Draw.ThickLine (x + 8, y, x + 38, y + 20, 17, black) % shows arm against suit
    Draw.ThickLine (x - 25, y + 45, x - 38, y + 20, 15, blue)
    Draw.ThickLine (x - 8, y, x - 38, y + 20, 15, blue)
    Draw.ThickLine (x + 25, y + 45, x + 38, y + 20, 15, blue)
    Draw.ThickLine (x + 8, y, x + 38, y + 20, 15, blue)

    %legs
    drawfillbox (x - 25, y - 100, x - 5, y - 35, blue)
    drawfillbox (x + 25, y - 100, x + 5, y - 35, blue)
    drawfillbox (x - 5, y - 100, x - 27, y - 110, brown)
    drawfillbox (x + 5, y - 100, x + 27, y - 110, brown)
    drawfillarc (x - 27, y - 110, 10, 10, 90, 180, brown)
    drawfillarc (x + 27, y - 110, 10, 10, 0, 90, brown)


    %face
    drawfilloval (x, y + 75, 30, 30, 67)
    drawfillarc (x, y + 90, 30, 15, 0, 180, black)
    drawfillarc (x - 20, y + 80, 10, 15, 90, 180, black)
    drawfillarc (x + 20, y + 80, 10, 15, 0, 90, black)
    drawfilloval (x - 8, y + 77, 5, 5, black)
    drawfilloval (x + 8, y + 77, 5, 5, black)
    drawfillarc (x, y + 65, 15, 10, 180, 0, black)
end draw_host


%procedure that draws one of triangles on the doors
procedure doortriangle (x, y, col : int)
    doortriangle_x (1) := x
    doortriangle_x (2) := x
    doortriangle_x (3) := x - 25
    doortriangle_y (1) := y + 75
    doortriangle_y (2) := y - 75
    doortriangle_y (3) := y
    Draw.FillPolygon (doortriangle_x, doortriangle_y, 3, col)
end doortriangle

%procedure that does the same thing as doortriangle but inverses the triangles
procedure reversedoortriangle (x, y, col : int)
    doortriangle_x (1) := x
    doortriangle_x (2) := x
    doortriangle_x (3) := x + 25
    doortriangle_y (1) := y + 75
    doortriangle_y (2) := y - 75
    doortriangle_y (3) := y
    Draw.FillPolygon (doortriangle_x, doortriangle_y, 3, col)
end reversedoortriangle

%procedure that draws one of the doors
procedure door (x1, x2 : int)

    %draws door
    drawfillbox (x1 - 100, 250, x1, 400, 8)
    drawfillbox (x2, 250, x2 + 100, 400, 8)

    %draws traingles on the doors
    doortriangle (x1 - 75, 325, 79)
    doortriangle (x1 - 50, 325, 137)
    doortriangle (x1 - 25, 325, white)
    doortriangle (x1, 325, 89)
    reversedoortriangle (x2, 325, 42)
    reversedoortriangle (x2 + 25, 325, 137)
    reversedoortriangle (x2 + 50, 325, 6)
    reversedoortriangle (x2 + 75, 325, 79)
    drawfilloval (x2, 325, 15, 15, white)

    %draws the door number on respective door
    if x1 >= 50 and x2 <= 250 then
	Draw.Text ("1", x2 - 5, 320, font1, black)
    elsif x1 >= 300 and x2 <= 500 then
	Draw.Text ("2", x2 - 5, 320, font1, black)
    elsif x1 >= 550 and x2 <= 750 then
	Draw.Text ("3", x2 - 5, 320, font1, black)
    end if
end door

%procedure that draws the black background behind a door when it opens
procedure doorbackground (x : int)
    drawfillbox (x - 100, 250, x + 100, 400, black)
end doorbackground

%procedure that draws overlaps in the spaces between the doors
%   makes sure that that the doors don't overlap each other
procedure drawoverlap ()
    drawfillbox (0, 250, 50, 400, 68)
    drawfillbox (250, 250, 300, 400, 68)
    drawfillbox (500, 250, 550, 400, 68)
    drawfillbox (750, 250, 800, 400, 68)
end drawoverlap

%procedure that draws the stage
procedure stage ()
    %assigns values to the trapezoid shape part of the stage
    stage_x (1) := 0
    stage_x (2) := maxx
    stage_x (3) := 750
    stage_x (4) := 50

    stage_y (1) := 150
    stage_y (2) := 150
    stage_y (3) := 250
    stage_y (4) := 250
    %draws stage
    drawfillbox (0, 100, maxx, 150, black)
    Draw.FillPolygon (stage_x, stage_y, 4, black)

    %draws doors
    door (door_one_x1, door_one_x2)
    door (door_two_x1, door_two_x2)
    door (door_three_x1, door_three_x2)

    %draws overlap
    drawoverlap
end stage

%procedure that draws the curtains in front of the door
procedure drawcurtains ()
    %draws the curtains
    drawfillarc (0, 625, 50, 400, 270, 0, red)
    drawfillarc (0, 0, 50, 200, 0, 90, red)
    drawfilloval (0, 215, 15, 20, red)
    drawfillarc (800, 625, 50, 400, 180, 90, red)
    drawfillarc (800, 0, 50, 200, 90, 180, red)
    drawfilloval (800, 215, 15, 20, red)

    
    %draws arcs on the top of the stage
    for count : 1 .. 800 by 24
	drawfillarc (count, 590, 12, 12, 180, 0, black)
	drawfillbox (count - 12, 590, count + 12, maxy, black)
	drawfillarc (count, 590, 10, 10, 180, 0, red)

	drawfillbox (count - 10, 590, count + 10, maxy, red)
    end for

    %draws people watchiong the show
    for decreasing count : 100 .. 1 by 40
	for count2 : 1 .. 800 by 50
	    drawfilloval (count2, count, 20, 20, black)
	    drawfillarc (count2, count, 20, 10, 0, 180, red)
	    drawfillbox (count2 - 20, count, count2 + 20, count - 30, red)
	    drawfillbox (0, count - 5, maxx, count - 30, red)
	end for
    end for
end drawcurtains

%draws the triangles that are beside and ontop of each door
procedure drawsidedoor (x : int)
    %assigns values to variables
    doorsidetriangle1_y (1) := 400
    doorsidetriangle1_y (2) := 250
    doorsidetriangle1_y (3) := 325
    doorsidetriangle1_x (1) := x - 100
    doorsidetriangle1_x (2) := x - 100
    doorsidetriangle1_x (3) := x - 125

    doorsidetriangle2_x (1) := x - 100
    doorsidetriangle2_x (2) := x + 100
    doorsidetriangle2_x (3) := x
    doorsidetriangle2_y (1) := 325 + 75
    doorsidetriangle2_y (2) := 325 + 75
    doorsidetriangle2_y (3) := 325 + 100

    %draws a triangle to the left of the door
    Draw.FillPolygon (doorsidetriangle1_x, doorsidetriangle1_y, 3, 137)

    %reassings values to variable to draw triangle to the right of the door
    doorsidetriangle1_x (1) := x + 100
    doorsidetriangle1_x (2) := x + 100
    doorsidetriangle1_x (3) := x + 125

    %draws a triangle to the right of the door
    Draw.FillPolygon (doorsidetriangle1_x, doorsidetriangle1_y, 3, 137)

    %draws a triangle ontop of the door
    Draw.FillPolygon (doorsidetriangle2_x, doorsidetriangle2_y, 3, 137)
end drawsidedoor

%process that plays an audio file called Drumroll.mp3
process playdrumroll
    Music.PlayFile ("Drumroll.mp3")
end playdrumroll








%draws title screen
drawfillbox (0, 0, 400, maxy, red)
drawfillbox (800, 0, 400, maxy, red)
draw_host (700, 200)
drawfilloval (550, 325, 100, 50, white)
Draw.FillPolygon (speechbubble_x, speechbubble_y, 3, white)
Draw.Text ("Hello, my name is Monty", 475, 345, font1, black)
Draw.Text ("Hall, and I'm your host!", 480, 330, font1, black)
Draw.Text ("Your're playing...", 500, 315, font1, black)
View.Update
delay (5000)
cls

%draws title of show ontop
loop
    drawfillbox (0, 0, 400, maxy, red)
    drawfillbox (800, 0, 400, maxy, red)
    draw_host (700, 200)
    Draw.Text ("Let's Make ", font_x, font_y, font2, black)
    Draw.Text ("A Deal", font_x, font_y - font_size, font2, black)
    View.Update
    delay (5)
    cls
    font2 := Font.New ("Arial:" + intstr (font_size))

    %changes values of variables to manipulate the titles
    if font_size >= 100 then
	font_size -= 1
    end if
    if font_size mod 2 = 0 and font_x >= 100 then
	font_x := -1
    end if
    exit when font_size <= 100
end loop

%asks the user to right or left click
drawfillbox (0, 0, 400, maxy, red)
drawfillbox (800, 0, 400, maxy, red)
draw_host (700, 200)
Draw.Text ("Let's Make ", font_x, font_y, font2, black)
Draw.Text ("A Deal", font_x, font_y - font_size, font2, black)
Draw.Text ("Left-Click Here To Start", font_x, 550, font3, black)
View.Update
delay (500)

Draw.Text ("Right-Click To View", font_x, 500, font3, black)
Draw.Text ("Instructions", font_x, 450, font3, black)
View.Update

%determines outcome based on what button the user clicks
loop
    mousewhere (mouse_x, mouse_y, button)
    left := button mod 10
    middle := (button - left) mod 100
    right := button - middle - left

    %exits loop when user left-clicks the banner at the top
    if left = 1 and mouse_y >= 500 then
	exit
	%shows instructions when user right-clicks anywhere
    elsif right = 100 then
	loop
	    Pic.Draw (pic_two, 1, pic_y, picCopy)
	    Pic.Draw (pic_three, 1, 450, picCopy)
	    if pic_y <= -100 then
		pic_y := pic_y + 1
	    else
		cls
		exit
	    end if
	    delay (50)
	    View.Update
	end loop
	exit
    end if
end loop

%loop that asks the user to choose the door they think the car is behind
loop
    mousewhere (mouse_x, mouse_y, button)

    %draws stage
    drawfillbox (0, 0, maxx, maxy, 68)
    doorbackground (150)
    doorbackground (400)
    doorbackground (650)
    stage
    drawsidedoor (OVERLAP_ONE_X)
    drawsidedoor (OVERLAP_TWO_X)
    drawsidedoor (OVERLAP_THREE_X)
    drawcurtains
    draw_host (HOST_X, HOST_Y)
    drawfilloval (550, 325, 100, 50, white)
    Draw.FillPolygon (speechbubble_x, speechbubble_y, 3, white)
    Draw.Text ("Choose the door that you", 475, 335, font1, black)
    Draw.Text ("think the prize is behind", 480, 315, font1, black)

    %opens door slightly when mouse hovers over door
    if mouse_x >= 50 and mouse_x <= 250 and mouse_y >= 250 and mouse_y <= 400 then
	door_one_x1 := 125
	door_one_x2 := 175

	%changes a door variable to true once the user clicks that door
	if button = 1 then
	    door_one := true
	    exit
	end if
    elsif mouse_x >= 300 and mouse_x <= 500 and mouse_y >= 250 and mouse_y <= 400 then
	door_two_x1 := 375
	door_two_x2 := 425

	%changes a door variable to true once the user clicks that door
	if button = 1 then
	    door_two := true
	    exit
	end if
    elsif mouse_x >= 550 and mouse_x <= 750 and mouse_y >= 250 and mouse_y <= 400 then
	door_three_x1 := 625
	door_three_x2 := 675

	%changes a door variable to true once the user clicks that door
	if button = 1 then
	    door_three := true
	    exit
	end if
    else
	%resets doors back to closed once mouse isn't hovering over door
	door_one_x1 := DOOR_ONE_CLOSED
	door_one_x2 := DOOR_ONE_CLOSED
	door_two_x1 := DOOR_TWO_CLOSED
	door_two_x2 := DOOR_TWO_CLOSED
	door_three_x1 := DOOR_THREE_CLOSED
	door_three_x2 := DOOR_THREE_CLOSED
    end if
    View.Update
end loop

%resets all doors back to being closed
door_one_x1 := DOOR_ONE_CLOSED
door_one_x2 := DOOR_ONE_CLOSED
door_two_x1 := DOOR_TWO_CLOSED
door_two_x2 := DOOR_TWO_CLOSED
door_three_x1 := DOOR_THREE_CLOSED
door_three_x2 := DOOR_THREE_CLOSED

%opens door that the prize is not inside
%if statement opens one of the three door depending on where the prize is, what door the user chose and/or what number random_door is
if door_one and prize = 1 and random_door = 1 or door_one and prize = 3 or door_three and prize = 1 or door_three and prize = 3 and random_door = 2 then
    %opens door two, revealing a goat
    loop
	drawfillbox (0, 0, maxx, maxy, 68)
	doorbackground (150)
	doorbackground (400)
	doorbackground (650)

	Pic.Draw (pic_four, 350, 250, picCopy)
	stage
	drawsidedoor (OVERLAP_ONE_X)
	drawsidedoor (OVERLAP_TWO_X)
	drawsidedoor (OVERLAP_THREE_X)
	door (150, 150)
	drawcurtains
	draw_host (HOST_X, HOST_Y)
	drawfilloval (550, 325, 100, 50, white)
	Draw.FillPolygon (speechbubble_x, speechbubble_y, 3, white)
	Draw.Text ("There is a goat behind door " + intstr (2), 475, 325, font1, black)

	%lets user view the screen for a while before moving on
	if door_two_x1 <= 300 then
	    delay (500)
	    exit
	end if

	door_two_x1 -= 1
	door_two_x2 += 1

	View.Update
	delay (5)
	cls
    end loop
elsif door_one and prize = 1 and random_door = 2 or door_one and prize = 2 or door_two and prize = 1 or door_two and prize = 2 and random_door = 2 then
    %opens door three, revealing a goat
    loop
	drawfillbox (0, 0, maxx, maxy, 68)
	doorbackground (150)
	doorbackground (400)
	doorbackground (650)
	Pic.Draw (pic_four, 600, 250, picCopy)
	stage
	drawsidedoor (OVERLAP_ONE_X)
	drawsidedoor (OVERLAP_TWO_X)
	drawsidedoor (OVERLAP_THREE_X)
	door (400, 400)
	drawcurtains
	draw_host (HOST_X, HOST_Y)
	drawfilloval (550, 325, 100, 50, white)
	Draw.FillPolygon (speechbubble_x, speechbubble_y, 3, white)
	Draw.Text ("There is a goat behind door " + intstr (3), 475, 325, font1, black)

	%lets user view the screen for a while before moving on
	if door_three_x1 <= 550 then
	    delay (500)
	    exit
	end if

	door_three_x1 -= 1
	door_three_x2 += 1

	View.Update
	delay (5)
	cls
    end loop
elsif door_two and prize = 2 or door_two and prize = 3 or door_three and prize = 3 and random_door = 1 or door_three and prize = 2 then
    %opens door one, revealing a goat
    loop
	drawfillbox (0, 0, maxx, maxy, 68)
	doorbackground (150)
	doorbackground (400)
	doorbackground (650)
	Pic.Draw (pic_four, 100, 250, picCopy)
	stage

	drawsidedoor (OVERLAP_ONE_X)
	drawsidedoor (OVERLAP_TWO_X)
	drawsidedoor (OVERLAP_THREE_X)
	door (650, 650)
	drawcurtains
	draw_host (HOST_X, HOST_Y)
	drawfilloval (550, 325, 100, 50, white)
	Draw.FillPolygon (speechbubble_x, speechbubble_y, 3, white)
	Draw.Text ("There is a goat behind door " + intstr (1), 475, 325, font1, black)

	%lets user view the screen for a while before moving on
	if door_one_x1 <= 50 then
	    delay (500)
	    exit
	end if

	door_one_x1 -= 1
	door_one_x2 +=1

	View.Update
	delay (5)
	cls
    end loop
end if

%drawing stage onto the screen
drawfillbox (0, 0, maxx, maxy, 68)
doorbackground (150)
doorbackground (400)
doorbackground (650)
Pic.Draw (pic_four, 100, 250, picCopy)
Pic.Draw (pic_four, 600, 250, picCopy)
Pic.Draw (pic_four, 350, 250, picCopy)
stage
drawsidedoor (OVERLAP_ONE_X)
drawsidedoor (OVERLAP_TWO_X)
drawsidedoor (OVERLAP_THREE_X)

%overlaps open door with closed depending on what door is opened
if door_one_x1 <= 50 then
    door (650, 650)
elsif door_two_x1 <= 300 then
    door (150, 150)
elsif door_three_x2 <= 550 then
    door (400, 400)
end if

drawcurtains
draw_host (HOST_X, HOST_Y)
drawfilloval (550, 325, 100, 50, white)
Draw.FillPolygon (speechbubble_x, speechbubble_y, 3, white)

%asks user if they want to switch the door they chose
Draw.Text ("Would you like to switch doors?", 455, 325, font1, black)
drawfillbox (375, 200, 175, 100, white)
drawfillbox (425, 200, 625, 100, white)
Draw.Text ("YES", 180, 110, font5, black)
Draw.Text ("NO", 460, 110, font5, black)
View.Update

%loop allows computer to keep getting coordinates of mouse
loop
    mousewhere (mouse_x, mouse_y, button)
    %chooses outcomes based on whether the user click on the box that says yes or no
    if mouse_x >= 175 and mouse_x <= 375 and mouse_y >= 100 and mouse_y <= 200 and button = 1 then
	%switches which door is true based on what door they first chose, the random_door variable and where the prize is
	if door_one and prize = 1 and random_door = 1 or door_one and prize = 3 then
	    door_one := false
	    door_three := true
	    exit

	elsif door_three and prize = 1 or door_three and prize = 3 and random_door = 2 then
	    door_three := false
	    door_one := true
	    exit

	elsif door_one and prize = 1 and random_door = 2 or door_one and prize = 2 then
	    door_one := false
	    door_two := true
	    exit

	elsif door_two and prize = 1 or door_two and prize = 2 and random_door = 2 then
	    door_two := false
	    door_one := true
	    exit

	elsif door_two and prize = 2 or door_two and prize = 3 then
	    door_two := false
	    door_three := true
	    exit

	elsif door_three and prize = 3 and random_door = 1 or door_three and prize = 2 then
	    door_three := false
	    door_two := true
	    exit
	end if

    elsif mouse_x >= 425 and mouse_x <= 625 and mouse_y >= 100 and mouse_y <= 200 and button = 1 then
	exit
    end if
end loop

%plays the playdrumroll process as the for loop is happening
fork playdrumroll

%draws spotlights before telling the user if they won or not
for count : 1 .. 3
    %allows spotlights to move 400 pixels before moving directions
    for count2 : 0 .. 400
	%assigns values to variables
	spotlightrays1_x (1) := 200
	spotlightrays1_x (2) := spotlight2_x - 50
	spotlightrays1_x (3) := spotlight2_x + 50

	spotlightrays1_y (1) := maxy
	spotlightrays1_y (2) := 200
	spotlightrays1_y (3) := 200

	spotlightrays2_x (1) := 400
	spotlightrays2_x (2) := spotlight_x + 50
	spotlightrays2_x (3) := spotlight_x - 50

	spotlightrays2_y (1) := maxy
	spotlightrays2_y (2) := 250
	spotlightrays2_y (3) := 250
	drawfillbox (0, 0, maxx, maxy, black)

	%draws spotligts
	drawfilloval (spotlight2_x, 200, 50, 10, yellow)
	Draw.FillPolygon (spotlightrays1_x, spotlightrays1_y, 3, yellow)
	drawfilloval (spotlight_x, 250, 50, 10, yellow)
	Draw.FillPolygon (spotlightrays2_x, spotlightrays2_y, 3, yellow)

	drawcurtains
	draw_host (HOST_X, HOST_Y)
	drawfilloval (550, 325, 100, 50, white)
	Draw.FillPolygon (speechbubble_x, speechbubble_y, 3, white)
	Draw.Text ("Drumroll Please...", 500, 325, font1, black)

	%moves the spotlight back and forth based on the index variable: count
	if count mod 2 = 0 then
	    spotlight_x += 1
	    spotlight2_x -= 1
	else
	    spotlight_x -= 1
	    spotlight2_x += 1
	end if

	View.Update
	delay (3)
	cls
    end for
end for

%tells the user if they won or not
if door_one and prize = 1 or door_two and prize = 2 or door_three and prize = 3 then

    %shows the user their new car if they win
    loop

	picnum += 1

	%changes how many zeroes are in the sequence to let next digit in
	if picnum < 10 then
	    pic_five := Pic.FileNew ("Ferrari Sequence000" + intstr (picnum) + ".jpg")
	elsif picnum >= 10 and picnum < 100 then
	    pic_five := Pic.FileNew ("Ferrari Sequence00" + intstr (picnum) + ".jpg")
	end if

	%draws the stage with the car
	drawfillbox (0, 0, maxx, maxy, black)
	drawcurtains
	Pic.Draw (pic_five, 200, 200, picCopy)
	draw_host (HOST_X, HOST_Y)
	drawfilloval (550, 325, 100, 50, white)
	Draw.FillPolygon (speechbubble_x, speechbubble_y, 3, white)
	Draw.Text ("Congratulations you have won", 470, 330, font1, black)
	Draw.Text ("a brand new car", 500, 320, font1, black)

	delay (50)
	View.Update

	exit when picnum = 100
    end loop
    picnum := PICNUM_RESET
    %shows a sequence of pictures starting with Ferrari Squence 2_0001.jpg
    loop
	picnum += 1

	%changes how many zeroes are in the sequence to let next digit in
	if picnum < 10 then
	    pic_seven := Pic.FileNew ("Ferrari Squence 2_000" + intstr (picnum) + ".jpg")
	elsif picnum >= 10 and picnum <= 60 then
	    pic_seven := Pic.FileNew ("Ferrari Squence 2_00" + intstr (picnum) + ".jpg")
	end if

	%draws the sequences
	Pic.Draw (pic_seven, 0, 0, picCopy)

	View.Update
	delay (8)

	exit when picnum = 60
    end loop
    picnum := PICNUM_RESET
    loop
	picnum += 1

	%changes how many zeroes are in the sequence to let next digit in
	if picnum < 10 then
	    pic_eight := Pic.FileNew ("Ferrari Squence 3_000" + intstr (picnum) + ".jpg")
	elsif picnum >= 10 and picnum < 100 then
	    pic_eight := Pic.FileNew ("Ferrari Squence 3_00" + intstr (picnum) + ".jpg")
	elsif picnum >= 100 then
	    pic_eight := Pic.FileNew ("Ferrari Squence 3_0" + intstr (picnum) + ".jpg")
	end if

	%draws the sequence
	Pic.Draw (pic_eight, 0, 0, picCopy)

	View.Update
	delay (3)

	exit when picnum = 150
    end loop
    Draw.Text ("CONGRATULATIONS", 1, 540, font6, white)
else
    %shows the user a goat/deer on the stage when they lose
    drawfillbox (0, 0, maxx, maxy, white)
    Pic.Draw (pic_six, 00, 0, picCopy)
    drawcurtains
    draw_host (HOST_X, HOST_Y)
    drawfilloval (550, 325, 100, 50, white)
    Draw.FillPolygon (speechbubble_x, speechbubble_y, 3, white)
    Draw.Text ("You lost, better luck next time", 455, 325, font1, black)
    View.Update
end if
