//
//  GBAEmulatorCore.m
//  GBA4iOS
//
//  Created by Riley Testut on 7/23/13.
//  Copyright (c) 2013 Riley Testut. All rights reserved.
//

#import "GBAEmulatorCore.h"

NSString *const GBAROMDidSaveDataNotification = @"GBAROMDidSaveDataNotification";

@interface GBAEmulatorCore ()

@property (readwrite, strong, nonatomic) EAGLView *eaglView;

@end

@implementation GBAEmulatorCore

+ (instancetype)sharedCore {
    static GBAEmulatorCore *sharedCore = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedCore = [[self alloc] init];
    });
    return sharedCore;
}

- (CGSize)calcViewSize: (CGSize)maxScreenSize
{
//    CGSize maxScreenSize = [UIScreen mainScreen].bounds.size;
    switch ([GBAEmulatorCore sharedCore].rom.type)
    {
        case GBAROMTypeGBA:
        if (maxScreenSize.height / maxScreenSize.width > 160 / 240) {
            maxScreenSize.width = maxScreenSize.height * 240 / 160;
        } else {
            maxScreenSize.height = maxScreenSize.width * 160 / 240;
        }
        break;
        case GBAROMTypeGBC:
        if (maxScreenSize.height / maxScreenSize.width > 144 / 160) {
            maxScreenSize.width = maxScreenSize.height * 160 / 144;
        } else {
            maxScreenSize.height = maxScreenSize.width * 144 / 160;
        }
        break;
    }
    
    return maxScreenSize;
}

- (void)updateEAGLViewForSize:(CGSize)size screen:(UIScreen *)screen
{
    [self updateEAGLViewForSize:size screen:screen pos:CGPointMake(0, 0)];
}

- (void)updateEAGLViewForSize:(CGSize)size screen:(UIScreen *)screen pos: (CGPoint)pos
{
    using namespace Base;
    
    mainWin.rect.x = 0;
    mainWin.rect.y = 0;
    
    if (size.width && size.height)
    {
        self.screen = screen;
        CGFloat scale = [screen scale];
        
        CGRect f1 = screen.bounds;
        if (size.width > f1.size.width)
        {
            CGFloat scale1 = size.width/size.height;
            size.width = f1.size.width*1.0;
            size.height = size.width/scale1;
        }
        
        mainWin.w = mainWin.rect.x2 = size.width * scale;
        mainWin.h = mainWin.rect.y2 = size.height * scale;
    }
    else size = glView.frame.size;
    
    // Controls size of built-in controls. Since we aren't using these, we just set these to a valid number so the assert doesn't crash us.
    Gfx::viewMMWidth_ = 50;
    Gfx::viewMMHeight_ = 50;
    
    logMsg("set screen MM size %dx%d", Gfx::viewMMWidth_, Gfx::viewMMHeight_);
    currWin = mainWin;
    
    //printf("Pixel size: %dx%d", Gfx::viewPixelWidth(), Gfx::viewPixelHeight());
    
    if (self.eaglView == nil)
    {
        // Create the OpenGL ES view
        glView = [[EAGLView alloc] initWithFrame:CGRectMake(pos.x, pos.y, size.width, size.height)];
        
        self.eaglView = glView;
    }
    else
    {
        glView.frame = CGRectMake(pos.x, pos.y, size.width, size.height);
        [glView.superview layoutIfNeeded];
        
        CGFloat previousScale = self.eaglView.layer.contentsScale;
        
        if (previousScale != screen.scale)
        {
            self.eaglView.layer.contentsScale = screen.scale;
            Base::pointScale = screen.scale;
        }
        
        // Update framebuffer for new size (or else graphics are slightly blurred)
        [Base::glView destroyFramebuffer];
        [Base::glView createFramebuffer];
        Gfx::setOutputVideoMode(mainWin);
        
        bool fastForwardEnabled = emuView.ffGuiTouch;
        
        startGameFromMenu();
        
        emuView.ffGuiTouch = fastForwardEnabled;
    }
}

- (void)startEmulation
{
    
}

- (void)pauseEmulation
{
    
}

- (void)resumeEmulation
{
    
}

- (void)endEmulation
{
    
}

- (void)applyEmulationFilter:(GBAEmulationFilter)emulationFilter
{
    
}

- (void)writeSaveFileForCurrentROMToDisk
{
    
}

- (void)saveStateToFilepath:(NSString *)filepath
{
    
}

- (void)loadStateFromFilepath:(NSString *)filepath
{
    
}

- (BOOL)addCheat:(GBACheat *)cheat
{
    return YES;
}

- (void)enableCheat:(GBACheat *)cheat
{
    
}

- (void)disableCheat:(GBACheat *)cheat
{
    
}

- (BOOL)updateCheats
{
    return YES;
}

- (void)pressButtons:(NSSet *)buttons
{
    
}

- (void)releaseButtons:(NSSet *)buttons
{
    
}

- (void)startFastForwarding
{
    
}

- (void)stopFastForwarding
{
    
}

- (void)startServer
{
    
}

- (void)connectToServer
{
    
}

- (void)startConnection
{
    
}

- (void)startLinkWithConnectionType:(GBALinkConnectionType)connectionType peerType:(GBALinkPeerType)peerType completion:(void (^)(BOOL))completion {
    
}

- (void)stopLink {
    
}

bool useCustomSavePath();

@end
