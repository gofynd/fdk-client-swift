

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: DeleteConfig
         Used By: Finance
     */

    class DeleteConfig: Codable {
        public var sellerId: Int?

        public var affiliateId: String?

        public var slugValues: [String]?

        public enum CodingKeys: String, CodingKey {
            case sellerId = "seller_id"

            case affiliateId = "affiliate_id"

            case slugValues = "slug_values"
        }

        public init(affiliateId: String? = nil, sellerId: Int? = nil, slugValues: [String]? = nil) {
            self.sellerId = sellerId

            self.affiliateId = affiliateId

            self.slugValues = slugValues
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
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slugValues = try container.decode([String].self, forKey: .slugValues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(slugValues, forKey: .slugValues)
        }
    }
}
