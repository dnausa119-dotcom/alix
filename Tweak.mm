#import <UIKit/UIKit.h>

// إعدادات المميزات المستخرجة (ايمبوت، كشف الأماكن، وغيرها)
bool aimEnabled = false;
bool silentAim = false;
bool espEnabled = false;
bool espSkeleton = false;
float maxDistance = 300.0f;

// دالة البدء التلقائية المتوافقة مع الآيفون وخالية من أخطاء الـ Logos
__attribute__((constructor)) static void initFaustHack() {
    NSLog(@"[FaustiOS] Hack loaded successfully on iOS!");
}
