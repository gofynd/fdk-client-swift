

import Foundation
public extension PlatformClient {
    /*
         Model: RestrictedCategoryResponseSerializer
         Used By: CompanyProfile
     */

    class RestrictedCategoryResponseSerializer: Codable {
        public var storeType: String

        public var restrictedCategories: [RestrictedCategoryResponseInfoSerializer]

        public var uid: Int

        public var fulfilmentType: String?

        public var code: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case storeType = "store_type"

            case restrictedCategories = "restricted_categories"

            case uid

            case fulfilmentType = "fulfilment_type"

            case code

            case name
        }

        public init(code: String, fulfilmentType: String? = nil, name: String, restrictedCategories: [RestrictedCategoryResponseInfoSerializer], storeType: String, uid: Int) {
            self.storeType = storeType

            self.restrictedCategories = restrictedCategories

            self.uid = uid

            self.fulfilmentType = fulfilmentType

            self.code = code

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeType = try container.decode(String.self, forKey: .storeType)

            restrictedCategories = try container.decode([RestrictedCategoryResponseInfoSerializer].self, forKey: .restrictedCategories)

            uid = try container.decode(Int.self, forKey: .uid)

            do {
                fulfilmentType = try container.decode(String.self, forKey: .fulfilmentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(String.self, forKey: .code)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(restrictedCategories, forKey: .restrictedCategories)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(fulfilmentType, forKey: .fulfilmentType)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
