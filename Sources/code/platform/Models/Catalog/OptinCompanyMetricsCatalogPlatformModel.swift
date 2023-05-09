

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: OptinCompanyMetrics
         Used By: Catalog
     */

    class OptinCompanyMetrics: Codable {
        public var brand: Int?

        public var store: Int?

        public var company: String?

        public enum CodingKeys: String, CodingKey {
            case brand

            case store

            case company
        }

        public init(brand: Int? = nil, company: String? = nil, store: Int? = nil) {
            self.brand = brand

            self.store = store

            self.company = company
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brand = try container.decode(Int.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(company, forKey: .company)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: OptinCompanyMetrics
         Used By: Catalog
     */

    class OptinCompanyMetrics: Codable {
        public var brand: Int?

        public var store: Int?

        public var company: String?

        public enum CodingKeys: String, CodingKey {
            case brand

            case store

            case company
        }

        public init(brand: Int? = nil, company: String? = nil, store: Int? = nil) {
            self.brand = brand

            self.store = store

            self.company = company
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brand = try container.decode(Int.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(company, forKey: .company)
        }
    }
}
