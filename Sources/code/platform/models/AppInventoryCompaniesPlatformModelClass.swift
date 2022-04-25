

import Foundation
public extension PlatformClient {
    /*
         Model: AppInventoryCompanies
         Used By: Configuration
     */

    class AppInventoryCompanies: Codable {
        public var uid: Int?

        public var name: String?

        public var companyType: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case name

            case companyType = "company_type"
        }

        public init(companyType: String? = nil, name: String? = nil, uid: Int? = nil) {
            self.uid = uid

            self.name = name

            self.companyType = companyType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyType = try container.decode(String.self, forKey: .companyType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyType, forKey: .companyType)
        }
    }
}
