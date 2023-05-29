

import Foundation
public extension ApplicationClient.Lead {
    /*
         Model: CommunicationDetails
         Used By: Lead
     */
    class CommunicationDetails: Codable {
        public var value: String?

        public var description: String?

        public var enabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case value

            case description

            case enabled
        }

        public init(description: String? = nil, enabled: Bool? = nil, value: String? = nil) {
            self.value = value

            self.description = description

            self.enabled = enabled
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
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }
}
