

import Foundation
public extension ApplicationClient {
    /*
         Model: CartMetaRequest
         Used By: Cart
     */
    class CartMetaRequest: Codable {
        public var gstin: String?

        public var comment: String?

        public var pickUpCustomerDetails: [String: Any]?

        public var checkoutMode: String?

        public enum CodingKeys: String, CodingKey {
            case gstin

            case comment

            case pickUpCustomerDetails = "pick_up_customer_details"

            case checkoutMode = "checkout_mode"
        }

        public init(checkoutMode: String? = nil, comment: String? = nil, gstin: String? = nil, pickUpCustomerDetails: [String: Any]? = nil) {
            self.gstin = gstin

            self.comment = comment

            self.pickUpCustomerDetails = pickUpCustomerDetails

            self.checkoutMode = checkoutMode
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)
        }
    }
}
