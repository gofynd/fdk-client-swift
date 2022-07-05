

import Foundation
public extension PlatformClient {
    /*
         Model: RestrictedCategoryResponseSerializer
         Used By: CompanyProfile
     */

    class RestrictedCategoryResponseSerializer: Codable {
        public var restrictedCategories: [RestrictedCategoryResponseInfoSerializer]

        public var name: String

        public var uid: Int

        public var code: String

        public var storeType: String

        public enum CodingKeys: String, CodingKey {
            case restrictedCategories = "restricted_categories"

            case name

            case uid

            case code

            case storeType = "store_type"
        }

        public init(code: String, name: String, restrictedCategories: [RestrictedCategoryResponseInfoSerializer], storeType: String, uid: Int) {
            self.restrictedCategories = restrictedCategories

            self.name = name

            self.uid = uid

            self.code = code

            self.storeType = storeType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            restrictedCategories = try container.decode([RestrictedCategoryResponseInfoSerializer].self, forKey: .restrictedCategories)

            name = try container.decode(String.self, forKey: .name)

            uid = try container.decode(Int.self, forKey: .uid)

            code = try container.decode(String.self, forKey: .code)

            storeType = try container.decode(String.self, forKey: .storeType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(restrictedCategories, forKey: .restrictedCategories)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(storeType, forKey: .storeType)
        }
    }
}
