

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateTemplateStatusRequest
         Used By: Feedback
     */

    class UpdateTemplateStatusRequest: Codable {
        public var active: Bool?

        public var archive: Bool?

        public enum CodingKeys: String, CodingKey {
            case active

            case archive
        }

        public init(active: Bool? = nil, archive: Bool? = nil) {
            self.active = active

            self.archive = archive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                archive = try container.decode(Bool.self, forKey: .archive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(archive, forKey: .archive)
        }
    }
}
