module ParserExampleGroup

  def load_part(path)
    _part.new(File.read(fixture("responses", @host.to_s, @suffix.to_s, @schema.to_s, path)), @host)
  end

  _part       = Whois::Answer::Part
  _registrar  = Whois::Answer::Registrar
  _contact    = Whois::Answer::Contact
  _nameserver = Whois::Answer::Nameserver

end

RSpec::Matchers.define :cache_property do |property|
  match do |instance|
    cache = instance.instance_eval do
      @cached_properties = {}
      @cached_properties
    end

    cache.key?(property).should be_false
    value = instance.send(property)

    cache.key?(property).should be_true
    cache[property].should == value

    true
  end

  failure_message_for_should do |instance|
    "expected parser to cache property #{property}"
  end
  failure_message_for_should_not do |instance|
    "expected parser to not cache property #{property}"
  end
end

RSpec::configure do |c|
  def c.escaped_path(*parts)
    Regexp.compile(parts.join('[\\\/]'))
  end

  c.include ParserExampleGroup, :type => :controller, :example_group => {
    :file_path => c.escaped_path(%w( spec whois answer parser ))
  }
end
