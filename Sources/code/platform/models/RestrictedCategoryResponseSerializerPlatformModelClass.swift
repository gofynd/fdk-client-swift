

import Foundation
public extension PlatformClient {
    /*
         Model: RestrictedCategoryResponseSerializer
         Used By: CompanyProfile
     */

    class RestrictedCategoryResponseSerializer: Codable {
        public var uid: Int

        public var restrictedCategories: [RestrictedCategoryResponseInfoSerializer]

        public var fulfilmentType: String?

        public var code: String

        public var storeType: String

        public var name: String

        public var programType: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case restrictedCategories = "restricted_categories"

            case fulfilmentType = "fulfilment_type"

            case code

            case storeType = "store_type"

            case name

            case programType = "program_type"
        }

        public init(code: String, fulfilmentType: String? = nil, name: String, programType: String? = nil, restrictedCategories: [RestrictedCategoryResponseInfoSerializer], storeType: String, uid: Int) {
            self.uid = uid

            self.restrictedCategories = restrictedCategories

            self.fulfilmentType = fulfilmentType

            self.code = code

            self.storeType = storeType

            self.name = name

            self.programType = programType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(Int.self, forKey: .uid)

            restrictedCategories = try container.decode([RestrictedCategoryResponseInfoSerializer].self, forKey: .restrictedCategories)

            do {
                fulfilmentType = try container.decode(String.self, forKey: .fulfilmentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(String.self, forKey: .code)

            storeType = try container.decode(String.self, forKey: .storeType)

            name = try container.decode(String.self, forKey: .name)

            do {
                programType = try container.decode(String.self, forKey: .programType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(restrictedCategories, forKey: .restrictedCategories)

            try? container.encodeIfPresent(fulfilmentType, forKey: .fulfilmentType)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(programType, forKey: .programType)
        }
    }
}
