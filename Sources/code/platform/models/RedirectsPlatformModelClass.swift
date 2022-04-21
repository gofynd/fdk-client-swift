

import Foundation
public extension PlatformClient {
    /*
         Model: Redirects
         Used By: Share
     */

    class Redirects: Codable {
        public var ios: RedirectDevice?

        public var android: RedirectDevice?

        public var web: WebRedirect?

        public var forceWeb: Bool?

        public enum CodingKeys: String, CodingKey {
            case ios

            case android

            case web

            case forceWeb = "force_web"
        }

        public init(android: RedirectDevice? = nil, forceWeb: Bool? = nil, ios: RedirectDevice? = nil, web: WebRedirect? = nil) {
            self.ios = ios

            self.android = android

            self.web = web

            self.forceWeb = forceWeb
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                ios = try container.decode(RedirectDevice.self, forKey: .ios)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                android = try container.decode(RedirectDevice.self, forKey: .android)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                web = try container.decode(WebRedirect.self, forKey: .web)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                forceWeb = try container.decode(Bool.self, forKey: .forceWeb)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ios, forKey: .ios)

            try? container.encodeIfPresent(android, forKey: .android)

            try? container.encodeIfPresent(web, forKey: .web)

            try? container.encodeIfPresent(forceWeb, forKey: .forceWeb)
        }
    }
}
