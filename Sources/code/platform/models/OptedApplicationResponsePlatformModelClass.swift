

import Foundation
public extension PlatformClient {
    /*
         Model: OptedApplicationResponse
         Used By: Configuration
     */

    class OptedApplicationResponse: Codable {
        public var name: String?

        public var description: String?

        public var id: String?

        public var domain: String?

        public var company: OptedCompany?

        public var optedInventory: OptedInventory?

        public var optOutInventory: OptOutInventory?

        public enum CodingKeys: String, CodingKey {
            case name

            case description

            case id = "_id"

            case domain

            case company

            case optedInventory = "opted_inventory"

            case optOutInventory = "opt_out_inventory"
        }

        public init(company: OptedCompany? = nil, description: String? = nil, domain: String? = nil, name: String? = nil, optedInventory: OptedInventory? = nil, optOutInventory: OptOutInventory? = nil, id: String? = nil) {
            self.name = name

            self.description = description

            self.id = id

            self.domain = domain

            self.company = company

            self.optedInventory = optedInventory

            self.optOutInventory = optOutInventory
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                domain = try container.decode(String.self, forKey: .domain)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode(OptedCompany.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                optedInventory = try container.decode(OptedInventory.self, forKey: .optedInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                optOutInventory = try container.decode(OptOutInventory.self, forKey: .optOutInventory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(domain, forKey: .domain)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(optedInventory, forKey: .optedInventory)

            try? container.encodeIfPresent(optOutInventory, forKey: .optOutInventory)
        }
    }
}
