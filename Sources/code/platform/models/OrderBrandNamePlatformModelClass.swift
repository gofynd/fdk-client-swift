

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBrandName
         Used By: Order
     */

    class OrderBrandName: Codable {
        public var createdOn: String

        public var logo: String

        public var brandName: String

        public var company: String?

        public var modifiedOn: String?

        public var id: Int

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case logo

            case brandName = "brand_name"

            case company

            case modifiedOn = "modified_on"

            case id
        }

        public init(brandName: String, company: String? = nil, createdOn: String, id: Int, logo: String, modifiedOn: String? = nil) {
            self.createdOn = createdOn

            self.logo = logo

            self.brandName = brandName

            self.company = company

            self.modifiedOn = modifiedOn

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            logo = try container.decode(String.self, forKey: .logo)

            brandName = try container.decode(String.self, forKey: .brandName)

            do {
                company = try container.decode(String.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(brandName, forKey: .brandName)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
