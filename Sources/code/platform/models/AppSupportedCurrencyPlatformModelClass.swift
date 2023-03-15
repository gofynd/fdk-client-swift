

import Foundation
public extension PlatformClient {
    /*
         Model: AppSupportedCurrency
         Used By: Configuration
     */

    class AppSupportedCurrency: Codable {
        public var id: String?

        public var supportedCurrency: [String]?

        public var application: String?

        public var defaultCurrency: DefaultCurrency?

        public var createdAt: String?

        public var updatedAt: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case supportedCurrency = "supported_currency"

            case application

            case defaultCurrency = "default_currency"

            case createdAt = "created_at"

            case updatedAt = "updated_at"
        }

        public init(application: String? = nil, createdAt: String? = nil, defaultCurrency: DefaultCurrency? = nil, supportedCurrency: [String]? = nil, updatedAt: String? = nil, id: String? = nil) {
            self.id = id

            self.supportedCurrency = supportedCurrency

            self.application = application

            self.defaultCurrency = defaultCurrency

            self.createdAt = createdAt

            self.updatedAt = updatedAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                supportedCurrency = try container.decode([String].self, forKey: .supportedCurrency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                application = try container.decode(String.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                defaultCurrency = try container.decode(DefaultCurrency.self, forKey: .defaultCurrency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(supportedCurrency, forKey: .supportedCurrency)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(defaultCurrency, forKey: .defaultCurrency)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        }
    }
}
