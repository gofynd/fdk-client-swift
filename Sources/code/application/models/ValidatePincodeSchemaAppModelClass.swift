

import Foundation
public extension ApplicationClient {
    /*
         Model: ValidatePincodeSchema
         Used By: Logistic
     */
    class ValidatePincodeSchema: Codable {
        public var action: String

        public var toPincode: String

        public var source: String?

        public var journey: String?

        public enum CodingKeys: String, CodingKey {
            case action

            case toPincode = "to_pincode"

            case source

            case journey
        }

        public init(action: String, journey: String? = nil, source: String? = nil, toPincode: String) {
            self.action = action

            self.toPincode = toPincode

            self.source = source

            self.journey = journey
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            action = try container.decode(String.self, forKey: .action)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            do {
                source = try container.decode(String.self, forKey: .source)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                journey = try container.decode(String.self, forKey: .journey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(journey, forKey: .journey)
        }
    }
}
