class RubyMetaPro
  def hello(name)
    p "Hello, #{name}"
  end

  define_method :my_name do |name|
    p "My name, #{name}"
  end

  def public_my_age(age)
    p "age, #{age} (public)"
  end

  define_method(:my_age, instance_method(:public_my_age))

  private

  def private_hello(name)
    p "Hello, #{name} (private)"
  end

end

obj = RubyMetaPro.new
obj.send(:hello, "John")
obj.send(:private_hello, "John")
obj.public_send(:hello, "Doe")
obj.my_name('Doe')
obj.my_age(20)
