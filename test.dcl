hello : dialog {
  label = "COAD Autodrawing Dialog Box";
  width  = 50;
  height = 30;
  : text {
    label = "by kkd";
  }
  : boxed_column {
    label ="Input Size";
    : edit_box
    {
      label = "Height:";
      edit_width = 20;
      key = "Height";
      // password_char = "?";
    }
      : edit_box
    {
      label = "Width:";
      edit_width = 20;
      key = "Width";
      // password_char = "?";
    }  
  }
  : spacer{}
  

  : radio_column {
    label = "Model";
    : radio_button { label="C-1";key="c-1";value =1;}
    : radio_button { label="C-1s";key="c-1s"; }
    : radio_button { label="C-2";key="c-2";}
    : radio_button { label="C-3";key="c-3";}
  }
  : button {
    key = "accept";
    label = "OK";
    is_default = true;
  }
}