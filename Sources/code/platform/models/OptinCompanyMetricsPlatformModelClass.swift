import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: OptinCompanyMetrics
         Used By: Catalog
     */

    class OptinCompanyMetrics: Codable {
        public var store: Int?

        public var company: String?

        public var brand: Int?

        public enum CodingKeys: String, CodingKey {
            case store

            case company

            case brand
        }

        public init(brand: Int? = nil, company: String? = nil, store: Int? = nil) {
            self.store = store

            self.company = company

            self.brand = brand
        }

        public func duplicate() -> OptinCompanyMetrics {
            let dict = self.dictionary!
            let copy = OptinCompanyMetrics(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                store = try container.decode(Int.self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode(String.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode(Int.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(brand, forKey: .brand)
        }
    }
}
