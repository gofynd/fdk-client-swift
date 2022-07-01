

import Foundation
public extension PlatformClient {
    /*
         Model: ExcludeIdentifier
         Used By: Cart
     */

    class ExcludeIdentifier: Codable {
        public var brandId: [Int]?

        public enum CodingKeys: String, CodingKey {
            case brandId = "brand_id"
        }

        public init(brandId: [Int]? = nil) {
            self.brandId = brandId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brandId = try container.decode([Int].self, forKey: .brandId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandId, forKey: .brandId)
        }
    }
}
