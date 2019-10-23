/// @description Follow Player
if global.paused exit;
x = obj_player.x;
y = obj_player.y;

xprev[2] = xprev[1];
yprev[2] = yprev[1];
xprev[1] = xprev[0];
yprev[1] = yprev[0];
xprev[0] = obj_player.xprevious;
yprev[0] = obj_player.yprevious;