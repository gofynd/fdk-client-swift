

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: RevenueTaxDetail
         Used By: Cart
     */
    class RevenueTaxDetail: Codable {
        public var taxPercentage: Double?

        public var taxType: String?

        public enum CodingKeys: String, CodingKey {
            case taxPercentage = "tax_percentage"

            case taxType = "tax_type"
        }

        public init(taxPercentage: Double? = nil, taxType: String? = nil) {
            self.taxPercentage = taxPercentage

            self.taxType = taxType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                taxPercentage = try container.decode(Double.self, forKey: .taxPercentage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxType = try container.decode(String.self, forKey: .taxType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxPercentage, forKey: .taxPercentage)

            try? container.encodeIfPresent(taxType, forKey: .taxType)
        }
    }
}
