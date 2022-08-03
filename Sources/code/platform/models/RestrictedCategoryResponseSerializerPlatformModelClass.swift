

import Foundation
public extension PlatformClient {
    /*
         Model: RestrictedCategoryResponseSerializer
         Used By: CompanyProfile
     */

    class RestrictedCategoryResponseSerializer: Codable {
        public var uid: Int

        public var name: String

        public var fulfilmentType: String?

        public var storeType: String

        public var restrictedCategories: [RestrictedCategoryResponseInfoSerializer]

        public var code: String

        public enum CodingKeys: String, CodingKey {
            case uid

            case name

            case fulfilmentType = "fulfilment_type"

            case storeType = "store_type"

            case restrictedCategories = "restricted_categories"

            case code
        }

        public init(code: String, fulfilmentType: String? = nil, name: String, restrictedCategories: [RestrictedCategoryResponseInfoSerializer], storeType: String, uid: Int) {
            self.uid = uid

            self.name = name

            self.fulfilmentType = fulfilmentType

            self.storeType = storeType

            self.restrictedCategories = restrictedCategories

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(Int.self, forKey: .uid)

            name = try container.decode(String.self, forKey: .name)

            do {
                fulfilmentType = try container.decode(String.self, forKey: .fulfilmentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeType = try container.decode(String.self, forKey: .storeType)

            restrictedCategories = try container.decode([RestrictedCategoryResponseInfoSerializer].self, forKey: .restrictedCategories)

            code = try container.decode(String.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(fulfilmentType, forKey: .fulfilmentType)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(restrictedCategories, forKey: .restrictedCategories)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
