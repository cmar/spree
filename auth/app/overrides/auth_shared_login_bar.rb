Deface::Override.new(:virtual_path => "spree/shared/_nav_bar",
                     :name => "auth_shared_login_bar",
                     :replace => "li#login-bar",
                     :partial => "spree/shared/login_bar",
                     :disabled => false)

