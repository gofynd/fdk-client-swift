

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyBrandPostRequestSerializer
         Used By: CompanyProfile
     */

    class CompanyBrandPostRequestSerializer: Codable {
        public var company: Int

        public var brands: [Int]

        public var uid: Int?

        public enum CodingKeys: String, CodingKey {
            case company

            case brands

            case uid
        }

        public init(brands: [Int], company: Int, uid: Int? = nil) {
            self.company = company

            self.brands = brands

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            company = try container.decode(Int.self, forKey: .company)

            brands = try container.decode([Int].self, forKey: .brands)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(brands, forKey: .brands)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}
