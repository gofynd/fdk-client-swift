

import Foundation
public extension PlatformClient {
    /*
         Model: BrandsByCompanyResponse
         Used By: Configuration
     */

    class BrandsByCompanyResponse: Codable {
        public var brands: CompanyBrandInfo?

        public enum CodingKeys: String, CodingKey {
            case brands
        }

        public init(brands: CompanyBrandInfo? = nil) {
            self.brands = brands
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brands = try container.decode(CompanyBrandInfo.self, forKey: .brands)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brands, forKey: .brands)
        }
    }
}
