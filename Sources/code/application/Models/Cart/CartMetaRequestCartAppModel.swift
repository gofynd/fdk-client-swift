

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: CartMetaRequest
         Used By: Cart
     */
    class CartMetaRequest: Codable {
        public var giftDetails: ArticleGiftDetail?

        public var checkoutMode: String?

        public var deliverySlots: [String: Any]?

        public var comment: String?

        public var gstin: String?

        public var pickUpCustomerDetails: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case giftDetails = "gift_details"

            case checkoutMode = "checkout_mode"

            case deliverySlots = "delivery_slots"

            case comment

            case gstin

            case pickUpCustomerDetails = "pick_up_customer_details"
        }

        public init(checkoutMode: String? = nil, comment: String? = nil, deliverySlots: [String: Any]? = nil, giftDetails: ArticleGiftDetail? = nil, gstin: String? = nil, pickUpCustomerDetails: [String: Any]? = nil) {
            self.giftDetails = giftDetails

            self.checkoutMode = checkoutMode

            self.deliverySlots = deliverySlots

            self.comment = comment

            self.gstin = gstin

            self.pickUpCustomerDetails = pickUpCustomerDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                giftDetails = try container.decode(ArticleGiftDetail.self, forKey: .giftDetails)

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

            do {
                comment = try container.decode(String.self, forKey: .comment)

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

            do {
                pickUpCustomerDetails = try container.decode([String: Any].self, forKey: .pickUpCustomerDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(giftDetails, forKey: .giftDetails)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(deliverySlots, forKey: .deliverySlots)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)
        }
    }
}
