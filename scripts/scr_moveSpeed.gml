if (place_free(x,y+velocidad))
{ 
  if place_meeting(x,y-abs(velocidad),obj_mario)
  {
     obj_mario.y += velocidad;
     
     if collision_rectangle(obj_mario.x-21,obj_mario.y,obj_mario.x+21,obj_mario.y-16,obj_limite,0,0)
     velocidad *= -1 ;
  }
   
  y+= velocidad ;

}
else
{
  velocidad *= -1;
}

if place_meeting(x,y+abs(velocidad),obj_mario)
velocidad *= -1 ;

if (place_meeting(x,y,obj_limite))
velocidad *=-1


