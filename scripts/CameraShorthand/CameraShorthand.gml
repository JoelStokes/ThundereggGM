//GameMaker Camera Abbreviations by Arend Peter Teaches
/// @desc Returns y position of camera, and sets first if given
/// @param [y] (optional) new y
function cam_y(yy) {
        if(yy != undefined){
                cam_pos(cam_x(), yy);
        }

        return camera_get_view_y(view_camera[0]);
}

/// @desc Returns x position of camera, and sets first if given
/// @param [x] (optional) new x
function cam_x(xx) {
        if(xx != undefined){
                cam_pos(xx, cam_y());
        }

        return camera_get_view_x(view_camera[0]);
}

/// @desc Returns camera position as [x,y], sets position if given
/// @param [x] (optional) new x
/// @param [y] (optional) new y
function cam_pos(xx, yy) {
        if(xx != undefined and yy != undefined){
                camera_set_view_pos(view_camera[0], xx, yy);
        }

        return [cam_x(), cam_y()];
}

/// @desc Returns width of camera, and sets first if given
/// @param [width] (Optional) new width
function cam_w(ww) {
        if(ww != undefined){
                cam_size(ww, cam_h());
        }

        if(view_enabled){
                return camera_get_view_width(view_camera[0]);
        }else{
                return room_width;
        }
}

/// @desc Returns width of camera, and sets first if given
/// @param [height] (Optional) new height
function cam_h(hh) {
        if(hh != undefined){
                cam_size(cam_w(), hh);
        }

        if(view_enabled){
                return camera_get_view_height(view_camera[0]);
        }else{
                return room_height;
        }
}

/// @desc Returns camera size as [w,h], sets position if given
/// @param [width] (optional) new width
/// @param [height] (optional) new height
function cam_size(ww, hh) {
        if(ww != undefined and hh != undefined){
                camera_set_view_size(view_camera[0], ww, hh);
        }

        return [cam_w(), cam_h()];
}

/// @desc Returns left side of camera, (identical to cam_x() except that it's readonly)
function cam_l() {
        return cam_x();
}

/// @desc Returns right side of camera (ready only)
function cam_r() {
        return cam_x() + cam_w();
}

/// @desc Returns top side of camera, (identical to cam_y() except that it's readonly)
function cam_t() {
        return cam_y();
}

/// @desc Returns bottom side of camera (read only)
function cam_b() {
        return cam_y()+cam_h();
}