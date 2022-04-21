

import Foundation
public extension ApplicationClient {
    /*
         Model: MediaState
         Used By: Feedback
     */
    class MediaState: Codable {
        public var approve: Bool?

        public var archive: Bool?

        public enum CodingKeys: String, CodingKey {
            case approve

            case archive
        }

        public init(approve: Bool? = nil, archive: Bool? = nil) {
            self.approve = approve

            self.archive = archive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                approve = try container.decode(Bool.self, forKey: .approve)

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

            try? container.encodeIfPresent(approve, forKey: .approve)

            try? container.encodeIfPresent(archive, forKey: .archive)
        }
    }
}
