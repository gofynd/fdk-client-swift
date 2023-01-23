

import Foundation
public extension PlatformClient {
    /*
         Model: OtherSellerApplication
         Used By: Configuration
     */

    class OtherSellerApplication: Codable {
        public var name: String?

        public var description: String?

        public var id: String?

        public var domain: String?

        public var company: OtherSellerCompany?

        public var optType: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case description

            case id = "_id"

            case domain

            case company

            case optType = "opt_type"
        }

        public init(company: OtherSellerCompany? = nil, description: String? = nil, domain: String? = nil, name: String? = nil, optType: String? = nil, id: String? = nil) {
            self.name = name

            self.description = description

            self.id = id

            self.domain = domain

            self.company = company

            self.optType = optType
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
                company = try container.decode(OtherSellerCompany.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                optType = try container.decode(String.self, forKey: .optType)

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

            try? container.encodeIfPresent(optType, forKey: .optType)
        }
    }
}
