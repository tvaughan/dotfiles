class Object
  def pydir
    (methods - Object.instance_methods).sort
  end
end
