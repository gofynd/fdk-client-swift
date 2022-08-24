

import Foundation
public extension PlatformClient {
    /*
         Model: RestrictedCategoryResponseSerializer
         Used By: CompanyProfile
     */

    class RestrictedCategoryResponseSerializer: Codable {
        public var programType: String?

        public var name: String

        public var restrictedCategories: [RestrictedCategoryResponseInfoSerializer]

        public var uid: Int

        public var code: String

        public var fulfilmentType: String?

        public var storeType: String

        public enum CodingKeys: String, CodingKey {
            case programType = "program_type"

            case name

            case restrictedCategories = "restricted_categories"

            case uid

            case code

            case fulfilmentType = "fulfilment_type"

            case storeType = "store_type"
        }

        public init(code: String, fulfilmentType: String? = nil, name: String, programType: String? = nil, restrictedCategories: [RestrictedCategoryResponseInfoSerializer], storeType: String, uid: Int) {
            self.programType = programType

            self.name = name

            self.restrictedCategories = restrictedCategories

            self.uid = uid

            self.code = code

            self.fulfilmentType = fulfilmentType

            self.storeType = storeType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                programType = try container.decode(String.self, forKey: .programType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            restrictedCategories = try container.decode([RestrictedCategoryResponseInfoSerializer].self, forKey: .restrictedCategories)

            uid = try container.decode(Int.self, forKey: .uid)

            code = try container.decode(String.self, forKey: .code)

            do {
                fulfilmentType = try container.decode(String.self, forKey: .fulfilmentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeType = try container.decode(String.self, forKey: .storeType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(programType, forKey: .programType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(restrictedCategories, forKey: .restrictedCategories)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(fulfilmentType, forKey: .fulfilmentType)

            try? container.encodeIfPresent(storeType, forKey: .storeType)
        }
    }
}
