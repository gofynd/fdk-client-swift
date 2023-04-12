

import Foundation
public extension ApplicationClient.PosCart {
    /*
         Model: RevenueTaxDetail
         Used By: PosCart
     */
    class RevenueTaxDetail: Codable {
        public var taxType: String?

        public var taxPercentage: Double?

        public enum CodingKeys: String, CodingKey {
            case taxType = "tax_type"

            case taxPercentage = "tax_percentage"
        }

        public init(taxPercentage: Double? = nil, taxType: String? = nil) {
            self.taxType = taxType

            self.taxPercentage = taxPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                taxType = try container.decode(String.self, forKey: .taxType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxPercentage = try container.decode(Double.self, forKey: .taxPercentage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxType, forKey: .taxType)

            try? container.encodeIfPresent(taxPercentage, forKey: .taxPercentage)
        }
    }
}
