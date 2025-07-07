package com.popcap.flash.framework.resources
{
   import com.popcap.flash.framework.AppBase;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class ResourceManager
   {
      
      private var mIsLoading:Boolean;
      
      private var mLoader:Loader;
      
      private var mLibrary:ResourceLibrary;
      
      private var mApp:AppBase;
      
      private var mResources:Dictionary;
      
      public function ResourceManager(param1:AppBase)
      {
         super();
         this.mApp = param1;
         this.init();
      }
      
      public function getResource(param1:String) : Object
      {
         if(this.mLibrary == null)
         {
            return this.mResources[param1];
         }
         if(this.mResources[param1] != null)
         {
            return this.mResources[param1];
         }
         return this.mLibrary.getResource(param1);
      }
      
      public function isLoading() : Boolean
      {
         return this.mIsLoading;
      }
      
      public function getPercentageLoaded() : Number
      {
         if(!this.mIsLoading)
         {
            return 1;
         }
         var _loc1_:Number = this.mLoader.contentLoaderInfo.bytesLoaded;
         var _loc2_:Number = this.mLoader.contentLoaderInfo.bytesTotal + 1;
         var _loc3_:Number = _loc1_ / _loc2_;
         if(isNaN(_loc3_))
         {
            return 0;
         }
         return _loc3_;
      }
      
      public function loadResourceLibrary(param1:String) : void
      {
         if(this.mIsLoading)
         {
            throw new Error("Only one library may be loaded at a time.");
         }
         this.mIsLoading = true;
         var _loc2_:URLRequest = new URLRequest(param1);
         this.mLoader.load(_loc2_);
      }
      
      private function init() : void
      {
         this.mResources = new Dictionary();
         this.mIsLoading = false;
         this.mLoader = new Loader();
         var _loc1_:LoaderInfo = this.mLoader.contentLoaderInfo;
         _loc1_.addEventListener(Event.COMPLETE,this.handleLibrary);
      }
      
      private function handleLibrary(param1:Event) : void
      {
         this.mLibrary = this.mLoader.content as ResourceLibrary;
         this.mIsLoading = false;
      }
      
      public function setResource(param1:String, param2:Object) : void
      {
         this.mResources[param1] = param2;
      }
   }
}

