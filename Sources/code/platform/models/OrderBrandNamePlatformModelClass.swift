

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBrandName
         Used By: Order
     */

    class OrderBrandName: Codable {
        public var createdOn: Int

        public var logo: String

        public var modifiedOn: Int?

        public var id: Int

        public var company: String?

        public var brandName: String

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case logo

            case modifiedOn = "modified_on"

            case id

            case company

            case brandName = "brand_name"
        }

        public init(brandName: String, company: String? = nil, createdOn: Int, id: Int, logo: String, modifiedOn: Int? = nil) {
            self.createdOn = createdOn

            self.logo = logo

            self.modifiedOn = modifiedOn

            self.id = id

            self.company = company

            self.brandName = brandName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdOn = try container.decode(Int.self, forKey: .createdOn)

            logo = try container.decode(String.self, forKey: .logo)

            do {
                modifiedOn = try container.decode(Int.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            do {
                company = try container.decode(String.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandName = try container.decode(String.self, forKey: .brandName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(brandName, forKey: .brandName)
        }
    }
}
