

import Foundation
public extension PlatformClient {
    /*
         Model: CampaignShortLink
         Used By: Share
     */

    class CampaignShortLink: Codable {
        public var source: String?

        public var medium: String?

        public enum CodingKeys: String, CodingKey {
            case source

            case medium
        }

        public init(medium: String? = nil, source: String? = nil) {
            self.source = source

            self.medium = medium
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                source = try container.decode(String.self, forKey: .source)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                medium = try container.decode(String.self, forKey: .medium)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(medium, forKey: .medium)
        }
    }
}
