//
//  ToneBarrierPlayerContext.m
//  JABPlanetaryHourToneBarrier
//
//  Created by Xcode Developer on 12/17/19.
//  Copyright © 2019 The Life of a Demoniac. All rights reserved.
//

#import "ToneBarrierPlayer.h"

@implementation ToneBarrierPlayer

static ToneBarrierPlayer *context = NULL;
+ (nonnull ToneBarrierPlayer *)context
{
    static dispatch_once_t onceSecurePredicate;
    dispatch_once(&onceSecurePredicate,^
                  {
        if (!context)
        {
            context = [[self alloc] init];
        }
    });
    
    return context;
}

- (void)createAudioBufferWithFormat:(AVAudioFormat * _Nonnull)audioFormat completionBlock:(CreateAudioBufferCompletionBlock _Nonnull)createAudioBufferCompletionBlock
{
    [_player createAudioBufferWithFormat:audioFormat completionBlock:createAudioBufferCompletionBlock];
}

@end
