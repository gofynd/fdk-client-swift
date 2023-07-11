

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: GetCountry
         Used By: Logistic
     */
    class GetCountry: Codable {
        public var uid: String?

        public var actions: [String: Any]?

        public var ios2: String?

        public var hierarchy: [String: Any]?

        public var name: String?

        public var ios3: String?

        public var subType: String?

        public var phoneCode: String?

        public var currency: String?

        public var timezones: [String]?

        public enum CodingKeys: String, CodingKey {
            case uid

            case actions

            case ios2

            case hierarchy

            case name

            case ios3

            case subType = "sub_type"

            case phoneCode = "phone_code"

            case currency

            case timezones
        }

        public init(actions: [String: Any]? = nil, currency: String? = nil, hierarchy: [String: Any]? = nil, ios2: String? = nil, ios3: String? = nil, name: String? = nil, phoneCode: String? = nil, subType: String? = nil, timezones: [String]? = nil, uid: String? = nil) {
            self.uid = uid

            self.actions = actions

            self.ios2 = ios2

            self.hierarchy = hierarchy

            self.name = name

            self.ios3 = ios3

            self.subType = subType

            self.phoneCode = phoneCode

            self.currency = currency

            self.timezones = timezones
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                actions = try container.decode([String: Any].self, forKey: .actions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ios2 = try container.decode(String.self, forKey: .ios2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hierarchy = try container.decode([String: Any].self, forKey: .hierarchy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ios3 = try container.decode(String.self, forKey: .ios3)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subType = try container.decode(String.self, forKey: .subType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phoneCode = try container.decode(String.self, forKey: .phoneCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timezones = try container.decode([String].self, forKey: .timezones)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(actions, forKey: .actions)

            try? container.encodeIfPresent(ios2, forKey: .ios2)

            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(ios3, forKey: .ios3)

            try? container.encodeIfPresent(subType, forKey: .subType)

            try? container.encodeIfPresent(phoneCode, forKey: .phoneCode)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(timezones, forKey: .timezones)
        }
    }
}
