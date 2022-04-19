import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CrossSellingResponse
         Used By: Catalog
     */

    class CrossSellingResponse: Codable {
        public var brandDistribution: CatalogInsightBrand?

        public var data: CrossSellingData?

        public enum CodingKeys: String, CodingKey {
            case brandDistribution = "brand_distribution"

            case data
        }

        public init(brandDistribution: CatalogInsightBrand? = nil, data: CrossSellingData? = nil) {
            self.brandDistribution = brandDistribution

            self.data = data
        }

        public func duplicate() -> CrossSellingResponse {
            let dict = self.dictionary!
            let copy = CrossSellingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brandDistribution = try container.decode(CatalogInsightBrand.self, forKey: .brandDistribution)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode(CrossSellingData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandDistribution, forKey: .brandDistribution)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
