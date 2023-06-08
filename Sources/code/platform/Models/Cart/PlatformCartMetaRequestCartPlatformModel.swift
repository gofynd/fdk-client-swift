

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PlatformCartMetaRequest
         Used By: Cart
     */

    class PlatformCartMetaRequest: Codable {
        public var checkoutMode: String?

        public var gstin: String?

        public var panNo: String?

        public var giftDetails: [String: Any]?

        public var comment: String?

        public var pickUpCustomerDetails: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case checkoutMode = "checkout_mode"

            case gstin

            case panNo = "pan_no"

            case giftDetails = "gift_details"

            case comment

            case pickUpCustomerDetails = "pick_up_customer_details"
        }

        public init(checkoutMode: String? = nil, comment: String? = nil, giftDetails: [String: Any]? = nil, gstin: String? = nil, panNo: String? = nil, pickUpCustomerDetails: [String: Any]? = nil) {
            self.checkoutMode = checkoutMode

            self.gstin = gstin

            self.panNo = panNo

            self.giftDetails = giftDetails

            self.comment = comment

            self.pickUpCustomerDetails = pickUpCustomerDetails
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
                gstin = try container.decode(String.self, forKey: .gstin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                panNo = try container.decode(String.self, forKey: .panNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                giftDetails = try container.decode([String: Any].self, forKey: .giftDetails)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(checkoutMode, forKey: .checkoutMode)

            try? container.encodeIfPresent(gstin, forKey: .gstin)

            try? container.encodeIfPresent(panNo, forKey: .panNo)

            try? container.encode(giftDetails, forKey: .giftDetails)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(pickUpCustomerDetails, forKey: .pickUpCustomerDetails)
        }
    }
}
