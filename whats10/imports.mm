//
//  imports.mm
//  whats10
//
//  Created by MacBook 10 on 12/11/2018.
//

#import "imports.h"


bool FUNCTION_contactIsGroup(NSString* contactJID) {
    return [contactJID rangeOfString:@"-"].location != NSNotFound;
}
