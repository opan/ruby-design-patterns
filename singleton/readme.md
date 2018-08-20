Intention:
- Ensure a class has only one instance, and provide a global point of access to it.
- Encapsulated "just-in-time initialization" or "initialization on first use".

Problem:
The application needs one, and only one instance of an object. Additionally, lazy initialization and global access are necessary.

Criteria:
- Ownership of the single instance cannot be reasonably assigned.
- Lazy initialization is desirable.
- Global access is not otherwise provided for.

Checklist:
- Define a private static attribute in the "single instance" class.
- Define a public static accessor function in the class.
- Do "lazy initialization" (creation on first use) in the accessor function.
- Define all constructors to be protected or private.
- Clients may only use the accessor function to manipulate the Singleton.


```ruby

class SimpleCounter
  attr_accessor :count

  def initialize
    @count ||= 0
  end

  # Accessor that user can use to manipulate the instance
  def add
    @count = @count + 1
  end

  # This class method act as `public static` accessor
  def self.instance
    @@instance
  end

  # This class variable act as `private static` attribute
  # and also do an initialization right after the code is loaded
  @@instance = SimpleCounter.new
  private_class_method :new
end

```
