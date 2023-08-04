

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: ChannelDisplayName
         Used By: Finance
     */

    class ChannelDisplayName: Codable {
        public var platformPos: String?

        public enum CodingKeys: String, CodingKey {
            case platformPos = "platform_pos"
        }

        public init(platformPos: String? = nil) {
            self.platformPos = platformPos
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                platformPos = try container.decode(String.self, forKey: .platformPos)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(platformPos, forKey: .platformPos)
        }
    }
}
