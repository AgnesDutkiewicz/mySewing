module Items
  class AmountOrdersForItemQuery
    def initialize(item_id)
      @item_id = item_id
    end

    def call
      result = 0

      item_versions.each do |item_version|
        orders = item_version.orders

        orders.each do |order|
          result = result.to_f + order.amount.to_f
        end
      end
      result
    end

    private

    attr_reader :item_id

    def item_versions
      item = Item.find(item_id)
      item.item_versions
    end
  end
end
