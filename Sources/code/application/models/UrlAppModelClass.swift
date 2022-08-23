

import Foundation
public extension ApplicationClient {
    /*
         Model: Url
         Used By: Feedback
     */
    class Url: Codable {
        public var main: String?

        public var thumbnail: String?

        public enum CodingKeys: String, CodingKey {
            case main

            case thumbnail
        }

        public init(main: String? = nil, thumbnail: String? = nil) {
            self.main = main

            self.thumbnail = thumbnail
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                main = try container.decode(String.self, forKey: .main)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                thumbnail = try container.decode(String.self, forKey: .thumbnail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(main, forKey: .main)

            try? container.encodeIfPresent(thumbnail, forKey: .thumbnail)
        }
    }
}
