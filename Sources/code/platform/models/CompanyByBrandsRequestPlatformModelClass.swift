

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyByBrandsRequest
         Used By: Configuration
     */

    class CompanyByBrandsRequest: Codable {
        public var brands: Int

        public var searchText: String?

        public enum CodingKeys: String, CodingKey {
            case brands

            case searchText = "search_text"
        }

        public init(brands: Int, searchText: String? = nil) {
            self.brands = brands

            self.searchText = searchText
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brands = try container.decode(Int.self, forKey: .brands)

            do {
                searchText = try container.decode(String.self, forKey: .searchText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brands, forKey: .brands)

            try? container.encodeIfPresent(searchText, forKey: .searchText)
        }
    }
}
