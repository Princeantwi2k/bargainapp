// Generated file.
//
// If you wish to remove Flutter's multidex support, delete this entire file.
//
// Modifications to this file should be done in a copy under a different name
// as this file may be regenerated.

package io.flutter.app;

import android.app.Application;
import android.content.Context;
import androidx.annotation.CallSuper;
import androidx.multidex.MultiDex;
// import com.pusher.pushnotifications.PushNotifications;

/**
 * Extension of {@link android.app.Ap plication}, adding multidex support.
 */
public class FlutterMultiDexApplication extends Application {
  @Override
  @CallSuper
  protected void attachBaseContext(Context base) {
    super.attachBaseContext(base);
    MultiDex.install(this);
    // PushNotifications.start(getApplicationContext(), "22d08ea7-d1ab-4237-8ea9-9151e41f5682");
    // PushNotifications.addDeviceInterest("hello");
    // curl -H "Content-Type: application/json" -H "Authorization: Bearer B6BD09A1DEAB1C8AC1196B00AD37C708B3048EE08882CDB7BAE5656F67A7BC82  -X POST "https://22d08ea7-d1ab-4237-8ea9-9151e41f5682.pushnotifications.pusher.com/publish_api/v1/instances/22d08ea7-d1ab-4237-8ea9-9151e41f5682/publishes" -d '{"interests":["hello" ,"fcm":{"notification": "title":"Hello", "body":"Hello, world!"}}}'
  }
}
 