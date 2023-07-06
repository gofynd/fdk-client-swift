

import Foundation

public extension PlatformClient.CompanyProfile {
    /*
         Model: StoreTagsResponse
         Used By: CompanyProfile
     */

    class StoreTagsResponse: Codable {
        public var success: Bool?

        public var tags: [String]?

        public enum CodingKeys: String, CodingKey {
            case success

            case tags
        }

        public init(success: Bool? = nil, tags: [String]? = nil) {
            self.success = success

            self.tags = tags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(tags, forKey: .tags)
        }
    }
}
