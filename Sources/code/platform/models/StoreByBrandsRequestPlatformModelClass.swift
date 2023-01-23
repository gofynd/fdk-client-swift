

import Foundation
public extension PlatformClient {
    /*
         Model: StoreByBrandsRequest
         Used By: Configuration
     */

    class StoreByBrandsRequest: Codable {
        public var companyId: Int?

        public var brands: Int

        public var searchText: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case brands

            case searchText = "search_text"
        }

        public init(brands: Int, companyId: Int? = nil, searchText: String? = nil) {
            self.companyId = companyId

            self.brands = brands

            self.searchText = searchText
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(brands, forKey: .brands)

            try? container.encodeIfPresent(searchText, forKey: .searchText)
        }
    }
}
