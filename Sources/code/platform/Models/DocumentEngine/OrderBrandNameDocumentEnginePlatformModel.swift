

import Foundation

public extension PlatformClient.DocumentEngine {
    /*
         Model: OrderBrandName
         Used By: DocumentEngine
     */

    class OrderBrandName: Codable {
        public var modifiedOn: String?

        public var company: String

        public var id: Int

        public var logo: String

        public var brandName: String

        public var createdOn: String

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case company

            case id

            case logo

            case brandName = "brand_name"

            case createdOn = "created_on"
        }

        public init(brandName: String, company: String, createdOn: String, id: Int, logo: String, modifiedOn: String? = nil) {
            self.modifiedOn = modifiedOn

            self.company = company

            self.id = id

            self.logo = logo

            self.brandName = brandName

            self.createdOn = createdOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(String.self, forKey: .company)

            id = try container.decode(Int.self, forKey: .id)

            logo = try container.decode(String.self, forKey: .logo)

            brandName = try container.decode(String.self, forKey: .brandName)

            createdOn = try container.decode(String.self, forKey: .createdOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(company, forKey: .company)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
        }
    }
}
