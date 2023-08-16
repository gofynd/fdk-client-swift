

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: AuthConfig
         Used By: Theme
     */
    class AuthConfig: Codable {
        public var showHeaderAuth: Bool?

        public var showFooterAuth: Bool?

        public enum CodingKeys: String, CodingKey {
            case showHeaderAuth = "show_header_auth"

            case showFooterAuth = "show_footer_auth"
        }

        public init(showFooterAuth: Bool? = nil, showHeaderAuth: Bool? = nil) {
            self.showHeaderAuth = showHeaderAuth

            self.showFooterAuth = showFooterAuth
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                showHeaderAuth = try container.decode(Bool.self, forKey: .showHeaderAuth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                showFooterAuth = try container.decode(Bool.self, forKey: .showFooterAuth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(showHeaderAuth, forKey: .showHeaderAuth)

            try? container.encodeIfPresent(showFooterAuth, forKey: .showFooterAuth)
        }
    }
}
