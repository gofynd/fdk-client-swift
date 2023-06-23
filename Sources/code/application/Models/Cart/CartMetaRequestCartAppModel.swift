

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: CartMetaRequest
         Used By: Cart
     */
    class CartMetaRequest: Codable {
        public var deliverySlots: [String: Any]?

        public var comment: String?

        public var pickUpCustomerDetails: [String: Any]?

        public var checkoutMode: String?

        public var gstin: String?

        public enum CodingKeys: String, CodingKey {
            case deliverySlots = "delivery_slots"

            case comment

            case pickUpCustomerDetails = "pick_up_customer_details"

            case checkoutMode = "checkout_mode"

            case gstin
        }

        public init(checkoutMode: String? = nil, comment: String? = nil, deliverySlots: [String: Any]? = nil, gstin: String? = nil, pickUpCustomerDetails: [String: Any]? = nil) {
            self.deliverySlots = deliverySlots

            self.comment = comment

            self.pickUpCustomerDetails = pickUpCustomerDetails

            self.checkoutMode = checkoutMode

            self.gstin = gstin
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                deliverySlots = try container.decode([String: Any].self, forKey: .deliverySlots)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pickUpCustomerDetails = try container.decode([String: Any].self, forKey: .pickUpCustomerDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliverySlots, forKey: .deliverySlots)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(gstin, forKey: .gstin)
        }
    }
}
