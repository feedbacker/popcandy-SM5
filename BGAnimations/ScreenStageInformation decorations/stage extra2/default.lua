return Def.ActorFrame{
  LoadActor("../../stagetemp/stageframe2")..{
    InitCommand=cmd(diffuse,color("1.0,0.5,0.9,1");xy,SCREEN_LEFT+76,SCREEN_TOP+76);
    OnCommand=cmd(diffusealpha,0;linear,0.3;diffusealpha,1;);
  };
  LoadActor("../../stagetemp/stageframe2")..{
    InitCommand=cmd(diffuse,color("1.0,0.5,0.9,1");xy,SCREEN_RIGHT-76,SCREEN_BOTTOM-76);
    OnCommand=cmd(diffusealpha,0;linear,0.3;diffusealpha,1;);
  };
  LoadActor("num.png")..{
    InitCommand=cmd(zoom,0;xy,SCREEN_LEFT+76,SCREEN_TOP+76;spin;diffuse,color("1.0,0.5,0.9,1"));
    OnCommand=cmd(diffusealpha,0;linear,0.3;zoom,0.8;diffusealpha,1;);
  };
  LoadActor("num2.png")..{
    InitCommand=cmd(zoom,0;xy,SCREEN_RIGHT-76,SCREEN_BOTTOM-76;spin;diffuse,color("1.0,0.5,0.9,1"));
    OnCommand=cmd(diffusealpha,0;linear,0.3;zoom,0.8;diffusealpha,1;);
  };
  LoadActor("stage")..{
    InitCommand=cmd(shadowlength,5;diffuse,color("1.0,0.5,0.9,1");Center);
    OnCommand=cmd(diffusealpha,0;linear,0.3;diffusealpha,1;);
  };
}
