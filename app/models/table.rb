class Table < Widget

  def initialize(attributes = {})
    self.display_variables[:providers] = attributes[:providers]
  end

  def display_providers
    display_variables[:providers]
  end
  alias :display_providers :query_providers

  def as_json(options)
    {
      id: id,
      hide: [
        "total_sent",
        "month",
      ],
      data: query_result
    }
  end
end
