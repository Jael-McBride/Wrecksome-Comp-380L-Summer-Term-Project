switch(light_state) {
    case 0: 
        draw_sprite(sLightOff, 0, x, y); 
        break;
    case 1:
        draw_sprite(sLightRed, 0, x, y);
        break;
    case 2:
        draw_sprite(sLightGreen, 0, x, y);
        break;
}