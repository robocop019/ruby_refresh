module StoreFront
  class Item
    attr_reader :name, :color, :price
    attr_writer :price

    def initialize(input_options)
      @name = input_options[:name]
      @color = input_options[:color]
      @price = input_options[:price]
    end

  end
end


