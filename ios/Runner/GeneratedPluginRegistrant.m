//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"

#if __has_include(<image_cropper/ImageCropperPlugin.h>)
#import <image_cropper/ImageCropperPlugin.h>
#else
@import image_cropper;
#endif

#if __has_include(<multi_image_picker/MultiImagePickerPlugin.h>)
#import <multi_image_picker/MultiImagePickerPlugin.h>
#else
@import multi_image_picker;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [FLTImageCropperPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTImageCropperPlugin"]];
  [MultiImagePickerPlugin registerWithRegistrar:[registry registrarForPlugin:@"MultiImagePickerPlugin"]];
}

@end
