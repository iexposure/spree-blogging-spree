Deface::Override.new(:virtual_path => "spree/admin/shared/main_menu",
                     :name => "blog_admin_tabs",
                     :insert_bottom => "#main-sidebar",
                     :text => "<%= tab(:blog_entries, :label => 'Blog', :url => spree.admin_blog_entries_path, :icon => 'file') if can? :manage, Spree::BlogEntry %>",
                     :text => "<% if can? :admin, BlogEntry %><ul class=\"nav nav-sidebar\"><%= tab *[:blog], icon: 'file'  %></ul><% end %>",
                     :disabled => false)
