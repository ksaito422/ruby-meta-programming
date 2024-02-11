class RubyMetaPro
  def hello(name)
    p "Hello, #{name}"
  end

  private

  def private_hello(name)
    p "Hello, #{name} (private)"
  end
end

obj = RubyMetaPro.new
obj.send(:hello, "John")
obj.send(:private_hello, "John")
obj.public_send(:hello, "Doe")
