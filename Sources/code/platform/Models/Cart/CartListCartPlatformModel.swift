

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartList
         Used By: Cart
     */

    class CartList: Codable {
        public var pickUpCustomerDetails: String?

        public var cartValue: String?

        public var itemCounts: String?

        public var createdOn: String?

        public var cartId: String?

        public var userId: String?

        public enum CodingKeys: String, CodingKey {
            case pickUpCustomerDetails = "pick_up_customer_details"

            case cartValue = "cart_value"

            case itemCounts = "item_counts"

            case createdOn = "created_on"

            case cartId = "cart_id"

            case userId = "user_id"
        }

        public init(cartId: String? = nil, cartValue: String? = nil, createdOn: String? = nil, itemCounts: String? = nil, pickUpCustomerDetails: String? = nil, userId: String? = nil) {
            self.pickUpCustomerDetails = pickUpCustomerDetails

            self.cartValue = cartValue

            self.itemCounts = itemCounts

            self.createdOn = createdOn

            self.cartId = cartId

            self.userId = userId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pickUpCustomerDetails = try container.decode(String.self, forKey: .pickUpCustomerDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartValue = try container.decode(String.self, forKey: .cartValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemCounts = try container.decode(String.self, forKey: .itemCounts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartId = try container.decode(String.self, forKey: .cartId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)

            try? container.encodeIfPresent(cartValue, forKey: .cartValue)

            try? container.encodeIfPresent(itemCounts, forKey: .itemCounts)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(cartId, forKey: .cartId)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }
}
