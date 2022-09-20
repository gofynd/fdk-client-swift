

import Foundation
public extension PlatformClient {
    /*
         Model: RestrictedCategoryResponseSerializer
         Used By: CompanyProfile
     */

    class RestrictedCategoryResponseSerializer: Codable {
        public var programType: String

        public var name: String

        public var uid: Int

        public var restrictedCategories: [RestrictedCategoryResponseInfoSerializer]

        public var storeType: String

        public var code: String

        public enum CodingKeys: String, CodingKey {
            case programType = "program_type"

            case name

            case uid

            case restrictedCategories = "restricted_categories"

            case storeType = "store_type"

            case code
        }

        public init(code: String, name: String, programType: String, restrictedCategories: [RestrictedCategoryResponseInfoSerializer], storeType: String, uid: Int) {
            self.programType = programType

            self.name = name

            self.uid = uid

            self.restrictedCategories = restrictedCategories

            self.storeType = storeType

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            programType = try container.decode(String.self, forKey: .programType)

            name = try container.decode(String.self, forKey: .name)

            uid = try container.decode(Int.self, forKey: .uid)

            restrictedCategories = try container.decode([RestrictedCategoryResponseInfoSerializer].self, forKey: .restrictedCategories)

            storeType = try container.decode(String.self, forKey: .storeType)

            code = try container.decode(String.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(programType, forKey: .programType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(restrictedCategories, forKey: .restrictedCategories)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
