

import Foundation
public extension PlatformClient {
    /*
         Model: RestrictedCategoryResponseSerializer
         Used By: CompanyProfile
     */

    class RestrictedCategoryResponseSerializer: Codable {
        public var uid: Int

        public var programType: String?

        public var fulfilmentType: String?

        public var name: String

        public var code: String

        public var restrictedCategories: [RestrictedCategoryResponseInfoSerializer]

        public var storeType: String

        public enum CodingKeys: String, CodingKey {
            case uid

            case programType = "program_type"

            case fulfilmentType = "fulfilment_type"

            case name

            case code

            case restrictedCategories = "restricted_categories"

            case storeType = "store_type"
        }

        public init(code: String, fulfilmentType: String? = nil, name: String, programType: String? = nil, restrictedCategories: [RestrictedCategoryResponseInfoSerializer], storeType: String, uid: Int) {
            self.uid = uid

            self.programType = programType

            self.fulfilmentType = fulfilmentType

            self.name = name

            self.code = code

            self.restrictedCategories = restrictedCategories

            self.storeType = storeType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(Int.self, forKey: .uid)

            do {
                programType = try container.decode(String.self, forKey: .programType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fulfilmentType = try container.decode(String.self, forKey: .fulfilmentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            code = try container.decode(String.self, forKey: .code)

            restrictedCategories = try container.decode([RestrictedCategoryResponseInfoSerializer].self, forKey: .restrictedCategories)

            storeType = try container.decode(String.self, forKey: .storeType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(programType, forKey: .programType)

            try? container.encodeIfPresent(fulfilmentType, forKey: .fulfilmentType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(restrictedCategories, forKey: .restrictedCategories)

            try? container.encodeIfPresent(storeType, forKey: .storeType)
        }
    }
}
