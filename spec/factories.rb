Factory.define :user do |user|
  user.name	"dheeraj suthar"
  user.email	"dheeraj@futurenow.biz"
  user.password	"foobar"
end

Factory.sequence :email do |n|
	"person-#{n}@example.com"
end
