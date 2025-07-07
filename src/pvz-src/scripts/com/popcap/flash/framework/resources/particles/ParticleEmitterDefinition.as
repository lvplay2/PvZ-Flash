package com.popcap.flash.framework.resources.particles
{
   import com.popcap.flash.framework.resources.images.ImageInst;
   
   public class ParticleEmitterDefinition
   {
      
      public var mClipBottom:FloatParameterTrack = new FloatParameterTrack();
      
      public var mEmitterPath:FloatParameterTrack = new FloatParameterTrack();
      
      public var mImageID:String = "";
      
      public var mSpawnMinActive:FloatParameterTrack = new FloatParameterTrack();
      
      public var mParticleAlpha:FloatParameterTrack = new FloatParameterTrack();
      
      public var mImageRow:Number;
      
      public var mParticleBlue:FloatParameterTrack = new FloatParameterTrack();
      
      public var mParticleScale:FloatParameterTrack = new FloatParameterTrack();
      
      public var mEmitterType:ParticleEmitterType;
      
      public var mSpawnRate:FloatParameterTrack = new FloatParameterTrack();
      
      public var mName:String;
      
      public var mEmitterOffsetX:FloatParameterTrack = new FloatParameterTrack();
      
      public var mEmitterOffsetY:FloatParameterTrack = new FloatParameterTrack();
      
      public var mClipLeft:FloatParameterTrack = new FloatParameterTrack();
      
      public var mLaunchSpeed:FloatParameterTrack = new FloatParameterTrack();
      
      public var mSpawnMaxLaunched:FloatParameterTrack = new FloatParameterTrack();
      
      public var mCrossFadeDuration:FloatParameterTrack = new FloatParameterTrack();
      
      public var mParticleFields:Array;
      
      public var mCollisionSpin:FloatParameterTrack = new FloatParameterTrack();
      
      public var mAnimationRate:FloatParameterTrack = new FloatParameterTrack();
      
      public var mAnimated:Boolean;
      
      public var mImageCol:Number;
      
      public var mEmitterRadius:FloatParameterTrack = new FloatParameterTrack();
      
      public var mImageFrames:Number;
      
      public var mLaunchAngle:FloatParameterTrack = new FloatParameterTrack();
      
      public var mParticleFlags:ParticleFlags;
      
      public var mSpawnMaxActive:FloatParameterTrack = new FloatParameterTrack();
      
      public var mSystemDuration:FloatParameterTrack = new FloatParameterTrack();
      
      public var mSystemAlpha:FloatParameterTrack = new FloatParameterTrack();
      
      public var mParticleBrightness:FloatParameterTrack = new FloatParameterTrack();
      
      public var mEffectDef:ParticleDefinition;
      
      public var mEmitterSkewX:FloatParameterTrack = new FloatParameterTrack();
      
      public var mParticleDuration:FloatParameterTrack = new FloatParameterTrack();
      
      public var mEmitterBoxY:FloatParameterTrack = new FloatParameterTrack();
      
      public var mParticleGreen:FloatParameterTrack = new FloatParameterTrack();
      
      public var mEmitterBoxX:FloatParameterTrack = new FloatParameterTrack();
      
      public var mParticleSpinSpeed:FloatParameterTrack = new FloatParameterTrack();
      
      public var mEmitterSkewY:FloatParameterTrack = new FloatParameterTrack();
      
      public var mParticleSpinAngle:FloatParameterTrack = new FloatParameterTrack();
      
      public var mClipRight:FloatParameterTrack = new FloatParameterTrack();
      
      public var mCollisionReflect:FloatParameterTrack = new FloatParameterTrack();
      
      public var mImage:ImageInst;
      
      public var mClipTop:FloatParameterTrack = new FloatParameterTrack();
      
      public var mParticleStretch:FloatParameterTrack = new FloatParameterTrack();
      
      public var mSystemBrightness:FloatParameterTrack = new FloatParameterTrack();
      
      public var mSystemRed:FloatParameterTrack = new FloatParameterTrack();
      
      public var mSystemGreen:FloatParameterTrack = new FloatParameterTrack();
      
      public var mSystemFields:Array;
      
      public var mSystemBlue:FloatParameterTrack = new FloatParameterTrack();
      
      public var mParticleRed:FloatParameterTrack = new FloatParameterTrack();
      
      public function ParticleEmitterDefinition()
      {
         super();
         this.mImageRow = 0;
         this.mImageCol = 0;
         this.mImageFrames = 1;
         this.mAnimated = false;
         this.mEmitterType = ParticleEmitterType.BOX;
         this.mImage = null;
         this.mName = "";
         this.mParticleFlags = new ParticleFlags();
         this.mParticleFields = new Array();
         this.mSystemFields = new Array();
      }
      
      public function toString() : String
      {
         return "[ParticleEmitterDef \'" + this.mName + "\' file=\'" + this.mEffectDef.mFilename + "\']";
      }
   }
}

