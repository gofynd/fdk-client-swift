

import Foundation
public extension ApplicationClient {
    /*
         Model: AppCurrencyResponse
         Used By: Configuration
     */
    class AppCurrencyResponse: Codable {
        public var application: String?

        public var defaultCurrency: DefaultCurrency?

        public var supportedCurrency: [Currency]?

        public enum CodingKeys: String, CodingKey {
            case application

            case defaultCurrency = "default_currency"

            case supportedCurrency = "supported_currency"
        }

        public init(application: String? = nil, defaultCurrency: DefaultCurrency? = nil, supportedCurrency: [Currency]? = nil) {
            self.application = application

            self.defaultCurrency = defaultCurrency

            self.supportedCurrency = supportedCurrency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                supportedCurrency = try container.decode([Currency].self, forKey: .supportedCurrency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(defaultCurrency, forKey: .defaultCurrency)

            try? container.encodeIfPresent(supportedCurrency, forKey: .supportedCurrency)
        }
    }
}
