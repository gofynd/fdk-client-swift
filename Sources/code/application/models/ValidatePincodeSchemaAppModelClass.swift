

import Foundation
public extension ApplicationClient {
    /*
         Model: ValidatePincodeSchema
         Used By: Logistic
     */
    class ValidatePincodeSchema: Codable {
        public var journey: String?

        public var source: String?

        public var action: String

        public var toPincode: String

        public enum CodingKeys: String, CodingKey {
            case journey

            case source

            case action

            case toPincode = "to_pincode"
        }

        public init(action: String, journey: String? = nil, source: String? = nil, toPincode: String) {
            self.journey = journey

            self.source = source

            self.action = action

            self.toPincode = toPincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                journey = try container.decode(String.self, forKey: .journey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                source = try container.decode(String.self, forKey: .source)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            action = try container.decode(String.self, forKey: .action)

            toPincode = try container.decode(String.self, forKey: .toPincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)
        }
    }
}
