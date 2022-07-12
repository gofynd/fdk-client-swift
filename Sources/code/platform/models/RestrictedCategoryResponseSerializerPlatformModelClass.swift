

import Foundation
public extension PlatformClient {
    /*
         Model: RestrictedCategoryResponseSerializer
         Used By: CompanyProfile
     */

    class RestrictedCategoryResponseSerializer: Codable {
        public var name: String

        public var code: String

        public var restrictedCategories: [RestrictedCategoryResponseInfoSerializer]

        public var uid: Int

        public var storeType: String

        public enum CodingKeys: String, CodingKey {
            case name

            case code

            case restrictedCategories = "restricted_categories"

            case uid

            case storeType = "store_type"
        }

        public init(code: String, name: String, restrictedCategories: [RestrictedCategoryResponseInfoSerializer], storeType: String, uid: Int) {
            self.name = name

            self.code = code

            self.restrictedCategories = restrictedCategories

            self.uid = uid

            self.storeType = storeType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            code = try container.decode(String.self, forKey: .code)

            restrictedCategories = try container.decode([RestrictedCategoryResponseInfoSerializer].self, forKey: .restrictedCategories)

            uid = try container.decode(Int.self, forKey: .uid)

            storeType = try container.decode(String.self, forKey: .storeType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(restrictedCategories, forKey: .restrictedCategories)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(storeType, forKey: .storeType)
        }
    }
}
