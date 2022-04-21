

import Foundation
public extension ApplicationClient {
    /*
         Model: CommunicationOptinDialogFeature
         Used By: Configuration
     */
    class CommunicationOptinDialogFeature: Codable {
        public var visibility: Bool?

        public enum CodingKeys: String, CodingKey {
            case visibility
        }

        public init(visibility: Bool? = nil) {
            self.visibility = visibility
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                visibility = try container.decode(Bool.self, forKey: .visibility)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(visibility, forKey: .visibility)
        }
    }
}
