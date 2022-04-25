

import Foundation
public extension PlatformClient {
    /*
         Model: AppStoreRules
         Used By: Configuration
     */

    class AppStoreRules: Codable {
        public var companies: [Int]?

        public var brands: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case companies

            case brands
        }

        public init(brands: [[String: Any]]? = nil, companies: [Int]? = nil) {
            self.companies = companies

            self.brands = brands
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companies = try container.decode([Int].self, forKey: .companies)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brands = try container.decode([[String: Any]].self, forKey: .brands)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companies, forKey: .companies)

            try? container.encodeIfPresent(brands, forKey: .brands)
        }
    }
}
