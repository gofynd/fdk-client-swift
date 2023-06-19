

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: StaticPropsV2
         Used By: Theme
     */
    class StaticPropsV2: Codable {
        public var colors: ColorsV2?

        public var auth: AuthConfigV2?

        public enum CodingKeys: String, CodingKey {
            case colors

            case auth
        }

        public init(auth: AuthConfigV2? = nil, colors: ColorsV2? = nil) {
            self.colors = colors

            self.auth = auth
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                colors = try container.decode(ColorsV2.self, forKey: .colors)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                auth = try container.decode(AuthConfigV2.self, forKey: .auth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(colors, forKey: .colors)

            try? container.encodeIfPresent(auth, forKey: .auth)
        }
    }
}
