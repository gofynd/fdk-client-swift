

import Foundation
public extension PlatformClient {
    /*
         Model: CallbackUrl
         Used By: Configuration
     */

    class CallbackUrl: Codable {
        public var app: String?

        public var web: String?

        public enum CodingKeys: String, CodingKey {
            case app

            case web
        }

        public init(app: String? = nil, web: String? = nil) {
            self.app = app

            self.web = web
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                app = try container.decode(String.self, forKey: .app)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                web = try container.decode(String.self, forKey: .web)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(app, forKey: .app)

            try? container.encodeIfPresent(web, forKey: .web)
        }
    }
}
