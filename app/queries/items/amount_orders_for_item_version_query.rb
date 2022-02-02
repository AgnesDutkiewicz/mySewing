module Items
  class AmountOrdersForItemVersionQuery
    def initialize(item_version_id)
      @item_version_id = item_version_id
    end

    def call
      result = 0

      orders = item_version.orders

      orders.where(item_version_id: item_version_id)

      orders.each do |order|
        result = result.to_f + order.amount.to_f
      end
      result
    end

    private

    attr_reader :item_version_id

    def item_version
      ItemVersion.find(item_version_id)
    end
  end
end
