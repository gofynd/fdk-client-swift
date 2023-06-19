

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: ReleaseV2
         Used By: Theme
     */
    class ReleaseV2: Codable {
        public var notes: String?

        public var version: String?

        public enum CodingKeys: String, CodingKey {
            case notes

            case version
        }

        public init(notes: String? = nil, version: String? = nil) {
            self.notes = notes

            self.version = version
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                notes = try container.decode(String.self, forKey: .notes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(notes, forKey: .notes)

            try? container.encodeIfPresent(version, forKey: .version)
        }
    }
}
