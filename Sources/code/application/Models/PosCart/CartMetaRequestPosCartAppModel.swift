

import Foundation
public extension ApplicationClient.PosCart {
    /*
         Model: CartMetaRequest
         Used By: PosCart
     */
    class CartMetaRequest: Codable {
        public var gstin: String?

        public var pickUpCustomerDetails: [String: Any]?

        public var comment: String?

        public var checkoutMode: String?

        public var deliverySlots: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case gstin

            case pickUpCustomerDetails = "pick_up_customer_details"

            case comment

            case checkoutMode = "checkout_mode"

            case deliverySlots = "delivery_slots"
        }

        public init(checkoutMode: String? = nil, comment: String? = nil, deliverySlots: [String: Any]? = nil, gstin: String? = nil, pickUpCustomerDetails: [String: Any]? = nil) {
            self.gstin = gstin

            self.pickUpCustomerDetails = pickUpCustomerDetails

            self.comment = comment

            self.checkoutMode = checkoutMode

            self.deliverySlots = deliverySlots
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                gstin = try container.decode(String.self, forKey: .gstin)

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
                comment = try container.decode(String.self, forKey: .comment)

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
                deliverySlots = try container.decode([String: Any].self, forKey: .deliverySlots)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(deliverySlots, forKey: .deliverySlots)
        }
    }
}
