

import Foundation
public extension ApplicationClient {
    /*
         Model: ApplicationWebsite
         Used By: Common
     */
    class ApplicationWebsite: Codable {
        public var enabled: Bool?

        public var basepath: String?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case basepath
        }

        public init(basepath: String? = nil, enabled: Bool? = nil) {
            self.enabled = enabled

            self.basepath = basepath
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                basepath = try container.decode(String.self, forKey: .basepath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(basepath, forKey: .basepath)
        }
    }
}
