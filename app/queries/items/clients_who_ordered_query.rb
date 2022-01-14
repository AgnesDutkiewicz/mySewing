module Items
  class ClientsWhoOrderedQuery
    def initialize(item_id)
      @item_id = item_id
    end

    def call
      # "= []" creates (empty) list
      result = []

      item_versions.each do |item_version|
        orders = item_version.orders

        orders.each do |order|
          # << adds some values to list
          result << order.client.client_name
          # 1st solution
          result = result.uniq
          # 2nd solution
          # result
        end
      end
      # Find in documentation how to delete duplicates. At least 2 solutions.
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
