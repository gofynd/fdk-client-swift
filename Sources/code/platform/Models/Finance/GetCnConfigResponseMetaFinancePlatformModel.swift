

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: GetCnConfigResponseMeta
         Used By: Finance
     */

    class GetCnConfigResponseMeta: Codable {
        public var sourceChannel: [String]?

        public var reason: String?

        public enum CodingKeys: String, CodingKey {
            case sourceChannel = "source_channel"

            case reason
        }

        public init(reason: String? = nil, sourceChannel: [String]? = nil) {
            self.sourceChannel = sourceChannel

            self.reason = reason
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sourceChannel = try container.decode([String].self, forKey: .sourceChannel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reason = try container.decode(String.self, forKey: .reason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sourceChannel, forKey: .sourceChannel)

            try? container.encodeIfPresent(reason, forKey: .reason)
        }
    }
}
