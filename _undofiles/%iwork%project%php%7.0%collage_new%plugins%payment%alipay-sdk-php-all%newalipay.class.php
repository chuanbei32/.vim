Vim�UnDo� 3U��U�<���o�+l��6)��b��8���#   a                                  a>�E    _�                     O       ����                                                                                                                                                                                                                                                                                                                                                             a>��    �   N   P   a      2        $this->writeLog(print_r($response, true));5�_�                   O       ����                                                                                                                                                                                                                                                                                                                                                             a>��     �   N   P   a      4        # $this->writeLog(print_r($response, true));5�_�                    O       ����                                                                                                                                                                                                                                                                                                                                                             a>��    �   N   P          2        $this->writeLog(print_r($response, true));5�_�                     O       ����                                                                                                                                                                                                                                                                                                                                                             a>�D     �               a   <?php       use think\Env;   use think\Model;   use think\Request;    use app\admin\logic\RefundLogic;       class newalipay extends Model   {   =    public $alipay_config = [];// 支付宝支付配置参数       private $config = null;       !    public function __construct()       {   ;        // $this->config = \Think\Config::get('shop_info');   �        // $paymentPlugin = M('Plugin')->where("code='newalipay' and  type = 'payment' ")->find(); // 找到支付插件的配置   ]        // $config_value = unserialize($paymentPlugin['config_value']); // 配置反序列化   n        // $this->alipay_config['app_id'] = $config_value['app_id']; // 支付宝分配给开发者的应用ID   p        // $this->alipay_config['merchant_private_key'] = $config_value['merchant_private_key']; // 商户私钥   �        // $this->alipay_config['notify_url'] = SITE_URL . U('Payment/notifyUrl', ['pay_code' => 'newalipay']); //异步通知地址   ~        // $this->alipay_config['return_url'] = SITE_URL . U('Payment/returnUrl', ['pay_code' => 'newalipay']); //同步跳转   D        // $this->alipay_config['charset'] = 'UTF-8'; //编码格式   E        // $this->alipay_config['sign_type'] = 'RSA2'; //签名方式   j        // $this->alipay_config['gatewayUrl'] = 'https://openapi.alipay.com/gateway.do'; //支付宝网关   �        // $this->alipay_config['alipay_public_key'] = $config_value['alipay_public_key']; //支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。       }           /**   +     * 单笔转账到支付宝账户接口        * @param $data        */   )    public function transfer(array $data)       {   V        require_once PLUGIN_PATH . 'payment/alipay-sdk-php-all/aop/AopCertClient.php';   "        $c = new \AopCertClient();   �        $appCertPath = CERT_PATH . Env::get('APPCERTPATH'); // 应用证书路径（要确保证书文件可读），例如：/home/admin/cert/appCertPublicKey.crt   �        $alipayCertPath = CERT_PATH . Env::get('ALIPAYCERTPATH'); // 支付宝公钥证书路径（要确保证书文件可读），例如：/home/admin/cert/alipayCertPublicKey_RSA2.crt   �        $rootCertPath = CERT_PATH . Env::get('ROOTCERTPATH'); // 支付宝根证书路径（要确保证书文件可读），例如：/home/admin/cert/alipayRootCert.crt       A        $c->gatewayUrl = 'https://openapi.alipay.com/gateway.do';   '        $c->appId = '2021002151681950';  �        $c->rsaPrivateKey = 'MIIEpgIBAAKCAQEA6l699vWMTE2bQSEzZ7pyZL1D3gvP+pm0w2ELOOFc5XtJwKDrpL3BRMnxw612uC99ok129taCmWpVnZt4+RrZEM4fd0+6ZTgq0iiwI8gXfbvsPwDen8PbPp+ZBvYHixiubL74/Msz7xCvahdl6w43MkLCt8Y2XWgnJzcahqXrCd5ERfP6lJwIN5Ysx5AFATAzb+wYlCO1vJdBtGE/3dw7a3H2lzcofgyERlP2LNrJSWH7HirG+48uoDdOmKXQyV5TLx6EzO7EMh9204mpEFIrt9RZAeeG2eQKPdMX/vgfMptSIBBwp0lNNZm1L5l4GrEVXOBS5W5X2eSEULhs9aTmmQIDAQABAoIBAQDGDBFSouRPhjTvsHKT8MXBwv2aoTi6dzB8+YBWLHonoSsNj+4QZBjxXATkaaysr9TmVbd1lob9xRFcAYkUV0+eF9AXLlRAPFpTBPbzBZ50LVzRUJbPQt396TeS3kw5ij26vxX/6GaWWe8hI2yIWJbj7e5FBUXjYKPVS4cqyQH4bzAK8BBlx8UxZIo4UuL0M2D7+9J4vNc+llkljTLRz/ruC1kUl320FievZVcPqua6+rJoJM3JCUvkKwonI1+RXTPwIJTzuTRIcnSONB4OeQ1uzUIaflqROicz4j43dg7tkOd8djyxkEKiDEUu5+/ohXy9sPsgtJSdVZwg6LdbkG4BAoGBAPn0UyhdXaodP+0PnmiMMQb1wnUua2WxWnHigQhpqa5ZN/JF3GZaDCVv6OP6Nfv8ZXvLlEZeZ2vjboio/6yKld2V2O6sciKMRb+Hy2XcHNy91kR7xwtzAWOkVa4sJudgSaVJDitcNUUgJ4WqVILoi1scCWs61LuOkgKmWeSZNFUpAoGBAPAJ6/ziGCvNtF3yRqboiF4EGPeQLVtvx/jVAiUUOBz9yL+gSZtscpY/CEiqfVnNAeicyyw3Di8j2tiZ9RCRachIIideKTPcz1HatUZkDA6Jvj8869D++/sN75m+KYRt3H8WlujvO1wcswj9hqQrMELiAzkEOXkBcVd+5PT0P0PxAoGBAMCAS58VsPI3zqjbU4t/FK8gjN/EnU/XdCmrYObCwbyV18GNzj1BcoNOmdUiOXtVGi9qTUqYoBv2L4WuaiJPJTZflo/SXaB/2aO1iI9tIwlaZu+dSGFn9BTyVk5qkJe3j2BtUC1SuXAAYI/P64BaaiEECbj8uSOtnIPP7AFjgGtpAoGBAOhXAjgddH35tyr0FlT6YPx3hN8ji/OkZ/A/5bqULphJQaXR9U1elC8/xbnoZDqmx8Eq+zHJ/I2+a9cadm3aAoUc5QosBz+u7HFze+Etd8oeo6o8QpliJe7kl1W+Dhuj5ziQWfQPk+pd0SHTnB6Nu0IR2EK5BxRMRDQHnIBJZm9RAoGBAMacsGmUhuj8KNSLAm6OwJEuzwSPTC9z//sZaCJbBro6rkIs4CyMtmcg5d3KqIFcgbFxYyrMt5GtQSOKjssfsAaxlftzQjUYOohtu324orCG53Dsnc+E/DrD9K3pPFw2ZfwEfHH5V5dgtYfrb9lwhy7CfZ4SrrLVLwxUxUrVHcds'; // 请填写开发者私钥去头去尾去回车，一行字符串           $c->format = 'json';           $c->charset = 'UTF-8';           $c->signType = 'RSA2';       C        //调用getPublicKey从支付宝公钥证书中提取公钥   C        $c->alipayrsaPublicKey = $c->getPublicKey($alipayCertPath);   y        //是否校验自动下载的支付宝公钥证书，如果开启校验要保证支付宝根证书在有效期内   +        $c->isCheckAlipayPublicCert = true;   .        //调用getCertSN获取证书序列号   4        $c->appCertSN = $c->getCertSN($appCertPath);   >        //调用getRootCertSN获取支付宝根证书序列号   @        $c->alipayRootCertSN = $c->getRootCertSN($rootCertPath);   f        // $c->alipayRootCertSN = '687b59193f3f462dd5336e5abf83c5d8_02941eef3187dddf3d3b83462e1dfcf6';       �        //实例化具体API对应的request类,类名称和接口名称对应,当前调用接口名称：alipay.open.public.template.message.industry.modify   r        require_once PLUGIN_PATH . 'payment/alipay-sdk-php-all/aop/request/AlipayFundTransUniTransferRequest.php';   <        $request = new \AlipayFundTransUniTransferRequest();       O        //SDK已经封装掉了公共参数，这里只需要传入业务参数   X        //此次只是参数展示，未进行字符串转义，实际情况下请转义           $aliData = [   0            'out_biz_no' => $data['out_biz_no'],   5            'product_code' => 'TRANS_ACCOUNT_NO_PWD',   (            'remark' => $data['remark'],   .            'trans_amount' => $data['amount'],   -            'biz_scene' => 'DIRECT_TRANSFER',               'payee_info' => [   5                'identity' => $data['payee_account'],   5                'identity_type' => 'ALIPAY_LOGON_ID',   3                'name' => $data['payee_real_name'],               ]   
        ];   7        $request->setBizContent(json_encode($aliData));   *        $response = $c->execute($request);               //打印转账日志   4        //$this->writeLog(print_r($response, true));       Z        $responseNode = str_replace('.', '_', $request->getApiMethodName()) . '_response';   5        $resultCode = $response->$responseNode->code;   :        if (!empty($resultCode) && $resultCode == 10000) {   ]            return ['status' => 10000, 'out_biz_no' => $response->$responseNode->out_biz_no];           } else {   �            return ['status' => 0, 'code' => $resultCode, 'msg' => $response->$responseNode->msg, 'sub_code' => $response->$responseNode->sub_code, 'sub_msg' => $response->$responseNode->sub_msg, 'out_biz_no' => $response->$responseNode->out_biz_no];   	        }       }           /**   I     * 请确保项目文件有可写权限，不然打印不了日志。        */   #    public function writeLog($text)       {   �        file_put_contents(dirname(__FILE__) . DIRECTORY_SEPARATOR . './log.txt', date('Y-m-d H:i:s') . '  ' . $text . PHP_EOL, FILE_APPEND);       }   }5�_�                   O   
    ����                                                                                                                                                                                                                                                                                                                                                             a>��     �   N   P   a              # t st   2        $this->writeLog(print_r($response, true));5�_�                    O   
    ����                                                                                                                                                                                                                                                                                                                                                             a>��     �   N   P   a              # t st   2        $this->writeLog(print_r($response, true));5��