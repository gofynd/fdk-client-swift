

import Foundation
public extension PlatformClient {
    /*
         Model: RestrictedCategoryResponseSerializer
         Used By: CompanyProfile
     */

    class RestrictedCategoryResponseSerializer: Codable {
        public var fulfilmentType: String?

        public var uid: Int

        public var storeType: String

        public var code: String

        public var name: String

        public var restrictedCategories: [RestrictedCategoryResponseInfoSerializer]

        public enum CodingKeys: String, CodingKey {
            case fulfilmentType = "fulfilment_type"

            case uid

            case storeType = "store_type"

            case code

            case name

            case restrictedCategories = "restricted_categories"
        }

        public init(code: String, fulfilmentType: String? = nil, name: String, restrictedCategories: [RestrictedCategoryResponseInfoSerializer], storeType: String, uid: Int) {
            self.fulfilmentType = fulfilmentType

            self.uid = uid

            self.storeType = storeType

            self.code = code

            self.name = name

            self.restrictedCategories = restrictedCategories
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                fulfilmentType = try container.decode(String.self, forKey: .fulfilmentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(Int.self, forKey: .uid)

            storeType = try container.decode(String.self, forKey: .storeType)

            code = try container.decode(String.self, forKey: .code)

            name = try container.decode(String.self, forKey: .name)

            restrictedCategories = try container.decode([RestrictedCategoryResponseInfoSerializer].self, forKey: .restrictedCategories)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fulfilmentType, forKey: .fulfilmentType)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(restrictedCategories, forKey: .restrictedCategories)
        }
    }
}
