

import Foundation
public extension PlatformClient {
    /*
         Model: RestrictedCategoryResponseSerializer
         Used By: CompanyProfile
     */

    class RestrictedCategoryResponseSerializer: Codable {
        public var storeType: String

        public var name: String

        public var uid: Int

        public var restrictedCategories: [RestrictedCategoryResponseInfoSerializer]

        public var code: String

        public enum CodingKeys: String, CodingKey {
            case storeType = "store_type"

            case name

            case uid

            case restrictedCategories = "restricted_categories"

            case code
        }

        public init(code: String, name: String, restrictedCategories: [RestrictedCategoryResponseInfoSerializer], storeType: String, uid: Int) {
            self.storeType = storeType

            self.name = name

            self.uid = uid

            self.restrictedCategories = restrictedCategories

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeType = try container.decode(String.self, forKey: .storeType)

            name = try container.decode(String.self, forKey: .name)

            uid = try container.decode(Int.self, forKey: .uid)

            restrictedCategories = try container.decode([RestrictedCategoryResponseInfoSerializer].self, forKey: .restrictedCategories)

            code = try container.decode(String.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(restrictedCategories, forKey: .restrictedCategories)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
