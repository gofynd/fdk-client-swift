

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: AsCnRefundData
         Used By: Finance
     */

    class AsCnRefundData: Codable {
        public var sellerId: Int?

        public var toggleEditRequired: Bool?

        public var affiliateId: String?

        public enum CodingKeys: String, CodingKey {
            case sellerId = "seller_id"

            case toggleEditRequired = "toggle_edit_required"

            case affiliateId = "affiliate_id"
        }

        public init(affiliateId: String? = nil, sellerId: Int? = nil, toggleEditRequired: Bool? = nil) {
            self.sellerId = sellerId

            self.toggleEditRequired = toggleEditRequired

            self.affiliateId = affiliateId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sellerId = try container.decode(Int.self, forKey: .sellerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                toggleEditRequired = try container.decode(Bool.self, forKey: .toggleEditRequired)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(toggleEditRequired, forKey: .toggleEditRequired)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)
        }
    }
}
