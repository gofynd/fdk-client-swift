

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBrandName
         Used By: Order
     */

    class OrderBrandName: Codable {
        public var logo: String

        public var id: Int

        public var brandName: String

        public var createdOn: Int

        public var modifiedOn: Int?

        public var company: String

        public enum CodingKeys: String, CodingKey {
            case logo

            case id

            case brandName = "brand_name"

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case company
        }

        public init(brandName: String, company: String, createdOn: Int, id: Int, logo: String, modifiedOn: Int? = nil) {
            self.logo = logo

            self.id = id

            self.brandName = brandName

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.company = company
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            logo = try container.decode(String.self, forKey: .logo)

            id = try container.decode(Int.self, forKey: .id)

            brandName = try container.decode(String.self, forKey: .brandName)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            do {
                modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(String.self, forKey: .company)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(company, forKey: .company)
        }
    }
}
