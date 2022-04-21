

import Foundation
public extension PlatformClient {
    /*
         Model: StoreCriteriaRule
         Used By: Configuration
     */

    class StoreCriteriaRule: Codable {
        public var companies: [Int]?

        public var brands: [Int]?

        public enum CodingKeys: String, CodingKey {
            case companies

            case brands
        }

        public init(brands: [Int]? = nil, companies: [Int]? = nil) {
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
                brands = try container.decode([Int].self, forKey: .brands)

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
