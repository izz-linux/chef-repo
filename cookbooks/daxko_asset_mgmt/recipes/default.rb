package 'httpd'

service 'httpd' do
  action [:enable, :start]
end

template '/var/www/html/index.php' do
  source 'index.php.erb'
end

template '/var/www/html/search.php' do
  source 'search.php.erb'
end

template '/var/www/html/add.php' do
  source 'add.php.erb'
end

package 'wget'

#yum_repository 'mysql-community' do
#  baseurl 'https://dev.mysql.com/get/mysql80-community-release-el7-1.noarch.rpm'
#end

execute 'mysql_repo' do
  command '/usr/bin/yum install https://dev.mysql.com/get/mysql80-community-release-el7-1.noarch.rpm'
end
