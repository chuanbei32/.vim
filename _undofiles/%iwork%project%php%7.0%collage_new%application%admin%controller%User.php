Vim�UnDo� ���(�����j���t�P���z���.�\`�  �   /                    $lock[] = $item['user_id'];  !         &       &   &   &    aO��    _�                           ����                                                                                                                                                                                                                                                                                                                                    %          V       aO��     �      �                  �      �    5�_�                          ����                                                                                                                                                                                                                                                                                                                                    &          V       aO��     �      �                  $users = M('users')5�_�                      $    ����                                                                                                                                                                                                                                                                                                                                    &          V       aO��     �      �    �      �    5�_�                          ����                                                                                                                                                                                                                                                                                                                                    '          V       aO��     �              %            $users = M('users')->wher5�_�                          ����                                                                                                                                                                                                                                                                                                                                    &          V       aO��     �      �      S            $row = M('users')->whereIn('user_id', $uids)->update(['is_lock' => 1]);5�_�                      T    ����                                                                                                                                                                                                                                                                                                                                    &          V       aO��     �      �      U            $users = M('users')->whereIn('user_id', $uids)->update(['is_lock' => 1]);5�_�                      B    ����                                                                                                                                                                                                                                                                                                                                    &          V       aO��     �      �                  �      �    5�_�      	                    ����                                                                                                                                                                                                                                                                                                                                    '          V       aO��     �      �                  5�_�      
           	     %    ����                                                                                                                                                                                                                                                                                                                                    '          V       aO�	     �      �                      �      �    �      �      %            foreach ($users as $item)5�_�   	              
         ����                                                                                                                                                                                                                                                                                                                                    )          V       aO�     �      �                  �      �    5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                    +          V       aO�     �    !  �                      if ()5�_�                           ����                                                                                                                                                                                                                                                                                                                                    +          V       aO�%     �    !  �      %                if ($item['is_lock'])5�_�                       *    ����                                                                                                                                                                                                                                                                                                                                    +          V       aO�(     �     "  �                          �     "  �    �    "  �      *                if (1 == $item['is_lock'])5�_�                   !       ����                                                                                                                                                                                                                                                                                                                                    -          V       aO�3     �     "  �                          $lock[]5�_�                   !   .    ����                                                                                                                                                                                                                                                                                                                                    -          V       aO�8     �     "  �      .                    $lock[] = $item['user_id']5�_�                   !       ����                                                                                                                                                                                                                                                                                                                                    -          V       aO�>     �     "  �      /                    $lock[] = $item['user_id'];5�_�                   !       ����                                                                                                                                                                                                                                                                                                                                    -          V       aO�A     �  !  #  �                          �  !  #  �    5�_�                   #       ����                                                                                                                                                                                                                                                                                                                                    .          V       aO�E     �  #  %  �                      �  #  %  �    5�_�                   $       ����                                                                                                                                                                                                                                                                                                                                    /          V       aO�L     �  #  %  �                      $unlock[]5�_�                   $   ,    ����                                                                                                                                                                                                                                                                                                                                    /          V       aO�a     �  #  %  �      ,                $unlock[] = $item['user_id']5�_�                   '       ����                                                                                                                                                                                                                                                                                                                                    /          V       aO�o     �  &  '                      if($row !== false){5�_�                   (       ����                                                                                                                                                                                                                                                                                                                                    .          V       aO�q     �  '  (                      }else{5�_�                   )       ����                                                                                                                                                                                                                                                                                                                                    -          V       aO�s     �  (  )                      }5�_�                   '       ����                                                                                                                                                                                                                                                                                                                           (         '          V       aO�u     �  &  )  �      _                $this->ajaxReturn(array('status' => 1, 'msg' => '冻结成功', 'data' => ''));   _                $this->ajaxReturn(array('status' => 0, 'msg' => '冻结失败', 'data' => ''));5�_�                   (       ����                                                                                                                                                                                                                                                                                                                           (         '          V       aO�x     �  '  )          [            $this->ajaxReturn(array('status' => 0, 'msg' => '冻结失败', 'data' => ''));5�_�                   &       ����                                                                                                                                                                                                                                                                                                                           (         '          V       aO�{     �  &  (  �    �  &  '  �    5�_�                   &       ����                                                                                                                                                                                                                                                                                                                           )         (          V       aO�}     �  %  '  �      S            $row = M('users')->whereIn('user_id', $uids)->update(['is_lock' => 1]);5�_�                   &       ����                                                                                                                                                                                                                                                                                                                           )         (          V       aO�}     �  %  '  �      R            $ow = M('users')->whereIn('user_id', $uids)->update(['is_lock' => 1]);5�_�                   &       ����                                                                                                                                                                                                                                                                                                                           )         (          V       aO��     �  %  '  �      Q            $w = M('users')->whereIn('user_id', $uids)->update(['is_lock' => 1]);5�_�      !              '       ����                                                                                                                                                                                                                                                                                                                           )         (          V       aO��     �  &  (  �      S            $row = M('users')->whereIn('user_id', $uids)->update(['is_lock' => 1]);5�_�       "           !  &   8    ����                                                                                                                                                                                                                                                                                                                           )         (          V       aO��     �  %  '  �      T            $lock = M('users')->whereIn('user_id', $uids)->update(['is_lock' => 1]);5�_�   !   #           "  '   8    ����                                                                                                                                                                                                                                                                                                                           )         (          V       aO��     �  &  (  �      V            $unlock = M('users')->whereIn('user_id', $uids)->update(['is_lock' => 1]);5�_�   "   %           #  '   U    ����                                                                                                                                                                                                                                                                                                                           )         (          V       aO��    �  &  (  �      X            $unlock = M('users')->whereIn('user_id', $unlock)->update(['is_lock' => 1]);5�_�   #   &   $       %  $       ����                                                                                                                                                                                                                                                                                                                           )         (          V       aO��    �  #  %  �      -                $unlock[] = $item['user_id'];5�_�   %               &  !       ����                                                                                                                                                                                                                                                                                                                           )         (          V       aO��    �     "  �      /                    $lock[] = $item['user_id'];5�_�   #           %   $  !       ����                                                                                                                                                                                                                                                                                                                           )         (          V       aO��     �     "  �      1                    $unlock[] = $item['user_id'];5�_�                  &       ����                                                                                                                                                                                                                                                                                                                           )         (          V       aO�~     �  %  '  �      P            $ = M('users')->whereIn('user_id', $uids)->update(['is_lock' => 1]);5�_�                    &       ����                                                                                                                                                                                                                                                                                                                           *         )          V       aO�~     �  &  '  �                  �  &  (  �                  cks5��