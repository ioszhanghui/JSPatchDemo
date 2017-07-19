require('UIAlertView');
defineClass('ViewController', {
            btnClick: function() {
            
            var al = UIAlertView.alloc().initWithTitle_message_delegate_cancelButtonTitle_otherButtonTitles("更新了", null, null, null, "确定", null);
            al.show();
            
            },
            });
