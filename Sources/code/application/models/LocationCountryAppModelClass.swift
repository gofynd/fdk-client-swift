

import Foundation
public extension ApplicationClient {
    /*
         Model: LocationCountry
         Used By: Common
     */
    class LocationCountry: Codable {
        public var capital: String?

        public var currency: String?

        public var iso2: String?

        public var iso3: String?

        public var name: String?

        public var parent: String?

        public var phoneCode: String?

        public var type: String?

        public var uid: Int?

        public var v: Int?

        public var id: String?

        public var defaultCurrency: LocationDefaultCurrency?

        public var defaultLanguage: LocationDefaultLanguage?

        public enum CodingKeys: String, CodingKey {
            case capital

            case currency

            case iso2

            case iso3

            case name

            case parent

            case phoneCode = "phone_code"

            case type

            case uid

            case v = "__v"

            case id = "_id"

            case defaultCurrency = "default_currency"

            case defaultLanguage = "default_language"
        }

        public init(capital: String? = nil, currency: String? = nil, defaultCurrency: LocationDefaultCurrency? = nil, defaultLanguage: LocationDefaultLanguage? = nil, iso2: String? = nil, iso3: String? = nil, name: String? = nil, parent: String? = nil, phoneCode: String? = nil, type: String? = nil, uid: Int? = nil, id: String? = nil, v: Int? = nil) {
            self.capital = capital

            self.currency = currency

            self.iso2 = iso2

            self.iso3 = iso3

            self.name = name

            self.parent = parent

            self.phoneCode = phoneCode

            self.type = type

            self.uid = uid

            self.v = v

            self.id = id

            self.defaultCurrency = defaultCurrency

            self.defaultLanguage = defaultLanguage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                capital = try container.decode(String.self, forKey: .capital)

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
                iso2 = try container.decode(String.self, forKey: .iso2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                iso3 = try container.decode(String.self, forKey: .iso3)

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
                parent = try container.decode(String.self, forKey: .parent)

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                v = try container.decode(Int.self, forKey: .v)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                defaultCurrency = try container.decode(LocationDefaultCurrency.self, forKey: .defaultCurrency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                defaultLanguage = try container.decode(LocationDefaultLanguage.self, forKey: .defaultLanguage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(capital, forKey: .capital)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(iso2, forKey: .iso2)

            try? container.encodeIfPresent(iso3, forKey: .iso3)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(parent, forKey: .parent)

            try? container.encodeIfPresent(phoneCode, forKey: .phoneCode)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(v, forKey: .v)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(defaultCurrency, forKey: .defaultCurrency)

            try? container.encodeIfPresent(defaultLanguage, forKey: .defaultLanguage)
        }
    }
}
