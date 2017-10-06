local t = Def.ActorFrame{};

t[#t+1] = Def.ActorFrame{
  LoadActor("back1.png")..{
    InitCommand=cmd(FullScreen;diffuse,color("1.0,0.8,0.8,1"));
  };
  Def.ActorFrame{
    InitCommand=cmd(Center;);
    LoadActor("back3")..{
      InitCommand=cmd(y,-180;zoomtowidth,SCREEN_WIDTH;diffuse,color("1.0,0.8,0.8,1"));
      OnCommand=function(self)
        local w = SCREEN_HEIGHT*1.333333 / self:GetWidth();
        local h = DISPLAY:GetDisplayHeight() / self:GetHeight();
        self:customtexturerect(0,0,w,1);
        self:texcoordvelocity(-0.2,0);
      end;
    };
    LoadActor("back3")..{
      InitCommand=cmd(y,180;zoomtowidth,SCREEN_WIDTH;diffuse,color("1.0,0.8,0.8,1"));
      OnCommand=function(self)
        local w = SCREEN_HEIGHT*1.333333 / self:GetWidth();
        local h = DISPLAY:GetDisplayHeight() / self:GetHeight();
        self:customtexturerect(0,0,w,1);
        self:texcoordvelocity(0.2,0);
      end;
    };
  };
};

--rings
t[#t+1] = Def.ActorFrame{
  LoadActor("back2")..{
    InitCommand=cmd(xy,SCREEN_LEFT,SCREEN_BOTTOM;spin;effectmagnitude,0,50,0;diffuse,color("1.0,0.8,0.8,1"));
  };
  LoadActor("back2")..{
    InitCommand=cmd(xy,SCREEN_RIGHT,SCREEN_TOP;spin;effectmagnitude,0,50,0;diffuse,color("1.0,0.8,0.8,1"));
  };
  LoadActor("back2")..{
    InitCommand=cmd(xy,SCREEN_LEFT,SCREEN_TOP;spin;effectmagnitude,0,50,0;diffuse,color("1.0,0.8,0.8,1"));
  };
  LoadActor("back2")..{
    InitCommand=cmd(xy,SCREEN_RIGHT,SCREEN_BOTTOM;spin;effectmagnitude,0,50,0;diffuse,color("1.0,0.8,0.8,1"));
  };
  LoadActor("back2")..{
    InitCommand=cmd(xy,SCREEN_LEFT,SCREEN_BOTTOM;spin;effectmagnitude,50,0,0;diffuse,color("1.0,0.8,0.8,1"));
  };
  LoadActor("back2")..{
    InitCommand=cmd(xy,SCREEN_RIGHT,SCREEN_TOP;spin;effectmagnitude,50,0,0;diffuse,color("1.0,0.8,0.8,1"));
  };
  LoadActor("back2")..{
    InitCommand=cmd(xy,SCREEN_LEFT,SCREEN_TOP;spin;effectmagnitude,50,0,0;diffuse,color("1.0,0.8,0.8,1"));
  };
  LoadActor("back2")..{
    InitCommand=cmd(xy,SCREEN_RIGHT,SCREEN_BOTTOM;spin;effectmagnitude,50,0,0;diffuse,color("1.0,0.8,0.8,1"));
  };
};

t[#t+1] = Def.ActorFrame{
  LoadActor("howto")..{
    InitCommand=cmd(diffuse,color("1.0,0.8,0.8,1");zoom,1;Center;spin;effectmagnitude,0,0,20;);
  };
};

return t;
