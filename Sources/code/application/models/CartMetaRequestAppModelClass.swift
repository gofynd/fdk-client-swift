

import Foundation
public extension ApplicationClient {
    /*
         Model: CartMetaRequest
         Used By: Cart
     */
    class CartMetaRequest: Codable {
        public var checkoutMode: String?

        public var revenueTax: RevenueTaxDetail?

        public var comment: String?

        public var pickUpCustomerDetails: [String: Any]?

        public var gstin: String?

        public enum CodingKeys: String, CodingKey {
            case checkoutMode = "checkout_mode"

            case revenueTax = "revenue_tax"

            case comment

            case pickUpCustomerDetails = "pick_up_customer_details"

            case gstin
        }

        public init(checkoutMode: String? = nil, comment: String? = nil, gstin: String? = nil, pickUpCustomerDetails: [String: Any]? = nil, revenueTax: RevenueTaxDetail? = nil) {
            self.checkoutMode = checkoutMode

            self.revenueTax = revenueTax

            self.comment = comment

            self.pickUpCustomerDetails = pickUpCustomerDetails

            self.gstin = gstin
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                checkoutMode = try container.decode(String.self, forKey: .checkoutMode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                revenueTax = try container.decode(RevenueTaxDetail.self, forKey: .revenueTax)

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
                gstin = try container.decode(String.self, forKey: .gstin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(revenueTax, forKey: .revenueTax)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)

            try? container.encodeIfPresent(gstin, forKey: .gstin)
        }
    }
}
