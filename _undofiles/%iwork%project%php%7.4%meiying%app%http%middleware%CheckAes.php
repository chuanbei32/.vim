Vim�UnDo� Q{��cY����G�9EX4R�|C<H�AN�jƽ   =                 1       1   1   1    a8f�    _�                       U    ����                                                                                                                                                                                                                                                                                                                                                             a2�q     �         =      Y        if (Env::get('APP_ENV') == 'prod' && !in_array($request->action(), self::NOTS)) {5�_�                       V    ����                                                                                                                                                                                                                                                                                                                                                             a2�t     �         =      Y        if (Env::get('APP_ENV') == 'prod' && !in_array($request->action(), self::NOTS)) {5�_�                       Z    ����                                                                                                                                                                                                                                                                                                                                                             a2��     �         =      k        if (Env::get('APP_ENV') == 'prod' && !in_array($request->action(), self::NOTS) && $request->host) {5�_�                       [    ����                                                                                                                                                                                                                                                                                                                                                             a2��     �         =      q        if (Env::get('APP_ENV') == 'prod' && !in_array($request->action(), self::NOTS) && '' == $request->host) {5�_�                       l    ����                                                                                                                                                                                                                                                                                                                                                             a2��    �         =      �        if (Env::get('APP_ENV') == 'prod' && !in_array($request->action(), self::NOTS) && 'fx.meiying.cool' == $request->host) {5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             a2��     �         >              �         =    5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             a2��    �         >              halt($request->host)5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                v       a2��    �         >              halt($request->host);5�_�   	              
      y    ����                                                                                                                                                                                                                                                                                                                               y          |       v   |    a2��    �         >      �        if (Env::get('APP_ENV') == 'prod' && !in_array($request->action(), self::NOTS) && 'fx.meiying.cool' != $request->host) {5�_�   
                        ����                                                                                                                                                                                                                                                                                                                               y          |       v   |    a2�	    �                '        halt($request->header('host'));5�_�                       6    ����                                                                                                                                                                                                                                                                                                                               y          |       v   |    a2��     �               =   <?php       namespace app\http\middleware;       use think\Request;   use think\facade\Env;   use app\api\services\Aes;   'use app\common\exceptions\ApiException;       class CheckAes   {       private const NOTS = [           'alinotify',           'uploadoneormoreimg'       ];       <    public function handle(Request $request, \Closure $next)       {   �        if (Env::get('APP_ENV') == 'prod' && !in_array($request->action(), self::NOTS) && 'fx.meiying.cool' != $request->header('host')) {   ,            $encrypt = $request->getInput();   ;            // $encrypt = file_get_contents('php://input');   �            // $encrypt = 'xmxDDQ/2hp+lpvIv/tPtsAUzPyETSQLQGuZ48ZP0Fdjb+X/y2+qETnhd96zivhYNpIMvU1BjGdrJxqken0fO5HE1AnFvmSOKxmp97ovRfLyPNUjRlJVgojzYfe6iT3/PXCIvUd6M22DxbvezorE/3K+wr/SAm63VdZKzMPAQgTXKoQ6unXdiGZtKuah7lCiq';   "            if (empty($encrypt)) {   L                throw new ApiException(['message' => '没有权限访问']);               }   ;            $timestamp = $request->header('x-mflix-ts', 0);   D            // $platform = $request->header('x-mflix-platform', '');   A            $deviceId = $request->header('x-mflix-deviceId', '');   8            if (empty($timestamp) || empty($deviceId)) {   L                throw new ApiException(['message' => '没有权限访问']);               }   `            // $decrypt = (new Aes($timestamp, $platform))->encrypt(json_encode(['test' => 1]));   K            $decrypt = (new Aes($timestamp, $deviceId))->decrypt($encrypt);   $            if (false == $decrypt) {   L                throw new ApiException(['message' => '没有权限访问']);               }   "            $redis = new \Redis();   L            $redis->connect(Env::get('REDIS_HOST'), Env::get('REDIS_PORT'));   3            $redis->auth(Env::get('REDIS_PASSWD'));               $redis->select(1);   :            if ($redis->sismember('restrain', $encrypt)) {   I                throw new ApiException(['message' => '访问已过期']);               }   .            $redis->set('restrain', $encrypt);   7            $requestData = json_decode($decrypt, true);   &            if (empty($requestData)) {   O                throw new ApiException(['message' => '数据格式不正确']);               }   �            // $requestData = json_decode('{"deviceId":"4A392BEC-2B68-4E94-A456-DAA4F7C6ACC9","ts":"1628069418143","platform":"iOS","version":"2.0.0","checksum":"6378586bb19cbf19fd6743296b579d68","movie_id":4702,"timeline":1686,"total_time":6711}', true);   %            if ($request->isPost()) {   1                $request->withPost($requestData);               } else {   0                $request->withGet($requestData);               }   6            foreach ($requestData as $key => $value) {   (                $request->$key = $value;               }   	        }           return $next($request);       }   }5�_�                       W    ����                                                                                                                                                                                                                                                                                                                               W          �       v   �    a2��    �         =      �        if (Env::get('APP_ENV') == 'prod' && !in_array($request->action(), self::NOTS) && 'fx.meiying.cool' != $request->header('host')) {5�_�                       +    ����                                                                                                                                                                                                                                                                                                                               W          �       v   �    a2��     �                D            // $platform = $request->header('x-mflix-platform', '');5�_�                           ����                                                                                                                                                                                                                                                                                                                               W          �       v   �    a2��     �                B             $platform = $request->header('x-mflix-platform', '');5�_�                           ����                                                                                                                                                                                                                                                                                                                               W          �       v   �    a2��     �         <    �         <    5�_�                           ����                                                                                                                                                                                                                                                                                                                               W          �       v   �    a2��     �         =      B             $platform = $request->header('x-mflix-platform', '');5�_�                       	    ����                                                                                                                                                                                                                                                                                                                               W          �       v   �    a2��     �         >      	         �         =    5�_�                           ����                                                                                                                                                                                                                                                                                                                               W          �       v   �    a2��     �         >               if ($platform)5�_�                           ����                                                                                                                                                                                                                                                                                                                               W          �       v   �    a2��     �         @                   �         ?    �         >               if (!$platform)5�_�                    >       ����                                                                                                                                                                                                                                                                                                                               W          �       v   �    a2�	     �   =   ?   @              return $next($request);5�_�                           ����                                                                                                                                                                                                                                                                                                                               W          �       v   �    a2�     �         @    �         @    5�_�                           ����                                                                                                                                                                                                                                                                                                                               W          �       v   �    a2�     �         A              return $next($request);5�_�                           ����                                                                                                                                                                                                                                                                                                                               W          �       v   �    a2�    �                             5�_�                       "    ����                                                                                                                                                                                                                                                                                                                               W          �       v   �    a2�#     �         @    �         @    5�_�                           ����                                                                                                                                                                                                                                                                                                                               W          �       v   �    a2�%     �         A              return $next($request);5�_�                           ����                                                                                                                                                                                                                                                                                                                               W          �       v   �    a2�&     �                #            return $next($request);5�_�                       	    ����                                                                                                                                                                                                                                                                                                                               W          �       v   �    a2�)     �         @      
         )5�_�                            ����                                                                                                                                                                                                                                                                                                                               W          �       v   �    a2�,     �         @          }5�_�                           ����                                                                                                                                                                                                                                                                                                                               W          �       v   �    a2�.     �         @               if (!$platform) (5�_�                            ����                                                                                                                                                                                                                                                                                                                               W          �       v   �    a2�1     �         @               if (!$platform) {}5�_�      !                      ����                                                                                                                                                                                                                                                                                                                               W          �       v   �    a2�3     �         @               if (!$platform) }5�_�       "           !          ����                                                                                                                                                                                                                                                                                                                               W          �       v   �    a2�5     �         @               if (!$platform) {x}5�_�   !   #           "          ����                                                                                                                                                                                                                                                                                                                               W          �       v   �    a2�6     �         @               if (!$platform) {}5�_�   "   $           #          ����                                                                                                                                                                                                                                                                                                                               W          �       v   �    a2��     �         @               if (!$platform) {5�_�   #   %           $          ����                                                                                                                                                                                                                                                                                                                               W          �       v   �    a2��    �         @               if (!$platform) {V5�_�   $   &           %           ����                                                                                                                                                                                                                                                                                                                               #          	       V   #    a8[�   	 �                >         $platform = $request->header('x-mflix-platform', '');            if (!$platform) {   #            return $next($request);   	        }5�_�   %   '           &           ����                                                                                                                                                                                                                                                                                                                               #          	       V   #    a8[�     �       "   =                  �       "   <    5�_�   &   (           '   !       ����                                                                                                                                                                                                                                                                                                                               #          	       V   #    a8[�   
 �       "   =                  halt($decrypt)5�_�   '   )           (          ����                                                                                                                                                                                                                                                                                                                               #          	       V   #    a8\     �         >                  �         =    5�_�   (   *           )          ����                                                                                                                                                                                                                                                                                                                               #          	       V   #    a8\    �         >                  halt($encrypt)5�_�   )   +           *          ����                                                                                                                                                                                                                                                                                                                               #          	       V   #    a8\     �                            halt($encrypt);5�_�   *   ,           +   !       ����                                                                                                                                                                                                                                                                                                                               #          	       V   #    a8\    �       !                      halt($decrypt);5�_�   +   -           ,          ����                                                                                                                                                                                                                                                                                                                               #          	       V   #    a8_1     �         =                  �         <    5�_�   ,   .           -          ����                                                                                                                                                                                                                                                                                                                               #          	       V   #    a8_5    �         =                  halt($encrypt)5�_�   -   /           .          ����                                                                                                                                                                                                                                                                                                                               #          	       V   #    a8a�    �                            halt($encrypt);5�_�   .   0           /           ����                                                                                                                                                                                                                                                                                                                               #          	       V   #    a8f�     �               =   <?php       namespace app\http\middleware;       use think\Request;   use think\facade\Env;   use app\api\services\Aes;   'use app\common\exceptions\ApiException;       class CheckAes   {       private const NOTS = [           'alinotify',           'uploadoneormoreimg'       ];       <    public function handle(Request $request, \Closure $next)       {   Y        if (Env::get('APP_ENV') == 'prod' && !in_array($request->action(), self::NOTS)) {   ,            $encrypt = $request->getInput();               //halt($encrypt);   ;            // $encrypt = file_get_contents('php://input');   �            // $encrypt = 'xmxDDQ/2hp+lpvIv/tPtsAUzPyETSQLQGuZ48ZP0Fdjb+X/y2+qETnhd96zivhYNpIMvU1BjGdrJxqken0fO5HE1AnFvmSOKxmp97ovRfLyPNUjRlJVgojzYfe6iT3/PXCIvUd6M22DxbvezorE/3K+wr/SAm63VdZKzMPAQgTXKoQ6unXdiGZtKuah7lCiq';   "            if (empty($encrypt)) {   L                throw new ApiException(['message' => '没有权限访问']);               }   ;            $timestamp = $request->header('x-mflix-ts', 0);   A            $deviceId = $request->header('x-mflix-deviceId', '');   8            if (empty($timestamp) || empty($deviceId)) {   L                throw new ApiException(['message' => '没有权限访问']);               }   `            // $decrypt = (new Aes($timestamp, $platform))->encrypt(json_encode(['test' => 1]));   K            $decrypt = (new Aes($timestamp, $deviceId))->decrypt($encrypt);   $            if (false == $decrypt) {   L                throw new ApiException(['message' => '没有权限访问']);               }   "            $redis = new \Redis();   L            $redis->connect(Env::get('REDIS_HOST'), Env::get('REDIS_PORT'));   3            $redis->auth(Env::get('REDIS_PASSWD'));               $redis->select(1);   :            if ($redis->sismember('restrain', $encrypt)) {   I                throw new ApiException(['message' => '访问已过期']);               }   .            $redis->set('restrain', $encrypt);   7            $requestData = json_decode($decrypt, true);   &            if (empty($requestData)) {   O                throw new ApiException(['message' => '数据格式不正确']);               }   �            // $requestData = json_decode('{"deviceId":"4A392BEC-2B68-4E94-A456-DAA4F7C6ACC9","ts":"1628069418143","platform":"iOS","version":"2.0.0","checksum":"6378586bb19cbf19fd6743296b579d68","movie_id":4702,"timeline":1686,"total_time":6711}', true);   %            if ($request->isPost()) {   1                $request->withPost($requestData);               } else {   0                $request->withGet($requestData);               }   6            foreach ($requestData as $key => $value) {   (                $request->$key = $value;               }   	        }           return $next($request);       }   }5�_�   /   1           0          ����                                                                                                                                                                                                                                                                                                                               O          6       v   6    a8f�    �         =    �         =    5�_�   0               1          ����                                                                                                                                                                                                                                                                                                                               O          6       v   6    a8f�    �                        return $next($request);5�_�                     ;        ����                                                                                                                                                                                                                                                                                                                                                             a2�e     �   ;   <   =       5��