

import Foundation
public extension PlatformClient {
    /*
         Model: RestrictedCategoryResponseSerializer
         Used By: CompanyProfile
     */

    class RestrictedCategoryResponseSerializer: Codable {
        public var storeType: String

        public var name: String

        public var restrictedCategories: [RestrictedCategoryResponseInfoSerializer]

        public var code: String

        public var uid: Int

        public enum CodingKeys: String, CodingKey {
            case storeType = "store_type"

            case name

            case restrictedCategories = "restricted_categories"

            case code

            case uid
        }

        public init(code: String, name: String, restrictedCategories: [RestrictedCategoryResponseInfoSerializer], storeType: String, uid: Int) {
            self.storeType = storeType

            self.name = name

            self.restrictedCategories = restrictedCategories

            self.code = code

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeType = try container.decode(String.self, forKey: .storeType)

            name = try container.decode(String.self, forKey: .name)

            restrictedCategories = try container.decode([RestrictedCategoryResponseInfoSerializer].self, forKey: .restrictedCategories)

            code = try container.decode(String.self, forKey: .code)

            uid = try container.decode(Int.self, forKey: .uid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(restrictedCategories, forKey: .restrictedCategories)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}