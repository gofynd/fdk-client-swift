import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyBrandPostRequestSerializer
         Used By: CompanyProfile
     */

    class CompanyBrandPostRequestSerializer: Codable {
        public var uid: Int?

        public var company: Int

        public var brands: [Int]

        public enum CodingKeys: String, CodingKey {
            case uid

            case company

            case brands
        }

        public init(brands: [Int], company: Int, uid: Int? = nil) {
            self.uid = uid

            self.company = company

            self.brands = brands
        }

        public func duplicate() -> CompanyBrandPostRequestSerializer {
            let dict = self.dictionary!
            let copy = CompanyBrandPostRequestSerializer(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            company = try container.decode(Int.self, forKey: .company)

            brands = try container.decode([Int].self, forKey: .brands)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(brands, forKey: .brands)
        }
    }
}
