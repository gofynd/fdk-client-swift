import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: CreatedOn
         Used By: Lead
     */
    class CreatedOn: Codable {
        public var userAgent: String

        public enum CodingKeys: String, CodingKey {
            case userAgent = "user_agent"
        }

        public init(userAgent: String) {
            self.userAgent = userAgent
        }

        public func duplicate() -> CreatedOn {
            let dict = self.dictionary!
            let copy = CreatedOn(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            userAgent = try container.decode(String.self, forKey: .userAgent)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userAgent, forKey: .userAgent)
        }
    }
}
