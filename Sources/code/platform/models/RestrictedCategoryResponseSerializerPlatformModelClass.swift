

import Foundation
public extension PlatformClient {
    /*
         Model: RestrictedCategoryResponseSerializer
         Used By: CompanyProfile
     */

    class RestrictedCategoryResponseSerializer: Codable {
        public var name: String

        public var storeType: String

        public var restrictedCategories: [RestrictedCategoryResponseInfoSerializer]

        public var code: String

        public var uid: Int

        public enum CodingKeys: String, CodingKey {
            case name

            case storeType = "store_type"

            case restrictedCategories = "restricted_categories"

            case code

            case uid
        }

        public init(code: String, name: String, restrictedCategories: [RestrictedCategoryResponseInfoSerializer], storeType: String, uid: Int) {
            self.name = name

            self.storeType = storeType

            self.restrictedCategories = restrictedCategories

            self.code = code

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            storeType = try container.decode(String.self, forKey: .storeType)

            restrictedCategories = try container.decode([RestrictedCategoryResponseInfoSerializer].self, forKey: .restrictedCategories)

            code = try container.decode(String.self, forKey: .code)

            uid = try container.decode(Int.self, forKey: .uid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(restrictedCategories, forKey: .restrictedCategories)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}
