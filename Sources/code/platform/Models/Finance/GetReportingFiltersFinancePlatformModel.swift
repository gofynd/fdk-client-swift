

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: GetReportingFilters
         Used By: Finance
     */

    class GetReportingFilters: Codable {
        public var value: String?

        public var type: String?

        public var options: [[String: Any]]?

        public var text: String?

        public enum CodingKeys: String, CodingKey {
            case value

            case type

            case options

            case text
        }

        public init(options: [[String: Any]]? = nil, text: String? = nil, type: String? = nil, value: String? = nil) {
            self.value = value

            self.type = type

            self.options = options

            self.text = text
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode(String.self, forKey: .value)

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
                options = try container.decode([[String: Any]].self, forKey: .options)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                text = try container.decode(String.self, forKey: .text)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(options, forKey: .options)

            try? container.encodeIfPresent(text, forKey: .text)
        }
    }
}
