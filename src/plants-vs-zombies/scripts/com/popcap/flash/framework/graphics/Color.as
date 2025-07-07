package com.popcap.flash.framework.graphics
{
   public class Color
   {
      
      public var green:Number = 0;
      
      public var red:Number = 0;
      
      public var blue:Number = 0;
      
      public var alpha:Number = 0;
      
      public function Color()
      {
         super();
      }
      
      public static function add(a:Color, b:Color) : Color
      {
         var alpha:Number = a.alpha + b.alpha;
         var red:Number = a.red + b.red;
         var green:Number = a.green + b.green;
         var blue:Number = a.blue + b.blue;
         return ARGB(alpha > 1 ? 1 : alpha,red > 1 ? 1 : red,green > 1 ? 1 : green,blue > 1 ? 1 : blue);
      }
      
      public static function Gray(gray:Number) : Color
      {
         return ARGB(1,gray,gray,gray);
      }
      
      public static function RGB(red:Number, green:Number, blue:Number) : Color
      {
         return ARGB(1,red,green,blue);
      }
      
      public static function fromInt(value:int) : Color
      {
         return ARGB(((value & 0xFF000000) >> 24 & 0xFF) / 255,((value & 0xFF0000) >> 16 & 0xFF) / 255,((value & 0xFF00) >> 8 & 0xFF) / 255,((value & 0xFF) >> 0 & 0xFF) / 255);
      }
      
      public static function ARGB(alpha:Number, red:Number, green:Number, blue:Number) : Color
      {
         if(alpha < 0 || alpha > 1)
         {
            throw new ArgumentError("Alpha channel must be in the range [0.0, 1.0], was " + alpha);
         }
         if(red < 0 || red > 1)
         {
            throw new ArgumentError("Red channel must be in the range [0.0, 1.0], was " + red);
         }
         if(green < 0 || green > 1)
         {
            throw new ArgumentError("Green channel must be in the range [0.0, 1.0], was " + green);
         }
         if(blue < 0 || blue > 1)
         {
            throw new ArgumentError("Blue channel must be in the range [0.0, 1.0], was " + blue);
         }
         var aColor:Color = new Color();
         aColor.alpha = alpha;
         aColor.red = red;
         aColor.green = green;
         aColor.blue = blue;
         return aColor;
      }
      
      public function toString() : String
      {
         return "[" + this.alpha + ", " + this.red + ", " + this.green + ", " + this.blue + "]";
      }
      
      public function copy(other:Color) : void
      {
         this.alpha = other.alpha;
         this.red = other.red;
         this.green = other.green;
         this.blue = other.blue;
      }
      
      public function toInt() : int
      {
         return (this.alpha & 0xFF) << 24 | (this.red & 0xFF) << 16 | (this.green & 0xFF) << 8 | (this.blue & 0xFF) << 0;
      }
   }
}

